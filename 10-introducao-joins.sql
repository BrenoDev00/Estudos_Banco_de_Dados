-- Joins: tem como objetivo relacionar dados de diferentes tabelas do banco de dados.

-- Tipos de joins: inner join, left join, right join, full join.

-- Para criar joins é preciso saber qual a coluna as tabelas que queremos relacionar tem em comum.
-- Será através dessas colunas que o SQL saberá a forma como ele deve cruzar os dados.

-- Exemplo: no banco northwind, as tabelas 'products' e 'order_details' possuem uma coluna em comum, chamada 'product_id'. 

-- A sintaxe mais simples para relacionar 2 tabelas (que tenham a 'Coluna1' em comum) é a seguinte:


SELECT * FROM 
	Tabela_A -- tabela principal
LEFT JOIN Tabela_B -- tabela secundária
ON Tabela_A.Coluna1 = Tabela_B.Coluna1


SELECT * FROM 
	order_details
LEFT JOIN products
ON order_details.product_id = products.product_id;


-- Escolhendo colunas específicas:

SELECT 
	order_details.unit_price,
	order_details.quantity,
	products.product_name
FROM order_details
LEFT JOIN products
ON order_details.product_id = products.product_id;