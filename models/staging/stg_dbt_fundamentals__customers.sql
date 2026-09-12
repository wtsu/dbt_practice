SELECT 
    id as customer_id, 
    first_name, 
    last_name, 
    first_name || '' || last_name AS full_name
FROM {{source('dbt_fundamentals','customers')}}