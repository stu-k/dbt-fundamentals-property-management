with emails as (
    select * from {{ ref('stg_emails') }}
),

email_delivery_statuses as (
    select * from {{ ref('stg_email_delivery_statuses') }}
),

final as (
    select
        *
    from emails
    left join email_delivery_statuses using (email_id)
    where email_delivery_status_event = 'delivered'
)

select * from final