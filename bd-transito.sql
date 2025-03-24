CREATE TABLE pessoa (
	id_pessoa SERIAL,
	cpf VARCHAR(14) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	sexo VARCHAR(1) NOT NULL,
	idade INTEGER NOT NULL,
	PRIMARY KEY(id_pessoa)
);

CREATE TABLE carro (
	id_carro SERIAL,
	placa VARCHAR(5) NOT NULL,
	modelo VARCHAR(55) NOT NULL,
	ano INTEGER NOT NULL,
	PRIMARY KEY(id_carro)
);

CREATE TABLE dirige (
	id_dirige SERIAL,
	id_pessoa integer NOT NULL,
	id_placa integer NOT NULL,
	PRIMARY KEY (id_dirige),
	FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa),
	FOREIGN KEY (id_placa) REFERENCES carro(id_carro)
);

SELECT * FROM dirige;


INSERT INTO pessoa (cpf, nome, sexo, idade) VALUES
	('123.456.789-10', 'Breno Silva Gonçalves', 'M', 21),
	('132.343.787-70', 'Eliane Silva Machado Corado', 'F', 48);

INSERT INTO carro (placa, modelo, ano) VALUES 
	('abc23', 'Civic', 2013),
	('frt34', 'Corola', 2008);

INSERT INTO dirige (id_pessoa, id_placa) VALUES
	(1, 2),
	(2, 1);

ALTER TABLE dirige RENAME COLUMN id_placa TO id_carro;

UPDATE pessoa 
SET nome = 'Pedro Henrique'
WHERE id_pessoa = 1;

UPDATE pessoa
SET idade = '16'
WHERE id_pessoa = 1;

TRUNCATE dirige;

SELECT * FROM carro;

DELETE FROM carro
WHERE id_carro = 1;

DELETE FROM carro
WHERE id_carro = 2;