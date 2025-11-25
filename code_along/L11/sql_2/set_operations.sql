SELECT 
    'actor' as type,
    a.first_name,
    a.last_name
FROM actor a;

SELECT 
    'customer' as type,
    c.first_name,
    c.last_name
FROM customer c;

-- select alla customer and actors whos names start with a


SELECT 
    'customer' as type,
    c.first_name,
    c.last_name
FROM customer c
WHERE C.first_name ILIKE 'A%'
UNION
SELECT 
    'actor' as type,
    a.first_name,
    a.last_name
FROM actor a
WHERE a.first_name ILIKE 'a%';

--- find all overlappoing between actors and customers


SELECT 
    c.first_name,
    c.last_name
FROM customer c
INTERSECT
SELECT 
    a.first_name,
    a.last_name
FROM actor a;


SELECT 
    'customer' as type,
    c.first_name,
    c.last_name
FROM customer c
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%'
UNION ALL
SELECT 
    'actor' as type,
    a.first_name,
    a.last_name
FROM actor a
WHERE a.first_name LIKE 'J%' AND a.last_name LIKE 'D%';
