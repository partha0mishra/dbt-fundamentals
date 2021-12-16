{% macro limit_data_in_dev(column_name, num_days=3) %}
{{ target.name }}
{% if target.name == 'default' %}
where {{column_name}} >= dateadd('day', -{{num_days}}, current_timestamp)
{% endif %}
{% endmacro %}