-- Funções de agregação

-- COUNT: Permite realizar contagem de linhas.
-- Exemplo: descubra a quantidade de clientes da tabela customers.
SELECT COUNT(contact_name) FROM customers;

SELECT COUNT(*) FROM customers; -- asterisco retorna o resultado total de linhas independente de null.


-- SUM: Permite somar os valores de determinada coluna.
SELECT SUM(units_in_stock) FROM products;

SELECT 
	SUM(quantity) 
FROM order_details;


-- AVG: Permite calcular a média de determinada coluna.
SELECT 
	AVG(unit_price)
FROM products;


-- MIN: Permite calcular o menor valor de determinada coluna.
SELECT 
	MIN(unit_price)
FROM products;


-- MAX: Permite calcular o maior valor de determinada coluna.
SELECT 
	MAX(unit_price)
FROM products;