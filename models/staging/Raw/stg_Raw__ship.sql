with source as (

    select * from {{ source('Raw', 'ship') }}

),

renamed as (

    select
        source.orders_id,
        source.shipping_fee,
        source.logcost as log_cost,
        safe_cast(source.ship_cost as float64) as ship_cost

    from source

)

select * from renamed