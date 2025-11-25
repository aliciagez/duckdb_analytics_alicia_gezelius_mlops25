SELECT
    a.actor_id,
    a.first_name,
    a.last_name, ----- which actor has playd which film_id? 
    fa.film_id
FROM actor a 
LEFT JOIN film_actor fa ON fa.actor_id = a.actor_id;


SELECT
    a.first_name,
    a.last_name, ----- which actor has playd which films? joins 3 tables
    f.title
FROM actor a 
LEFT JOIN film_actor fa ON fa.actor_id = a.actor_id,
LEFT JOIN film f ON f.film_id = fa.film_id;

---- all films with assiciatede category

SELECT
    f.title,
    c.name as category
FROM film_category fc 
INNER JOIN category c ON fc.category_id = c.category_id
INNER JOIN film f ON f.film_id = fc.film_id;

SELECT
    COUNT(*)
FROM film;

SELECT
    COUNT(*)
FROM category;

SELECT
    COUNT(*)
FROM film f  --- automatic corss 
INNER JOIN category c ON category_id;
