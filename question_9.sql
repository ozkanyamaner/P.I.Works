SELECT 
    REGEXP_REPLACE(Stats_Access_Link, '<[a-z]+>[A-Za-z]+://[[A-Za-z0-9\._]+</[a-z]+>', '$1') AS url
FROM 
    table_name