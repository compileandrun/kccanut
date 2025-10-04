{% macro compare_and_classify_relation_rows() %}
    {% set old_relation = ref('stg_my_cases__orders') %}
    {% set dbt_relation = ref('stg_my_cases__orders_depr') %}

    {% set sql %}
        {{ audit_helper.compare_and_classify_relation_rows(
            a_relation = old_relation,
            b_relation = dbt_relation,
            primary_key_columns = ["order_id"],
            columns = None
        ) }}
    {% endset %}

    {% set results = run_query(sql) %}
    {{ log(results, info=True) }}
{% endmacro %}