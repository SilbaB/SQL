CREATE DATABASE northwind;
USE northwind;
SELECT *
FROM customers
WHERE country IN ( "Germany","France");

Select DISTINCT country
FROM customers;

SELECT productName, unitPrice * categoryID AS sales_price
FROM products
ORDER BY unitPrice;
#in descending order
SELECT *
FROM products
ORDER BY unitPrice DESC;
#Alphabetically for string values
SELECT *
FROM products
ORDER BY productName;

# more than one column
SELECT *
FROM customers
ORDER BY COUNTRY, contactName;

SELECT *
FROM customers
WHERE NOT country  ="Spain";
#Not Like
SELECT *
FROM customers
WHERE companyName NOT LIKE 'B%';
SELECT *
FROM customers
WHERE companyName  LIKE 'B%';

#INSERT INTO
#used to insert new records into a table
SELECT * FROM Customers;
INSERT INTO customers ( customerID,companyName,contactName,contactTitle,city,country)
Values ('ANATY', 'Anita Tyres', 'Basil Kip', 'data analyst', 'Nairobi', 'Kenya');

SELECT *
FROM customers;

Insert into customers (city)
VALUES ('Nakuru');

SELECT DISTINCT city
FROM customers;

SELECT contactName,city
FROM customers
WHERE contactName IS NULL;
