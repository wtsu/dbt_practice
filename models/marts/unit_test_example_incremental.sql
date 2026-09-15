{{config(
    materialized = 'incremental',
    incremental_strategy = 'merge',
    unique_key = 'order_id'
)}}

SELECT 
    ORDER_ID,
    ORDER_STATUS,
    CASE 
        when ORDER_STATUS IN ('completed') then true 
        else false 
    end as is_completed,
    ORDER_DATE
FROM {{ref('stg_dbt_fundamentals__orders')}} AS o

{% if is_incremental() %}
WHERE o.order_date > (SELECT max(order_date) FROM {{this}})
{% endif %}