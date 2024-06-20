with 

source_gasolineras as (

    select * from {{ ref('base_gas__gasolineras') }}

),

renamed as (

    select
        G.STATION_ID,
        G.COUNTRY,
        {{ dbt_utils.generate_surrogate_key(['provincia']) }} as provincia_id,
        G.CITY,
        G.ADDRESS,
        G.ROAD_MARGIN,
        G.schedule,
        G.COMPANY,

    from source_gasolineras G
    group by 
        G.STATION_ID,
        G.COUNTRY,
        G.provincia,
        G.CITY,
        G.ADDRESS,
        G.ROAD_MARGIN,
        G.schedule,
        G.COMPANY

)

select * from renamed