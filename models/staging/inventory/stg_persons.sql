with 

source as (

    select * from {{ source('inventory', 'persons') }}

),

renamed as (

    select
        person_id,
        first_name,
        last_name

    from source

)

select * from renamed
