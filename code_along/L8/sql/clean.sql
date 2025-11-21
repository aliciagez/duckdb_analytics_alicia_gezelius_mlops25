CREATE SCHEMA IF NOT EXISTS refined; 

CREATE TABLE IF NOT EXISTS refined.sql_glossary AS (
    SELECT 
        upper(TRIM(sql_word)) as trimmed_word,
        regexp_replace(trim(description), ' +', ' ','g') as clean_desc,
        example
    FROM staging.sql_glossary
); 