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
    {{ dbt_utils.generate_surrogate_key(['provincias']) }} as provincia_id,
    {{ dbt_utils.star(source('gas', 'provincias'), except=['_fivetran_synced']) }},
    max(_fivetran_synced) over (partition by provincias) as _fivetran_synced
from {{ source('gas', 'provincias') }}

{% endsnapshot %}