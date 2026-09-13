select
    o.order_id, 
    o.customer_id, 
    c.customer_name,
    o.ordered_at, 
    o.store_id, 
    o.subtotal, 
    o.tax_paid, 
    o.order_total
from {{ref('stg_jaffle_data__orders')}} as o
left join {{ref('stg_jaffle_data__customers')}} as c
    on o.customer_id = o.customer_id