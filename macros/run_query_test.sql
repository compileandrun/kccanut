{% macro get_product_types() %}

{% set product_types_query %}
select distinct
type
from {{ ref('raw_products') }}
order by 1
{% endset %}

{% set results = run_query(product_types_query) %}

{{ log(results, info=True) }}

{{ return([]) }}

{% endmacro %}


{#
This version wouldnt return anything on the terminal.
{{ log(results, info=True) }}

{{ return(results) }}

#}

{#
This version returns an agate table.
{{ log(results, info=True) }}

{{ return([]) }}
#}