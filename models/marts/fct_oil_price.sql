
with 

source as (

    select * from {{ ref('stg_gas__oil_price') }}

),

renamed as (

    select
        *

    from source

)

select * from renamed