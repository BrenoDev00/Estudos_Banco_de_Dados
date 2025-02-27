-- Introdução ao Postgres e comandos básicos de sql.


-- O comando SELECT é utilizado para selecionar 1 ou várias colunas de uma tabela.
SELECT company_name, contact_name FROM customers;

SELECT * FROM products;

SELECT 
	product_name,
	quantity_per_unit,
	unit_price
FROM products WHERE unit_price > 25;


-- O comando AS é utilizado para criar um alias para os nomes das colunas.
SELECT
	product_id AS ID_Produto,
	product_name AS "Nome_Produto"
FROM products


-- O comando LIMIT é utilizado para limitar a quantidade de linhas da tabela.
SELECT * FROM orders LIMIT 10;

SELECT 
	customer_id, 
	ship_city
FROM orders
LIMIT 5;

-- O comando DISTINCT é utilizado para filtrar valores distintos que não se repetem.
SELECT DISTINCT contact_title FROM customers;