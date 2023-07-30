with 

source as (

    select * from {{ source('inventory', 'inventory_log_hist') }}

),

renamed as (

    select
        uid,
        product_sku,
        initial_stock_qty,
        current_stock_qty,
        warehouse_location_id,
        approved_by,
        date

    from source

)

select * from renamed
