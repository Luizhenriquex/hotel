-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Maio-2023 às 08:27
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_hotel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estruturas`
--

CREATE TABLE `estruturas` (
  `id` int(11) NOT NULL,
  `estrutura` varchar(255) NOT NULL,
  `capacidade` varchar(255) NOT NULL,
  `ocupado` varchar(255) NOT NULL,
  `pessoa` varchar(255) NOT NULL,
  `desconto` float NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estruturas`
--

INSERT INTO `estruturas` (`id`, `estrutura`, `capacidade`, `ocupado`, `pessoa`, `desconto`, `tipo`, `valor`) VALUES
(1, 'quarto1', '4', 'sim', 'alisson', 0.1, 'quarto', 200),
(3, 'quarto2', '10', 'nao', '', 0.1, 'quarto', 200);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `funcionario` varchar(255) NOT NULL,
  `dinheiro` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cpf`, `supervisor`, `usuario`, `senha`, `funcionario`, `dinheiro`) VALUES
(1, 'CAIO', '1231231', 'caiolimao', 'caio', '123', 'gerente', 16480),
(2, 'gessica', '2312312', 'CAIO', 'gessica', '123', 'recepcionista', 20000),
(3, 'alisson', '23213213', 'CAIO', 'alison', '123', 'hospede', 5850);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `valor` float NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `servp` varchar(255) NOT NULL,
  `desconto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `valor`, `descricao`, `servp`, `desconto`) VALUES
(1, 'entrega', 10, 'serv quarto', 'quarto', 0),
(2, 'festa', 200, 'realização de festa', 'salao', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `estruturas`
--
ALTER TABLE `estruturas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estruturas`
--
ALTER TABLE `estruturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
