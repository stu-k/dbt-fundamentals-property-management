with leases as (
    select * from {{ ref('stg_leases') }}
),

rental_applications as (
    select * from {{ ref('stg_rental_applications') }}
),

tenants as (
    select * from {{ ref('dim_tenants') }}
),

final as (
    select
        leases.*
    from leases
    left join rental_applications using (rental_application_id)
    left join tenants using (lease_id)
    where lease_completed = 'true'
)

select * from final