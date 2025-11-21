SELECT
    sql_word,
    TRIM(sql_word) as trimmed_word -- TRIM tar bort alla spaces 
FROM
    staging.sql_glossary;

SELECT
    sql_word,
    upper(TRIM(sql_word)) as trimmed_word -- TRIM tar bort alla spaces 
FROM
    staging.sql_glossary;

SELECT
    sql_word,
    upper(TRIM(sql_word)) as trimmed_word -- TRIM tar bort alla spaces 
  
  upper(trim(sql_word)) || ' command' AS sql_command_pipe -- concat


SELECT
    description
FROM
    staging.sql_glossary;

SELECT
	description, 
	replace(description), '  ',' ') as cleaned_description
FROM
	staging.sql_glossary;


SELECT
	description, 
	replace(description, '  ',' ') as cleaned_description,
    regexp_replace(trim(description), ' +', ' ','g') as regexp_replace
FROM
	staging.sql_glossary;




SELECT 'hej på dig' AS s1,
REVERSE (s1),
'ni talar bra latin' AS p1,
REVERSE (p1);

