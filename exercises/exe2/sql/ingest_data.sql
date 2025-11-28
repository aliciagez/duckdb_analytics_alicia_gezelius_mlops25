CREATE TABLE
    IF NOT EXISTS sala_jobs AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/jobs_sala.csv')
    );