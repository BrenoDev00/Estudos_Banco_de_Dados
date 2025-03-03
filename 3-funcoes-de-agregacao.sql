-- Funções de agregação

-- COUNT: Permite realizar contagem de linhas.
-- Exemplo: descubra a quantidade de clientes da tabela customers.
SELECT COUNT(contact_name) FROM customers;

SELECT COUNT(*) FROM customers; -- asterisco retorna o resultado total de linhas independente de null.