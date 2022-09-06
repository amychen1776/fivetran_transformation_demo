with julia as (
    select * from {{ ref('julia_demo_model') }}
),
demo as (
    select * from {{ ref('demo_model') }}
),
combined as (
    select demo.id, julia.employees, 3 as random
    from demo left join julia
        on demo.id = julia.id
)

select * from combined
