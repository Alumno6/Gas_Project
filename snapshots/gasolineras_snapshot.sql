{% snapshot gasolineras_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key="STATION_ID",
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
        P.provincia_id,
        G.CITY,
        G.ADDRESS,
        G.ROAD_MARGIN,
        G.schedule,
        G.COMPANY,
        max(G._fivetran_synced) as _fivetran_synced

    from source_gasolineras G
    join source_provincias P 
    on P.provincias = G.provincia
    group by 
        G.STATION_ID,
        G.COUNTRY,
        P.PROVINCIA_ID,
        G.CITY,
        G.ADDRESS,
        G.ROAD_MARGIN,
        G.schedule,
        G.COMPANY

)

select * from renamed

{% endsnapshot %}