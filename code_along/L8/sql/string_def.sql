SELECT
sql_word,
    TRIM(sql_word) as trimmed_word -- TRIM tar bort alla spaces 
FROM
    staging.sql_glossary;