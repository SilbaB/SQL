USE jumiaa_store;
SELECT *
FROM customers;
SELECT first_name,city
FROM customers;
SELECT first_name,points, points+100
FROM customers;

SELECT DISTINCT  city
FROM customers;

select *
FROM customers
WHERE points > 2000;

SELECT *
FROM customers
WHERE first_name LIKE 'J%e';

SELECT *
FROM customers;

SELECT *
FROM customers
WHERE phone IS NULL;
 
select *
FROM customers
WHERE points between 900 AND 2000;

SELECT *,unit_price * quantity AS total_price
FROM order_items
WHERE order_id > 6 OR unit_price * quantity >  40;