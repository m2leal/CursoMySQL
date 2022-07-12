CREATE DATABASE escola_de_ingles;

USE escola_de_ingles;

CREATE TABLE aluno (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30),
    email VARCHAR(30),
    telefone VARCHAR(30),
    data_nascimento date
) engine=InnoDB;

CREATE TABLE curso (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	codigo_turma VARCHAR(30),
    data_inicio date,
    data_fim date,
    descricao TEXT
) engine=InnoDB;

CREATE TABLE professor (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30),
    email VARCHAR(30),
    telefone VARCHAR(30),
    data_nascimento date
) engine=InnoDB;

INSERT INTO aluno(nome, email, telefone, data_nascimento)
	VALUES('Marcio Leal', 'marcio@email.com', '(51) 99999-9999', '1984-04-26');
INSERT INTO aluno(nome, email, telefone, data_nascimento)
	VALUES('João Silva', 'joao@email.com', '(51) 99999-8888', '1990-10-10');

INSERT INTO curso(codigo_turma, data_inicio, data_fim, descricao)
	VALUES('I31', '2022-01-01', '2022-06-30', 'Turma inicial (I) de Terça (3) do 1º semetre');
    
INSERT INTO professor(nome, email, telefone, data_nascimento)
	VALUES('Maria Josefina', 'maria.josefina@email.com', '(51) 99999-7777', '1980-10-10');
    
SELECT * FROM aluno;
SELECT * FROM turma;
SELECT * FROM professor;