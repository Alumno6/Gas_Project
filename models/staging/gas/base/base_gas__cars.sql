with

source as (

    select * from {{ source('gas', 'coches') }}
),

rename as (

    select * 
    from source
)
select * from rename
