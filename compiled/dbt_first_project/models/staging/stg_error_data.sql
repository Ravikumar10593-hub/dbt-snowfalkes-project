-- Combine with error data
with ErrorData AS (
    SELECT
        e.DATETIME,
        e.MACHINEID,
        e.ERRORID
    FROM
        DBT_TEST.DBO.PDM_ERRORS e
)

SELECT * from ErrorData