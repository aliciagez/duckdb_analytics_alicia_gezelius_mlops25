SELECT
    *
FROM
    data_stuff;

SELECT
    *
FROM
    data_stuff
LIMIT
    5;

SELECT
    work_year,
    job_title,
FROM
    data_stuff;

SELECT
    * EXCLUDE (work_year, job_title)
FROM
    data_stuff;

SELECT DISTINCT
    empoyment_types
FROM
    data_stuff;

SELECT
    *
FROM
    data_stuff
ORDER BY
    salary_in_usd;

SELECT
    *
FROM
    data_stuff
ORDER BY
    salary_in_usd DESC, 
    job_title ASC;