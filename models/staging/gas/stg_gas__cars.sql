with 

source_c as (

    select * from {{ ref('cars_snapshot') }}

),
source_u as (

    select * from {{ ref('users_snapshot') }}
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
    where c.dbt_valid_to is null

)

select * from renamed