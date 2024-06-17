{% snapshot users_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='user_id',
      strategy='timestamp',
      updated_at='_fivetran_synced',
    )
}}

select  
    {{ dbt_utils.star(source('gas', 'clientes')) }},
    {{dbt_utils.generate_surrogate_key(['provincia'])}} as provincia_id
from {{ source('gas', 'clientes') }}
--where _fivetran_synced > (select max(_fivetran_synced) from {{ this }})

{% endsnapshot %}