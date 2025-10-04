
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ 
    config(
        materialized='table'
    ) 
    }}

with cte as (select 1)

select id, financial_status
from {{ source('my_cases','pergolux_shopify_ext_2') }}

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
