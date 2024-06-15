with 

source_u as (

    select * from {{ ref('users_snapshot') }}
),
source_p as (

    select * from {{ ref('provincias_snapshot') }}
),

renamed as (

    select
        user_id,
        nombre as name,
        genero as gender,
        edad as age,
        ocupacion as job,
        P.provincia_id as provincia_id,
        ingreso_anual as annual_income,
        estado_civil as marital_status,
        email

    from source_u U
    join source_p P
    on U.provincia = P.provincias
    where U.dbt_valid_to is null
)

select * from renamed