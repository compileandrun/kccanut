{% macro test_macro() %}

{% set temp = 40 %}

{% if temp > 50 %}
{{log('Thats cool', info=True)}}

{% else %}
{{log('Thats cold', info=True)}}

{% endif %}

{% endmacro %}