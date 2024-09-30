{{ config(
    materialized='table',
    schema='Raw'
)}}
select * from {{source('dbt_raw_layer','raw_payments')}}