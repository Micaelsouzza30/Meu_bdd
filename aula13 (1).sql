-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2026 às 03:12
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aula13`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_departamento`
--

CREATE TABLE `tb_departamento` (
  `id_departamento` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_departamento`
--

INSERT INTO `tb_departamento` (`id_departamento`, `nome`) VALUES
(1, 'gerencia'),
(2, 'T.I'),
(3, 'R.H');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_empregado`
--

CREATE TABLE `tb_empregado` (
  `id_empregado` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_empregado`
--

INSERT INTO `tb_empregado` (`id_empregado`, `nome`, `id_departamento`) VALUES
(1, 'fabiano cruz', 2),
(2, 'francisco dias ', 3),
(3, 'marcelo piu ', 1),
(4, 'paula', 2),
(5, 'joao', 3),
(6, 'jose ', 2),
(7, 'Gustavo', 1),
(8, 'enzo', 1),
(9, 'frederico', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_departamento`
--
ALTER TABLE `tb_departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Índices para tabela `tb_empregado`
--
ALTER TABLE `tb_empregado`
  ADD PRIMARY KEY (`id_empregado`),
  ADD KEY `fk_tb_empregado_tb_departamento_idx` (`id_departamento`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_departamento`
--
ALTER TABLE `tb_departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_empregado`
--
ALTER TABLE `tb_empregado`
  MODIFY `id_empregado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_empregado`
--
ALTER TABLE `tb_empregado`
  ADD CONSTRAINT `fk_tb_empregado_tb_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `tb_departamento` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
