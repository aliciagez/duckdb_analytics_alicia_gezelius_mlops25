--b)  values
SELECT DISTINCT
    order_id
FROM
    bike_join;

--c) 4722 values
SELECT DISTINCT
    COUNT(product_id)
FROM
    bike_join;

--d) 97 customeas and total rev 227703f
SELECT
    COUNT(DISTINCT customer_id) as nr_customers,
    SUM(quantity * list_price) as total_rev,
FROM
    bike_join
WHERE
    product_name = 'Surly Straggler - 2016';

--e)
SELECT
    customer_city,
    COUNT(DISTINCT customer_id) as amount_customer
FROM
    bike_join
WHERE
    customer_city IN ('San Angelo', 'Orchard Park', 'Merrick')
GROUP BY
    customer_city
ORDER BY
    customer_city;

--f)
SELECT
    b.*, -- alices for database
    m.manager_name
FROM
    bike_join b
    LEFT JOIN (
        VALUES
        (1, 'Amy Andersson'),
        (2, 'Bill Berg'),
        (5, 'Cathy Larsson'),
        (7, 'Davis Lam'),
    ) AS m(manager_id, manager_name)
    ON b.manager_id = m.manager_id;