-- INSERT INTO: utilizado para inserir dados em uma tabela.
INSERT INTO alunos (id_aluno, nome_aluno, email)
VALUES 
	(1, 'Breno Silva', 'breno@mail.com'),
	(2, 'Ana Maria', "ana@mail.com"),
	(3, 'Carlos', 'carlos@mail.com');


-- UPDATE: utilizado para atualizar dados de uma tabela.
UPDATE cursos SET Preco_Curso = 300 WHERE ID_Curso = 1;
-- IMPORTANTE: é necessário utilizar o WHERE para especificar o registro da tabela que será atualizado.


-- DELETE: utilizado para excluir registros de uma tabela.
DELETE FROM matriculas WHERE ID_Matricula = 2;


-- TRUNCATE: utilizado para excluir todos os registros de uma tabela, mas sem excluir a tabela.
TRUNCATE TABLE matriculas;