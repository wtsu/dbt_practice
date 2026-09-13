{{ 
    config(
        materialized = 'incremental',
        unique_key = 'order_id',
        incremental_strategy = 'merge',
        on_schema_change = 'append_new_columns',
        grants = {'select': ['analyst_role']}
        )
}}

SELECT 
    order_id,  
    order_date,
    order_status
FROM {{ref('stg_dbt_fundamentals__orders')}} as orders

{% if is_incremental() %}
WHERE orders.order_date >= (select max(order_date) from {{this}} group by all)

{% endif %}