{{
    config(
        materialized='incremental',
        unique_key = ['company_brand', 'month', 'year']
    )
}}

with


station_renamed as (

    select 
        {{ dbt_utils.star(from=ref('gasolineras_snapshot'),except=['company','_FIVETRAN_SYNCED','DBT_SCD_ID','DBT_UPDATED_AT'] ) }},
        R.company_rename 
    from {{ ref('Rename_station_company') }} R
    join {{ ref('gasolineras_snapshot') }} G
    on R.company = G.company
),

refueling as (

    select * from {{ ref('stg_gas__repostajes') }}

    {% if is_incremental() %}

        where   month(timestamp) >= (select coalesce(max(month), '1') from {{ this }}) and 
                year(timestamp) >= (select coalesce(max(year), '1900') from {{ this }})

    {% endif %}
),


province_station as (

    SELECT 
        company_rename as company_brand,
        provincia_id,
        month,
        year,
        MAX(SUMA) as maximo
    FROM(
        SELECT
            company_rename,
            provincia_id,
            MONTH(timestamp) as month,
            YEAR(timestamp) as year,
            SUM(price*liters) as suma,
            rank() over(partition by company_rename, MONTH(timestamp),YEAR(timestamp) order by SUM(price*liters) desc) as row_num
        FROM refueling R 
        JOIN station_renamed S
        on R.STATION_ID = S.STATION_ID
        GROUP BY 
                company_rename,
                provincia_id,
                MONTH(timestamp),
                YEAR(timestamp)
        )S
    where row_num = 1
    GROUP BY 
        company_rename,
        provincia_id,
        month,
        year
),

renamed as (
    
    select
        P.company_brand,
        round(sum(price*liters),2) as total_amount_sales,
        count(transaction_id) as total_unit_sales,
        round(avg(price),2) as avg_liter_price,
        P.provincia_id as max_sold_province_id,
        MONTH(timestamp) as month,
        YEAR(timestamp) as year

    from refueling R 
    join station_renamed S 
    on R.STATION_ID = S.STATION_ID
    join province_station P
    on S.company_rename = P.company_brand
    
    group by 
        P.company_brand, 
        month(timestamp),
        year(timestamp),
        max_sold_province_id
    order by
        year(timestamp),
        month(timestamp),
        total_amount_sales desc

)
select * from renamed