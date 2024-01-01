select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    DATETIME as unique_field,
    count(*) as n_records

from DBT_TEST.dbo_final_table.ComprehensiveInsights
where DATETIME is not null
group by DATETIME
having count(*) > 1



      
    ) dbt_internal_test