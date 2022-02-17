select
    id as contact_info_id,
    created_at as contact_info_created_at,
    first_name as contact_info_first_name,
    last_name as contact_info_last_name,
    email_address as contact_info_email_address,
    phone_number as contact_info_phone_number,
    uploaded_at as contact_info_uploaded_at,
    concat(first_name, ' ', last_name) as contact_info_full_name
from {{ source('property_management', 'contact_infos') }}