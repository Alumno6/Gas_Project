{% snapshot gasolineras_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='STATION_ID',
      strategy='timestamp',
      updated_at='_fivetran_synced',
    )
}}

with 

source_gasolineras as (

    select * from {{ ref('base_gas__gasolineras') }}

),
source_provincias as (

    select * from {{ ref('provincias_snapshot') }}

),

renamed as (

    select
        G.STATION_ID,
        G.COUNTRY,
        P.PROVINCIA_ID,
        G.CITY,
        G.ADDRESS,
        G.ROAD_MARGIN,
        G.schedule,
        G.COMPANY,
        G._fivetran_synced
    from source_gasolineras G
    JOIN source_provincias P
    on G.provincia = P.provincias
    group by 
        G.STATION_ID,
        G.COUNTRY,
        P.PROVINCIA_ID,
        G.CITY,
        G.ADDRESS,
        G.ROAD_MARGIN,
        G.schedule,
        G.COMPANY,
        G._fivetran_synced
)

select * from renamed

{% endsnapshot %}