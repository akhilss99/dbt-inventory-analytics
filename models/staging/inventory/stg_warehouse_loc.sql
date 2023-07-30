with 

source as (

    select * from {{ source('inventory', 'warehouse_loc') }}

),

renamed as (

    select
        warehouse_location_id,
        place,
        street_address

    from source

)

select * from renamed
