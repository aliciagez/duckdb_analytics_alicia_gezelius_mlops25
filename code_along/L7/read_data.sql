CREATE TABLE If NOT EXISTS food AS (
SELECT * FROM read_csv_auto('code_along/L7/data/food_googel.csv')
);