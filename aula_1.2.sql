SELECT CURRENT_USER(); -- Selecionar usuário logado

SET password FOR 'root'@'localhost' = password('root') -- Alterar senha.
-- ou
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';

CREATE USER 'algaworks'@'localhost' identified by 'algaworks'; -- Criar usuário