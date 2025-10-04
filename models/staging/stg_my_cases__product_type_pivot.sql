with 
product_types_ as (
    select 
        sku,
        type,
        price
    from {{ref('stg_my_cases__products')}}
),
aggregated as (
    select 
        sku,
        {%- set product_types = ['beverage','jaffle'] -%}
        {%- for product_type in product_types %}
        sum(case when type = '{{product_type}}' THEN price ELSE 0 END) as {{product_type}}_price
        {%- if not loop.last -%}
        ,
        {%- endif -%}
        {%- endfor %}
    from product_types_
    group by 1
)
select * from aggregated