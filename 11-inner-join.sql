-- Inner join: permite relacionar 2 tabelas (tabela A e tabela B) e criar uma nova tabela (tabela C) que será a junção das outras 2 tabelas.
-- A tabela resultante desse join terá apenas as linhas que são a interseção entre a tabela A e a tabela B.

-- Estrutura:

SELECT 
	TABELA_A.COLUNA_1,
	TABELA_A.COLUNA_2,
	TABELA_A.COLUNA_3,
	TABELA_B.COLUNA_3
FROM TABELA_A
INNER JOIN TABELA_B
ON TABELA_A.CHAVE_ESTRANGEIRA = TABELA_B.CHAVE_PRIMARIA;

-- Exemplo:

SELECT
	order_details.order_id,
	order_details.product_id,
	order_details.quantity,
	order_details.discount,
	products.product_name,
	products.unit_price
FROM public.order_details
INNER JOIN public.products
ON order_details.product_id = products.product_id;

-- inner join com where:

SELECT
	products.product_name,
	products.unit_price,
	order_details.quantity,
	order_details.discount
FROM public.order_details
INNER JOIN public.products
	ON order_details.product_id = products.product_id
	WHERE products.unit_price > 30;

-- inner join com group by:

SELECT
	products.product_name,
	SUM(order_details.quantity)
FROM public.order_details
INNER JOIN public.products
	ON order_details.product_id = products.product_id
GROUP BY product_name;