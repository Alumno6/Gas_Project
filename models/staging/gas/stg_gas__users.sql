with 

source_u as (

    select * from {{ ref('base_gas__users') }}
),

renamed as (

    select
        U.user_id,
        nombre as name,
        genero as gender,
        edad as age,
        ocupacion as job,
        provincia_id as provincia_id,
        ingreso_anual as annual_income,
        estado_civil as marital_status,
        email

    from source_u U
)

select * from renamed