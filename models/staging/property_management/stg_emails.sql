select
    id as email_id,
    created_at as email_created_at,
    sent_at as email_sent_at,
    subject as email_subject,
    body as email_body,
    delivered_at as email_delivered_at,
    uploaded_at as email_uploaded_at
from {{ source('property_management', 'emails') }}