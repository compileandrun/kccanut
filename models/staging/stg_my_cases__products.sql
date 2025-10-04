with source as (

    select * from {{ source('raw_data', 'raw_products') }}

),

renamed as (

    select
        sku,
        name,
        type,
        price,
        description

    from source

)

select * from renamed