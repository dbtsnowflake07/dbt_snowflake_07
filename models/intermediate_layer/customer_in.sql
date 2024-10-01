{{ config(
    materialized='table',
    
    schema='Intermediate'
)}}
select id as customer_id, first_name , last_name from {{
    ref("stg_customers")
     }}