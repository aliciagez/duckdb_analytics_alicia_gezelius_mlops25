SELECT
    id as food,
    week_id as week,
    SUBSTRING(week, 1, 4) as year,
    value as number_of_seaches
FROM
    food;

CREATE TABLE
    IF NOT EXISTS cleand_food AS (
        SELECT
            id as food,
            week_id as week,
            SUBSTRING(week, 1, 4) as year,
            value as number_of_seaches
        FROM
            food
    );