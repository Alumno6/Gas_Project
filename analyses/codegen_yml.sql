{% set models_to_generate = codegen.get_models(prefix='stg_gas__') %}
{{ codegen.generate_model_yaml(
    model_names = models_to_generate
) }}