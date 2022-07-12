USE escola_de_ingles;

ALTER TABLE curso
	ADD COLUMN professor_id BIGINT,
    ADD CONSTRAINT fk_professor_id
		FOREIGN KEY (professor_id) REFERENCES professor(id);

INSERT INTO curso(codigo_turma, data_inicio, data_fim, descricao, professor_id)
	VALUES('M41', '2022-01-01', '2022-06-30', 'Turma intermediario (M) de Quarta (4) do 1º semetre', 1);
INSERT INTO curso(codigo_turma, data_inicio, data_fim, descricao, professor_id)
	VALUES('A51', '2022-01-01', '2022-06-30', 'Turma avançado (A) de Quinta (5) do 1º semetre', 1);
    
SELECT * FROM curso;
