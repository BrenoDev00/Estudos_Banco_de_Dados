-- TRANSACTIONS: transações garantem segurança e consistência ao manipular dados em um banco de dados SQL.

-- BEGIN TRANSACTION: utilizado para iniciar uma transação no banco de dados, permitindo confirmá-la ou reverter garantindo mais segurança. 

-- ROLLBACK: desfaz todas as mudanças.

-- COMMIT: salva todas as mudanças.

-- SAVEPOINT: cria um ponto de recuperação dentro da transação.

CREATE TABLE teste (
	nome VARCHAR(5) NOT NULL
);


SELECT * FROM teste;

INSERT INTO teste (nome)
VALUES
	('Breno');

BEGIN TRANSACTION;

DELETE FROM teste
WHERE nome = 'Breno';

ROLLBACK;
