with 

source as (

    select * from {{ ref('stg_gas__users') }}

),

renamed as (

    select
        *

    from source

)

select * from renamed