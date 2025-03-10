-- Constraints: restrições são regras aplicadas nas colunas de uma tabela.

-- Principais constraints

-- NOT NULL: faz com que uma coluna não aceite valores NULL. Obriga um campo a sempre possuir um valor.
-- Exemplo: Nome_Cliente VARCHAR(100) NOT NULL

-- PRIMARY KEY: identifica de forma única cada registro em uma tabela do banco de dados.
-- Chaves primárias devem conter valores únicos;
-- Uma coluna de chave primária não pode conter valores NULL;
-- Cada tabela deve conter 1 e apenas 1 chave primária.

-- FOREIGN KEY: chave estrangeira em uma tabela é um campo que aponta para uma chave primária em outra tabela.
