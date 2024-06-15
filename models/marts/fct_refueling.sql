with 

source as (

    select * from {{ ref('stg_gas__repostajes') }}

),

renamed as (

    select
        *

    from source

)

select * from renamed