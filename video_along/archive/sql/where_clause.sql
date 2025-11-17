SELECT
    COUNT(*)
FROM
    data_jobs;

SELECT
    COUNT(*)
FROM
    data_jobs
WHERE
    salary_in_usd < 50000;

SELECT DISTINCT
    experience_level
FROM
    data_jobs;

SELECT
    *
FROM
    data_jobs
WHERE
    experience_level = 'EN';
    

SELECT
    MEDIAN(salary_in_usd) AS median_sal,
    AVG(salary_in_usd) AS mean_sal
FROM
    data_jobs
WHERE
    experience_level = 'EN';

SELECT
    MEDIAN(salary_in_usd) AS median_sal,
    AVG(salary_in_usd) AS mean_sal
FROM
    data_jobs
WHERE
    experience_level = 'MI';

