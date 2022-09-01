select * from {{ ref('demo_model') }}

union all 

select * from {{ ref('julia_demo_model') }}