{{config(enabled=false)}}

select 
    order_id,
    order_total
from {{ref('stg_my_cases__orders')}}
where order_total < 0