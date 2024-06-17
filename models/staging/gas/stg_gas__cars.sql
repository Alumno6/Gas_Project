with 

source_c as (

    select * from {{ ref('base_gas__cars') }}

),
source_u as (

    select * from {{ ref('base_gas__users') }}
),

renamed as (

    select
        c.car_id as car_id,
        U.user_id as owner_id,
        km,
        make,
        model,
        fuel_category,
        gear,
        hp as power_hp,
        year
    from source_c c
    join source_u U
    on U.car_id = c.car_id

)

select * from renamed