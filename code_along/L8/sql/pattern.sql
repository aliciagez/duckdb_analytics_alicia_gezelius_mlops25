SELECT
    *
FROM
    refined.sql_glossary
WHERE
    sql_word LIKE 'ORD%'; -- måste vara korrekt ord, alltså trimmed_word i detta fall
SELECT
    *
FROM
    refined.sql_glossary
WHERE
    sql_word LIKE 'ORD%';
     -- måste vara korrekt ord, alltså trimmed_word i detta fall

SELECT
    *
FROM
    refined.sql_glossary
WHERE
    trimmed_word LIKE 'UP_A_E'; -- underscore kan be3tydav vad som helst 