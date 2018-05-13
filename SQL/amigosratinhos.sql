-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Set 25, 2017 as 12:01 
-- Versão do Servidor: 5.5.8
-- Versão do PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `amigosratinhos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `elementos`
--

CREATE TABLE IF NOT EXISTS `elementos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) NOT NULL,
  `URL` varchar(20) DEFAULT NULL,
  `INSTRUMENTO` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `elementos`
--

INSERT INTO `elementos` (`ID`, `NOME`, `URL`, `INSTRUMENTO`) VALUES
(1, 'Firulas do Catota', 'RnJ2pvu-VFE', 'repinique'),
(2, 'Compasso Preenchido', 'l8mMFO40jcY', 'caixa'),
(3, 'Compasso da Tijuca', 'GAtZWOttYwI', 'caixa'),
(5, 'Kellen', 'rhbeh344h', 'repinique'),
(7, 'Jogada Oculta', 'jfkaelake2', 'ganza'),
(8, 'Rodar Platinelas', 'f34ta4fdfg', 'ganza'),
(10, 'Primeira sozinho', 'fjk3io34t0', 'surdo'),
(11, 'Segunda sozinho', 'df235t642', 'surdo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE IF NOT EXISTS `musicas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) NOT NULL,
  `URL` varchar(20) DEFAULT NULL,
  `ANO` varchar(4) DEFAULT NULL,
  `ORIGEM_ARRANJO` text,
  `APRESENTACAO` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`ID`, `NOME`, `URL`, `ANO`, `ORIGEM_ARRANJO`, `APRESENTACAO`) VALUES
(1, 'É Hoje', 'HnPpcyeFTk8', '-', 'Monobloco', 'Clube Paineiras do Morumby - 2016'),
(2, 'Estúpido Cupido', '0_bD8JyH9UU', '-', 'Desconhecido', 'Clube Paineiras do Morumby - 2010'),
(3, 'Cabelo Raspadinho', 'O1CTSZeFG3s', '-', 'Desconhecido', 'Bauducco - 2011'),
(4, 'Taj Mahal/Fio Maravilha/País Tropical', 'p2XAr10s6iA', '-', 'Desconhecido', 'Bauducco - 2011'),
(5, 'Não Quero Dinheiro', '20LWmJOdFmE', '-', 'Desconhecido', 'Bauducco - 2011'),
(6, 'Saideira', 'I7SOz0ucZoM', '-', 'Desconhecido', 'Lab - 2016'),
(8, 'Eva', 'gxzsh2zQMWA ', '-', 'Boa pergunta!', 'Não sei mais');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ritmos`
--

CREATE TABLE IF NOT EXISTS `ritmos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) NOT NULL,
  `URL` varchar(20) DEFAULT NULL,
  `ANO` varchar(4) DEFAULT NULL,
  `UTILIZADO_EM` text,
  `AUTORIA` text,
  `URL_CAIXA` varchar(20) DEFAULT NULL,
  `URL_REPINIQUE` varchar(20) DEFAULT NULL,
  `URL_SURDO` varchar(20) DEFAULT NULL,
  `URL_GANZA` varchar(20) DEFAULT NULL,
  `URL_AGOGO` varchar(20) DEFAULT NULL,
  `URL_TAMBORIM` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `ritmos`
--

INSERT INTO `ritmos` (`ID`, `NOME`, `URL`, `ANO`, `UTILIZADO_EM`, `AUTORIA`, `URL_CAIXA`, `URL_REPINIQUE`, `URL_SURDO`, `URL_GANZA`, `URL_AGOGO`, `URL_TAMBORIM`) VALUES
(1, 'Primavera do Saber', 'ZeTHBQJNJgA', '2014', '2014', 'Moranga,Natasha,Godofredo,Horácio', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Argamassa', '3gDCN9AGe4I', '2014', '2014', 'Moranga,Horácio', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ONG - IBFC', 'SSmdLDULlCY', '2013', '2013', 'Mulan,Wandinha', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `textos`
--

CREATE TABLE IF NOT EXISTS `textos` (
  `CATEGORIA` varchar(20) NOT NULL,
  `TITULO` varchar(20) DEFAULT NULL,
  `TEXTO` text,
  PRIMARY KEY (`CATEGORIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `textos`
--

INSERT INTO `textos` (`CATEGORIA`, `TITULO`, `TEXTO`) VALUES
('amigosratinhos', 'Amigos Ratinhos', 
'&nbsp;&nbsp;Olá, Ratinhos! Este site é um acervo da história musical da Rateria! <br/><br/>
&nbsp;&nbsp;Aqui estão registradas viradas, ritmos e diversos outros conteúdos produzidos ao longo desses 20 anos de história.
Além de servir para que nosso trabalho não caia no esquecimento, ele também pode ser útil para você, ratinho iniciante (ou não) que quer aprender aquela virada antiga que os veteranos chamam toda hora no ensaio ou consultar as criações mais recentes da Melhor Bateria Universitária do Universo para se atualizar! <br/><br/>
&nbsp;&nbspNão encontrou o vídeo que procurava? <br/>
&nbsp;&nbspReclame com seu diretor, com o mestre ou mesmo a nossa presidente! <br/><br/>
&nbsp;&nbspQueremos que este recurso fique sempre o mais atualizado possível!'
),
('elementos', 'Elementos', 
'&nbsp;&nbsp;Elementos... que raio de seção é essa?<br/><br/>
&nbsp;&nbsp;Aqui é a área do clubismo.<br/><br/>
&nbsp;&nbsp;Vocês, amigos ratinhos, que buscam pelos trocentos e um compassos diferentes de caixa, ou pelo o ataque tesoura do tamborim, ou a jogada oculta do ganzá ou mesmo "a causada doida que o Sonrizal tava tocando outro dia",
encontrarão nesta seção os elementos técnicos específicos e característicos de cada instrumento.<br/><br/>
&nbsp;&nbsp;Tá, mas por que esse nome?<br/><br/>
&nbsp;&nbsp;Ainda não encontramos um nome melhor...'
),
('musicas', 'Músicas', 
'&nbsp;&nbsp;E não é só de ritmo que vive a Rateria, não é mesmo?! <br/><br/>
&nbsp;&nbsp;Apresentações em casamentos, festas e baladas pedem por um pouquinho de música! Então aqui você vai encontrar todas as músicas que tocamos, seja com arranjos já existentes (alô, Monobloco!), seja com arranjos criados por nós!'
),
('ritmos', 'Ritmos', 
'&nbsp;&nbsp;
Não há dúvidas que um dos pontos fortes da Rateria tem sido a hora de sair do samba e viajar na construção
dos arranjos rítmicos. <br/><br/>
&nbsp;&nbsp;Da criação do conhecido Fogo na Bomba aos recentes Black, Jazz e Mortal Kombat (recentes na época em que o texto está sendo escrito), aqui você, ratinho, poderá conferir toda a criatividade, complexidade e pardolhice dessa grande tradição raterística!'
),
('viradas', 'Viradas', 
'&nbsp;&nbsp;Viradas, breques, bossas, convenções... estão todos aqui! <br/><br/>
&nbsp;&nbspUm dos principais elementos musicais de uma bateria são as suas viradas.
Aqui estão 20 anos de breques tocados por nossos ratinhos ritmistas desde os tempos ancestrais.<br/><br/>
&nbsp;&nbsp;Que os patronos da Irmandade Raterística e os Artífices da Driação acompanhem sua caminhada!'
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `viradas`
--

CREATE TABLE IF NOT EXISTS `viradas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) NOT NULL,
  `URL` varchar(20) DEFAULT NULL,
  `ANO` varchar(4) DEFAULT NULL,
  `UTILIZADO_EM` text,
  `AUTORIA` text,
  `URL_CAIXA` varchar(20) DEFAULT NULL,
  `URL_REPINIQUE` varchar(20) DEFAULT NULL,
  `URL_SURDO` varchar(20) DEFAULT NULL,
  `URL_GANZA` varchar(20) DEFAULT NULL,
  `URL_AGOGO` varchar(20) DEFAULT NULL,
  `URL_TAMBORIM` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `viradas`
--

INSERT INTO `viradas` (`ID`, `NOME`, `URL`, `ANO`, `UTILIZADO_EM`, `AUTORIA`, `URL_CAIXA`, `URL_REPINIQUE`, `URL_SURDO`, `URL_GANZA`, `URL_AGOGO`, `URL_TAMBORIM`) VALUES
(1, 'A1', 'c89NEWzkGNo', '2014', '2014,2015,2016', 'Moranga', 'Sj-BgbvngHo', 'hihXNjeMWUg', 'TYFPHO03CSI', 'CTdyxt9mMtQ', '4gDW0pmiZTk', 'FdeXu7eAwhU'),
(3, 'Balatucada 2015', 'ezauPnF3aPM', '2015', '2015', 'Moranga,Natasha,Godofredo,Horácio', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Balatucada 2016', 'CgG4AZmndCs', '2016', '2016', 'Mário,Tony Hawk,Skeeter,Pomba Gira', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Chameleon', '', '2014', '2014', '', '', '', '', '', '', '');
