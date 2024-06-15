with 

source as (

    select * from {{ source('gas', 'gasolineras') }}

),

renamed as (

    select
        STATION_ID,
        COUNTRY,
        PROVINCIA,
        CITY,
        ADDRESS,
        IFF(ROAD_MARGIN = 'I','Left','Right') as ROAD_MARGIN,
        '24H' as schedule,
        COMPANY,
        FUEL,
        round(FUEL_PRICE,2) as fuel_price,
        FECHA,
        FUEL_CATEGORY,
        _FIVETRAN_SYNCED,
        _FIVETRAN_DELETED,
    from source
    
)

select * from renamed