-- Create business friendly models, such as revenue per cusotmer segement, total sales by region and inventory forecast
{{
    config(schema='Final',materialized='table')
}}
with customers as (

select * from {{ref("customer_in")}}

),
 payments as (

select * from {{ref("payments_in")}}
 )
, orders as (

select * from {{ref("orders_in")}}
)

select cust.customer_id , 
       concat(cust.first_name ,' ', cust.last_name) as customer_name,
       ord.order_id,
       ord.order_date,
       sum(p.payment_amount) as amount_spend
from customers cust 
left join orders ord
on cust.customer_id=ord.customer_id
left join payments p
on ord.order_id= p.order_id
where order_status='completed'
group by 1,2 ,3,4
order by cust.customer_id








