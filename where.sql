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


-- WHERE + LIKE permite criar filtros especiais de textos.
SELECT * FROM products
WHERE quantity_per_unit LIKE '%boxes%'; -- É preciso usar a palavra dentro de %%.

SELECT * FROM products
WHERE quantity_per_unit LIKE '%jars%';


-- WHERE + IN é uma alternativa ao uso de múltiplos or.
SELECT * FROM customers
WHERE country IN ('Mexico', 'UK', 'Canada');


-- WHERE + BETWEEN é uma alternativa para ao uso do and para filtrar intervalos de números e datas.
SELECT * FROM products
WHERE unit_price BETWEEN 50 AND 100;

SELECT * FROM orders
WHERE order_date BETWEEN '1997-01-01' AND '1997-12-31';