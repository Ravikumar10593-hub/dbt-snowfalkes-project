-- back compat for old kwarg name
  
  begin;
    
        
            
            
        
    

    

    merge into DBT_TEST.dbo.test_result_rows as DBT_INTERNAL_DEST
        using DBT_TEST.dbo.test_result_rows__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                DBT_INTERNAL_SOURCE.elementary_test_results_id = DBT_INTERNAL_DEST.elementary_test_results_id
            )

    
    when matched then update set
        "ELEMENTARY_TEST_RESULTS_ID" = DBT_INTERNAL_SOURCE."ELEMENTARY_TEST_RESULTS_ID","RESULT_ROW" = DBT_INTERNAL_SOURCE."RESULT_ROW","DETECTED_AT" = DBT_INTERNAL_SOURCE."DETECTED_AT","CREATED_AT" = DBT_INTERNAL_SOURCE."CREATED_AT"
    

    when not matched then insert
        ("ELEMENTARY_TEST_RESULTS_ID", "RESULT_ROW", "DETECTED_AT", "CREATED_AT")
    values
        ("ELEMENTARY_TEST_RESULTS_ID", "RESULT_ROW", "DETECTED_AT", "CREATED_AT")

;
    commit;