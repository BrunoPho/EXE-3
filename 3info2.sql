-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2018 at 02:09 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3info2`
--
CREATE DATABASE IF NOT EXISTS `3info2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `3info2`;

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(60) NOT NULL,
  `descricao_categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`, `descricao_categoria`) VALUES
(1, 'Telefonia', 'Produtos de Telefonia'),
(2, 'Informática', 'Produtos de Informática'),
(3, 'Eletrodomésticos', 'Produtos de Eletrodomésticos'),
(4, 'Móveis', 'Produtos de Móveis'),
(5, 'Limpeza', ''),
(6, 'Esportes', '');

-- --------------------------------------------------------

--
-- Table structure for table `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(60) NOT NULL,
  `descricao_produto` varchar(255) NOT NULL,
  `foto_produto` varchar(255) NOT NULL,
  `preco_produto` float NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produto`
--

INSERT INTO `produto` (`id_produto`, `nome_produto`, `descricao_produto`, `foto_produto`, `preco_produto`, `id_categoria`) VALUES
(1, 'Smartphone Samsung Galaxy J5 Duos Dourado com Dual Chip', 'Detalhes do produto: Samsung: Smartphone Samsung Galaxy J5 Duos Dourado com Dual chip, Tela 5.0", 4G, Câmera 13MP, Android 5.1 e Processador Quad Core de 1.2 Ghz', 'imagens/produtos/j5-dourado.jpg', 759, 1),
(2, 'Smartphone LG K10 TV Índigo', 'Smartphone LG K10 TV Índigo com 16GB, Dual Chip, Tela de 5.3" HD, 4G, Android 6.0, Câmera 13MP e Processador Octa Core de 1.14 GHz', 'imagens/produtos/k10-indigo.jpg', 699, 1),
(3, 'iPhone 7 Apple 32GB', '\r\niPhone 7 Apple 32GB, Tela Retina HD de 4,7”, 3D Touch, iOS 10, Touch ID, Câm.12MP, Resistente à Água e Sistema de Alto-falantes Estéreo - Prateado', 'imagens/produtos/iphon7-32.jpg', 3199, 1),
(4, 'Notebook Positivo Q232A', 'Notebook Positivo Quad Core 2GB 32GB SSD Tela 14” Windows 10 Motion Q232A', 'imagens/produtos/positivo-q232a', 949, 2),
(5, 'Notebook Lenovo Ideapad 320', 'Notebook Lenovo Core i3-6006U 4GB 1TB Tela Full HD 15.6” Windows 10 Ideapad 320', 'imagens/produtos/lenovo-320.jpg', 1799, 2),
(6, 'Sofá 3 Lugares American Comfort', '\r\nSofá 3 Lugares American Comfort América com Chaise Lado Direito + Puff\r\nEle conta com almofadas fixas com percinta elástica de densidade D-26, encosto com almofadas soltas em flocos de espuma e revestimento em suede pena. ', 'imagens/produtos/sofa-american.jpg', 1799, 4),
(7, ' Cadeira Office Peter', '\r\nCadeira Office Peter c/ Encosto em Nylon e Função Relax – Preta - Importado', 'imagens/produtos/cadeira-peter.jpg', 229, 4),
(8, 'Ajax', 'desinfetante para limpeza pesada', '', 7, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
