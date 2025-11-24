SELECT
    'customer' as type,
    c.first_name,
    c.last_name
FROM
    customer c
WHERE
    c.first_name LIKE 'A%'
    ------------------------------------ alll customers and accotrs with firstnamn starting at a
SELECT
    'customer' as type,
    c.first_name,
    c.last_name
FROM
    customer c
WHERE
    c.first_name LIKE 'A%'
UNION
SELECT
    'Actor',
    a.first_name,
    a.last_name
FROM
    actor a
WHERE
    a.first_name LIKE 'A%'
ORDER BY
    first_name;

--- find overlapping names betweeen customeres and actors
SELECT
    a.first_name,
    a.last_name
FROM
    actor a
INTERSECT
SELECT
    c.first_name,
    c.last_name
FROM
    customer c;

SELECT
    a.first_name,
    a.last_name
FROM
    actor a
WHERE
    a.first_name LIKE 'JENN%';

--- find all wiht initals JD and recorde its type, actor, customer .....
SELECT
    'actor' AS type,
    a.first_name,
    a.last_name
FROM
    actor A
WHERE
    a.first_name LIKE 'J%'
    AND a.last_name LIKE 'D%'
UNION ALL
SELECT
    'customer' as type,
    c.first_name,
    c.last_name
FROM
    customer c
WHERE
    c.first_name LIke 'J%'
    AND c.last_name LIKE 'D%';