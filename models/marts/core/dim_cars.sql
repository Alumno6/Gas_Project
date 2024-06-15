with 

source as (

    select * from {{ ref('stg_gas__cars') }}

),

renamed as (

    select
        *

    from source

)

select * from renamed
