with 

source_provincias as (

    select * from {{ ref('provincias_snapshot') }}

),

renamed as (

    select
        provincia_id,
        provincias as name,
        poblacion,
        tasa_de_paro,
        indice_industrial,
        iff(costa = true, 'Si', 'No') as tiene_costa,
        pib_per_capita, 
        densidad_de_poblacion,
        tasa_de_natalidad,
        tasa_de_mortalidad,
        nivel_educativo,
        iff(frontera = true, 'Si', 'No') as tiene_frontera,
        dbt_valid_from,
        dbt_valid_to

    from source_provincias


)

select * from renamed