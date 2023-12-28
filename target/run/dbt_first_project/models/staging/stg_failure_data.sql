
  create or replace   view DBT_TEST.dbo_staging.stg_failure_data
  
   as (
    -- Combine with failure data
with FailureData AS (
    SELECT
        f.DATETIME,
        f.MACHINEID,
        f.FAILURE
    FROM
        DBT_TEST.DBO.PDM_FAILURES f
)

select * from FailureData
  );

