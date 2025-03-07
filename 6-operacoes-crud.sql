-- Operações CRUD.

-- Criar Banco de dados
CREATE DATABASE teste;

-- Excluir Banco de dados
DROP DATABASE teste;

-- Tabelas: tem como objetivo armazenar informações dispostas em diferentes colunas. 
-- Cada coluna é formada por um tipo específico de dados.

CREATE TABLE tabela (Coluna1 Tipo1, Coluna2 Tipo2);

-- Principais tipos de dados
-- INT: números inteiros;

-- NUMERIC(M, D):
-- M é o número de total de dígitos e D é a quantidade de casas decimais permitidas
-- Exemplo: 1500,69 --> NUMERIC(6,2);

-- VARCHAR(N):
-- Uma string de comprimento variável (pode conter letras, números e caracteres especiais).
-- O parâmetro N especifica o comprimento máximo da coluna em caracteres;

-- DATE: data no formato YYYY-MM-DD.

-- TIMESTAMP: combinação de data e hora.
-- formato: YYYY-MM-DD HH:MM:SS


