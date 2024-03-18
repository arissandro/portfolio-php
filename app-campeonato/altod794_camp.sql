-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 18-Out-2023 às 20:05
-- Versão do servidor: 5.7.23-23
-- versão do PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `altod794_camp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `braga_x_atletico`
--

CREATE TABLE `braga_x_atletico` (
  `id` int(11) NOT NULL,
  `data_partida` date DEFAULT NULL,
  `gols_braga` int(11) DEFAULT '0',
  `tempo_braga` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_braga` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_braga` int(11) DEFAULT '0',
  `cartao_vermelho_braga` int(11) DEFAULT '0',
  `vitoria_braga` int(11) DEFAULT '0',
  `derrota_braga` int(11) DEFAULT '0',
  `gols_atletico` int(11) DEFAULT '0',
  `tempo_atletico` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_atletico` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_atletico` int(11) DEFAULT '0',
  `cartao_vermelho_atletico` int(11) DEFAULT '0',
  `vitoria_atletico` int(11) DEFAULT '0',
  `derrota_atletico` int(11) DEFAULT '0',
  `cumprimento_entre_equipes` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `relatorio_arbitro` text COLLATE utf8mb4_unicode_520_ci,
  `observacoes` text COLLATE utf8mb4_unicode_520_ci,
  `estatus_da_partida` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `empate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `braga_x_atletico`
--

INSERT INTO `braga_x_atletico` (`id`, `data_partida`, `gols_braga`, `tempo_braga`, `atleta_braga`, `cartao_amarelo_braga`, `cartao_vermelho_braga`, `vitoria_braga`, `derrota_braga`, `gols_atletico`, `tempo_atletico`, `atleta_atletico`, `cartao_amarelo_atletico`, `cartao_vermelho_atletico`, `vitoria_atletico`, `derrota_atletico`, `cumprimento_entre_equipes`, `relatorio_arbitro`, `observacoes`, `estatus_da_partida`, `empate`) VALUES
(1, NULL, 0, NULL, 'joka', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 0, NULL, 'carlos', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 0, NULL, 'filter', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 0, NULL, 'nec', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 0, NULL, 'juan', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 0, NULL, 'rafael', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 0, NULL, 'santiago', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 0, NULL, 'wesley', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 0, NULL, 'marlon', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 0, NULL, 'danilo', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 0, NULL, 'carlinho', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 0, NULL, 'miguel', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 0, NULL, 'costa', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 0, NULL, 'caetano', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 0, NULL, 'kenn', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 0, NULL, 'julio', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 0, NULL, 'luiz', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 0, NULL, 'qweqw', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 0, NULL, 'qdasdas', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 0, NULL, 'sdafgg', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 0, NULL, 'wqw', 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 0, NULL, 'sad', 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 0, NULL, 'qwef', 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(24, NULL, 0, NULL, 'fdfc', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 4, NULL, 'gvsdfe', 1, 1, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(26, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'marrron', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'marcos', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'pedro', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(29, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'pablo', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(30, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'moises', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(31, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'wilian', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(32, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'felipe', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(33, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'dog', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(34, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'derley', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(35, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'dilson', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(36, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'fabinho', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(37, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'fatihan', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(38, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'costa', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'camargo', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'arminho', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(41, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'carioca', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(42, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'morales', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(43, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'cley', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(44, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'thompson', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(45, NULL, 0, NULL, NULL, 0, 0, 0, 0, 1, NULL, 'kaley', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(46, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'henrique', 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(47, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'heherira', 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(48, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'zomo', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(49, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'luiz', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(50, NULL, 0, NULL, NULL, 0, 0, 0, 0, 1, NULL, 'zeca', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(51, '0000-00-00', 0, NULL, NULL, 0, 0, 3, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '', 'finalizado', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `braga_x_flamengo`
--

CREATE TABLE `braga_x_flamengo` (
  `id` int(11) NOT NULL,
  `data_partida` date DEFAULT NULL,
  `gols_braga` int(11) DEFAULT '0',
  `tempo_braga` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_braga` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_braga` int(11) DEFAULT '0',
  `cartao_vermelho_braga` int(11) DEFAULT '0',
  `vitoria_braga` int(11) DEFAULT '0',
  `derrota_braga` int(11) DEFAULT '0',
  `gols_flamengo` int(11) DEFAULT '0',
  `tempo_flamengo` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_flamengo` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_flamengo` int(11) DEFAULT '0',
  `cartao_vermelho_flamengo` int(11) DEFAULT '0',
  `vitoria_flamengo` int(11) DEFAULT '0',
  `derrota_flamengo` int(11) DEFAULT '0',
  `cumprimento_entre_equipes` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `relatorio_arbitro` text COLLATE utf8mb4_unicode_520_ci,
  `observacoes` text COLLATE utf8mb4_unicode_520_ci,
  `estatus_da_partida` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `empate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `braga_x_flamengo`
--

INSERT INTO `braga_x_flamengo` (`id`, `data_partida`, `gols_braga`, `tempo_braga`, `atleta_braga`, `cartao_amarelo_braga`, `cartao_vermelho_braga`, `vitoria_braga`, `derrota_braga`, `gols_flamengo`, `tempo_flamengo`, `atleta_flamengo`, `cartao_amarelo_flamengo`, `cartao_vermelho_flamengo`, `vitoria_flamengo`, `derrota_flamengo`, `cumprimento_entre_equipes`, `relatorio_arbitro`, `observacoes`, `estatus_da_partida`, `empate`) VALUES
(1, NULL, 0, NULL, 'joka', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 0, NULL, 'carlos', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 0, NULL, 'filter', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 0, NULL, 'nec', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 0, NULL, 'juan', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 0, NULL, 'rafael', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 0, NULL, 'santiago', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 0, NULL, 'wesley', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 0, NULL, 'marlon', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 0, NULL, 'danilo', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 0, NULL, 'carlinho', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 0, NULL, 'miguel', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 0, NULL, 'costa', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 0, NULL, 'caetano', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 0, NULL, 'kenn', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 0, NULL, 'julio', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 0, NULL, 'luiz', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 0, NULL, 'qweqw', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 0, NULL, 'qdasdas', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 0, NULL, 'sdafgg', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 0, NULL, 'wqw', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 0, NULL, 'sad', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 0, NULL, 'qwef', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(24, NULL, 0, NULL, 'fdfc', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 0, NULL, 'gvsdfe', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(26, '0000-00-00', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '', 'finalizado', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `commentmeta`
--

CREATE TABLE `commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `comments`
--

INSERT INTO `comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-03 14:41:45', '2023-10-03 14:41:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `flamengo_x_corinthians`
--

CREATE TABLE `flamengo_x_corinthians` (
  `id` int(11) NOT NULL,
  `data_partida` date DEFAULT NULL,
  `gols_flamengo` int(11) DEFAULT '0',
  `tempo_flamengo` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_flamengo` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_flamengo` int(11) DEFAULT '0',
  `cartao_vermelho_flamengo` int(11) DEFAULT '0',
  `vitoria_flamengo` int(11) DEFAULT '0',
  `derrota_flamengo` int(11) DEFAULT '0',
  `gols_corinthians` int(11) DEFAULT '0',
  `tempo_corinthians` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_corinthians` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_corinthians` int(11) DEFAULT '0',
  `cartao_vermelho_corinthians` int(11) DEFAULT '0',
  `vitoria_corinthians` int(11) DEFAULT '0',
  `derrota_corinthians` int(11) DEFAULT '0',
  `cumprimento_entre_equipes` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `relatorio_arbitro` text COLLATE utf8mb4_unicode_520_ci,
  `observacoes` text COLLATE utf8mb4_unicode_520_ci,
  `estatus_da_partida` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `empate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `links`
--

CREATE TABLE `links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `options`
--

CREATE TABLE `options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `options`
--

INSERT INTO `options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://app.brazilcup.com.br', 'yes'),
(2, 'home', 'https://app.brazilcup.com.br', 'yes'),
(3, 'blogname', 'Brazil Cup', 'yes'),
(4, 'blogdescription', 'My WordPress Blog', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@app.brazilcup.com.br', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentythree', 'yes'),
(41, 'stylesheet', 'twentytwentythree', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1711896105', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"manage_security\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:12:{i:1697670259;a:1:{s:29:\"rsssl_every_five_minutes_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:18:\"rsssl_five_minutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1697672506;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1697672659;a:1:{s:28:\"rsssl_every_three_hours_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:23:\"rsssl_every_three_hours\";s:4:\"args\";a:0:{}s:8:\"interval\";i:10800;}}}i:1697683305;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697684040;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697726505;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697726659;a:1:{s:20:\"rsssl_every_day_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"rsssl_daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697727239;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698158507;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1698158659;a:1:{s:21:\"rsssl_every_week_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"rsssl_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1698244905;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentythree', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'WPLANG', 'pt_PT', 'yes'),
(125, 'https_detection_errors', 'a:0:{}', 'yes'),
(133, 'rsssl_show_onboarding', '1', 'yes'),
(140, 'rsssl_current_version', '7.0.9', 'no'),
(146, 'rsssl_options', 'a:1:{s:12:\"site_has_ssl\";s:1:\"1\";}', 'yes'),
(160, 'rsssl_wp_version_detected', 'found', 'no'),
(163, 'rsssl_6_notice_dismissed', '1', 'no'),
(167, 'rsssl_last_tested_http_method', '3', 'no'),
(168, 'rsssl_http_methods_allowed', 'a:2:{s:11:\"not-allowed\";a:0:{}s:7:\"allowed\";a:4:{i:0;s:3:\"GET\";i:1;s:4:\"POST\";i:2;s:3:\"PUT\";i:3;s:6:\"DELETE\";}}', 'no'),
(169, 'can_compress_scripts', '0', 'yes'),
(170, 'rsssl_onboarding_dismissed', '1', 'no'),
(174, 'finished_updating_comment_type', '1', 'yes'),
(265, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes'),
(683, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"admin@app.brazilcup.com.br\";s:7:\"version\";s:5:\"6.3.2\";s:9:\"timestamp\";i:1697165370;}', 'no'),
(692, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_PT/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"pt_PT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_PT/wordpress-6.3.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1697651118;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(693, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697651118;s:7:\"checked\";a:3:{s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(890, '_site_transient_timeout_theme_roots', '1697652917', 'no'),
(891, '_site_transient_theme_roots', 'a:3:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(892, '_site_transient_timeout_php_check_91a3bf8869fd75609ced76f3ca6d6a7f', '1698255917', 'no'),
(893, '_site_transient_php_check_91a3bf8869fd75609ced76f3ca6d6a7f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(894, '_transient_timeout_rsssl_can_use_curl_headers_check', '1698255917', 'no'),
(895, '_transient_rsssl_can_use_curl_headers_check', 'a:7:{i:0;s:25:\"Upgrade Insecure Requests\";i:1;s:16:\"X-XSS protection\";i:2;s:22:\"X-Content Type Options\";i:3;s:15:\"Referrer-Policy\";i:4;s:15:\"X-Frame-Options\";i:5;s:18:\"Permissions-Policy\";i:6;s:30:\"HTTP Strict Transport Security\";}', 'no'),
(897, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697651119;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:5:\"7.1.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/really-simple-ssl.7.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-256x256.png?rev=2839720\";s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=2839720\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/really-simple-ssl/assets/banner-1544x500.png?rev=2810049\";s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.png?rev=2810049\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"5.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:5:\"7.0.9\";}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `postmeta`
--

CREATE TABLE `postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `postmeta`
--

INSERT INTO `postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-03 14:41:45', '2023-10-03 14:41:45', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-10-03 14:41:45', '2023-10-03 14:41:45', '', 0, 'https://app.brazilcup.com.br/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-03 14:41:45', '2023-10-03 14:41:45', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://app.brazilcup.com.br/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-10-03 14:41:45', '2023-10-03 14:41:45', '', 0, 'https://app.brazilcup.com.br/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-03 14:41:45', '2023-10-03 14:41:45', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://app.brazilcup.com.br.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-03 14:41:45', '2023-10-03 14:41:45', '', 0, 'https://app.brazilcup.com.br/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-10-03 14:41:47', '2023-10-03 14:41:47', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-10-03 14:41:47', '2023-10-03 14:41:47', '', 0, 'https://app.brazilcup.com.br/2023/10/03/navigation/', 0, 'wp_navigation', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `relacao_nominal`
--

CREATE TABLE `relacao_nominal` (
  `id` int(11) NOT NULL,
  `nome_equipe` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nome_completo` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nome_mae` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rg` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nome_comissao_tecnica` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cargo_comissao_tecnica` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rg_comissao_tecnica` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `relacao_nominal`
--

INSERT INTO `relacao_nominal` (`id`, `nome_equipe`, `categoria`, `nome_completo`, `nome_mae`, `rg`, `data_nascimento`, `nome_comissao_tecnica`, `cargo_comissao_tecnica`, `rg_comissao_tecnica`) VALUES
(3195, 'vasco', 'SUB-11', 'joka', 'filta', '131', '1969-12-31', NULL, NULL, NULL),
(3196, 'vasco', 'SUB-11', 'carlos', 'sena', '412', '1900-02-05', NULL, NULL, NULL),
(3197, 'vasco', 'SUB-11', 'filter', 'julia', '1231', '1900-02-05', NULL, NULL, NULL),
(3198, 'vasco', 'SUB-11', 'nec', 'francisca', '231', '1900-02-05', NULL, NULL, NULL),
(3199, 'vasco', 'SUB-11', 'juan', 'fatima', '3', '1900-04-01', NULL, NULL, NULL),
(3200, 'vasco', 'SUB-11', 'rafael', 'frend', '13', '1900-02-05', NULL, NULL, NULL),
(3201, 'vasco', 'SUB-11', 'santiago', 'jhonieli', '1', '1900-12-01', NULL, NULL, NULL),
(3202, 'vasco', 'SUB-11', 'wesley', 'clery', '23', '1900-02-05', NULL, NULL, NULL),
(3203, 'vasco', 'SUB-11', 'marlon', 'creuza', '13', '1900-02-05', NULL, NULL, NULL),
(3204, 'vasco', 'SUB-11', 'danilo', 'sousa', '1', '1900-02-05', NULL, NULL, NULL),
(3205, 'vasco', 'SUB-11', 'carlinho', 'livia', '23', '1900-02-05', NULL, NULL, NULL),
(3206, 'vasco', 'SUB-11', 'miguel', 'debora', '1', '1969-12-31', NULL, NULL, NULL),
(3207, 'vasco', 'SUB-11', 'costa', 'cristina', '3', '1900-11-02', NULL, NULL, NULL),
(3208, 'vasco', 'SUB-11', 'caetano', 'estefane', '12', '1900-12-01', NULL, NULL, NULL),
(3209, 'vasco', 'SUB-11', 'kenn', 'elena', '31', '1900-04-01', NULL, NULL, NULL),
(3210, 'vasco', 'SUB-11', 'julio', 'evely', '3', '1900-12-01', NULL, NULL, NULL),
(3211, 'vasco', 'SUB-11', 'luiz', 'erica', '13', '1900-12-01', NULL, NULL, NULL),
(3212, 'vasco', 'SUB-11', 'kley', 'monise', '1', '1969-12-31', NULL, NULL, NULL),
(3213, 'vasco', 'SUB-11', 'datway', 'marcia', '3', '1900-04-01', NULL, NULL, NULL),
(3214, 'vasco', 'SUB-11', 'muleke', 'maite', '123', '1900-02-05', NULL, NULL, NULL),
(3215, 'vasco', 'SUB-11', 'fredon', 'maristela', '12', '1900-12-01', NULL, NULL, NULL),
(3216, 'vasco', 'SUB-11', 'sad', 'matina', '312', '1969-12-31', NULL, NULL, NULL),
(3217, 'vasco', 'SUB-11', 'cartier', 'marcialeia', '22', '1933-11-03', NULL, NULL, NULL),
(3218, 'vasco', 'SUB-11', 'oliveira', 'marcicleia', '12', '1969-12-31', NULL, NULL, NULL),
(3219, 'vasco', 'SUB-11', 'zinho', 'marizeia', '124 4', '1900-12-01', NULL, NULL, NULL),
(3220, 'vasco', 'SUB-11', 'COMISSÃO TÉCNICA', '', '', '1969-12-31', NULL, NULL, NULL),
(3221, 'vasco', 'SUB-11', 'jogas', 'tecnico', '12341', '1969-12-31', NULL, NULL, NULL),
(3222, 'vasco', 'SUB-11', 'jouenas', 'assistente', '123.124', '1969-12-31', NULL, NULL, NULL),
(3223, 'vasco', 'SUB-11', 'sordae', 'massagista', '12412', '1969-12-31', NULL, NULL, NULL),
(3224, 'vasco', 'SUB-11', 'soldado', 'gandula', '123412', '1969-12-31', NULL, NULL, NULL),
(3225, 'vasco', 'SUB-11', 'chzres', 'suplente', '1231', '1969-12-31', NULL, NULL, NULL),
(3228, 'braga', 'SUB-11', 'joka', 'qweqw', '131', '1969-12-31', NULL, NULL, NULL),
(3229, 'braga', 'SUB-11', 'carlos', 'qweqw', '412', '1900-02-05', NULL, NULL, NULL),
(3230, 'braga', 'SUB-11', 'filter', 'qweqw', '1231', '1900-02-05', NULL, NULL, NULL),
(3231, 'braga', 'SUB-11', 'nec', 'r', '231', '1900-02-05', NULL, NULL, NULL),
(3232, 'braga', 'SUB-11', 'juan', 'qweqw', '3', '1900-04-01', NULL, NULL, NULL),
(3233, 'braga', 'SUB-11', 'rafael', 'e', '13', '1900-02-05', NULL, NULL, NULL),
(3234, 'braga', 'SUB-11', 'santiago', 'qweqw', '1', '1900-12-01', NULL, NULL, NULL),
(3235, 'braga', 'SUB-11', 'wesley', 'qweqw', '23', '1900-02-05', NULL, NULL, NULL),
(3236, 'braga', 'SUB-11', 'marlon', 'werwer', '13', '1900-02-05', NULL, NULL, NULL),
(3237, 'braga', 'SUB-11', 'danilo', 'ewrw', '1', '1900-02-05', NULL, NULL, NULL),
(3238, 'braga', 'SUB-11', 'carlinho', 'werwer', '23', '1900-02-05', NULL, NULL, NULL),
(3239, 'braga', 'SUB-11', 'miguel', 'werwer', '1', '1969-12-31', NULL, NULL, NULL),
(3240, 'braga', 'SUB-11', 'costa', 'tdfs', '3', '1900-11-02', NULL, NULL, NULL),
(3241, 'braga', 'SUB-11', 'caetano', 'qweqdsa', '12', '1900-12-01', NULL, NULL, NULL),
(3242, 'braga', 'SUB-11', 'kenn', 'qweqw', '31', '1900-04-01', NULL, NULL, NULL),
(3243, 'braga', 'SUB-11', 'julio', 'werfw', '3', '1900-12-01', NULL, NULL, NULL),
(3244, 'braga', 'SUB-11', 'luiz', 'wefrw', '13', '1900-12-01', NULL, NULL, NULL),
(3245, 'braga', 'SUB-11', 'qweqw', 'wefrw', '1', '1969-12-31', NULL, NULL, NULL),
(3246, 'braga', 'SUB-11', 'qdasdas', 'd', '3', '1900-04-01', NULL, NULL, NULL),
(3247, 'braga', 'SUB-11', 'sdafgg', 'wq', '123', '1900-02-05', NULL, NULL, NULL),
(3248, 'braga', 'SUB-11', 'wqw', 's', '12', '1900-12-01', NULL, NULL, NULL),
(3249, 'braga', 'SUB-11', 'sad', 'sadf', '312', '1969-12-31', NULL, NULL, NULL),
(3250, 'braga', 'SUB-11', 'qwef', 'sdq', '22', '1933-11-03', NULL, NULL, NULL),
(3251, 'braga', 'SUB-11', 'fdfc', 'dasd', '12', '1969-12-31', NULL, NULL, NULL),
(3252, 'braga', 'SUB-11', 'gvsdfe', 'sadq', '124 4', '1900-12-01', NULL, NULL, NULL),
(3253, 'braga', 'SUB-11', 'COMISSÃO TÉCNICA', '', '', '1969-12-31', NULL, NULL, NULL),
(3254, 'braga', 'SUB-11', 'qweqweqwrqwrqw', 'wewerwe', '12341', '1969-12-31', NULL, NULL, NULL),
(3255, 'braga', 'SUB-11', 'qweqweqwe', 'werwerwe', '123.124', '1969-12-31', NULL, NULL, NULL),
(3256, 'braga', 'SUB-11', 'qweqweqweqwe', 'werwerw', '12412', '1969-12-31', NULL, NULL, NULL),
(3257, 'braga', 'SUB-11', 'qweqweqweqwe', 'werwer', '123412', '1969-12-31', NULL, NULL, NULL),
(3258, 'braga', 'SUB-11', 'asdasdasdas', 'wefwe', '1231', '1969-12-31', NULL, NULL, NULL),
(3261, 'Atletico', 'SUB-13', 'marrron', 'ana', '123', '1900-02-05', NULL, NULL, NULL),
(3262, 'Atletico', 'SUB-13', 'marcos', 'maria', '123123', '1900-02-05', NULL, NULL, NULL),
(3263, 'Atletico', 'SUB-13', 'pedro', 'sofia', '123', '1900-02-05', NULL, NULL, NULL),
(3264, 'Atletico', 'SUB-13', 'pablo', 'laura', '123', '1900-02-05', NULL, NULL, NULL),
(3265, 'Atletico', 'SUB-13', 'moises', 'isabela', '231', '1900-02-05', NULL, NULL, NULL),
(3266, 'Atletico', 'SUB-13', 'wilian', 'giovana', '23', '1900-02-05', NULL, NULL, NULL),
(3267, 'Atletico', 'SUB-13', 'felipe', 'beatriz', '123', '1900-02-05', NULL, NULL, NULL),
(3268, 'Atletico', 'SUB-13', 'dog', 'clara', '1', '1900-02-05', NULL, NULL, NULL),
(3269, 'Atletico', 'SUB-13', 'derley', 'julia', '231', '1969-12-31', NULL, NULL, NULL),
(3270, 'Atletico', 'SUB-13', 'dilson', 'valentina', '23', '1969-12-31', NULL, NULL, NULL),
(3271, 'Atletico', 'SUB-13', 'fabinho', 'camila', '123', '1969-12-31', NULL, NULL, NULL),
(3272, 'Atletico', 'SUB-13', 'fatihan', 'larissa', '1', '1900-07-11', NULL, NULL, NULL),
(3273, 'Atletico', 'SUB-13', 'costa', 'eduarda', '23', '1969-12-31', NULL, NULL, NULL),
(3274, 'Atletico', 'SUB-13', 'camargo', 'alice', '123', '1900-02-05', NULL, NULL, NULL),
(3275, 'Atletico', 'SUB-13', 'arminho', 'manuela', '12', '1900-12-01', NULL, NULL, NULL),
(3276, 'Atletico', 'SUB-13', 'carioca', 'luiza', '3', '1900-07-11', NULL, NULL, NULL),
(3277, 'Atletico', 'SUB-13', 'morales', 'mariana', '123', '1900-07-11', NULL, NULL, NULL),
(3278, 'Atletico', 'SUB-13', 'cley', 'yasmin', '12', '1900-02-05', NULL, NULL, NULL),
(3279, 'Atletico', 'SUB-13', 'thompson', 'rafaela', '31', '1900-02-05', NULL, NULL, NULL),
(3280, 'Atletico', 'SUB-13', 'kaley', 'vitoria', '23', '1900-02-05', NULL, NULL, NULL),
(3281, 'Atletico', 'SUB-13', 'henrique', 'livia', '123', '1900-02-05', NULL, NULL, NULL),
(3282, 'Atletico', 'SUB-13', 'heherira', 'aline', '14', '1900-12-01', NULL, NULL, NULL),
(3283, 'Atletico', 'SUB-13', 'zomo', 'carolina', '242', '1969-12-31', NULL, NULL, NULL),
(3284, 'Atletico', 'SUB-13', 'luiz', 'elisa', '34', '1900-12-01', NULL, NULL, NULL),
(3285, 'Atletico', 'SUB-13', 'zeca', 'bia', '23', '1969-12-31', NULL, NULL, NULL),
(3286, 'Atletico', 'SUB-13', 'COMISSÃO TÉCNICA', '', '', '1969-12-31', NULL, NULL, NULL),
(3287, 'Atletico', 'SUB-13', 'eqweqweqwe', 'tecnico', '423', '1969-12-31', NULL, NULL, NULL),
(3288, 'Atletico', 'SUB-13', 'qweqwe', 'auxiliar', '4', '1969-12-31', NULL, NULL, NULL),
(3289, 'Atletico', 'SUB-13', 'qweqweqw', 'gerente', '3242', '1969-12-31', NULL, NULL, NULL),
(3290, 'Atletico', 'SUB-13', 'qweqweqwe', 'massagem', '34', '1969-12-31', NULL, NULL, NULL),
(3291, 'Atletico', 'SUB-13', 'qweqwe', 'suplente', '234', '1969-12-31', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_jogos`
--

CREATE TABLE `tabela_jogos` (
  `id` int(11) NOT NULL,
  `timeA_id` int(11) DEFAULT NULL,
  `timeB_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `termmeta`
--

CREATE TABLE `termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `terms`
--

CREATE TABLE `terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `terms`
--

INSERT INTO `terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `term_relationships`
--

CREATE TABLE `term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `term_relationships`
--

INSERT INTO `term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `term_taxonomy`
--

CREATE TABLE `term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `term_taxonomy`
--

INSERT INTO `term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `teste`
--

CREATE TABLE `teste` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `times`
--

CREATE TABLE `times` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `modalidade` varchar(255) DEFAULT NULL,
  `cpf_cnpj` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `nome_responsavel` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `plano` varchar(255) DEFAULT NULL,
  `categoria_sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `times`
--

INSERT INTO `times` (`id`, `nome`, `modalidade`, `cpf_cnpj`, `endereco`, `cidade`, `estado`, `cep`, `nome_responsavel`, `celular`, `email`, `plano`, `categoria_sub`) VALUES
(64, 'corinthians', 'Futsal', '323', 'qwe', '', '', '', '', '', '', 'plano_a', 'sub 9'),
(65, 'flamengo', 'Futsal', '13123123', '', '', '', '', '', '', '', 'plano_b', 'sub 9'),
(66, 'vasco', 'Futsal', '123', '', '', '', '', '', '', '', 'plano_c', 'sub 9'),
(67, 'braga', 'Futsal', '1233', '', '', '', '', '', '', '', 'plano_c', 'sub 9'),
(68, 'atletico', 'Futsal', '12312', '123', '', '', '', '', '', '', 'plano_a', 'sub 13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `torneios`
--

CREATE TABLE `torneios` (
  `id` int(11) NOT NULL,
  `nome_torneio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `torneios`
--

INSERT INTO `torneios` (`id`, `nome_torneio`) VALUES
(18, 'champ'),
(19, 'champ'),
(20, 'champ cup'),
(21, 'champ'),
(22, 'champ cup'),
(23, 'champ cup'),
(24, 'champ cup'),
(25, 'thency'),
(26, 'thency'),
(27, 'thency'),
(28, 'champ cup'),
(29, 'teste1'),
(30, 'testando'),
(31, 'champ'),
(32, 'testando'),
(33, 'Chapiones cup'),
(34, 'thency');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Torneio_champ_cup_sub_9`
--

CREATE TABLE `Torneio_champ_cup_sub_9` (
  `id` int(11) NOT NULL,
  `nome_do_time` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `categoria_sub` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `Torneio_champ_cup_sub_9`
--

INSERT INTO `Torneio_champ_cup_sub_9` (`id`, `nome_do_time`, `categoria_sub`) VALUES
(1, 'corinthians', 'sub 9'),
(2, 'flamengo', 'sub 9'),
(3, 'vasco', 'sub 9'),
(4, 'braga', 'sub 9'),
(5, 'corinthians', 'sub 9'),
(6, 'flamengo', 'sub 9'),
(7, 'vasco', 'sub 9'),
(8, 'braga', 'sub 9'),
(9, 'corinthians', 'sub 9'),
(10, 'flamengo', 'sub 9'),
(11, 'vasco', 'sub 9'),
(12, 'braga', 'sub 9'),
(13, 'corinthians', 'sub 9'),
(14, 'flamengo', 'sub 9'),
(15, 'vasco', 'sub 9'),
(16, 'braga', 'sub 9');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Torneio_champ_cup_sub_13`
--

CREATE TABLE `Torneio_champ_cup_sub_13` (
  `id` int(11) NOT NULL,
  `nome_do_time` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `categoria_sub` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `Torneio_champ_cup_sub_13`
--

INSERT INTO `Torneio_champ_cup_sub_13` (`id`, `nome_do_time`, `categoria_sub`) VALUES
(1, 'atletico', 'sub 13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usermeta`
--

CREATE TABLE `usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `usermeta`
--

INSERT INTO `usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"786e6fd885d34f5fb0f2acbe882d508bd30acb365b39020f38e6f845c41f815c\";a:4:{s:10:\"expiration\";i:1696517639;s:2:\"ip\";s:15:\"179.154.143.114\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36\";s:5:\"login\";i:1696344839;}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BfEvmq.M.3nSgdA.UINDV6dN0n2//e1', 'root', 'admin@app.brazilcup.com.br', 'https://app.brazilcup.com.br', '2023-10-03 14:41:45', '', 0, 'root');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `senha`) VALUES
(1, 'ari', 'teste123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vasco_x_atletico`
--

CREATE TABLE `vasco_x_atletico` (
  `id` int(11) NOT NULL,
  `data_partida` date DEFAULT NULL,
  `gols_vasco` int(11) DEFAULT '0',
  `tempo_vasco` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_vasco` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_vasco` int(11) DEFAULT '0',
  `cartao_vermelho_vasco` int(11) DEFAULT '0',
  `vitoria_vasco` int(11) DEFAULT '0',
  `derrota_vasco` int(11) DEFAULT '0',
  `gols_atletico` int(11) DEFAULT '0',
  `tempo_atletico` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_atletico` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_atletico` int(11) DEFAULT '0',
  `cartao_vermelho_atletico` int(11) DEFAULT '0',
  `vitoria_atletico` int(11) DEFAULT '0',
  `derrota_atletico` int(11) DEFAULT '0',
  `cumprimento_entre_equipes` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `relatorio_arbitro` text COLLATE utf8mb4_unicode_520_ci,
  `observacoes` text COLLATE utf8mb4_unicode_520_ci,
  `estatus_da_partida` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `empate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `vasco_x_atletico`
--

INSERT INTO `vasco_x_atletico` (`id`, `data_partida`, `gols_vasco`, `tempo_vasco`, `atleta_vasco`, `cartao_amarelo_vasco`, `cartao_vermelho_vasco`, `vitoria_vasco`, `derrota_vasco`, `gols_atletico`, `tempo_atletico`, `atleta_atletico`, `cartao_amarelo_atletico`, `cartao_vermelho_atletico`, `vitoria_atletico`, `derrota_atletico`, `cumprimento_entre_equipes`, `relatorio_arbitro`, `observacoes`, `estatus_da_partida`, `empate`) VALUES
(1, NULL, 0, NULL, 'joka', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 0, NULL, 'carlos', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 0, NULL, 'filter', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 0, NULL, 'nec', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 0, NULL, 'juan', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 0, NULL, 'rafael', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 0, NULL, 'santiago', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 0, NULL, 'wesley', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 0, NULL, 'marlon', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 0, NULL, 'danilo', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 0, NULL, 'carlinho', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 0, NULL, 'miguel', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 0, NULL, 'costa', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 0, NULL, 'caetano', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 0, NULL, 'kenn', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 0, NULL, 'julio', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 0, NULL, 'luiz', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 0, NULL, 'kley', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 0, NULL, 'datway', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 0, NULL, 'muleke', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 0, NULL, 'fredon', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 0, NULL, 'sad', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 0, NULL, 'cartier', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(24, NULL, 0, NULL, 'oliveira', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 1, NULL, 'zinho', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(26, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'marrron', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'marcos', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'pedro', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(29, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'pablo', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(30, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'moises', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(31, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'wilian', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(32, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'felipe', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(33, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'dog', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(34, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'derley', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(35, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'dilson', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(36, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'fabinho', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(37, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'fatihan', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(38, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'costa', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'camargo', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'arminho', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(41, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'carioca', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(42, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'morales', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(43, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'cley', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(44, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'thompson', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(45, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'kaley', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(46, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'henrique', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(47, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'heherira', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(48, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'zomo', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(49, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'luiz', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(50, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'zeca', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(51, '0000-00-00', 0, NULL, NULL, 0, 0, 3, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '', 'finalizado', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vasco_x_braga`
--

CREATE TABLE `vasco_x_braga` (
  `id` int(11) NOT NULL,
  `data_partida` date DEFAULT NULL,
  `gols_vasco` int(11) DEFAULT '0',
  `tempo_vasco` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_vasco` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_vasco` int(11) DEFAULT '0',
  `cartao_vermelho_vasco` int(11) DEFAULT '0',
  `vitoria_vasco` int(11) DEFAULT '0',
  `derrota_vasco` int(11) DEFAULT '0',
  `gols_braga` int(11) DEFAULT '0',
  `tempo_braga` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `atleta_braga` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cartao_amarelo_braga` int(11) DEFAULT '0',
  `cartao_vermelho_braga` int(11) DEFAULT '0',
  `vitoria_braga` int(11) DEFAULT '0',
  `derrota_braga` int(11) DEFAULT '0',
  `cumprimento_entre_equipes` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `relatorio_arbitro` text COLLATE utf8mb4_unicode_520_ci,
  `observacoes` text COLLATE utf8mb4_unicode_520_ci,
  `estatus_da_partida` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `empate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `vasco_x_braga`
--

INSERT INTO `vasco_x_braga` (`id`, `data_partida`, `gols_vasco`, `tempo_vasco`, `atleta_vasco`, `cartao_amarelo_vasco`, `cartao_vermelho_vasco`, `vitoria_vasco`, `derrota_vasco`, `gols_braga`, `tempo_braga`, `atleta_braga`, `cartao_amarelo_braga`, `cartao_vermelho_braga`, `vitoria_braga`, `derrota_braga`, `cumprimento_entre_equipes`, `relatorio_arbitro`, `observacoes`, `estatus_da_partida`, `empate`) VALUES
(1, NULL, 0, NULL, 'joka', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 0, NULL, 'carlos', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 0, NULL, 'filter', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 0, NULL, 'nec', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 0, NULL, 'juan', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 0, NULL, 'rafael', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 0, NULL, 'santiago', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 0, NULL, 'wesley', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 0, NULL, 'marlon', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 0, NULL, 'danilo', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 0, NULL, 'carlinho', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 0, NULL, 'miguel', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 0, NULL, 'costa', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 0, NULL, 'caetano', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 0, NULL, 'kenn', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 0, NULL, 'julio', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 0, NULL, 'luiz', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 0, NULL, 'kley', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 0, NULL, 'datway', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 0, NULL, 'muleke', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 0, NULL, 'fredon', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 0, NULL, 'sad', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 0, NULL, 'cartier', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(24, NULL, 0, NULL, 'oliveira', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 0, NULL, 'zinho', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(26, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'joka', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'carlos', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'filter', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(29, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'nec', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(30, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'juan', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(31, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'rafael', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(32, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'santiago', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(33, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'wesley', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(34, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'marlon', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(35, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'danilo', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(36, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'carlinho', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(37, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'miguel', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(38, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'costa', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'caetano', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'kenn', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(41, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'julio', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(42, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'luiz', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(43, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'qweqw', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(44, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'qdasdas', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(45, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'sdafgg', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(46, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'wqw', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(47, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'sad', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(48, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'qwef', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(49, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'fdfc', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(50, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'gvsdfe', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(51, '0000-00-00', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '', 'finalizado', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `braga_x_atletico`
--
ALTER TABLE `braga_x_atletico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `braga_x_flamengo`
--
ALTER TABLE `braga_x_flamengo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `commentmeta`
--
ALTER TABLE `commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `flamengo_x_corinthians`
--
ALTER TABLE `flamengo_x_corinthians`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `postmeta`
--
ALTER TABLE `postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `relacao_nominal`
--
ALTER TABLE `relacao_nominal`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tabela_jogos`
--
ALTER TABLE `tabela_jogos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timeA_id` (`timeA_id`),
  ADD KEY `timeB_id` (`timeB_id`);

--
-- Índices para tabela `termmeta`
--
ALTER TABLE `termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `term_relationships`
--
ALTER TABLE `term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `term_taxonomy`
--
ALTER TABLE `term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `teste`
--
ALTER TABLE `teste`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `torneios`
--
ALTER TABLE `torneios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `Torneio_champ_cup_sub_9`
--
ALTER TABLE `Torneio_champ_cup_sub_9`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `Torneio_champ_cup_sub_13`
--
ALTER TABLE `Torneio_champ_cup_sub_13`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usermeta`
--
ALTER TABLE `usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vasco_x_atletico`
--
ALTER TABLE `vasco_x_atletico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vasco_x_braga`
--
ALTER TABLE `vasco_x_braga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `braga_x_atletico`
--
ALTER TABLE `braga_x_atletico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `braga_x_flamengo`
--
ALTER TABLE `braga_x_flamengo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `commentmeta`
--
ALTER TABLE `commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `flamengo_x_corinthians`
--
ALTER TABLE `flamengo_x_corinthians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `links`
--
ALTER TABLE `links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `options`
--
ALTER TABLE `options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=902;

--
-- AUTO_INCREMENT de tabela `postmeta`
--
ALTER TABLE `postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `relacao_nominal`
--
ALTER TABLE `relacao_nominal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3294;

--
-- AUTO_INCREMENT de tabela `tabela_jogos`
--
ALTER TABLE `tabela_jogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `termmeta`
--
ALTER TABLE `termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `term_taxonomy`
--
ALTER TABLE `term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `teste`
--
ALTER TABLE `teste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `times`
--
ALTER TABLE `times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `torneios`
--
ALTER TABLE `torneios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `Torneio_champ_cup_sub_9`
--
ALTER TABLE `Torneio_champ_cup_sub_9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `Torneio_champ_cup_sub_13`
--
ALTER TABLE `Torneio_champ_cup_sub_13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usermeta`
--
ALTER TABLE `usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vasco_x_atletico`
--
ALTER TABLE `vasco_x_atletico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `vasco_x_braga`
--
ALTER TABLE `vasco_x_braga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tabela_jogos`
--
ALTER TABLE `tabela_jogos`
  ADD CONSTRAINT `tabela_jogos_ibfk_1` FOREIGN KEY (`timeA_id`) REFERENCES `times` (`id`),
  ADD CONSTRAINT `tabela_jogos_ibfk_2` FOREIGN KEY (`timeB_id`) REFERENCES `times` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
