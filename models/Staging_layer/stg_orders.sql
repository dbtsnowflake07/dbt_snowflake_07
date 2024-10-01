{{ config(
    materialized='table',
    
    schema='Stage'
)}}
select * from {{source('dbt_raw_layer','raw_orders')}}