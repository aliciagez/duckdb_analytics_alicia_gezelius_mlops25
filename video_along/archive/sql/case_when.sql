SELECT
    CASE
        WHEN experience_level = 'SE' then 'Senior level'
        WHEN experience_level = 'MI' then 'Mid level'
        WHEN experience_level = 'EN' then 'Entry level'
        WHEN experience_level = 'EX' then 'Expert level'
    END AS experience_level,
    * EXCLUDE (experience_level)
FROM
    data_jobs;

UPDATE data_jobs
SET
    experience_level = CASE
        WHEN experience_level = 'SE' then 'Senior level'
        WHEN experience_level = 'MI' then 'Mid level'
        WHEN experience_level = 'EN' then 'Entry level'
        WHEN experience_level = 'EX' then 'Expert level'
    END;

SELECT DISTINCT
    experience_level
FROM
    data_jobs;