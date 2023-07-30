with 

source as (

    select * from {{ source('inventory', 'date_dim') }}

),

renamed as (

    select
        date,
        year,
        month,
        day_of_month,
        day_of_week,
        quarter,
        is_weekend

    from source

)

select * from renamed
