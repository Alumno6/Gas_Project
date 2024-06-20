with 

source as (

    select
        {{ dbt_utils.star(from=ref('stg_gas__repostajes'),except=['timestamp'] ) }},
        date(timestamp) as fecha,
    from {{ ref('stg_gas__repostajes') }}

),
source_stations as (

    select station_id, provincia_id 
    from {{ ref('stg_gas__gasolineras') }}

),


renamed as (

    select 
        R.transaction_id,
        R.user_id,
        car_id,
        R.station_id,
        fuel_id,
        price,
        liters,
        metodo_pago,
        fecha,
        provincia_id
    from source R 
    join source_stations S 
    on R.STATION_ID = S.STATION_ID

)

select * from renamed