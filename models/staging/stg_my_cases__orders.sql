    with cte as (select
        id as order_id,
        customer as customer_id,
        ordered_at as order_date,
        order_total as order_total,
        {{divide_by_100('order_total')}} as order_total_divided_by_100

    from {{source('raw_data', 'raw_orders')}}
    )
    select * from cte