select 
    id as payment_id, 
    orderid as order_id,
    created as payment_created,
    status as payment_status, 
    round(amount/100) as payment_amount,
    paymentmethod as payment_method
from {{source('dbt_fundamentals','stripe_payments')}}