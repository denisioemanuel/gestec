# Host: 127.0.0.1  (Version: 5.0.18-nt)
# Date: 2014-03-09 00:01:00
# Generator: MySQL-Front 5.3  (Build 4.95)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "funcionario"
#

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE `funcionario` (
  `Id` int(11) NOT NULL auto_increment,
  `nome` varchar(50) default NULL,
  `data_nascimento` datetime default NULL,
  `estado_civil` varchar(50) default NULL,
  `sexo` char(1) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "funcionario"
#

INSERT INTO `funcionario` VALUES (1,'João José','1962-10-15 00:00:00','Casado','M'),(2,'Maria da Penha','1977-02-03 00:00:00','Casado','F'),(3,'Fernanda Lima','1988-11-08 00:00:00','Solteiro','F'),(4,'Antonio Marcos','1980-10-15 00:00:00','Solteiro','M'),(5,'Marina da Silva','1974-08-02 00:00:00','Casado','F'),(6,'Pedro Neto','1969-06-11 00:00:00','Casado','M'),(7,'Maria Raimunda','1966-04-28 00:00:00','Divorciado','F'),(8,'Roberto Ferreira','1951-01-25 00:00:00','Casado','M'),(9,'Valdir Nogueira','1949-09-10 00:00:00','Solteiro','M'),(10,'Carlos Tavares','1978-10-18 00:00:00','Divorciado','M'),(11,'Valéria Gama','1970-12-22 00:00:00','Solteiro','F');

#
# Structure for table "marcas"
#

DROP TABLE IF EXISTS `marcas`;
CREATE TABLE `marcas` (
  `Id` int(11) NOT NULL auto_increment,
  `descricao` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "marcas"
#


#
# Structure for table "modelos"
#

DROP TABLE IF EXISTS `modelos`;
CREATE TABLE `modelos` (
  `Id` int(11) NOT NULL auto_increment,
  `descricao` varchar(255) default NULL,
  `idmarca` int(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "modelos"
#


#
# Structure for table "movimentacoes"
#

DROP TABLE IF EXISTS `movimentacoes`;
CREATE TABLE `movimentacoes` (
  `Id` int(11) NOT NULL auto_increment,
  `tipo` int(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "movimentacoes"
#


#
# Structure for table "tipomovimentacao"
#

DROP TABLE IF EXISTS `tipomovimentacao`;
CREATE TABLE `tipomovimentacao` (
  `Id` int(11) NOT NULL auto_increment,
  `descricao` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tipomovimentacao"
#


#
# Structure for table "tipousuario"
#

DROP TABLE IF EXISTS `tipousuario`;
CREATE TABLE `tipousuario` (
  `Id` int(11) NOT NULL auto_increment,
  `descricao` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tipousuario"
#


#
# Structure for table "tipovaga"
#

DROP TABLE IF EXISTS `tipovaga`;
CREATE TABLE `tipovaga` (
  `Id` int(11) NOT NULL auto_increment,
  `descricao` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tipovaga"
#


#
# Structure for table "usuarios"
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL auto_increment,
  `nome` varchar(255) default NULL,
  `matricula` int(11) default NULL,
  `telefone` int(255) default NULL,
  `tipo` varchar(1) default NULL,
  `senha` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "usuarios"
#


#
# Structure for table "vagas"
#

DROP TABLE IF EXISTS `vagas`;
CREATE TABLE `vagas` (
  `Id` int(11) NOT NULL auto_increment,
  `disponivel` bit(1) default NULL,
  `tipovaga` int(11) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "vagas"
#


#
# Structure for table "veiculos"
#

DROP TABLE IF EXISTS `veiculos`;
CREATE TABLE `veiculos` (
  `Id` int(11) NOT NULL auto_increment,
  `placa` varchar(255) default NULL,
  `idmodelo` int(11) default NULL,
  `idmarca` int(255) default NULL,
  `idfuncionario` int(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "veiculos"
#

