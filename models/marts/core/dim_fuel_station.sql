with 

source as (

    select * from {{ ref('stg_gas__gasolineras') }}

),

renamed as (

    select
        {{ dbt_utils.star(from=ref('stg_gas__gasolineras'),except=['company'] ) }},
        {{dbt_utils.generate_surrogate_key(['company'])}} as company_id
    from source

)

select * from renamed