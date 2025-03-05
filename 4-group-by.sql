-- GROUP BY: Permite criar agrupamentos com determinados valores.
SELECT 
	country,
	COUNT(*)
FROM customers
GROUP BY country;


SELECT 
	city,
	COUNT(*)
FROM customers
GROUP BY city;


SELECT
	supplier_id,
	SUM(units_in_stock)
FROM products
GROUP BY supplier_id;


SELECT 
	supplier_id,
	AVG(unit_price)
FROM products
GROUP BY supplier_id;


SELECT 
	contact_title,
	COUNT(*)
FROM customers
GROUP BY contact_title;
