-- VIEWS: são formas de armazenar o resultado de uma query em uma tabela. A view mostra sempre resultados atualizados da tabela.
-- SINTAXE: podemos criar (CREATE), atualizar (REPLACE), alterar (ALTER) e excluir (DROP).

-- Criando uma view
CREATE OR REPLACE VIEW vwproduto AS 
SELECT 
	product_id,
	product_name,
	unit_price
FROM products;

-- Chamando a view criada
SELECT * FROM vwproduto;