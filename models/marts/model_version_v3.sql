select 
customer_id, 
customer_name
FROM 
{{ref('stg_jaffle_data__customers')}}