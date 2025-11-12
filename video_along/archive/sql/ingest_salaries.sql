CREATE TABLE
    IF NOT EXISTS data_jobs AS (
            SELECT 
                *
            FROM read_csv_auto('video_along/archive/data/salaries.csv')
);