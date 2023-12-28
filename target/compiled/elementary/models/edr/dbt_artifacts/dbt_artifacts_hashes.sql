




select
  'dbt_models' as artifacts_model,
   metadata_hash
from DBT_TEST.dbo.dbt_models
 union all 

select
  'dbt_tests' as artifacts_model,
   metadata_hash
from DBT_TEST.dbo.dbt_tests
 union all 

select
  'dbt_sources' as artifacts_model,
   metadata_hash
from DBT_TEST.dbo.dbt_sources
 union all 

select
  'dbt_snapshots' as artifacts_model,
   metadata_hash
from DBT_TEST.dbo.dbt_snapshots
 union all 

select
  'dbt_metrics' as artifacts_model,
   metadata_hash
from DBT_TEST.dbo.dbt_metrics
 union all 

select
  'dbt_exposures' as artifacts_model,
   metadata_hash
from DBT_TEST.dbo.dbt_exposures
 union all 

select
  'dbt_seeds' as artifacts_model,
   metadata_hash
from DBT_TEST.dbo.dbt_seeds
 union all 

select
  'dbt_columns' as artifacts_model,
   metadata_hash
from DBT_TEST.dbo.dbt_columns


order by metadata_hash