select
    id as vendor_id,
    created_at as vendor_created_at,
    contact_info_id,
    bank_account_id,
    uploaded_at as vendor_uploaded_at
from {{ source('property_management', 'vendors') }}