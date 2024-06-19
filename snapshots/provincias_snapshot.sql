{% snapshot provincias_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='provincia_id',
      strategy='timestamp',
      updated_at='_fivetran_synced',
    )
}}

select
    {{dbt_utils.generate_surrogate_key(['provincias'])}} as provincia_id,
    {{ dbt_utils.star(source('gas', 'provincias')) }},
from {{ source('gas', 'provincias') }}
--where _fivetran_synced > (select max(_fivetran_synced) from {{ this }})

{% endsnapshot %}