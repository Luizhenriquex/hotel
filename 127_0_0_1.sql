-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Maio-2023 às 18:50
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

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
CREATE DATABASE IF NOT EXISTS `db_hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_hotel`;

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
(1, 'quarto1', '4', 'sim', 'pedro', 0.4, 'quarto', 200),
(3, 'quarto2', '10', 'sim', 'pedro', 0.4, 'quarto', 200);

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
(3, 'alisson', '23213213', 'CAIO', 'alison', '123', 'hospede', -2440),
(4, 'pedro', '23213123', 'CAIO', 'pedro', '123', 'hospede', 18590);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `nome`, `valor`, `descricao`, `tipo`) VALUES
(1, 'entrega', '200', 'entreginha', 'quarto');

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
(2, 'festa', 200, 'realização de festa', 'salao', 0),
(3, 'limpeza', 30, 'serviço de limpeza de quarto', 'quarto', 0),
(4, 'limpeza pesada', 40, 'super limpeza', 'quarto', 0),
(5, 'entrega express', 100, 'muinto rapidaa', 'quarto', 0),
(6, 'comida', 40, 'para comer', 'quarto', 0);

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
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Banco de dados: `hoteldb`
--
CREATE DATABASE IF NOT EXISTS `hoteldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hoteldb`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `adiministrador`
--

CREATE TABLE `adiministrador` (
  `id` int(11) NOT NULL,
  `nome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estruturas`
--

CREATE TABLE `estruturas` (
  `id` int(11) NOT NULL,
  `estrutura` varchar(40) NOT NULL,
  `usada` varchar(20) NOT NULL,
  `nmax` varchar(20) NOT NULL,
  `pessoa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estruturas`
--

INSERT INTO `estruturas` (`id`, `estrutura`, `usada`, `nmax`, `pessoa`) VALUES
(1, 'quarto numero:0', 'nao', '4', ''),
(2, 'quarto numero:1', 'nao', '4', ''),
(3, 'quarto numero:2', 'nao', '4', ''),
(4, 'quarto numero:3', 'nao', '4', ''),
(5, 'quarto numero:4', 'nao', '4', ''),
(6, 'quarto numero:5', 'nao', '4', ''),
(7, 'quarto numero:6', 'nao', '4', ''),
(8, 'quarto numero:7', 'nao', '4', ''),
(9, 'quarto numero:8', 'nao', '4', ''),
(10, 'quarto numero:9', 'nao', '4', ''),
(11, 'quarto numero:10', 'nao', '4', ''),
(12, 'quarto numero:11', 'nao', '4', ''),
(13, 'quarto numero:12', 'nao', '4', ''),
(14, 'quarto numero:13', 'nao', '4', ''),
(15, 'quarto numero:14', 'nao', '4', ''),
(16, 'quarto numero:15', 'nao', '4', ''),
(17, 'quarto numero:16', 'nao', '4', ''),
(18, 'quarto numero:17', 'nao', '4', ''),
(19, 'quarto numero:18', 'nao', '4', ''),
(20, 'quarto numero:19', 'nao', '4', ''),
(21, 'quarto numero:20', 'nao', '4', ''),
(22, 'quarto numero:21', 'nao', '4', ''),
(23, 'quarto numero:22', 'nao', '4', ''),
(24, 'quarto numero:23', 'nao', '4', ''),
(25, 'quarto numero:24', 'nao', '4', ''),
(26, 'quarto numero:25', 'nao', '4', ''),
(27, 'quarto numero:26', 'nao', '4', ''),
(28, 'quarto numero:27', 'nao', '4', ''),
(29, 'quarto numero:28', 'nao', '4', ''),
(30, 'quarto numero:29', 'nao', '4', ''),
(31, 'salao de festa numero:0', 'nao', '100', ''),
(32, 'salao de festa numero:1', 'nao', '100', ''),
(33, 'salao de festa numero:2', 'nao', '100', ''),
(34, 'salao de festa numero:0', 'nao', '100', ''),
(35, 'salao de festa numero:1', 'nao', '100', ''),
(36, 'salao de festa numero:2', 'nao', '100', ''),
(37, 'salao de festa numero:0', 'nao', '100', ''),
(38, 'salao de festa numero:1', 'nao', '100', ''),
(39, 'salao de festa numero:2', 'nao', '100', ''),
(40, 'salao de festa numero:0', 'nao', '100', ''),
(41, 'salao de festa numero:1', 'nao', '100', ''),
(42, 'salao de festa numero:2', 'nao', '100', ''),
(43, 'salao de festa numero:0', 'nao', '100', ''),
(44, 'salao de festa numero:1', 'nao', '100', ''),
(45, 'salao de festa numero:2', 'nao', '100', ''),
(46, 'salao de festa numero:0', 'nao', '100', ''),
(47, 'salao de festa numero:1', 'nao', '100', ''),
(48, 'salao de festa numero:2', 'nao', '100', ''),
(49, 'salao de festa numero:0', 'nao', '100', ''),
(50, 'salao de festa numero:1', 'nao', '100', ''),
(51, 'salao de festa numero:2', 'nao', '100', ''),
(52, 'salao de festa numero:0', 'nao', '100', ''),
(53, 'salao de festa numero:1', 'nao', '100', ''),
(54, 'salao de festa numero:2', 'nao', '100', ''),
(55, 'salao de festa numero:0', 'nao', '100', ''),
(56, 'salao de festa numero:1', 'nao', '100', ''),
(57, 'salao de festa numero:2', 'nao', '100', ''),
(58, 'salao de festa numero:0', 'nao', '100', ''),
(59, 'salao de festa numero:1', 'nao', '100', ''),
(60, 'salao de festa numero:2', 'nao', '100', ''),
(61, 'salao de festa numero:0', 'nao', '100', ''),
(62, 'salao de festa numero:1', 'nao', '100', ''),
(63, 'salao de festa numero:2', 'nao', '100', ''),
(64, 'salao de festa numero:0', 'nao', '100', ''),
(65, 'salao de festa numero:1', 'nao', '100', ''),
(66, 'salao de festa numero:2', 'nao', '100', ''),
(67, 'salao de festa numero:0', 'nao', '100', ''),
(68, 'salao de festa numero:1', 'nao', '100', ''),
(69, 'salao de festa numero:2', 'nao', '100', ''),
(70, 'salao de festa numero:0', 'nao', '100', ''),
(71, 'salao de festa numero:1', 'nao', '100', ''),
(72, 'salao de festa numero:2', 'nao', '100', ''),
(73, 'salao de festa numero:0', 'nao', '100', ''),
(74, 'salao de festa numero:1', 'nao', '100', ''),
(75, 'salao de festa numero:2', 'nao', '100', ''),
(76, 'salao de festa numero:0', 'nao', '100', ''),
(77, 'salao de festa numero:1', 'nao', '100', ''),
(78, 'salao de festa numero:2', 'nao', '100', ''),
(79, 'salao de festa numero:0', 'nao', '100', ''),
(80, 'salao de festa numero:1', 'nao', '100', ''),
(81, 'salao de festa numero:2', 'nao', '100', ''),
(82, 'salao de festa numero:0', 'nao', '100', ''),
(83, 'salao de festa numero:1', 'nao', '100', ''),
(84, 'salao de festa numero:2', 'nao', '100', ''),
(85, 'salao de festa numero:0', 'nao', '100', ''),
(86, 'salao de festa numero:1', 'nao', '100', ''),
(87, 'salao de festa numero:2', 'nao', '100', ''),
(88, 'salao de festa numero:0', 'nao', '100', ''),
(89, 'salao de festa numero:1', 'nao', '100', ''),
(90, 'salao de festa numero:2', 'nao', '100', ''),
(91, 'salao de festa numero:0', 'nao', '100', ''),
(92, 'salao de festa numero:1', 'nao', '100', ''),
(93, 'salao de festa numero:2', 'nao', '100', ''),
(94, 'salao de festa numero:0', 'nao', '100', ''),
(95, 'salao de festa numero:1', 'nao', '100', ''),
(96, 'salao de festa numero:2', 'nao', '100', ''),
(97, 'salao de festa numero:0', 'nao', '100', ''),
(98, 'salao de festa numero:1', 'nao', '100', ''),
(99, 'salao de festa numero:2', 'nao', '100', ''),
(100, 'salao de festa numero:0', 'nao', '100', ''),
(101, 'salao de festa numero:1', 'nao', '100', ''),
(102, 'salao de festa numero:2', 'nao', '100', ''),
(103, 'salao de festa numero:0', 'nao', '100', ''),
(104, 'salao de festa numero:1', 'nao', '100', ''),
(105, 'salao de festa numero:2', 'nao', '100', ''),
(106, 'salao de festa numero:0', 'nao', '100', ''),
(107, 'salao de festa numero:1', 'nao', '100', ''),
(108, 'salao de festa numero:2', 'nao', '100', ''),
(109, 'salao de festa numero:0', 'nao', '100', ''),
(110, 'salao de festa numero:1', 'nao', '100', ''),
(111, 'salao de festa numero:2', 'nao', '100', ''),
(112, 'salao de festa numero:0', 'nao', '100', ''),
(113, 'salao de festa numero:1', 'nao', '100', ''),
(114, 'salao de festa numero:2', 'nao', '100', ''),
(115, 'salao de festa numero:0', 'nao', '100', ''),
(116, 'salao de festa numero:1', 'nao', '100', ''),
(117, 'salao de festa numero:2', 'nao', '100', ''),
(118, 'salao de festa numero:0', 'nao', '100', ''),
(119, 'salao de festa numero:1', 'nao', '100', ''),
(120, 'salao de festa numero:2', 'nao', '100', ''),
(121, 'salao de festa numero:0', 'nao', '100', ''),
(122, 'salao de festa numero:1', 'nao', '100', ''),
(123, 'salao de festa numero:2', 'nao', '100', ''),
(124, 'salao de festa numero:0', 'nao', '100', ''),
(125, 'salao de festa numero:1', 'nao', '100', ''),
(126, 'salao de festa numero:2', 'nao', '100', ''),
(127, 'salao de festa numero:0', 'nao', '100', ''),
(128, 'salao de festa numero:1', 'nao', '100', ''),
(129, 'salao de festa numero:2', 'nao', '100', ''),
(130, 'salao de festa numero:0', 'nao', '100', ''),
(131, 'salao de festa numero:1', 'nao', '100', ''),
(132, 'salao de festa numero:2', 'nao', '100', ''),
(133, 'salao de festa numero:0', 'nao', '100', ''),
(134, 'salao de festa numero:1', 'nao', '100', ''),
(135, 'salao de festa numero:2', 'nao', '100', ''),
(136, 'salao de festa numero:0', 'nao', '100', ''),
(137, 'salao de festa numero:1', 'nao', '100', ''),
(138, 'salao de festa numero:2', 'nao', '100', ''),
(139, 'salao de festa numero:0', 'nao', '100', ''),
(140, 'salao de festa numero:1', 'nao', '100', ''),
(141, 'salao de festa numero:2', 'nao', '100', ''),
(142, 'salao de festa numero:0', 'nao', '100', ''),
(143, 'salao de festa numero:1', 'nao', '100', ''),
(144, 'salao de festa numero:2', 'nao', '100', ''),
(145, 'salao de festa numero:0', 'nao', '100', ''),
(146, 'salao de festa numero:1', 'nao', '100', ''),
(147, 'salao de festa numero:2', 'nao', '100', ''),
(148, 'salao de festa numero:0', 'nao', '100', ''),
(149, 'salao de festa numero:1', 'nao', '100', ''),
(150, 'salao de festa numero:2', 'nao', '100', ''),
(151, 'salao de festa numero:0', 'nao', '100', ''),
(152, 'salao de festa numero:1', 'nao', '100', ''),
(153, 'salao de festa numero:2', 'nao', '100', ''),
(154, 'salao de festa numero:0', 'nao', '100', ''),
(155, 'salao de festa numero:1', 'nao', '100', ''),
(156, 'salao de festa numero:2', 'nao', '100', ''),
(157, 'salao de festa numero:0', 'nao', '100', ''),
(158, 'salao de festa numero:1', 'nao', '100', ''),
(159, 'salao de festa numero:2', 'nao', '100', ''),
(160, 'salao de festa numero:0', 'nao', '100', ''),
(161, 'salao de festa numero:1', 'nao', '100', ''),
(162, 'salao de festa numero:2', 'nao', '100', ''),
(163, 'salao de festa numero:0', 'nao', '100', ''),
(164, 'salao de festa numero:1', 'nao', '100', ''),
(165, 'salao de festa numero:2', 'nao', '100', ''),
(166, 'salao de festa numero:0', 'nao', '100', ''),
(167, 'salao de festa numero:1', 'nao', '100', ''),
(168, 'salao de festa numero:2', 'nao', '100', ''),
(169, 'salao de festa numero:0', 'nao', '100', ''),
(170, 'salao de festa numero:1', 'nao', '100', ''),
(171, 'salao de festa numero:2', 'nao', '100', ''),
(172, 'salao de festa numero:0', 'nao', '100', ''),
(173, 'salao de festa numero:1', 'nao', '100', ''),
(174, 'salao de festa numero:2', 'nao', '100', ''),
(175, 'salao de festa numero:0', 'nao', '100', ''),
(176, 'salao de festa numero:1', 'nao', '100', ''),
(177, 'salao de festa numero:2', 'nao', '100', ''),
(178, 'salao de festa numero:0', 'nao', '100', ''),
(179, 'salao de festa numero:1', 'nao', '100', ''),
(180, 'salao de festa numero:2', 'nao', '100', ''),
(181, 'salao de festa numero:0', 'nao', '100', ''),
(182, 'salao de festa numero:1', 'nao', '100', ''),
(183, 'salao de festa numero:2', 'nao', '100', ''),
(184, 'salao de festa numero:0', 'nao', '100', ''),
(185, 'salao de festa numero:1', 'nao', '100', ''),
(186, 'salao de festa numero:2', 'nao', '100', ''),
(187, 'salao de festa numero:0', 'nao', '100', ''),
(188, 'salao de festa numero:1', 'nao', '100', ''),
(189, 'salao de festa numero:2', 'nao', '100', ''),
(190, 'salao de festa numero:0', 'nao', '100', ''),
(191, 'salao de festa numero:1', 'nao', '100', ''),
(192, 'salao de festa numero:2', 'nao', '100', ''),
(193, 'salao de festa numero:0', 'nao', '100', ''),
(194, 'salao de festa numero:1', 'nao', '100', ''),
(195, 'salao de festa numero:2', 'nao', '100', ''),
(196, 'salao de festa numero:0', 'nao', '100', ''),
(197, 'salao de festa numero:1', 'nao', '100', ''),
(198, 'salao de festa numero:2', 'nao', '100', ''),
(199, 'salao de festa numero:0', 'nao', '100', ''),
(200, 'salao de festa numero:1', 'nao', '100', ''),
(201, 'salao de festa numero:2', 'nao', '100', ''),
(202, 'salao de festa numero:0', 'nao', '100', ''),
(203, 'salao de festa numero:1', 'nao', '100', ''),
(204, 'salao de festa numero:2', 'nao', '100', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospede`
--

CREATE TABLE `hospede` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `funcionario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `hospede`
--

INSERT INTO `hospede` (`id`, `nome`, `cpf`, `numero`, `usuario`, `senha`, `email`, `funcionario`) VALUES
(1, 'asdasdsad', 'saddsad', 'dsadasdas', 'dasdasdsa', 'adsdasdasdas', '', ''),
(4, 'andersomn', '1234567891', '40028922', 'anderson alves', '1234566', '', ''),
(5, 'paulao', '40028922900', '76767676767667', 'PJ', 'MORGANADETODOS', '', ''),
(13, 'caio', '223213213', '212321321', 'caio', '123', 'caiolima@gmail.com', 'gerente'),
(16, 'gesica', '', '', 'gessica', '1234', '', 'recepcionista');

-- --------------------------------------------------------

--
-- Estrutura da tabela `recepcionista`
--

CREATE TABLE `recepcionista` (
  `id` int(11) NOT NULL,
  `nome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `adiministrador`
--
ALTER TABLE `adiministrador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estruturas`
--
ALTER TABLE `estruturas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `hospede`
--
ALTER TABLE `hospede`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `recepcionista`
--
ALTER TABLE `recepcionista`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adiministrador`
--
ALTER TABLE `adiministrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `estruturas`
--
ALTER TABLE `estruturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT de tabela `hospede`
--
ALTER TABLE `hospede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `recepcionista`
--
ALTER TABLE `recepcionista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `ni`
--
CREATE DATABASE IF NOT EXISTS `ni` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ni`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastrar`
--

CREATE TABLE `cadastrar` (
  `Nome` int(11) NOT NULL,
  `Email` int(11) NOT NULL,
  `Data de Nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastrar`
--
ALTER TABLE `cadastrar`
  ADD PRIMARY KEY (`Nome`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastrar`
--
ALTER TABLE `cadastrar`
  MODIFY `Nome` int(11) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Extraindo dados da tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'db_hotel', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"db_hotel\",\"hoteldb\",\"ni\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Extraindo dados da tabela `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'hospede', 'table', 'hoteldb', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_hotel\",\"table\":\"pedidos\"},{\"db\":\"db_hotel\",\"table\":\"servicos\"},{\"db\":\"db_hotel\",\"table\":\"funcionarios\"},{\"db\":\"db_hotel\",\"table\":\"estrutura\"},{\"db\":\"hoteldb\",\"table\":\"estruturas\"},{\"db\":\"hoteldb\",\"table\":\"hospede\"},{\"db\":\"ni\",\"table\":\"cadastrar\"},{\"db\":\"ni\",\"table\":\"Cadastrar\"},{\"db\":\"hoteldb\",\"table\":\"recepcionista\"},{\"db\":\"hoteldb\",\"table\":\"adiministrador\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-24 16:49:17', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
