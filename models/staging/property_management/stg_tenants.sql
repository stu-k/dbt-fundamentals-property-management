select
    id as tenant_id,
    created_at as tenant_created_at,
    contact_info_id,
    bank_account_id,
    move_in_date as tenant_move_in_date,
    move_out_date as tenant_move_out_date,
    notice_date as tenant_notice_date,
    lease_id,
    uploaded_at as tenant_uploaded_at
from {{ source('property_management', 'tenants') }}