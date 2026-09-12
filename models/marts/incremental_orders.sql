{{ 
    config(
        materialized = 'incremental',
        unique_key = 'order_id',
        incremental_strategy = 'merge'
        )
}}

SELECT 
    order_id,  
    order_date
FROM {{ref('stg_dbt_fundamentals__orders')}} as orders

{% if is_incremental() %}
WHERE order.order_date >= (select max(order_date) from {this} group by all)

{% endif %}