with 

source as (

    select * from {{ source('gas', 'repostajes') }}

),

renamed as (

    select
        {{dbt_utils.generate_surrogate_key(['DATE','USER_ID','LITERS'])}} AS transaction_id,
        DATE,
        USER_ID,
        CAR_ID,
        STATION_ID,
        FUEL,
        round(PRICE,2) as price,
        round(LITERS,2) as liters,
        METODO_PAGO,
    from source
    

)

select * from renamed