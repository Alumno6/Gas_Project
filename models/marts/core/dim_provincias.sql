with 

source as (

    select * from {{ ref('stg_gas__provincias') }}

),

renamed as (

    select
        *

    from source

)

select * from renamed