-- back compat for old kwarg name
  
  begin;
    
        
            
            
        
    

    

    merge into DBT_TEST.dbo.schema_columns_snapshot as DBT_INTERNAL_DEST
        using DBT_TEST.dbo.schema_columns_snapshot__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                DBT_INTERNAL_SOURCE.column_state_id = DBT_INTERNAL_DEST.column_state_id
            )

    
    when matched then update set
        "COLUMN_STATE_ID" = DBT_INTERNAL_SOURCE."COLUMN_STATE_ID","FULL_COLUMN_NAME" = DBT_INTERNAL_SOURCE."FULL_COLUMN_NAME","FULL_TABLE_NAME" = DBT_INTERNAL_SOURCE."FULL_TABLE_NAME","COLUMN_NAME" = DBT_INTERNAL_SOURCE."COLUMN_NAME","DATA_TYPE" = DBT_INTERNAL_SOURCE."DATA_TYPE","IS_NEW" = DBT_INTERNAL_SOURCE."IS_NEW","DETECTED_AT" = DBT_INTERNAL_SOURCE."DETECTED_AT","CREATED_AT" = DBT_INTERNAL_SOURCE."CREATED_AT"
    

    when not matched then insert
        ("COLUMN_STATE_ID", "FULL_COLUMN_NAME", "FULL_TABLE_NAME", "COLUMN_NAME", "DATA_TYPE", "IS_NEW", "DETECTED_AT", "CREATED_AT")
    values
        ("COLUMN_STATE_ID", "FULL_COLUMN_NAME", "FULL_TABLE_NAME", "COLUMN_NAME", "DATA_TYPE", "IS_NEW", "DETECTED_AT", "CREATED_AT")

;
    commit;