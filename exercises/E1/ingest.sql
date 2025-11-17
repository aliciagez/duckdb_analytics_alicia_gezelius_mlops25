CREATE TABLE
    IF NOT EXISTS hemnet AS (
            SELECT 
                *
            FROM read_csv_auto('data_hem/hemnet_data_clean.csv')
);