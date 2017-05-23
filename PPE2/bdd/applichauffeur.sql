-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Dim 14 Mai 2017 à 18:13
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `applichauffeur`
--

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

CREATE TABLE IF NOT EXISTS `chauffeur` (
  `CHFID` int(11) NOT NULL AUTO_INCREMENT,
  `CHFNOM` char(32) DEFAULT NULL,
  `CHFPRENOM` char(32) DEFAULT NULL,
  `CHFTEL` char(32) DEFAULT NULL,
  `CHFMAIL` char(32) DEFAULT NULL,
  `CHFCOORDGPS` char(32) DEFAULT NULL,
  PRIMARY KEY (`CHFID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `chauffeur`
--

INSERT INTO `chauffeur` (`CHFID`, `CHFNOM`, `CHFPRENOM`, `CHFTEL`, `CHFMAIL`, `CHFCOORDGPS`) VALUES
(2, 'Bernard', 'Ma', '065233658', 'rayBernard@MESGUEN.bzh', NULL),
(3, 'Garnier', '', '069983302', 'rayGarnier@MESGUEN.bzh', NULL),
(4, 'Dubois', 'Evan', '060584887', 'rrayDubois@MESGUEN.bz', NULL),
(5, 'Faure', 'Louis', '063707764', 'ArrayFaure@MESGUEN.b', NULL),
(6, 'Thomas', 'Tom', '063660565', 'rrayThomas@MESGUEN.bz', NULL),
(7, 'Rousseau', 'Maxime', '060784497', 'ayRousseau@MESGUEN.bzhA', NULL),
(8, 'Robert', 'Arthur', '061466997', 'rrayRobert@MESGUEN.bz', NULL),
(9, 'Blanc', 'Thomas', '069428882', 'ArrayBlanc@MESGUEN.b', NULL),
(10, 'Richard', 'Yanis', '067892929', 'rayRichard@MESGUEN.bzh', NULL),
(11, 'Guerin', 'Alexandre', '061435184', 'rrayGuerin@MESGUEN.bz', NULL),
(12, 'Petit', '', '069380981', 'ArrayPetit@MESGUEN.b', NULL),
(13, 'Muller', 'Hugo', '063666880', 'rrayMuller@MESGUEN.bz', NULL),
(14, 'Durand', 'Enzo', '067677541', 'rrayDurand@MESGUEN.bz', NULL),
(15, 'Henry', 'Nathan', '063310524', 'ArrayHenry@MESGUEN.b', NULL),
(16, 'Leroy', 'Antoine', '064674366', 'ArrayLeroy@MESGUEN.b', NULL),
(17, 'Roussel', 'Gabriel', '067565427', 'rayRoussel@MESGUEN.bzh', NULL),
(18, 'Moreau', '', '064111685', 'rrayMoreau@MESGUEN.bz', NULL),
(19, 'Nicolas', 'Florentin', '067221874', 'rayNicolas@MESGUEN.bzh', NULL),
(20, 'Simon', 'Jules', '061399155', 'ArraySimon@MESGUEN.b', NULL),
(21, 'Perrin', 'Baptiste', '068523808', 'rrayPerrin@MESGUEN.bz', NULL),
(22, 'Laurent', 'Paul', '068972083', 'rayLaurent@MESGUEN.bzh', NULL),
(23, 'Morin', 'Alexis', '067342085', 'ArrayMorin@MESGUEN.b', NULL),
(24, 'Lefebvre', 'Noah', '060791055', 'ayLefebvre@MESGUEN.bzhA', NULL),
(25, 'Mathieu', 'Mathis', '067871662', 'rayMathieu@MESGUEN.bzh', NULL),
(26, 'Michel', 'Ethan', '068334980', 'rrayMichel@MESGUEN.bz', NULL),
(27, 'Clement', 'Quentin', '061584694', 'rayClement@MESGUEN.bzh', NULL),
(28, 'Garcia', 'Maxence', '068731899', 'rrayGarcia@MESGUEN.bz', NULL),
(29, 'Gauthier', 'Pierre', '061709033', 'ayGauthier@MESGUEN.bzhA', NULL),
(30, 'David', 'Valentin', '067866215', 'ArrayDavid@MESGUEN.b', NULL),
(31, 'Dumont', 'Julien', '063912382', 'rrayDumont@MESGUEN.bz', NULL),
(32, 'Bertrand', 'Romain', '064847286', 'ayBertrand@MESGUEN.bzhA', NULL),
(33, 'Lopez', 'Adam', '061569649', 'ArrayLopez@MESGUEN.b', NULL),
(34, 'Roux', 'Victor', '062673135', 'hArrayRoux@MESGUEN.', NULL),
(35, 'Fontaine', 'Mohamed', '064537687', 'ayFontaine@MESGUEN.bzhA', NULL),
(36, 'Vincent', 'Nicolas', '063910257', 'rayVincent@MESGUEN.bzh', NULL),
(37, 'Chevalier', 'Nolan', '064538506', 'yChevalier@MESGUEN.bzhAr', NULL),
(38, 'Fournier', 'T', '067492469', 'ayFournier@MESGUEN.bzhA', NULL),
(39, 'Robin', 'Mathieu', '066423569', 'ArrayRobin@MESGUEN.b', NULL),
(40, 'Morel', 'Tristan', '066367392', 'ArrayMorel@MESGUEN.b', NULL),
(41, 'Masson', 'Anthony', '062950571', 'rrayMasson@MESGUEN.bz', NULL),
(42, 'Girard', 'Antonin', '069350463', 'rrayGirard@MESGUEN.bz', NULL),
(43, 'Sanchez', 'Lorenzo', '069491355', 'raySanchez@MESGUEN.bzh', NULL),
(44, 'Andre', 'Gabin', '069068542', 'ArrayAndre@MESGUEN.b', NULL),
(45, 'Gerard', '', '060132759', 'rrayGerard@MESGUEN.bz', NULL),
(46, 'Lefevre', 'Dylan', '061083848', 'rayLefevre@MESGUEN.bzh', NULL),
(47, 'Nguyen', 'Kevin', '067016046', 'rrayNguyen@MESGUEN.bz', NULL),
(48, 'Mercier', 'Constant', '061461495', 'rayMercier@MESGUEN.bzh', NULL),
(49, 'Boyer', 'Esteban', '061287880', 'ArrayBoyer@MESGUEN.b', NULL),
(50, 'Dupont', 'Dorian', '060797087', 'rrayDupont@MESGUEN.bz', NULL),
(51, 'Lambert', 'Diego', '069799840', 'rayLambert@MESGUEN.bzh', NULL),
(52, 'Lemaire', 'Kyllian', '068427095', 'rayLemaire@MESGUEN.bzh', NULL),
(53, 'Bonnet', 'Samuel', '061823887', 'rrayBonnet@MESGUEN.bz', NULL),
(54, 'Duval', 'Florian', '061941892', 'ArrayDuval@MESGUEN.b', NULL),
(55, 'Francois', 'Thibault', '069915948', 'ayFrancois@MESGUEN.bzhA', NULL),
(56, 'Joly', 'Adrien', '060374829', 'hArrayJoly@MESGUEN.', NULL),
(57, 'Martinez', 'Benjamin', '062773508', 'ayMartinez@MESGUEN.bzhA', NULL),
(58, 'Roger', 'Corentin', '069939349', 'ArrayRoger@MESGUEN.b', NULL),
(59, 'Bourgeois', 'Eric', '066465466', 'yBourgeois@MESGUEN.bzhAr', NULL),
(60, 'Roche', 'Kylian', '062201929', 'ArrayRoche@MESGUEN.b', NULL),
(61, 'Renaud', 'Mehdi', '060744140', 'rrayRenaud@MESGUEN.bz', NULL),
(62, 'Roy', '', '069319547', 'zhArrayRoy@MESGUEN', NULL),
(63, 'Lemoine', '', '064532597', 'rayLemoine@MESGUEN.bzh', NULL),
(64, 'Noel', 'Simon', '065326894', 'hArrayNoel@MESGUEN.', NULL),
(65, 'Picard', 'Titouan', '067750159', 'rrayPicard@MESGUEN.bz', NULL),
(66, 'Meyer', 'Robin', '068396551', 'ArrayMeyer@MESGUEN.b', NULL),
(67, 'Gaillard', 'Bastien', '063929455', 'ayGaillard@MESGUEN.bzhA', NULL),
(68, 'Lucas', 'Kilian', '065731567', 'ArrayLucas@MESGUEN.b', NULL),
(69, 'Philippe', 'Killian', '069208741', 'ayPhilippe@MESGUEN.bzhA', NULL),
(70, 'Meunier', 'Lilian', '069518193', 'rayMeunier@MESGUEN.bzh', NULL),
(71, 'Leclercq', 'Martin', '065900014', 'ayLeclercq@MESGUEN.bzhA', NULL),
(72, 'Jean', 'Amine', '060741535', 'hArrayJean@MESGUEN.', NULL),
(73, 'Lacroix', 'Guillaume', '069331754', 'rayLacroix@MESGUEN.bzh', NULL),
(74, 'Perez', '', '060191737', 'ArrayPerez@MESGUEN.b', NULL),
(75, 'Fabre', 'Malo', '061396929', 'ArrayFabre@MESGUEN.b', NULL),
(76, 'Marchand', '', '068230041', 'ayMarchand@MESGUEN.bzhA', NULL),
(77, 'Dupuis', 'Davy', '061536003', 'rrayDupuis@MESGUEN.bz', NULL),
(78, 'Dufour', '', '063773193', 'rrayDufour@MESGUEN.bz', NULL),
(79, 'Olivier', 'Renaud', '065451843', 'rayOlivier@MESGUEN.bzh', NULL),
(80, 'Blanchard', 'Bruno', '067632473', 'yBlanchard@MESGUEN.bzhAr', NULL),
(81, 'Rodriguez', 'Timo', '069947547', 'yRodriguez@MESGUEN.bzhAr', NULL),
(82, 'Marie', '', '066667428', 'ArrayMarie@MESGUEN.b', NULL),
(83, 'Da silva', 'R', '065006201', 'ayDa silva@MESGUEN.bzhA', NULL),
(84, 'Barbier', 'Yohan', '064930774', 'rayBarbier@MESGUEN.bzh', NULL),
(85, 'Hubert', 'Gilbert', '068962269', 'rrayHubert@MESGUEN.bz', NULL),
(86, 'Brun', 'Colin', '062214550', 'hArrayBrun@MESGUEN.', NULL),
(87, 'Louis', 'Marwane', '065407095', 'ArrayLouis@MESGUEN.b', NULL),
(88, 'Dumas', 'Gaspard', '068450531', 'ArrayDumas@MESGUEN.b', NULL),
(89, 'Charles', 'Aaron', '061623939', 'rayCharles@MESGUEN.bzh', NULL),
(90, 'Brunet', '', '060927647', 'rrayBrunet@MESGUEN.bz', NULL),
(91, 'Guillot', '', '065284723', 'rayGuillot@MESGUEN.bzh', NULL),
(92, 'Schmitt', '', '065064898', 'raySchmitt@MESGUEN.bzh', NULL),
(93, 'Riviere', 'Zacharis', '063518640', 'rayRiviere@MESGUEN.bzh', NULL),
(94, 'Leroux', 'Amaury', '061355607', 'rrayLeroux@MESGUEN.bz', NULL),
(95, 'Le gall', 'Fabrice', '069991084', 'rayLe gall@MESGUEN.bzh', NULL),
(96, 'Colin', 'David', '066299232', 'ArrayColin@MESGUEN.b', NULL),
(97, 'Guillaume', 'Jordan', '067870043', 'yGuillaume@MESGUEN.bzhAr', NULL),
(98, 'Fernandez', 'Rayane', '063402706', 'yFernandez@MESGUEN.bzhAr', NULL),
(99, 'Adam', 'Alb', '065140407', 'hArrayAdam@MESGUEN.', NULL),
(100, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE IF NOT EXISTS `commune` (
  `VILID` int(11) NOT NULL AUTO_INCREMENT,
  `VILNOM` char(32) DEFAULT NULL,
  PRIMARY KEY (`VILID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201 ;

--
-- Contenu de la table `commune`
--

INSERT INTO `commune` (`VILID`, `VILNOM`) VALUES
(1, 'Arzano\r\n'),
(2, 'Audierne\r\n'),
(3, 'Bannalec\r\n'),
(4, 'Baye\r\n'),
(5, 'B'),
(6, 'Berrien\r\n'),
(7, 'Beuzec-Cap-Sizun\r\n'),
(8, 'Bodilis\r\n'),
(9, 'Bohars\r\n'),
(10, 'Bolazec\r\n'),
(11, 'Botmeur\r\n'),
(12, 'Botsorhel\r\n'),
(13, 'Bourg-Blanc\r\n'),
(14, 'Brasparts\r\n'),
(15, 'Br'),
(16, 'Brennilis\r\n'),
(17, 'Brest\r\n'),
(18, 'Briec\r\n'),
(19, 'Brignogan-Plages\r\n'),
(20, 'Camaret-sur-Mer\r\n'),
(21, 'Carantec\r\n'),
(22, 'Carhaix-Plouguer\r\n'),
(23, 'Cast\r\n'),
(24, 'Ch'),
(25, 'Ch'),
(26, 'Cl'),
(27, 'Cl'),
(28, 'Cl'),
(29, 'Clohars-Carno'),
(30, 'Clohars-Fouesnant\r\n'),
(31, 'Le Clo'),
(32, 'Le Clo'),
(33, 'Coat-M'),
(34, 'Collorec\r\n'),
(35, 'Combrit\r\n'),
(36, 'Commana\r\n'),
(37, 'Concarneau\r\n'),
(38, 'Confort-Meilars\r\n'),
(39, 'Le Conquet\r\n'),
(40, 'Coray\r\n'),
(41, 'Crozon\r\n'),
(42, 'Daoulas\r\n'),
(43, 'Din'),
(44, 'Dirinon\r\n'),
(45, 'Douarnenez\r\n'),
(46, 'Le Drennec\r\n'),
(47, 'Edern\r\n'),
(48, 'Elliant\r\n'),
(49, 'Ergu'),
(50, 'Esquibien\r\n'),
(51, 'Le Faou\r\n'),
(52, 'La Feuill'),
(53, 'Le Folgo'),
(54, 'La Forest-Landerneau\r\n'),
(55, 'La For'),
(56, 'Fouesnant\r\n'),
(57, 'Garlan\r\n'),
(58, 'Gouesnach\r\n'),
(59, 'Gouesnou\r\n'),
(60, 'Gou'),
(61, 'Goulien\r\n'),
(62, 'Goulven\r\n'),
(63, 'Gourlizon\r\n'),
(64, 'Guengat\r\n'),
(65, 'Guerlesquin\r\n'),
(66, 'Guiclan\r\n'),
(67, 'Guiler-sur-Goyen\r\n'),
(68, 'Guilers\r\n'),
(69, 'Guilligomarc''h\r\n'),
(70, 'Guilvinec\r\n'),
(71, 'Guima'),
(72, 'Guimiliau\r\n'),
(73, 'Guipavas\r\n'),
(74, 'Guipronvel\r\n'),
(75, 'Guiss'),
(76, 'Hanvec\r\n'),
(77, 'Henvic\r\n'),
(78, 'H'),
(79, 'Huelgoat\r\n'),
(80, ''),
(81, ''),
(82, ''),
(83, ''),
(84, 'Irvillac\r\n'),
(85, 'Le Juch\r\n'),
(86, 'Kergloff\r\n'),
(87, 'Kerlaz\r\n'),
(88, 'Kerlouan\r\n'),
(89, 'Kernilis\r\n'),
(90, 'Kernou'),
(91, 'Kersaint-Plabennec\r\n'),
(92, 'Lampaul-Guimiliau\r\n'),
(93, 'Lampaul-Plouarzel\r\n'),
(94, 'Lampaul-Ploudalm'),
(95, 'Lanarvily\r\n'),
(96, 'Land'),
(97, 'Landeleau\r\n'),
(98, 'Landerneau\r\n'),
(99, 'Land'),
(200, 'Argol\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `documentation`
--

CREATE TABLE IF NOT EXISTS `documentation` (
  `DOCID` int(11) NOT NULL AUTO_INCREMENT,
  `TRNNUM` int(11) NOT NULL,
  `TYPDOCID` char(32) NOT NULL,
  `DOCURL` char(32) DEFAULT NULL,
  PRIMARY KEY (`DOCID`),
  KEY `I_FK_DOCUMENTATION_TOURNEE` (`TRNNUM`),
  KEY `I_FK_DOCUMENTATION_TYPEDOCUMENTATION` (`TYPDOCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

CREATE TABLE IF NOT EXISTS `etape` (
  `TRNNUM` int(11) NOT NULL,
  `ETPID` int(11) NOT NULL AUTO_INCREMENT,
  `LIEUID` int(11) NOT NULL,
  `ETPHREMIN` datetime DEFAULT NULL,
  `ETPHREMAX` datetime DEFAULT NULL,
  `ETPHREDEBUT` datetime DEFAULT NULL,
  `ETPHREFIN` datetime DEFAULT NULL,
  `ETPNBPALLIV` smallint(6) DEFAULT NULL,
  `ETPNBPALLIVEUR` smallint(6) DEFAULT NULL,
  `ETPNBPALCHARG` smallint(6) DEFAULT NULL,
  `ETPNBPALCHARGEUR` smallint(6) DEFAULT NULL,
  `ETPNBPALRECU` smallint(6) DEFAULT NULL,
  `ETPETATLIV` char(32) DEFAULT NULL,
  `ETPCOMMENTAIRE` char(32) DEFAULT NULL,
  `ETPVAL` char(32) DEFAULT NULL,
  `ETPKM` char(32) DEFAULT NULL,
  PRIMARY KEY (`TRNNUM`,`ETPID`),
  KEY `I_FK_ETAPE_TOURNEE` (`TRNNUM`),
  KEY `I_FK_ETAPE_LIEU` (`LIEUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `etape`
--

INSERT INTO `etape` (`TRNNUM`, `ETPID`, `LIEUID`, `ETPHREMIN`, `ETPHREMAX`, `ETPHREDEBUT`, `ETPHREFIN`, `ETPNBPALLIV`, `ETPNBPALLIVEUR`, `ETPNBPALCHARG`, `ETPNBPALCHARGEUR`, `ETPNBPALRECU`, `ETPETATLIV`, `ETPCOMMENTAIRE`, `ETPVAL`, `ETPKM`) VALUES
(2, 1, 89, '2016-05-13 12:00:00', '2016-05-13 16:30:00', NULL, '2016-05-13 14:25:00', NULL, NULL, NULL, NULL, NULL, NULL, 'bien', NULL, NULL),
(8, 7, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 6, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 5, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 1, 21, '2016-02-03 08:00:00', '2016-02-03 12:00:00', NULL, '2016-02-03 10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, ' Tapez votre texte!', NULL, NULL),
(57, 1, 13, '2017-05-17 10:10:00', '2017-05-17 12:00:00', '2017-05-17 10:10:00', '2017-05-17 12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 1, 20, '2017-05-17 10:10:00', '2017-05-17 12:00:00', '2017-05-17 10:10:00', '2017-05-17 12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE IF NOT EXISTS `lieu` (
  `LIEUID` int(11) NOT NULL AUTO_INCREMENT,
  `VILID` int(11) NOT NULL,
  `LIEUNOM` char(32) DEFAULT NULL,
  PRIMARY KEY (`LIEUID`),
  KEY `I_FK_LIEU_COMMUNE` (`VILID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`LIEUID`, `VILID`, `LIEUNOM`) VALUES
(1, 32, 'Arvor-Roc''h'),
(2, 17, 'Maez-Menez'),
(3, 91, 'K'),
(4, 26, 'Kelenn-LeLouet'),
(5, 43, 'Traezh-Kistin'),
(6, 15, 'Kroaz-Raden'),
(7, 63, 'Melen-Beg'),
(8, 59, 'Karreg-Hir'),
(9, 26, 'Tor-K'),
(10, 34, 'Kozh-Aber'),
(11, 7, 'Bihan-Bod'),
(12, 15, 'Kae-Bras'),
(13, 81, 'Kastell-Karn'),
(14, 76, 'Kelenn-Froud'),
(15, 22, 'Karreg-Koad'),
(16, 92, 'Gwazh-Kistin'),
(17, 7, 'Maen-Poull'),
(18, 39, 'K'),
(19, 10, 'Bevoez-Gwasked'),
(20, 91, 'Menez-Bevoez'),
(21, 6, 'Gougo'),
(22, 24, 'Kroaz-Lan'),
(23, 69, 'Maen-Lez'),
(24, 12, 'Kistin-Tre'),
(25, 76, 'Gwenn-Gwern'),
(26, 31, 'Stank-Goueled'),
(27, 200, 'Rest-Hen'),
(28, 55, 'Maez-Stivell'),
(29, 18, 'Karreg-Gwern'),
(30, 60, 'Yen-Roc''h'),
(31, 3, 'K'),
(32, 20, 'Bod-Mor'),
(33, 32, 'Tor-Feunteun'),
(34, 11, 'Krec''h-Tor'),
(35, 78, 'Hent-Govel'),
(36, 7, 'Lez-Bihan'),
(37, 18, 'Minic''hi-Penn'),
(38, 83, 'LeLouet-Roc''h'),
(39, 25, 'Bezv-Kelenn'),
(40, 15, 'Melen-Menez'),
(41, 76, 'Derv-Bre'),
(42, 78, 'Feunteun-Karn'),
(43, 44, 'Stank-Baz'),
(44, 46, 'Hent-Lenn'),
(45, 5, 'Kemper-Iliz'),
(46, 94, 'Lenn-Minic''hi'),
(47, 34, 'Loc''h-Ti'),
(48, 98, 'Tre-Kozh'),
(49, 7, 'Tevenn-Haleg'),
(50, 32, 'Feunteun-Gwic'),
(51, 97, 'Roz-Rest'),
(52, 72, 'Gwern-Krec''h'),
(53, 80, 'Iliz-Goueled'),
(54, 93, 'Melen-Gouver'),
(55, 31, 'Lenn-Tor'),
(56, 68, 'Bevoez-Traezh'),
(57, 25, 'Meur-Raden'),
(58, 74, 'Maen-Gougo'),
(59, 37, 'Lenn-Du'),
(60, 86, 'Kroaz-Gwern'),
(61, 43, 'Hen-Krec''h'),
(62, 78, 'Aber-Bras'),
(63, 16, 'Argoad-Tor'),
(64, 26, 'Gougo'),
(65, 32, 'Feunteun-Kistin'),
(66, 4, 'St'),
(67, 65, 'St'),
(68, 88, 'Goueled-Killi'),
(69, 92, 'Maez-Lan'),
(70, 52, 'Leti-Gwic'),
(71, 87, 'Gwic-Minic''hi'),
(72, 71, 'Bihan-Gouver'),
(73, 25, 'Killi-Tor'),
(74, 21, 'Lan-Karreg'),
(75, 81, 'Kelenn-Tor'),
(76, 77, 'Uhel-Bezv'),
(77, 30, 'Gougo'),
(78, 13, 'Loc''h-Kelenn'),
(79, 47, 'Minic''hi-Yeun'),
(80, 4, 'Yen-Karreg'),
(81, 6, 'Gwern-Stivell'),
(82, 26, 'LeLouet-Lez'),
(83, 84, 'Karn-Poull'),
(84, 53, 'Bihan-Leti'),
(85, 55, 'Gwern-Du'),
(86, 61, 'Minic''hi-Uhel'),
(87, 93, 'Melen-Skav'),
(88, 24, 'Karn-Maez'),
(89, 75, 'Beg-Gwenn'),
(90, 18, 'Skav-Roc''h'),
(91, 75, 'Haleg-Avelek'),
(92, 17, 'Karreg-Porzh'),
(93, 67, 'Haleg-Lez'),
(94, 97, 'Arvor-Tevenn'),
(95, 28, 'Rest-St'),
(96, 32, 'Lan-Lok'),
(97, 31, 'Killi-Gwic'),
(98, 97, 'Karreg-Bezv'),
(99, 53, 'Lenn-Lenn'),
(100, 14, 'Poull-LeLouet');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `PHOID` int(11) NOT NULL AUTO_INCREMENT,
  `TRNNUM` int(11) NOT NULL,
  `ETPID` char(32) NOT NULL,
  `PHOURL` char(32) DEFAULT NULL,
  PRIMARY KEY (`PHOID`),
  KEY `I_FK_PHOTO_ETAPE` (`TRNNUM`,`ETPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `test1`
--

CREATE TABLE IF NOT EXISTS `test1` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `info` char(20) NOT NULL,
  PRIMARY KEY (`numero`),
  UNIQUE KEY `info` (`info`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Structure de la table `test2`
--

CREATE TABLE IF NOT EXISTS `test2` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `info` char(20) NOT NULL,
  PRIMARY KEY (`numero`),
  UNIQUE KEY `info` (`info`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Structure de la table `tournee`
--

CREATE TABLE IF NOT EXISTS `tournee` (
  `TRNNUM` int(11) NOT NULL AUTO_INCREMENT,
  `VEHIMMAT` char(32) NOT NULL,
  `CHFID` int(11) NOT NULL,
  `TRNDTE` date NOT NULL,
  `TRNCOMMENTAIRE` char(32) DEFAULT NULL,
  `TRNPECCHAUFFEUR` datetime NOT NULL,
  `TRNARCHAUFFEUR` char(32) DEFAULT NULL,
  `pCharge` tinyint(1) NOT NULL,
  PRIMARY KEY (`TRNNUM`),
  KEY `I_FK_TOURNEE_VEHICULE` (`VEHIMMAT`),
  KEY `I_FK_TOURNEE_CHAUFFEUR` (`CHFID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Contenu de la table `tournee`
--

INSERT INTO `tournee` (`TRNNUM`, `VEHIMMAT`, `CHFID`, `TRNDTE`, `TRNCOMMENTAIRE`, `TRNPECCHAUFFEUR`, `TRNARCHAUFFEUR`, `pCharge`) VALUES
(45, 'AM779QG', 5, '2016-03-09', 'tz', '2017-05-14 16:21:05', NULL, 1),
(46, 'DQ081IH', 8, '2016-04-22', 'coucou', '2016-04-29 15:00:00', NULL, 0),
(47, 'DQ081IH', 7, '2016-04-22', 'coucou', '2016-04-29 15:00:00', NULL, 0),
(48, 'AM779QG', 2, '2016-05-02', 'Tapez votre texte!', '0000-00-00 00:00:00', NULL, 0),
(50, 'AM779QG', 5, '2016-05-02', 'dgrsh', '2017-05-14 16:30:51', NULL, 1),
(51, 'AM779QG', 2, '2016-05-02', 'Tapez votre texte!', '0000-00-00 00:00:00', NULL, 0),
(52, 'AM779QG', 2, '2016-05-02', 'Tapez votre texte!', '2016-03-04 00:00:00', NULL, 0),
(53, 'AM779QG', 5, '2016-05-02', 'Tapez votre texte!', '2016-03-04 00:00:00', NULL, 0),
(54, 'AM779QG', 2, '2016-05-02', 'Tapez votre texte!', '0000-00-00 00:00:00', NULL, 0),
(55, 'DS570JY', 8, '2016-05-02', 'Tapez votre texte!', '0000-00-00 00:00:00', NULL, 0),
(56, 'AM779QG', 2, '2016-05-02', 'test', '2017-05-14 15:13:25', NULL, 0),
(57, 'CP717QZ', 5, '2016-05-02', 'cool', '2017-05-14 17:39:31', NULL, 1),
(58, 'AM779QG', 5, '2016-05-02', '', '2017-05-14 16:25:58', NULL, 0),
(59, 'AM779QG', 5, '2016-05-02', 'cool', '2017-05-14 16:27:36', NULL, 0),
(60, 'AM779QG', 13, '2016-05-02', 'salut', '2016-05-02 19:06:38', NULL, 0),
(61, 'AM779QG', 2, '2016-05-02', 'top', '2016-05-02 19:22:36', NULL, 0),
(62, 'AM779QG', 8, '2016-09-09', 'Hello', '2016-09-09 08:34:50', NULL, 0),
(63, 'DQ081IH', 13, '2016-05-02', 'trop', '2016-05-02 19:25:32', NULL, 0),
(64, 'DM094IC', 12, '2016-05-11', 'bien', '2016-05-11 20:35:07', NULL, 0),
(65, 'CP717QZ', 13, '2016-05-13', 'super', '2016-05-11 20:35:56', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `typedocumentation`
--

CREATE TABLE IF NOT EXISTS `typedocumentation` (
  `TYPDOCID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPDOCLIB` char(32) DEFAULT NULL,
  PRIMARY KEY (`TYPDOCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_login` varchar(100) NOT NULL,
  `usr_nom` varchar(100) NOT NULL,
  `usr_prenom` varchar(100) NOT NULL,
  `usr_email` varchar(100) NOT NULL,
  `usr_mdp` varchar(100) NOT NULL,
  `usr_dte_modif` datetime NOT NULL,
  `CHFID` int(11) NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`usr_id`, `usr_login`, `usr_nom`, `usr_prenom`, `usr_email`, `usr_mdp`, `usr_dte_modif`, `CHFID`) VALUES
(1, 'lfaure', 'Faure', 'Louis', 'l-faure@outlook.fr', 'c32ba87e51d2e7ba5f265d64bad4e23b', '2016-06-02 10:06:55', 5),
(3, 'admin', 'administrateur', 'admin', 'admin@admin.fr', 'c32ba87e51d2e7ba5f265d64bad4e23b', '2016-06-07 10:27:02', 0),
(10, 'arobert', 'robert', 'arthur', 'a.robert@outlook.fr', 'c32ba87e51d2e7ba5f265d64bad4e23b', '2016-06-06 15:15:06', 8),
(11, 'hmuller', 'muller', 'hugo', 'hmuller@gmail.com', 'c32ba87e51d2e7ba5f265d64bad4e23b', '2016-06-06 15:19:57', 13);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `VEHIMMAT` char(32) NOT NULL,
  `VEHNOM` char(32) DEFAULT NULL,
  PRIMARY KEY (`VEHIMMAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`VEHIMMAT`, `VEHNOM`) VALUES
('AM779QG', 'MERCEDES_AXOR'),
('AO824ZM', 'MAN_TGX'),
('AP653ZJ', 'RENAULT_KERAX'),
('AQ469VT', 'MAN_TGX'),
('AX172SH', 'RENAULT_MIDLUM'),
('AX752FJ', 'RENAULT_KERAX'),
('BN204KV', 'RENAULT_KERAX'),
('BO170FI', 'MERCEDES_AXOR'),
('CJ378KT', 'RENAULT_MIDLUM'),
('CP717QZ', 'RENAULT_KERAX'),
('CQ793LM', 'MERCEDES_AXOR'),
('DH064QV', 'MERCEDES_AXOR'),
('DM094IC', 'RENAULT_MIDLUM'),
('DP695ZW', 'RENAULT_KERAX'),
('DQ081IH', 'MAN_TGX'),
('DR254AQ', 'RENAULT_MIDLUM'),
('DS570JY', 'RENAULT_MIDLUM'),
('EX162CV', 'RENAULT_KERAX'),
('FB174JQ', 'MAN_TGX'),
('FC584WO', 'MAN_TGX'),
('FI045SX', 'MERCEDES_AXOR'),
('FS123MQ', 'RENAULT_MIDLUM'),
('FV700ZW', 'MERCEDES_AXOR'),
('GE371UB', 'MERCEDES_AXOR'),
('GE951HC', 'MERCEDES_AXOR'),
('GH562YW', 'RENAULT_MIDLUM'),
('GL832QK', 'RENAULT_MIDLUM'),
('GQ922IV', 'MAN_TGX'),
('GQ956NI', 'RENAULT_KERAX'),
('HB350QJ', 'MAN_TGX'),
('HD033VQ', 'MERCEDES_AXOR'),
('HE714MM', 'RENAULT_KERAX'),
('HG054AI', 'RENAULT_MIDLUM'),
('HJ529WM', 'MAN_TGX'),
('HK324RW', 'MERCEDES_AXOR'),
('HQ798CP', 'MERCEDES_AXOR'),
('HS323YW', 'MAN_TGX'),
('HV900KC', 'RENAULT_KERAX'),
('IB696WE', 'MERCEDES_AXOR'),
('IE136OV', 'MERCEDES_AXOR'),
('IL306UY', 'MERCEDES_AXOR'),
('IP746LP', 'RENAULT_MIDLUM'),
('IX967IS', 'MERCEDES_AXOR'),
('JE048CF', 'MAN_TGX'),
('JE482UR', 'RENAULT_MIDLUM'),
('JH489UW', 'MAN_TGX'),
('JS533JC', 'RENAULT_MIDLUM'),
('JZ948KV', 'MERCEDES_AXOR'),
('KC145VG', 'RENAULT_MIDLUM'),
('KN877JD', 'RENAULT_MIDLUM'),
('LY592OM', 'MERCEDES_AXOR'),
('MI830HI', 'RENAULT_KERAX'),
('MK885RN', 'RENAULT_KERAX'),
('MP566WZ', 'RENAULT_MIDLUM'),
('NR933GO', 'RENAULT_KERAX'),
('NV817QQ', 'MERCEDES_AXOR'),
('NZ112MR', 'RENAULT_KERAX'),
('OG381SU', 'RENAULT_KERAX'),
('ON550YX', 'MAN_TGX'),
('OU729EA', 'MAN_TGX'),
('OZ485FZ', 'MAN_TGX'),
('PB998KD', 'MAN_TGX'),
('PP197JO', 'RENAULT_MIDLUM'),
('PR686KF', 'RENAULT_KERAX'),
('PR723FV', 'RENAULT_MIDLUM'),
('PX752XD', 'RENAULT_KERAX'),
('PZ363OW', 'MAN_TGX'),
('RH596LQ', 'MAN_TGX'),
('RI548CP', 'RENAULT_KERAX'),
('RX716OT', 'RENAULT_KERAX'),
('SA271KW', 'RENAULT_MIDLUM'),
('SH860DY', 'RENAULT_MIDLUM'),
('SJ939RR', 'RENAULT_KERAX'),
('SM404NU', 'RENAULT_MIDLUM'),
('SY409TA', 'MAN_TGX'),
('TB286RM', 'MERCEDES_AXOR'),
('TC091NW', 'MERCEDES_AXOR'),
('TD067IJ', 'RENAULT_KERAX'),
('TK656BL', 'RENAULT_KERAX'),
('TL042KW', 'MAN_TGX'),
('TM848FG', 'MAN_TGX'),
('TN791KQ', 'RENAULT_MIDLUM'),
('TT253GZ', 'RENAULT_KERAX'),
('TU083GW', 'RENAULT_MIDLUM'),
('TW208PE', 'RENAULT_MIDLUM'),
('UZ095NR', 'RENAULT_KERAX'),
('VO707RG', 'MERCEDES_AXOR'),
('VU046XM', 'RENAULT_MIDLUM'),
('VW396LH', 'MAN_TGX'),
('WC599VY', 'RENAULT_KERAX'),
('WQ630KI', 'MAN_TGX'),
('WS323QP', 'MERCEDES_AXOR'),
('XO280VU', 'MAN_TGX'),
('XZ470GQ', 'MERCEDES_AXOR'),
('YC119UC', 'MERCEDES_AXOR'),
('YF288IV', 'RENAULT_KERAX'),
('YJ992SU', 'MAN_TGX'),
('YN672XG', 'RENAULT_KERAX'),
('ZD926EW', 'MAN_TGX'),
('ZS487GF', 'MERCEDES_AXOR');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
