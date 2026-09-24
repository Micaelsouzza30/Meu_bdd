-- Cria o banco de dados
CREATE DATABASE IF NOT EXISTS aula18;
-- Usa o banco
USE aula18;

-- Cria a tabela
CREATE TABLE livro (
	id_livro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2)
);

-- Altera a tabela
-- Adiciona coluna
ALTER TABLE livro
ADD COLUMN genero VARCHAR(50);

-- Muda o tipo de dados da coluna
ALTER TABLE livro
MODIFY titulo VARCHAR(255);

-- Muda o nome e o tipo de dados da coluna
ALTER TABLE livro
CHANGE preco valor DECIMAL(10,2);

-- Exclui a coluna
ALTER TABLE livro
DROP COLUMN genero;

-- Adiciona uma constraint do tipo UNIQUE
ALTER TABLE livro
ADD CONSTRAINT uk_titulo UNIQUE (titulo);

