USE escola_de_ingles;

-- Liste os nomes dos alunos que fizeram matrícula em Janeiro de 2014.
SELECT DISTINCT a.nome
	FROM aluno a,
		 aluno_curso ac,
         curso c
	WHERE a.id = ac.aluno_id
    AND   ac.curso_id = c.id
    AND   MONTH(c.data_inicio) = 1;

-- Liste os nomes dos cursos de um determinado professor.
SELECT p.nome
	FROM curso c,
		 professor p
	WHERE c.professor_id = p.id
	  AND p.nome = 'Maria Josefina';
      
-- Liste os nomes dos alunos de um determinado curso.
SELECT a.nome
	FROM aluno a,
		 aluno_curso ac,
         curso c
	WHERE a.id = ac.aluno_id
    AND   ac.curso_id = c.id
    AND	  c.codigo_turma = 'M41'
