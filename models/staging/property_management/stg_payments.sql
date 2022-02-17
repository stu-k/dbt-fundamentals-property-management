select
    id as payment_id,
    orderid as payment_order_id,
    paymentmethod as payment_method,
    status as payment_status,
    amount as payment_amount,
    created as payment_created_at
from {{ source('stripe', 'payment') }}