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



