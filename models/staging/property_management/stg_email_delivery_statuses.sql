select
    id as email_delivery_status_id,
    created_at as email_delivery_status_created_at,
    event as email_delivery_status_event,
    email_id,
    uploaded_at as email_delivery_uploaded_at
from {{ source('property_management', 'email_delivery_statuses') }}