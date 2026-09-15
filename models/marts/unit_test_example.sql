SELECT 
    first_name
    , Case 
        WHEN first_name ilike 'W%' THEN True 
        ELSE false 
    END AS starts_with_w
FROM {{ref('stg_dbt_fundamentals__orders')}} AS o
join {{ref('stg_dbt_fundamentals__customers')}} AS c 
    on o.customer_id = c.customer_id
