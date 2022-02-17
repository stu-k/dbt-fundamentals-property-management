with properties as (
    select * from {{ ref('stg_properties') }}
),

property_owners as (
    select * from {{ ref('stg_property_owners') }}
),

units as (
    select * from {{ ref('stg_units') }}
),

final as (
    select
        *
    from properties
    left join property_owners using (property_id)
    left join units using (property_id)
)

select * from final