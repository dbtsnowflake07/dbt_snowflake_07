{% set names=["teju","varma","Teja"] %}
{%- for i in names -%}
{%- if not loop.first %} 
union all {%- endif %}
select '{{i}}' as Customer_Name
{%- endfor %}
union all 
select {{  calculate_tax(1) }}  as Customer_Name

--   {% set items = ['apple', 'banana', 'orange'] %}
--    select '{{ items | join(", ") | upper }}' as fruits

