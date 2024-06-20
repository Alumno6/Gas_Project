{% set names = most_frequent_values(ref('stg_gas__gasolineras'),'company',10) %}

with

source as(

    select * from {{ ref('stg_gas__gasolineras') }}

),

station_renamed as (
    
    select
        {{dbt_utils.generate_surrogate_key(['company'])}} as company_id,
        company,
        case
            when SPLIT_PART(SPLIT_PART(SPLIT_PART(company, ' ', 1),'-', 1),',', 1) 
            in ('ALCAMPO','CARREFOUR','COSTCO','EROSKI') then 'SUPERMARKET'
            when SPLIT_PART(SPLIT_PART(SPLIT_PART(company, ' ', 1),'-', 1),',', 1)  in (
                {% for name in names %}
                    '{{ name }}'{% if not loop.last %},{% endif %}
                {% endfor %}
            ) then SPLIT_PART(SPLIT_PART(SPLIT_PART(company, ' ', 1),'-', 1),',', 1)
            else 'OTHER'
        end as company_rename

    from source
    group by company, company_rename

)

select * from station_renamed