with

station_renamed as (

    select * from {{ ref('Rename_station_company') }}

),

province_station as (

    SELECT 
        MAX(SUMA),
        company_rename,
        provincia_id,
        MONTH(timestamp) as month,
        YEAR(timestamp) as year
    FROM(
        SELECT
            company_rename,
            provincia_id,
            MONTH(timestamp) as month,
            YEAR(timestamp) as year
            SUM(price*liters) as suma
        FROM {{ ref('stg_gas__repostajes') }} R 
        JOIN station_renamed S
        GROUP BY 
                company_rename,
                provincia_id,
                MONTH(timestamp),
                YEAR(timestamp)
        )S
    GROUP BY 
        company_rename,
        provincia_id,
        MONTH(timestamp) as month,
        YEAR(timestamp) as year
),

clients as (

    select
        user_id,
        age
    from {{ ref('Rename_station_company') }}
),

refueling as (

    select * from {{ ref('fct_refueling') }}
),

renamed as (
    
    select
        company_rename,
        sum(price*liters) as total_amount_sales,
        count(transaction_id) as total_unit_sales,
        avg(price) as avg_liter_price,
        avg(age) as average_age,
        MONTH(timestamp) as month,
        YEAR(timestamp) as year

    from refueling R 
    join station_renamed S 
    on R.STATION_ID = S.STATION_ID
    join clients C 
    on R.user_id = C.user_id
    group by 
        company_rename, 
        month(timestamp),
        year(timestamp)

)
select * from renamed