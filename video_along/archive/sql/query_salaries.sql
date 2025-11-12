SELECT
    *
FROM
    data_jobs;

-- SCHEMA namespcae 
SELECT
    *
FROM
    main.data_jobs;

-- fully qualifies namespace
SELECT
    *
FROM
    data_jobs.main.data_jobs;

-- limit caluse 
SELECT
    *
FROM
    data_jobs
LIMIT
    5;

SELECT
    *
FROM
    data_jobs
OFFSET
    5;

desc data_jobs;

--SELECET SPECIFIED COLUMS
SELECT
    work_year,
    job_title,
    company_location
FROM
    data_jobs;

-- select all stuff exetpet some
SELECT
    * EXCLUDE (salary, work_year)
FROM
    data_jobs;

SELECT DISTINCT
    employment_type
FROM
    data_jobs;