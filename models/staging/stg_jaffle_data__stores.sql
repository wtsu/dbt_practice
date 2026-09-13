SELECT 
id as store_id, 
name as store_name, 
opened_at, 
tax_rate
FROM {{source('jaffle_data','raw_stores')}}