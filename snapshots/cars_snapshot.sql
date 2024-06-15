{% snapshot cars_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='car_id',
      strategy='timestamp',
      updated_at='_fivetran_synced',
    )
}}

select * from {{ source('gas', 'coches') }}
--where _fivetran_synced > (select max(_fivetran_synced) from {{ this }})

{% endsnapshot %}