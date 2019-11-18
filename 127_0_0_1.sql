-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Nov-2019 às 20:16
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `senai`
--
DROP DATABASE IF EXISTS `senai`;
CREATE DATABASE IF NOT EXISTS `senai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `senai`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nomeCompleto` varchar(100) NOT NULL,
  `nomeUsuario` varchar(45) NOT NULL,
  `emailUsuario` varchar(45) NOT NULL,
  `senhaDoUsuario` char(40) NOT NULL,
  `dataCriado` date NOT NULL,
  `foto` varchar(200) NOT NULL,
  `token` char(10) NOT NULL,
  `tempoDeVida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nomeCompleto`, `nomeUsuario`, `emailUsuario`, `senhaDoUsuario`, `dataCriado`, `foto`, `token`, `tempoDeVida`) VALUES
(1, 'maria eduarda', 'duda11', 'duda@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-11-18', 'https://img.elo7.com.br/product/zoom/209E42B/kit-com-18-hastes-de-rosas-vermelha-para-enfeitar-ambientes-botao-de-rosa-artificial-atacado.jpg', '', '2019-11-18 22:09:36'),
(2, 'Fabiula Eduarda', 'eduarda', 'fabiula@eduarda.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-11-18', 'https://img.elo7.com.br/product/zoom/209E42B/kit-com-18-hastes-de-rosas-vermelha-para-enfeitar-ambientes-botao-de-rosa-artificial-atacado.jpg', '', '2019-11-18 22:11:16');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `nomeUsuario` (`nomeUsuario`),
  ADD UNIQUE KEY `emailUsuario` (`emailUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
