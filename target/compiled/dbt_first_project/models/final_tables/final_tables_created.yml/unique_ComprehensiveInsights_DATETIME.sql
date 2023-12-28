
    
    

select
    DATETIME as unique_field,
    count(*) as n_records

from DBT_TEST.dbo_final_table.ComprehensiveInsights
where DATETIME is not null
group by DATETIME
having count(*) > 1


