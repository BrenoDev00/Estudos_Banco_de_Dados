-- Banco de dados da hashtag;
CREATE DATABASE hashtag;

CREATE TABLE alunos (
	ID_Aluno INT,
	Nome_Aluno VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	PRIMARY KEY(ID_Aluno)
);

CREATE TABLE cursos (
	ID_Curso INT,
	Nome_Curso VARCHAR(100) NOT NULL,
	Preco_Curso NUMERIC(10,2) NOT NULL,
	PRIMARY KEY(ID_Curso)
);

CREATE TABLE matriculas (
	ID_Matricula INT,
	ID_Aluno INT NOT NULL,
	ID_Curso INT NOT NULL,
	Data_Cadastro DATE NOT NULL,
	PRIMARY KEY(ID_Matricula),
	FOREIGN KEY(ID_Aluno) REFERENCES alunos(ID_Aluno),
	FOREIGN KEY(ID_Curso) REFERENCES cursos(ID_Curso)
);


SELECT * FROM cursos;

INSERT INTO alunos (ID_Aluno, Nome_Aluno, Email)
VALUES 
	(1, 'Breno', 'breno@mail.com'),
	(2, 'Pedro Henrique', 'henrique@mail.com'),
	(3, 'Luana', 'lu@mail.com');


INSERT INTO cursos (ID_Curso, Nome_Curso, Preco_Curso)
VALUES 
	(1, 'Excel', 60.58),
	(2, 'Power BI', 74.00),
	(3, 'Python', 28.99);


INSERT INTO matriculas (ID_Matricula, ID_Aluno, ID_Curso, Data_Cadastro)
VALUES 
	(1, 3, 2, '2025/02/23'),
	(2, 1, 1, '2025/03/11'),
	(3, 2, 3, '2025/01/05');

SELECT * FROM matriculas;