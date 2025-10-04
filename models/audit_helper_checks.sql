{#
{% set old_relation = adapter.get_relation(
      database = ref('stg_my_cases__products').database,
      schema = ref('stg_my_cases__products').schema,
      identifier = ref('stg_my_cases__products').identifier
) -%}
#}

{% set old_relation = ref('stg_my_cases__products') %}

{% set dbt_relation = ref('stg_my_cases__product_type_pivot') %}

{{ audit_helper.compare_row_counts(
    a_relation = old_relation,
    b_relation = dbt_relation
) }}

{##}