{% set env_var_test = env_var('DBT_COLUMN_NAME') %}
    select
        id as customer_id,
        name,
        null as null_column

        

    from {{source('raw_data', 'raw_customers')}}
    --from manifest-surfer-352407.my_cases.raw_customers
