FROM
    film;

DESC TABLE film;

FROM
    film_category;

from
    customer;

SELECT
    'customer' as type,
    c.first_name || ' ' || c.last_name as name
FROM
    customer c --alias

-- all customer staring with b
SELECT
    'customer' as type,
    c.first_name || ' ' || c.last_name as name
FROM
    customer c 
WHERE c.first_name ILIKE 'b%'; -- i = ej case sensetive

