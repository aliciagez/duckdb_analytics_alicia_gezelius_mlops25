CREATE TABLE
    IF NOT EXISTS data_stuff AS (
            SELECT 
                *
            FROM read_csv_auto('data/file.csv')
);