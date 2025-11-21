FROM
    actor;

FROM
    film;

FROM
    address;

FROM
    category;

FROM
    film_actor;

SELECT
    COUNT(*) AS movie_numbers,
    COUNT(DISTINCT title) AS unique_number_of_titles
FROM
    film;

SELECT DISTINCT
    rating
FROM
    main.film;

DESC TABLE film_actor;

FROM
    customer;

SELECT
    'customer' as type,
    c.first_name,
    c.last_name
FROM
    customer c
WHERE
    c.first_name LIKE 'D%'