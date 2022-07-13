USE escola_de_ingles;

SELECT * FROM aluno_curso;

ALTER TABLE aluno_curso
	ADD COLUMN valor_matricula DECIMAL(6,2) NOT NULL DEFAULT 500.50;

-- SUM() - Soma
SELECT SUM(valor_matricula) media
	FROM aluno_curso;
    
-- AVG() - Média
SELECT AVG(valor_matricula) media
	FROM aluno_curso;
