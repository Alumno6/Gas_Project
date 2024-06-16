with

source as (

    select * from {{ source('gas', 'repostajes') }}

),

renamed as (

    select
        {{dbt_utils.generate_surrogate_key(['timestamp','USER_ID','LITERS'])}} AS transaction_id,
        timestamp,
        USER_ID,
        CAR_ID,
        STATION_ID,
        FUEL,
        round(PRICE,2) as price,
        round(LITERS,2) as liters,
        METODO_PAGO,
        _fivetran_synced

    from source
    
)

select * from renamed