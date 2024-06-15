with 

source as (

    select * from {{ ref('cars_snapshot') }}

),
source_u as (

    select * from {{ ref('users_snapshot') }}
),

renamed as (

    select
        s.car_id,
        U.user_id as owner_id,
        km,
        make,
        model,
        fuel_category,
        gear,
        hp as power_hp,
        year
    from source s
    join source_u U
    on U.car_id = s.car_id
    where s.dbt_valid_to is null

)

select * from renamed