select  
    {{ dbt_utils.star(source('gas', 'clientes')) }},
    {{dbt_utils.generate_surrogate_key(['provincia'])}} as provincia_id
from {{ source('gas', 'clientes') }}
