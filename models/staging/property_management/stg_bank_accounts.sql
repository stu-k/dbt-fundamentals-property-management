select
    id as bank_account_id,
    created_at as bank_account_created_at,
    name as bank_account_name,
    bank_account_number,
    routing_number as bank_account_routing_number,
    uploaded_at as bank_account_uploaded_at
from {{ source('property_management', 'bank_accounts') }}