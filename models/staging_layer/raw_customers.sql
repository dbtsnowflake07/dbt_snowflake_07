select * from {{source('dbt_raw_layer','raw_customers')}}

-- DBTSNOWFLAKE.SC_ECOMM.raw_customers