with 

source as (

    select * from {{ ref('stg_gas__fuel_price') }}

),

renamed as (

    select
        *

    from source

)

select * from renamed