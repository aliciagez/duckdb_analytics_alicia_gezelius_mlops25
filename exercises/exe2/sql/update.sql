ALTER TABLE sala_jobs
ADD COLUMN salary_month_sek DOUBLE;

UPDATE sala_jobs
SET
    salary_month_sek = (salary_in_us / 12) * 9.5;

ALTER TABLE sala_jobs
ADD COLUMN salary_lev VARCHAR;

UPDATE sala_jobs
SET salary_lev =
CASE
WHEN salary_month_sek BETWEEN 0 AND 50000 THEN 'low'
WHEN salary_month_sek BETWEEN 50001 AND 120000 THEN 'medium'
WHEN salary_month_sek BETWEEN 120001 AND 300000 THEN 'high'
WHEN salary_month_sek BETWEEN 300001 AND 600000 THEN 'insanly_high'
END;

