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
  
SELECT INVOICE_TOTAL
FROM jumiaa_invoicing.invoices;
  
  SELECT ROUND(invoice_total,1) AS invoice_total_1dp
  FROM jumiaa_invoicing.invoices; #it rounds into 1 dp.the round fxn takes two parameters
   
   select *
   FROM jumiaa_invoicing.invoices;
   USE jumiaa_invoicing;
SELECT * FROM invoices
WHERE invoice_id NOT BETWEEN 2 AND 10;
   
    SELECT clIent_id, MAX(invoice_total)
    FROM jumiaa_invoicing.invoices
    GROUP BY client_id;
    
SELECT client_id, AVG(invoice_total) AS invoice_avg
FROM jumiaa_invoicing.invoices
GROUP BY CLIENT_ID
HAVING AVG(INVOICE_TOTAL) >150;
#The HAVING clause is used to filter groups of data based on a condition. 
-- In this query, it is intended to filter groups where the average of invoice_total meets 
-- a certain condition. However, the condition is missing. The HAVING clause usually requires
--  a condition, like HAVING AVG(invoice_total) > 100, to specify that only groups with 
--  an average invoice_total greater than 100 should be included in the result
    
SELECT *
FROM customers;

SELECT *
FROM orders;

#Joininng methods

SELECT *
FROM orders 
Join customers
ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders 
RIGHT JOIN customers
-- - On orders.customer_id = customers.customer_id;JOIN customers
on orders.customer_id=customers.customer_id;

SELECT *
FROM orders
LEFT JOIN customers
ON orders.customer_id = customers.customer_id;
SELECT COUNT(customer_id)
FROM customers;
#INSERT INTO
INSERT INTO customers
VALUES(11,"mark","mogire",'1986-03-28','408-932-9456',"kimulu","Kisii","Rn",345);
#UPDATE
#Updating a table
UPDATE customers 
set address = "4th floor", city="Nakuru"
WHERE customer_id=11;

SELECT *
FROM customers;

#DELETE  hii ni mbaya sana😂😒
DELETE FROM customers WHERE first_name="mark" and customer_id=11;

SELECT *
FROM customers;

#SUBQUERIES

SELECT first_name,last_name,points
FROM customers
WHERE points > (SELECT avg(points) FROM customers);
 SELECT POINTS
 FROM customers;

SELECT first_name,last_name,points
FROM customers
WHERE points > (SELECT points FROM customers WHERE first_name='Mutula'); 

#stored procedures using delimiters
 
 delimiter &&
 CREATE procedure top_points()
 begin
 select points
 from customers
 where points > 3000;
 end &&
 delimiter ;
call top_points();

# sp using in

delimiter //
create procedure sortByPoint(in var int)
begin
select first_name,city,points from customers
order by points desc limit var; 
end //
delimiter ;
call sortByPoint(4)

