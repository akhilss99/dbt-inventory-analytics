with 

source as (

    select * from {{ source('inventory', 'products') }}

),

renamed as (

    select
        product_sku,
        product_name,
        product_category,
        unit_price

    from source

)

select * from renamed
