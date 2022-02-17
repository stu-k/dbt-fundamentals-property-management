select
    id as transaction_id,
    created_at as transaction_created_at,
    deleted_at as transaction_deleted_at,
    type as transaction_type,
    amount as transaction_amount,
    payer as transaction_payer_name,
    payee as transaction_payee_name,
    uploaded_at as transaction_uploaded_at
from {{ source('property_management', 'transactions') }}