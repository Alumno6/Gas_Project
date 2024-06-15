with 

source as (

    select * from {{ source('gas', 'petrol_price') }}

),

renamed as (

    select
        fecha,
        precio
    from source

)

select * from renamed