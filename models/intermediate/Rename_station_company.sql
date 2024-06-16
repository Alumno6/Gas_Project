{% set names = most_frequent_values(ref('gasolineras_snapshot'),'company',10) %}

with 

source_sta as (
    
    select * from {{ ref('gasolineras_snapshot') }}
    where dbt_valid_to is null

),

renamed as (

    select
        case
            when (SPLIT_PART(company,' ', 1)) in(
                                                                                              
                                                )
    from source_sta
)

select * from renamed