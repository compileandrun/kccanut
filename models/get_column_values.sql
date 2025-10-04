-- Returns a list of the payment_methods in the stg_payments model_
{% set payment_methods = dbt_utils.get_column_values(table=ref('stg_my_cases__products'), column='type') %}

select {{payment_methods}} as test
