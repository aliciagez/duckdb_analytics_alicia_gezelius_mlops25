--b)
SELECT
    *
FROM
    hemnet;

pragma table_info('hemnet');

--C) 500 rows
SELECT
    COUNT(*)
FROM
    hemnet;

--d) i create table if not exsist and ingest the data form the csv file with read csv auto to automaicalut create a schema and 
--then putting in the path data/. 

--e) Sångmöstigen 3, Vikavägen 15, Gustaf Lundbergs väg 7, Bardabacken 17, Ferievägen 65
SELECT
    *
FROM
    hemnet
ORDER BY
    final_price DESC
LIMIT
    5;

--f)
SELECT
    *
FROM
    hemnet
ORDER BY
    final_price ASC
LIMIT
    5;

--g)
SELECT
    MIN(final_price) as min_price, 
    MAX(final_price) as max_price, 
    MEAN(final_price) as mean_price,
    MEDIAN(final_price) as median_price,
FROM
    hemnet;

--h)
SELECT
    MIN(price_per_area) as min_price, 
    MAX(price_per_area) as max_price, 
    MEAN(price_per_area)::INT as mean_price, --first it was a really long flotas so made it an int.
    MEDIAN(price_per_area) as median_price,
FROM
    hemnet;

--i) 178 uniuqe values

SELECT 
DISTINCT commune
FROM hemnet;

--j) 34.6% 

SELECT 100.0* SUM(final_price > 10000000) /COUNT(*) as precent_10m
FROM hemnet;