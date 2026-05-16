-- -----------> total pill by order_id and quantity>1,sum(o.list_price)>1000
SELECT TOP(5) SUM(o.quantity) AS 'total pill ', s.customer_id
FROM [sales].[order_items] o, [sales].[orders] s
WHERE o.quantity > 1
GROUP BY s.customer_id
HAVING SUM(o.list_price) > 1000;

-- -----------> total of list_price in model years
SELECT SUM(p.list_price) AS 'total sales', p.model_year
FROM [production].[products] p
GROUP BY p.model_year;

-- -----------> total sales >3000 and discount product id
SELECT SUM(o.list_price) AS 'total sales >3000', o.product_id
FROM [sales].[order_items] o
WHERE o.discount > 0.05
GROUP BY o.product_id
HAVING SUM(o.list_price) > 3000;

-- -----------> list_price>600 and quantity>1  by item id
SELECT SUM(o.list_price), o.item_id
FROM [sales].[order_items] o
WHERE o.list_price > 600 AND o.quantity > 1
GROUP BY o.item_id;

-- -----------> total sales of brands by brand_id , model years and total sales >10000
SELECT p.brand_id, SUM(i.list_price)
FROM [production].[products] p, [sales].[order_items] i
WHERE p.model_year > '2016'
GROUP BY p.brand_id
HAVING SUM(i.list_price) > 10000;

-- -----------> top 10 cal orders it solds and solds
SELECT TOP(10) o.customer_id, o.order_id, i.list_price, i.discount
FROM [sales].[order_items] i
RIGHT JOIN [sales].[orders] o 
ON o.order_id = i.order_id;

CREATE DATABASE [BikeStores];
USE [BikeStores];

SELECT * FROM [sales].[orders];
SELECT * FROM [sales].[order_items];
SELECT * FROM [sales].[customers];
SELECT * FROM [production].[categories];

-- -----------> top 3 of sales by product_id
SELECT TOP(3) i.product_id, i.list_price AS [top 3 of sales]
FROM [sales].[order_items] i
WHERE i.list_price > 500;

-- -----------> total price
SELECT SUM(i.list_price) AS [total price]
FROM [sales].[order_items] i;

-- -----------> total sales by quatity>2
SELECT AVG(i.list_price) AS [averge price]
FROM [sales].[order_items] i
WHERE i.quantity > 1;

-- -----------> no of product
SELECT COUNT(DISTINCT o.product_id) AS [no of product]
FROM [sales].[order_items] o;
