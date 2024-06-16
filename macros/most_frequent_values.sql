
{% macro most_frequent_values(table, column, top_n) %}

    {% set query_sql %}
        SELECT valores
        FROM(
            SELECT 
                count(*) AS conteo, 
                {{column}} as valores
            FROM 
                {{table}}
            GROUP BY 
                {{column}}
            ORDER BY
                conteo desc
            limit {{top_n}} 
        )s
    {% endset %}
    --Ejecutamos la query    
    {% set results = run_query(query_sql) %}
    --En caso de que se ejecute
    {% if execute %}
    --Devolvemos los valores de la primera columna
        {% set results_list = results.columns[0].values() %}
    {% else %}
        {% set results_list = [] %}
    {% endif %}

{{ return(results_list) }}
{% endmacro %}