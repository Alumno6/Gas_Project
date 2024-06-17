{% set names = most_frequent_values(ref('gasolineras_snapshot'),'company',10) %}

with

source as(

    select * from {{ ref('gasolineras_snapshot') }}

),

station_renamed as (
    
    select
        case
            when SPLIT_PART(company, ' ', 1) in ('ALCAMPO','CARREFOUR','COSTCO','EROSKI') then 'SUPERMARKET'
            when SPLIT_PART(company, ' ', 1) in (
                {% for name in names %}
                    '{{ name }}'{% if not loop.last %},{% endif %}
                {% endfor %}
            ) then SPLIT_PART(company, ' ', 1)
            else 'OTHER'
        end as company_rename,
        {{ dbt_utils.star(ref('gasolineras_snapshot'), except=['company']) }}

    from source

)

select * from station_renamed