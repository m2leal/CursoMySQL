USE escola_de_ingles;

CREATE TABLE aluno_curso (
	aluno_id BIGINT,
    curso_id BIGINT,
    PRIMARY KEY (aluno_id, curso_id),
    FOREIGN KEY (aluno_id)
		REFERENCES aluno(id),
    FOREIGN KEY (curso_id)
		REFERENCES curso(id)
) ENGINE=InnoDB;

INSERT INTO aluno_curso (aluno_id, curso_id)
	VALUES (1, 1);

INSERT INTO aluno_curso (aluno_id, curso_id)
	VALUES (1, 2);