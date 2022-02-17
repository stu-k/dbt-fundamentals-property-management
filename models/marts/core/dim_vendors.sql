with vendors as (
    select * from {{ ref('stg_vendors') }}
),

bank_accounts as (
    select * from {{ ref('stg_bank_accounts') }}
),

contact_infos as (
    select * from {{ ref('stg_contact_infos') }}
),

final as (
    select
        *
    from vendors
    left join bank_accounts using (bank_account_id)
    left join contact_infos using (contact_info_id)
)

select * from final