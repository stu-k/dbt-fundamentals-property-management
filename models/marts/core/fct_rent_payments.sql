with tenants as (
    select * from {{ ref('dim_tenants') }}
),

leases as (
    select * from {{ ref('stg_leases') }}
),

units as (
    select * from {{ ref('stg_units') }}
),

transactions as (
    select * from {{ ref('stg_transactions') }}
),

final as (
    select
        *
    from tenants
    left join leases using (lease_id)
    left join transactions on transactions.transaction_payer_name = tenants.contact_info_full_name
    left join units using (unit_id)
)

select * from final