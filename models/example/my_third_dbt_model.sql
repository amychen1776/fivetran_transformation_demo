
-- Example of a ref: this function creates an edge
-- in the DAG between my_third_dbt_model and my_second_dbt_model
-- like we discussed on May 11, 2021 :)

select *
from {{ ref('my_second_dbt_model') }}
