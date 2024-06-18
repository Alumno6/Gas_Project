with 

source as (

    select * from {{ ref('gasolineras_snapshot') }}

),

renamed as (

    select
        {{ dbt_utils.star(from=ref('gasolineras_snapshot'),except=['company','_FIVETRAN_SYNCED','DBT_SCD_ID','DBT_UPDATED_AT'] ) }},
        {{dbt_utils.generate_surrogate_key(['company'])}} as company_id
    from source

)

select * from renamed