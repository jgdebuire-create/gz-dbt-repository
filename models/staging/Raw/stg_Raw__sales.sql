with 

source as (

    select * from {{ source('Raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        products_id,
        revenue,
        quantity

    from source

)

select * from renamed