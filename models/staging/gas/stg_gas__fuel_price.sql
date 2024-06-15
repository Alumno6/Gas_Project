with 

source as (

    select * from {{ ref('base_gas__gasolineras') }}

),

renamed as (

    select
        STATION_ID,
        {{dbt_utils.generate_surrogate_key(['fuel'])}} as fuel_id,
        FUEL_PRICE,
        FECHA
    from source

)

select * from renamed