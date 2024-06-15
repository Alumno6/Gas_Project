with 

source as (

    select * from {{ ref('base_gas__gasolineras') }}

),

renamed as (

    select
        {{dbt_utils.generate_surrogate_key(['fuel'])}} as fuel_id,
        FUEL_CATEGORY
    from source
    group by fuel, FUEL_CATEGORY

)

select * from renamed