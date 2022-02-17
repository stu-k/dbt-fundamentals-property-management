with transactions as (
    select
        transaction_id as id,
        transaction_created_at as created_at,
        transaction_amount as amount
    from {{ ref('stg_transactions') }}
),

payments as (
    select
        payment_id as id,
        payment_created_at as created_at,
        payment_amount as amount
    from {{ ref('stg_payments') }}
),

final as (
    select * from transactions
    union all
    select * from payments
)

select * from final