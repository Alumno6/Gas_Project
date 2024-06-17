with 

source as (

    select * from {{ ref('gasolineras_snapshot') }}

),

renamed as (

    select
        {{ dbt_utils.star(from=ref('gasolineras_snapshot'),except=['_FIVETRAN_SYNCED','DBT_SCD_ID','DBT_UPDATED_AT'] ) }}
    from source

)

select * from renamed