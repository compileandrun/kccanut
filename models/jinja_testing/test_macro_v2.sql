{% set temp = 60 %}

select
    {% if temp > 50 %}
        'Thats cool' as msg
    {% else %}
        'Thats cold' as msg
    {% endif %}