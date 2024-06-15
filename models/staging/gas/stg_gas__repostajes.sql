with 

source_repost as (

    select * from {{ ref('base_gas__repostajes') }}

),

source_gasolineras as (

     select * from {{ ref('base_gas__gasolineras') }}

),

renamed as (

    select
        transaction_id,
        DATE,
        R.USER_ID,
        R.CAR_ID,
        R.STATION_ID,
        {{dbt_utils.generate_surrogate_key(['G.fuel'])}} AS fuel_id,
        round(R.PRICE,2) as price,
        round(R.LITERS,2) as liters,
        R.METODO_PAGO,
    from source_repost R
    join source_gasolineras G 
    on R.date = G.fecha and R.STATION_ID = G.STATION_ID and R.FUEL= G.FUEL_CATEGORY
    

)

select * from renamed