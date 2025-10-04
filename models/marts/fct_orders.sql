SELECT 
    c.customer_id,
    o.order_id,
    o.order_date,
    sum(o.order_total) as amount_spent
    
FROM {{ref('dim_customers')}} c 
LEFT JOIN {{ref('stg_my_cases__orders')}} o
ON c.customer_id = o.customer_id
GROUP BY 1,2,3