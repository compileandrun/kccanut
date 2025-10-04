{{config(enabled=false)}}

{% test not_null(model,column_name) %}

    select 
        * 
    from {{model}}
    where {{column_name}} is null and 1=1

{% endtest %}