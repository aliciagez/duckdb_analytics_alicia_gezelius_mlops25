SELECT
    trim(sql_word, ' ') as trimmed_word,
    trimmed_word[1] as first_char,
    trimmed_word[-1] as last_char,
FROM
    staging.sql_glossary;


SELECT
    upper(trim(sql_word, ' ')) as trimmed_word,
    trimmed_word[1] as first_char,
    trimmed_word[-1] as last_char,
FROM
    staging.sql_glossary;

SELECT
	description, 
	replace(description, ' ')) as cleaned_description
FROM
	staging.sql_glossary;


SELECT
    concat(upper(trim(sql_word)), ' command') AS sql_command_concat,
    upper(trim(sql_word)) || ' command' AS sql_command_pipe
FROM staging.sql_glossary;


SELECT
   trim(sql_word) as trimmed_word
FROM
    staging.sql_glossary;


SELECT
   trim(sql_word) as trimmed_word, 
   substring(trim(sql_word),1,5) as five_first_char,
   trimmed_word[1:5] as trimmed_word_slice, 
FROM
    staging.sql_glossary;



SELECT
   reverse(trim(sql_word)) as trimmed_word
FROM
    staging.sql_glossary;


SELECT 
    description, 
    instr(description, 'select') as select_postitions, 
    select_postitions != 0 AS asbout_select 
FROM staging.sql_glossary;

