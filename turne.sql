-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 02-Set-2018 às 10:06
-- Versão do servidor: 5.5.28
-- versão do PHP: 5.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `turne`
--
CREATE DATABASE IF NOT EXISTS `turne` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `turne`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `username` tinytext,
  `about` tinytext,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` text,
  `about` text,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `about`, `email`, `password`, `last_login`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Paulo', 'Tozzi', NULL, NULL, 'p.tozzi2016@gmail.com', '$2a$08$1cd8nvB2Pjo4pcLnduRsbOcTG/peacja6Z2WS3yfddyHrbLwC3ibe', NULL, 'active', '2018-09-02 12:20:15', '2018-09-02 12:20:15'),
(2, 'Roberta', 'Roveri', NULL, NULL, 'robertaroveri2017@gmail.com', '$2a$08$JtfflTS1ppT2vk1z1xMwoeQjiY8ZAhnJ7GuTYUm.96sU63Oj9/s9m', NULL, 'active', '2018-09-02 12:40:58', '2018-09-02 12:40:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
