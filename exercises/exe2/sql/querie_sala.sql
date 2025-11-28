FROM
    sala_jobs;

--a)
SELECT --can add distinc to get unique values
    employment_type as abbreviation CASE employment_type
        WHEN 'CT' THEN 'Contract'
        WHEN 'FL' THEN 'Freelance'
        WHEN 'PT' THEN 'Part time'
        WHEN 'CT' THEN 'Full time'
    END AS meaning
FROM
    sala_jobs;

--b)
SELECT DISTINCT
    company_size as abbrev,
    CASE company_size
        WHEN 'M' THEN 'Contract'
        WHEN 'S' THEN 'Freelance'
        WHEN 'L' THEN 'Part time'
    END AS meaning
FROM
    sala_jobs;

--c) i am assuming that
SELECT
    salary_in_us,
    (salary_in_usd / 12) * 9.5 as salary_month_sek
FROM
    sala_jobs;

--d) made sek colum permanetm in update for

SELECT -- checking stats
     MIN(salary_month_sek) AS min_sek,
     MAX(salary_month_sek) AS max_sek,
     MEAN(salary_month_sek) AS mean_sek
FROM
    sala_jobs;
----------------- made the column permanet in updata file
SELECT 
salary_month_sek
CASE
WHEN salary_month_sek BETWEEN 0 AND 50000 THEN low
WHEN salary_month_sek BETWEEN 50001 AND 120000 THEN medium
WHEN salary_month_sek BETWEEN 120001 AND 300000 THEN high
WHEN salary_month_sek BETWEEN 300001 AND 600000 THEN insanly_high
END AS sala_cat
FROM sala_jobs;

SELECT salary_lev FROM sala_jobs;

--1.a)

SELECT COUNT(job_title = 'Data Engineer') FROM sala_jobs;

--1.b)
SELECT DISTINCT COUNT(job_title) FROM sala_jobs;

--1.C)
SELECT salary_lev, 
COUNT(*) AS nr_of_jobs
FROM sala_jobs GROUP BY salary_lev ORDER BY nr_of_jobs:

--1.d)

SELECT  experience_level,
MEDIAN(salary_month_sek) AS median_salary,
AVG(salary_month_sek) AS avg_salary
FROM sala_jobs
where experience_level IN ('SE', 'EX')
GROUP BY experience_level
ORDER BY experience_level;

--1.e)


SELECT  job_title,
MEDIAN(salary_month_sek) AS median_salary,

FROM sala_jobs
GROUP BY job_title
ORDER BY job_title;