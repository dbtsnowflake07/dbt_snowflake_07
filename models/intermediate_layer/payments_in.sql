{{ config(
    materialized='table',
    
    schema='Intermediate'
)}}
select id as payment_id, order_id, payment_method, amount as payment_amount from {{
    ref("stg_payments")
    
    }}