SELECT
    job_title,
    experience_level,
    ROUND((9.44 * salary_in_usd) / 12) AS salary_sek
FROM
    data_jobs
WHERE
    (salary_sek > 200000)
    AND (salary_sek < 500000)
ORDER BY
    salary_sek DESC;

SELECT
    job_title,
    experience_level,
    ROUND((9.44 * salary_in_usd) / 12) AS salary_sek
FROM
    data_jobs
WHERE
    salary_sek BETWEEN 200000 
    AND 300000
ORDER BY
    salary_sek DESC;
    
SELECT
    COUNT(*)
FROM
    data_jobs
WHERE
    experience_level = 'Senior level' 
    OR experience_level 'Expert level';
    
