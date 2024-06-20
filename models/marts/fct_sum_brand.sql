{{
    config(
        materialized='incremental',
        unique_key = ['date', 'company_brand']
    )
}}

With


station_renamed as (

    select 
        {{ dbt_utils.star(from=ref('gasolineras_snapshot'),except=['company','_FIVETRAN_SYNCED','DBT_SCD_ID','DBT_UPDATED_AT'] ) }},
        R.company_rename as company_brand
    from {{ ref('int_Rename_station_company') }} R
    join {{ ref('gasolineras_snapshot') }} G
    on R.company = G.company
),

refueling as (

    select * from {{ ref('stg_gas__repostajes') }}
    {% if is_incremental() %}

        where date(timestamp) >= (select coalesce(max(date), '1900-01-01') from {{ this }})

    {% endif %}

),

renamed as (
    
    select
        S.company_brand,
        round(sum(price*liters),2) as total_amount_sales,
        count(transaction_id) as total_unit_sales,
        round(avg(price),2) as avg_liter_price,
        date(timestamp) as date,
        CURRENT_TIMESTAMP() as time_added

    from refueling R 
    join station_renamed S 
    on R.STATION_ID = S.STATION_ID
    group by 
        S.company_brand, 
        date
    order by
        date,
        total_amount_sales desc
)
select * from renamed