with 

source as (

    select * from {{ ref('gasolineras_snapshot') }}

),

renamed as (

    select
        {{ dbt_utils.star(from=ref('gasolineras_snapshot'),except=['_FIVETRAN_SYNCED','DBT_SCD_ID','DBT_UPDATED_AT','DBT_VALID_FROM','DBT_VALID_TO'] ) }}
    from source
    where dbt_valid_to is null

)

select * from renamed