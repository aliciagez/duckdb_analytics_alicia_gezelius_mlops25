SELECT
    food,
    SUM(number_of_seaches) AS total_seaches
FROM
    cleand_food
GROUP BY
    food
ORDER BY
    total_seaches DESC
LIMIT 10;



SELECT
    year,
    SUM(number_of_seaches) AS total_seaches
FROM
    cleand_food
GROUP BY
    year
ORDER BY
    total_seaches DESC
LIMIT 10;


SELECT
    year,
    SUM(number_of_seaches) AS total_seaches
FROM
    cleand_food
GROUP BY
    year
ORDER BY
    year;


SELECT
    year,
    SUM(number_of_seaches) AS total_seaches
FROM
    cleand_food
GROUP BY
    year
HAVING
    total_seaches > 30000
ORDER BY
     total_seaches DESC;


SELECT
    year,
    food,
    SUM(number_of_seaches) AS total_seaches
FROM
    cleand_food
GROUP BY
    food,
    year
HAVING
    food IN ('pizza','sushi')
ORDER BY
    food, year DESC;