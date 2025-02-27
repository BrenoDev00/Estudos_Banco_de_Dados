-- Comando WHERE: utilizado para criar filtros nas consultas.
SELECT * FROM customers WHERE contact_title = 'Owner';

SELECT * FROM customers
WHERE country = 'France';


-- Filtro com números
SELECT * FROM products WHERE units_in_stock = 0;

SELECT * FROM products
WHERE units_in_stock > 100;


-- ORDER BY: organiza o resultado em ordem crescente ou decrescente (ASC ou DESC).
SELECT * FROM products
WHERE unit_price >= 20
ORDER BY unit_price DESC;


-- Filtro com datas (formatar em aaaa/mm/dd)
SELECT * FROM orders
WHERE order_date >= '1998-01-01'
ORDER BY order_date DESC;


-- AND e OR: permite criar filtros com mais de uma condição.
SELECT * FROM customers
WHERE contact_title = 'Owner' AND country = 'France';

SELECT * FROM customers
WHERE country = 'France' OR country = 'Mexico';
