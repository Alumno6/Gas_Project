{{
    config(
        materialized='incremental',
        unique_key = ['date', 'provincia_id', 'fuel_id']
    )
}}

with 

source as (

    select * from {{ ref('stg_gas__repostajes') }}

    {% if is_incremental() %}

        where date(timestamp) >= (select coalesce(max(date), '1900-01-01') from {{ this }})

    {% endif %}

),
source_sta as (
    
    select * from {{ ref('gasolineras_snapshot') }}
    where dbt_valid_to is null

),

renamed as (

    select
        date(timestamp) as date,
        count(distinct user_id) as total_refueling,
        round(avg(price*liters),2) as cost_avg,
        provincia_id,
        fuel_id
        
    from source R 
    join source_sta G 
    on R.STATION_ID = G.STATION_ID
    group by date, fuel_id, provincia_id

)

select * from renamed