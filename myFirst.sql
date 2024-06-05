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
WHERE first_name LIKE 'J%';

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

SELECT first_name,last_name
FROM customers 
WHERE city IN ( 'Nairobi','Cape');

SELECT *
FROM customers
WHERE first_name REGEXP 'Jo';

SELECT *,quantity * unit_price AS total_price
from order_items
WHERE order_id =2
ORDER BY quantity *unit_price DESC
LIMIT 2;

SELECT 
   first_name || ' ' || last_name,
   city
FROM 
   customers;
   SELECT first_name,state
   FROM customers;
   
   SELECT *
   FROM jumiaa_invoicing.invoices;
   
   select SUM(invoice_total) AS invoice_sum
   FROM jumiaa_invoicing.invoices;
  
  SELECT MAX(invoice_total) AS invoice_max, MIN(invoice_total) AS invoice_min
  FROM jumiaa_invoicing.invoices;
  SELECT COUNT(payment_date) AS total_amount_payment_date
  FROM jumiaa_invoicing.invoices;
  
  SELECT ROUND(invoice_total,1) AS invoice_total_1dp
  FROM jumiaa_invoicing.invoices; #it rounds into 1 dp.the round fxn takes two parameters
   
   select *
   FROM jumiaa_invoicing.invoices;
   
    SELECT clIent_id, MAX(invoice_total)
    FROM jumiaa_invoicing.invoices
    GROUP BY client_id;
    
SELECT client_id, AVG(invoice_total) AS invoice_avg
FROM jumiaa_invoicing.invoices
GROUP BY CLIENT_ID
HAVING AVG(INVOICE_TOTAL);
    
SELECT *
FROM customers;

SELECT *
FROM orders;

#Joininng methods

SELECT *
FROM orders
SELECT *
FROM orders 
RIGHT JOIN customers
On orders.customer_id = customers.customer_id;JOIN customers
on orders.customer_id=customers.customer_id;

SELECT *
FROM orders
LEFT JOIN customers
ON orders.customer_id = customers.customer_id;

