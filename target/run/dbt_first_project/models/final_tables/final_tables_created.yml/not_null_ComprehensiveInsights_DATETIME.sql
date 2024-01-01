select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select DATETIME
from DBT_TEST.dbo_final_table.ComprehensiveInsights
where DATETIME is null



      
    ) dbt_internal_test