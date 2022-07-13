USE escola_de_ingles;

-- Subselect
-- Selecionar nomes de alunos que já fizeram algum curso
SELECT nome
	FROM aluno
    WHERE id IN (SELECT aluno_id FROM aluno_curso);
    
