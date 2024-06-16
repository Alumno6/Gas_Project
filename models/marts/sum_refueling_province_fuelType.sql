with 

source as (

    select * from {{ ref('Total_refueling_province_fuelType') }}

),

renamed as (

    select
        *

    from source

)

select * from renamed