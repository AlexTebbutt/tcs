# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.19)
# Database: tcs_rebuild
# Generation Time: 2015-07-13 12:15:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table perch2_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_categories`;

CREATE TABLE `perch2_categories` (
  `catID` int(10) NOT NULL AUTO_INCREMENT,
  `setID` int(10) unsigned NOT NULL,
  `catParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `catTitle` char(64) NOT NULL DEFAULT '',
  `catSlug` char(64) NOT NULL DEFAULT '',
  `catPath` char(255) NOT NULL DEFAULT '',
  `catDisplayPath` char(255) NOT NULL DEFAULT '',
  `catOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `catTreePosition` char(255) NOT NULL DEFAULT '000',
  `catDynamicFields` text NOT NULL,
  PRIMARY KEY (`catID`),
  KEY `idx_set` (`setID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_category_counts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_category_counts`;

CREATE TABLE `perch2_category_counts` (
  `countID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catID` int(10) unsigned NOT NULL,
  `countType` char(64) NOT NULL DEFAULT '',
  `countValue` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`countID`),
  KEY `idx_cat` (`catID`),
  KEY `idx_cat_type` (`countType`,`catID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_category_sets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_category_sets`;

CREATE TABLE `perch2_category_sets` (
  `setID` int(10) NOT NULL AUTO_INCREMENT,
  `setTitle` char(64) NOT NULL DEFAULT '',
  `setSlug` char(64) NOT NULL DEFAULT '',
  `setTemplate` char(255) NOT NULL DEFAULT 'set.html',
  `setCatTemplate` char(255) NOT NULL DEFAULT 'category.html',
  `setDynamicFields` text,
  PRIMARY KEY (`setID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_content_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_content_index`;

CREATE TABLE `perch2_content_index` (
  `indexID` int(10) NOT NULL AUTO_INCREMENT,
  `itemID` int(10) NOT NULL DEFAULT '0',
  `regionID` int(10) NOT NULL DEFAULT '0',
  `pageID` int(10) NOT NULL DEFAULT '0',
  `itemRev` int(10) NOT NULL DEFAULT '0',
  `indexKey` char(64) NOT NULL DEFAULT '-',
  `indexValue` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`indexID`),
  KEY `idx_key` (`indexKey`),
  KEY `idx_val` (`indexValue`),
  KEY `idx_rev` (`itemRev`),
  KEY `idx_item` (`itemID`),
  KEY `idx_keyval` (`indexKey`,`indexValue`),
  KEY `idx_regrev` (`regionID`,`itemRev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_content_index` WRITE;
/*!40000 ALTER TABLE `perch2_content_index` DISABLE KEYS */;

INSERT INTO `perch2_content_index` (`indexID`, `itemID`, `regionID`, `pageID`, `itemRev`, `indexKey`, `indexValue`)
VALUES
	(1,1,1,1,1,'_id','1'),
	(2,1,1,1,1,'_order','1000'),
	(3,2,5,1,1,'images.image','/perch/resources/vogue-logo.png'),
	(4,2,5,1,1,'images.image','/perch/resources/telegraph-logo.png'),
	(5,2,5,1,1,'images.image','/perch/resources/style-logo.png'),
	(6,2,5,1,1,'images.image','/perch/resources/bazaar-logo.png'),
	(7,2,5,1,1,'images.image','/perch/resources/conde-nast-logo.png'),
	(8,2,5,1,1,'images.image',''),
	(9,2,5,1,1,'images.alt','The Cross, as seen in Vogue'),
	(10,2,5,1,1,'images.alt','The Cross Shop, as seen in the Telegraph'),
	(11,2,5,1,1,'images.alt','The Cross Shop, as seen in Style magazine'),
	(12,2,5,1,1,'images.alt','The Cross Shop, as seen in Bazaar magazine'),
	(13,2,5,1,1,'images.alt','The Cross Shop, as seen in Conde Nast magazine'),
	(14,2,5,1,1,'images.alt','The Cross Shop, as seen in Elle magazine'),
	(15,2,5,1,1,'_id','2'),
	(16,2,5,1,1,'_order','1000'),
	(17,2,5,1,2,'images.image','/perch/resources/vogue-logo.png'),
	(18,2,5,1,2,'images.image','/perch/resources/telegraph-logo.png'),
	(19,2,5,1,2,'images.image','/perch/resources/style-logo.png'),
	(20,2,5,1,2,'images.image','/perch/resources/bazaar-logo.png'),
	(21,2,5,1,2,'images.image','/perch/resources/conde-nast-logo.png'),
	(22,2,5,1,2,'images.image','/perch/resources/elle-logo.png'),
	(23,2,5,1,2,'images.alt','The Cross, as seen in Vogue'),
	(24,2,5,1,2,'images.alt','The Cross Shop, as seen in the Telegraph'),
	(25,2,5,1,2,'images.alt','The Cross Shop, as seen in Style magazine'),
	(26,2,5,1,2,'images.alt','The Cross Shop, as seen in Bazaar magazine'),
	(27,2,5,1,2,'images.alt','The Cross Shop, as seen in Conde Nast magazine'),
	(28,2,5,1,2,'images.alt','The Cross Shop, as seen in Elle magazine'),
	(29,2,5,1,2,'_id','2'),
	(30,2,5,1,2,'_order','1000'),
	(31,2,5,1,3,'images.image','/perch/resources/vogue-logo.png'),
	(32,2,5,1,3,'images.image','/perch/resources/telegraph-logo.png'),
	(33,2,5,1,3,'images.image','/perch/resources/style-logo.png'),
	(34,2,5,1,3,'images.image','/perch/resources/bazaar-logo.png'),
	(35,2,5,1,3,'images.image','/perch/resources/conde-nast-logo.png'),
	(36,2,5,1,3,'images.image','/perch/resources/elle-logo.png'),
	(37,2,5,1,3,'images.alt','The Cross, as seen in Vogue'),
	(38,2,5,1,3,'images.alt','The Cross Shop, as seen in the Telegraph'),
	(39,2,5,1,3,'images.alt','The Cross Shop, as seen in Style magazine'),
	(40,2,5,1,3,'images.alt','The Cross Shop, as seen in Bazaar magazine'),
	(41,2,5,1,3,'images.alt','The Cross Shop, as seen in Conde Nast magazine'),
	(42,2,5,1,3,'images.alt','The Cross Shop, as seen in Elle magazine'),
	(43,2,5,1,3,'_id','2'),
	(44,2,5,1,3,'_order','1000'),
	(45,3,2,1,1,'_id','3'),
	(46,3,2,1,1,'_order','1000'),
	(47,4,3,1,1,'_id','4'),
	(48,4,3,1,1,'_order','1000'),
	(49,4,3,1,2,'_id','4'),
	(50,4,3,1,2,'_order','1000'),
	(51,5,4,1,1,'_id','5'),
	(52,5,4,1,1,'_order','1000'),
	(53,2,5,1,4,'_id','2'),
	(54,2,5,1,4,'_order','1000'),
	(55,2,5,1,5,'images.image','/perch/resources/footer-logos/bazaar-logo-2.png'),
	(56,2,5,1,5,'images.alt',''),
	(57,2,5,1,5,'_id','2'),
	(58,2,5,1,5,'_order','1000'),
	(59,2,5,1,6,'images.image','/perch/resources/footer-logos/bazaar-logo-2.png'),
	(60,2,5,1,6,'images.image','/perch/resources/footer-logos/telegraph-logo-1.png'),
	(61,2,5,1,6,'images.image','/perch/resources/footer-logos/conde-nast-logo-1.png'),
	(62,2,5,1,6,'images.image','/perch/resources/footer-logos/elle-logo-1.png'),
	(63,2,5,1,6,'images.image','/perch/resources/footer-logos/style-logo-1.png'),
	(64,2,5,1,6,'images.image','/perch/resources/footer-logos/vogue-logo-1.png'),
	(65,2,5,1,6,'images.alt',''),
	(66,2,5,1,6,'images.alt',''),
	(67,2,5,1,6,'images.alt',''),
	(68,2,5,1,6,'images.alt',''),
	(69,2,5,1,6,'images.alt',''),
	(70,2,5,1,6,'images.alt',''),
	(71,2,5,1,6,'_id','2'),
	(72,2,5,1,6,'_order','1000'),
	(73,6,6,1,1,'full-width-image','/perch/resources/home-hero-1-1.jpg'),
	(74,6,6,1,1,'alt','The Cross Shop'),
	(75,6,6,1,1,'_id','6'),
	(76,6,6,1,1,'_order','1000'),
	(77,2,5,1,7,'images.image','/perch/resources/footer-logos/bazaar-logo-2.png'),
	(78,2,5,1,7,'images.image','/perch/resources/footer-logos/telegraph-logo-1.png'),
	(79,2,5,1,7,'images.image','/perch/resources/footer-logos/conde-nast-logo-1.png'),
	(80,2,5,1,7,'images.image','/perch/resources/footer-logos/elle-logo-1.png'),
	(81,2,5,1,7,'images.image','/perch/resources/footer-logos/style-logo-1.png'),
	(82,2,5,1,7,'images.image','/perch/resources/footer-logos/vogue-logo-1.png'),
	(83,2,5,1,7,'images.alt',''),
	(84,2,5,1,7,'images.alt',''),
	(85,2,5,1,7,'images.alt',''),
	(86,2,5,1,7,'images.alt',''),
	(87,2,5,1,7,'images.alt',''),
	(88,2,5,1,7,'images.alt',''),
	(89,2,5,1,7,'_id','2'),
	(90,2,5,1,7,'_order','1000'),
	(477,7,7,1,17,'_order','1000'),
	(476,7,7,1,17,'_id','7'),
	(475,7,7,1,17,'inlink-panels.inlink-text','Follow us on Instagram'),
	(474,7,7,1,17,'inlink-panels.inlink-text','Bespoke'),
	(473,7,7,1,17,'inlink-panels.inlink-text','New Instore'),
	(472,7,7,1,17,'inlink-panels.inlink-text','On the Blog'),
	(471,7,7,1,17,'inlink-panels.inlink-link','https://instagram.com/thecrossshop/'),
	(470,7,7,1,17,'inlink-panels.inlink-link',''),
	(469,7,7,1,17,'inlink-panels.inlink-link',''),
	(468,7,7,1,17,'inlink-panels.inlink-link',''),
	(467,7,7,1,17,'inlink-panels.alt','Instagram panel'),
	(466,7,7,1,17,'inlink-panels.alt','Bespoke'),
	(465,7,7,1,17,'inlink-panels.alt','New Instore'),
	(464,7,7,1,17,'inlink-panels.alt','Blog feed'),
	(463,7,7,1,17,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/instagram-feed-panel.jpg'),
	(462,7,7,1,17,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/bespoke-panel.jpg'),
	(461,7,7,1,17,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/new-instore-panel.jpg'),
	(460,7,7,1,17,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/blog-feed-panel.jpg'),
	(459,7,7,1,17,'inlink-panels.external-link',''),
	(458,7,7,1,17,'inlink-panels.external-link',''),
	(457,7,7,1,17,'inlink-panels.external-link',''),
	(456,7,7,1,17,'inlink-panels.external-link',''),
	(499,7,7,1,18,'_order','1000'),
	(498,7,7,1,18,'_id','7'),
	(497,7,7,1,18,'inlink-panels.inlink-text','Follow us on Instagram'),
	(496,7,7,1,18,'inlink-panels.inlink-text','Bespoke'),
	(495,7,7,1,18,'inlink-panels.inlink-text','New Instore'),
	(494,7,7,1,18,'inlink-panels.inlink-text','On the Blog'),
	(493,7,7,1,18,'inlink-panels.inlink-link','https://instagram.com/thecrossshop/'),
	(492,7,7,1,18,'inlink-panels.inlink-link',''),
	(491,7,7,1,18,'inlink-panels.inlink-link',''),
	(490,7,7,1,18,'inlink-panels.inlink-link',''),
	(489,7,7,1,18,'inlink-panels.alt','Instagram panel'),
	(488,7,7,1,18,'inlink-panels.alt','Bespoke'),
	(487,7,7,1,18,'inlink-panels.alt','New Instore'),
	(486,7,7,1,18,'inlink-panels.alt','Blog feed'),
	(485,7,7,1,18,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/instagram-feed-panel.jpg'),
	(484,7,7,1,18,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/bespoke-panel.jpg'),
	(483,7,7,1,18,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/new-instore-panel.jpg'),
	(482,7,7,1,18,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/blog-feed-panel.jpg'),
	(131,8,8,2,1,'full-width-image','/perch/resources/contact-hero.jpg'),
	(132,8,8,2,1,'alt','Contact the Cross'),
	(133,8,8,2,1,'_id','8'),
	(134,8,8,2,1,'_order','1000'),
	(135,9,9,2,1,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/instagram-feed-panel.jpg'),
	(136,9,9,2,1,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/blog-feed-panel.jpg'),
	(137,9,9,2,1,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/new-instore-panel.jpg'),
	(138,9,9,2,1,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/bespoke-panel.jpg'),
	(139,9,9,2,1,'inlink-panels.alt',''),
	(140,9,9,2,1,'inlink-panels.alt',''),
	(141,9,9,2,1,'inlink-panels.alt',''),
	(142,9,9,2,1,'inlink-panels.alt',''),
	(143,9,9,2,1,'inlink-panels.inlink-link',''),
	(144,9,9,2,1,'inlink-panels.inlink-link',''),
	(145,9,9,2,1,'inlink-panels.inlink-link',''),
	(146,9,9,2,1,'inlink-panels.inlink-link',''),
	(147,9,9,2,1,'inlink-panels.inlink-text','Follow us on Instagram'),
	(148,9,9,2,1,'inlink-panels.inlink-text','On the Blog'),
	(149,9,9,2,1,'inlink-panels.inlink-text','New Instore'),
	(150,9,9,2,1,'inlink-panels.inlink-text','Bespoke'),
	(151,9,9,2,1,'_id','9'),
	(152,9,9,2,1,'_order','1000'),
	(521,7,7,1,19,'_order','1000'),
	(520,7,7,1,19,'_id','7'),
	(519,7,7,1,19,'inlink-panels.inlink-text','Follow us on Instagram'),
	(518,7,7,1,19,'inlink-panels.inlink-text','Bespoke'),
	(517,7,7,1,19,'inlink-panels.inlink-text','New Instore'),
	(516,7,7,1,19,'inlink-panels.inlink-text','On the Blog'),
	(515,7,7,1,19,'inlink-panels.inlink-link','https://instagram.com/thecrossshop/'),
	(514,7,7,1,19,'inlink-panels.inlink-link',''),
	(513,7,7,1,19,'inlink-panels.inlink-link',''),
	(512,7,7,1,19,'inlink-panels.inlink-link',''),
	(511,7,7,1,19,'inlink-panels.alt','Instagram panel'),
	(510,7,7,1,19,'inlink-panels.alt','Bespoke'),
	(509,7,7,1,19,'inlink-panels.alt','New Instore'),
	(508,7,7,1,19,'inlink-panels.alt','Blog feed'),
	(507,7,7,1,19,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/instagram-feed-panel.jpg'),
	(506,7,7,1,19,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/bespoke-panel.jpg'),
	(505,7,7,1,19,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/new-instore-panel.jpg'),
	(504,7,7,1,19,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/blog-feed-panel.jpg'),
	(503,7,7,1,19,'inlink-panels.external-link','1'),
	(502,7,7,1,19,'inlink-panels.external-link',''),
	(501,7,7,1,19,'inlink-panels.external-link',''),
	(500,7,7,1,19,'inlink-panels.external-link',''),
	(543,7,7,1,20,'_order','1000'),
	(542,7,7,1,20,'_id','7'),
	(541,7,7,1,20,'inlink-panels.inlink-text','Bespoke'),
	(540,7,7,1,20,'inlink-panels.inlink-text','New Instore'),
	(539,7,7,1,20,'inlink-panels.inlink-text','On the Blog'),
	(538,7,7,1,20,'inlink-panels.inlink-text','Follow us on Instagram'),
	(537,7,7,1,20,'inlink-panels.inlink-link',''),
	(536,7,7,1,20,'inlink-panels.inlink-link',''),
	(535,7,7,1,20,'inlink-panels.inlink-link',''),
	(534,7,7,1,20,'inlink-panels.inlink-link','https://instagram.com/thecrossshop/'),
	(533,7,7,1,20,'inlink-panels.alt','Bespoke'),
	(532,7,7,1,20,'inlink-panels.alt','New Instore'),
	(531,7,7,1,20,'inlink-panels.alt','Blog feed'),
	(530,7,7,1,20,'inlink-panels.alt','Instagram panel'),
	(529,7,7,1,20,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/bespoke-panel.jpg'),
	(528,7,7,1,20,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/new-instore-panel.jpg'),
	(527,7,7,1,20,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/blog-feed-panel.jpg'),
	(526,7,7,1,20,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/instagram-feed-panel.jpg'),
	(525,7,7,1,20,'inlink-panels.external-link',''),
	(524,7,7,1,20,'inlink-panels.external-link',''),
	(523,7,7,1,20,'inlink-panels.external-link',''),
	(522,7,7,1,20,'inlink-panels.external-link','1'),
	(565,7,7,1,21,'_order','1000'),
	(564,7,7,1,21,'_id','7'),
	(563,7,7,1,21,'inlink-panels.inlink-text','Bespoke'),
	(562,7,7,1,21,'inlink-panels.inlink-text','New Instore'),
	(561,7,7,1,21,'inlink-panels.inlink-text','On the Blog'),
	(560,7,7,1,21,'inlink-panels.inlink-text','Follow us on Instagram'),
	(559,7,7,1,21,'inlink-panels.inlink-link',''),
	(558,7,7,1,21,'inlink-panels.inlink-link',''),
	(557,7,7,1,21,'inlink-panels.inlink-link',''),
	(556,7,7,1,21,'inlink-panels.inlink-link','https://instagram.com/thecrossshop/'),
	(555,7,7,1,21,'inlink-panels.alt','Bespoke'),
	(554,7,7,1,21,'inlink-panels.alt','New Instore'),
	(553,7,7,1,21,'inlink-panels.alt','Blog feed'),
	(552,7,7,1,21,'inlink-panels.alt','Instagram panel'),
	(551,7,7,1,21,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/bespoke-panel.jpg'),
	(550,7,7,1,21,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/new-instore-panel.jpg'),
	(549,7,7,1,21,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/blog-feed-panel.jpg'),
	(548,7,7,1,21,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/instagram-feed-panel.jpg'),
	(547,7,7,1,21,'inlink-panels.external-link',''),
	(546,7,7,1,21,'inlink-panels.external-link',''),
	(545,7,7,1,21,'inlink-panels.external-link',''),
	(544,7,7,1,21,'inlink-panels.external-link','1'),
	(406,7,7,1,14,'inlink-panels.inlink-text','On the Blog'),
	(405,7,7,1,14,'inlink-panels.inlink-link','https://instagram.com/thecrossshop/'),
	(404,7,7,1,14,'inlink-panels.inlink-link',''),
	(403,7,7,1,14,'inlink-panels.inlink-link',''),
	(402,7,7,1,14,'inlink-panels.inlink-link',''),
	(401,7,7,1,14,'inlink-panels.alt','Instagram panel'),
	(400,7,7,1,14,'inlink-panels.alt','Bespoke'),
	(399,7,7,1,14,'inlink-panels.alt','New Instore'),
	(398,7,7,1,14,'inlink-panels.alt','Blog feed'),
	(397,7,7,1,14,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/instagram-feed-panel.jpg'),
	(396,7,7,1,14,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/bespoke-panel.jpg'),
	(395,7,7,1,14,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/new-instore-panel.jpg'),
	(394,7,7,1,14,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/blog-feed-panel.jpg'),
	(393,7,7,1,14,'inlink-panels.external-link','1'),
	(392,7,7,1,14,'inlink-panels.external-link',''),
	(391,7,7,1,14,'inlink-panels.external-link',''),
	(390,7,7,1,14,'inlink-panels.external-link',''),
	(433,7,7,1,15,'_order','1000'),
	(432,7,7,1,15,'_id','7'),
	(431,7,7,1,15,'inlink-panels.inlink-text','Follow us on Instagram'),
	(430,7,7,1,15,'inlink-panels.inlink-text','Bespoke'),
	(429,7,7,1,15,'inlink-panels.inlink-text','New Instore'),
	(428,7,7,1,15,'inlink-panels.inlink-text','On the Blog'),
	(427,7,7,1,15,'inlink-panels.inlink-link','https://instagram.com/thecrossshop/'),
	(426,7,7,1,15,'inlink-panels.inlink-link',''),
	(425,7,7,1,15,'inlink-panels.inlink-link',''),
	(424,7,7,1,15,'inlink-panels.inlink-link',''),
	(423,7,7,1,15,'inlink-panels.alt','Instagram panel'),
	(422,7,7,1,15,'inlink-panels.alt','Bespoke'),
	(421,7,7,1,15,'inlink-panels.alt','New Instore'),
	(420,7,7,1,15,'inlink-panels.alt','Blog feed'),
	(419,7,7,1,15,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/instagram-feed-panel.jpg'),
	(418,7,7,1,15,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/bespoke-panel.jpg'),
	(417,7,7,1,15,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/new-instore-panel.jpg'),
	(416,7,7,1,15,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/blog-feed-panel.jpg'),
	(415,7,7,1,15,'inlink-panels.external-link','1'),
	(414,7,7,1,15,'inlink-panels.external-link',''),
	(413,7,7,1,15,'inlink-panels.external-link',''),
	(412,7,7,1,15,'inlink-panels.external-link',''),
	(455,7,7,1,16,'_order','1000'),
	(454,7,7,1,16,'_id','7'),
	(453,7,7,1,16,'inlink-panels.inlink-text','Follow us on Instagram'),
	(452,7,7,1,16,'inlink-panels.inlink-text','Bespoke'),
	(451,7,7,1,16,'inlink-panels.inlink-text','New Instore'),
	(450,7,7,1,16,'inlink-panels.inlink-text','On the Blog'),
	(449,7,7,1,16,'inlink-panels.inlink-link','https://instagram.com/thecrossshop/'),
	(448,7,7,1,16,'inlink-panels.inlink-link',''),
	(447,7,7,1,16,'inlink-panels.inlink-link',''),
	(446,7,7,1,16,'inlink-panels.inlink-link',''),
	(445,7,7,1,16,'inlink-panels.alt','Instagram panel'),
	(444,7,7,1,16,'inlink-panels.alt','Bespoke'),
	(443,7,7,1,16,'inlink-panels.alt','New Instore'),
	(442,7,7,1,16,'inlink-panels.alt','Blog feed'),
	(441,7,7,1,16,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/instagram-feed-panel.jpg'),
	(440,7,7,1,16,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/bespoke-panel.jpg'),
	(439,7,7,1,16,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/new-instore-panel.jpg'),
	(438,7,7,1,16,'inlink-panels.inlink-panel-image','/perch/resources/inlink-images/blog-feed-panel.jpg'),
	(437,7,7,1,16,'inlink-panels.external-link','1'),
	(436,7,7,1,16,'inlink-panels.external-link',''),
	(435,7,7,1,16,'inlink-panels.external-link',''),
	(434,7,7,1,16,'inlink-panels.external-link',''),
	(481,7,7,1,18,'inlink-panels.external-link',''),
	(480,7,7,1,18,'inlink-panels.external-link',''),
	(479,7,7,1,18,'inlink-panels.external-link',''),
	(478,7,7,1,18,'inlink-panels.external-link',''),
	(407,7,7,1,14,'inlink-panels.inlink-text','New Instore'),
	(408,7,7,1,14,'inlink-panels.inlink-text','Bespoke'),
	(409,7,7,1,14,'inlink-panels.inlink-text','Follow us on Instagram'),
	(410,7,7,1,14,'_id','7'),
	(411,7,7,1,14,'_order','1000'),
	(566,10,10,1,1,'slideshow-image','/perch/resources/home-hero-1-1.jpg'),
	(567,10,10,1,1,'alt','Slide1'),
	(568,10,10,1,1,'_id','10'),
	(569,10,10,1,1,'_order','1000'),
	(570,10,10,1,2,'slideshow-image','/perch/resources/home-hero-1-1.jpg'),
	(571,10,10,1,2,'alt','Slide1'),
	(572,10,10,1,2,'_id','10'),
	(573,10,10,1,2,'_order','1000'),
	(574,11,10,1,2,'slideshow-image','/perch/resources/contact-hero.jpg'),
	(575,11,10,1,2,'alt','Slide 2'),
	(576,11,10,1,2,'_id','11'),
	(577,11,10,1,2,'_order','1001'),
	(578,11,10,1,3,'slideshow-image','/perch/resources/contact-hero.jpg'),
	(579,11,10,1,3,'alt','Slide 2'),
	(580,11,10,1,3,'_id','11'),
	(581,11,10,1,3,'_order','1001'),
	(582,12,10,1,5,'slideshow-image','/perch/resources/slideshow-images/home-hero-1.jpg'),
	(583,12,10,1,5,'alt',''),
	(584,12,10,1,5,'_id','12'),
	(585,12,10,1,5,'_order','1000'),
	(586,12,10,1,6,'slideshow-image','/perch/resources/slideshow-images/home-hero-1.jpg'),
	(587,12,10,1,6,'alt',''),
	(588,12,10,1,6,'_id','12'),
	(589,12,10,1,6,'_order','1000'),
	(590,13,10,1,6,'slideshow-image','/perch/resources/slideshow-images/home-hero-2.jpg'),
	(591,13,10,1,6,'alt',''),
	(592,13,10,1,6,'_id','13'),
	(593,13,10,1,6,'_order','1001'),
	(594,14,11,2,1,'page-title','find us ]'),
	(595,14,11,2,1,'page-copy','Customers return to The Cross for the overall shopping experience. Most of our regulars are on first name basis and enjoy the friendly and welcoming atmosphere. Come and visit us in the shop to get the real Cross experience. \nMonday to Saturday 10am -'),
	(596,14,11,2,1,'full-width-image','/perch/resources/contact-map-2.jpg'),
	(597,14,11,2,1,'alt','The Cross Shop, W11 4LR'),
	(598,14,11,2,1,'_id','14'),
	(599,14,11,2,1,'_order','1000'),
	(600,14,11,2,2,'page-title','find us ]'),
	(601,14,11,2,2,'page-copy','Customers return to The Cross for the overall shopping experience. Most of our regulars are on first name basis and enjoy the friendly and welcoming atmosphere. Come and visit us in the shop to get the real Cross experience. \nMonday to Saturday 10am -'),
	(602,14,11,2,2,'full-width-image',''),
	(603,14,11,2,2,'alt','The Cross Shop, W11 4LR'),
	(604,14,11,2,2,'_id','14'),
	(605,14,11,2,2,'_order','1000'),
	(606,14,11,2,3,'page-title','find us ]'),
	(607,14,11,2,3,'page-copy','Customers return to The Cross for the overall shopping experience. Most of our regulars are on first name basis and enjoy the friendly and welcoming atmosphere. Come and visit us in the shop to get the real Cross experience. \nMonday to Saturday 10am -'),
	(608,14,11,2,3,'full-width-image','/perch/resources/contact-map-3.jpg'),
	(609,14,11,2,3,'alt','The Cross Shop, W11 4LR'),
	(610,14,11,2,3,'_id','14'),
	(611,14,11,2,3,'_order','1000');

/*!40000 ALTER TABLE `perch2_content_index` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_content_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_content_items`;

CREATE TABLE `perch2_content_items` (
  `itemRowID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `regionID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemRev` int(10) unsigned NOT NULL DEFAULT '0',
  `itemOrder` int(10) unsigned NOT NULL DEFAULT '1000',
  `itemJSON` mediumtext NOT NULL,
  `itemSearch` mediumtext NOT NULL,
  `itemUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `itemUpdatedBy` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemRowID`),
  KEY `idx_item` (`itemID`),
  KEY `idx_rev` (`itemRev`),
  KEY `idx_region` (`regionID`),
  KEY `idx_regrev` (`itemID`,`regionID`,`itemRev`),
  KEY `idx_order` (`itemOrder`),
  FULLTEXT KEY `idx_search` (`itemSearch`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_content_items` WRITE;
/*!40000 ALTER TABLE `perch2_content_items` DISABLE KEYS */;

INSERT INTO `perch2_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`)
VALUES
	(1,1,1,1,0,1000,'','','2015-07-01 14:35:21',''),
	(2,1,1,1,1,1000,'','','2015-07-01 14:35:30','1'),
	(3,2,5,1,0,1000,'','','2015-07-01 21:16:17',''),
	(4,2,5,1,1,1000,'{\"_id\":\"2\",\"images\":[{\"image\":{\"assetID\":\"1\",\"title\":\"Vogue logo\",\"_default\":\"\\/perch\\/resources\\/vogue-logo.png\",\"bucket\":\"default\",\"path\":\"vogue-logo.png\",\"size\":2259,\"w\":101,\"h\":25,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"25\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"vogue-logo-thumb@2x.png\",\"size\":2259,\"mime\":\"\",\"assetID\":\"2\"}}},\"alt\":\"The Cross, as seen in Vogue\"},{\"image\":{\"assetID\":\"11\",\"title\":\"Telegraph logo\",\"_default\":\"\\/perch\\/resources\\/telegraph-logo.png\",\"bucket\":\"default\",\"path\":\"telegraph-logo.png\",\"size\":2833,\"w\":163,\"h\":27,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"24\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"telegraph-logo-thumb@2x.png\",\"size\":8533,\"mime\":\"\",\"assetID\":\"12\"}}},\"alt\":\"The Cross Shop, as seen in the Telegraph\"},{\"image\":{\"assetID\":\"9\",\"title\":\"Style logo\",\"_default\":\"\\/perch\\/resources\\/style-logo.png\",\"bucket\":\"default\",\"path\":\"style-logo.png\",\"size\":1404,\"w\":101,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"style-logo-thumb@2x.png\",\"size\":1404,\"mime\":\"\",\"assetID\":\"10\"}}},\"alt\":\"The Cross Shop, as seen in Style magazine\"},{\"image\":{\"assetID\":\"3\",\"title\":\"Bazaar logo\",\"_default\":\"\\/perch\\/resources\\/bazaar-logo.png\",\"bucket\":\"default\",\"path\":\"bazaar-logo.png\",\"size\":1675,\"w\":111,\"h\":29,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"111\",\"h\":\"29\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bazaar-logo-thumb@2x.png\",\"size\":1675,\"mime\":\"\",\"assetID\":\"4\"}}},\"alt\":\"The Cross Shop, as seen in Bazaar magazine\"},{\"image\":{\"assetID\":\"5\",\"title\":\"Conde nast logo\",\"_default\":\"\\/perch\\/resources\\/conde-nast-logo.png\",\"bucket\":\"default\",\"path\":\"conde-nast-logo.png\",\"size\":1795,\"w\":82,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"82\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"conde-nast-logo-thumb@2x.png\",\"size\":1795,\"mime\":\"\",\"assetID\":\"6\"}}},\"alt\":\"The Cross Shop, as seen in Conde Nast magazine\"},{\"image\":null,\"alt\":\"The Cross Shop, as seen in Elle magazine\"}]}','  The Cross, as seen in Vogue  The Cross Shop, as seen in the Telegraph  The Cross Shop, as seen in Style magazine  The Cross Shop, as seen in Bazaar magazine  The Cross Shop, as seen in Conde Nast magazine  The Cross Shop, as seen in Elle magazine ','2015-07-01 21:25:26','1'),
	(5,2,5,1,2,1000,'{\"_id\":\"2\",\"images\":[{\"image\":{\"assetID\":\"1\",\"title\":\"Vogue logo\",\"_default\":\"\\/perch\\/resources\\/vogue-logo.png\",\"bucket\":\"default\",\"path\":\"vogue-logo.png\",\"size\":2259,\"w\":101,\"h\":25,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"25\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"vogue-logo-thumb@2x.png\",\"size\":2259,\"mime\":\"\",\"assetID\":\"2\"}}},\"alt\":\"The Cross, as seen in Vogue\"},{\"image\":{\"assetID\":\"11\",\"title\":\"Telegraph logo\",\"_default\":\"\\/perch\\/resources\\/telegraph-logo.png\",\"bucket\":\"default\",\"path\":\"telegraph-logo.png\",\"size\":2833,\"w\":163,\"h\":27,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"24\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"telegraph-logo-thumb@2x.png\",\"size\":8533,\"mime\":\"\",\"assetID\":\"12\"}}},\"alt\":\"The Cross Shop, as seen in the Telegraph\"},{\"image\":{\"assetID\":\"9\",\"title\":\"Style logo\",\"_default\":\"\\/perch\\/resources\\/style-logo.png\",\"bucket\":\"default\",\"path\":\"style-logo.png\",\"size\":1404,\"w\":101,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"style-logo-thumb@2x.png\",\"size\":1404,\"mime\":\"\",\"assetID\":\"10\"}}},\"alt\":\"The Cross Shop, as seen in Style magazine\"},{\"image\":{\"assetID\":\"3\",\"title\":\"Bazaar logo\",\"_default\":\"\\/perch\\/resources\\/bazaar-logo.png\",\"bucket\":\"default\",\"path\":\"bazaar-logo.png\",\"size\":1675,\"w\":111,\"h\":29,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"111\",\"h\":\"29\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bazaar-logo-thumb@2x.png\",\"size\":1675,\"mime\":\"\",\"assetID\":\"4\"}}},\"alt\":\"The Cross Shop, as seen in Bazaar magazine\"},{\"image\":{\"assetID\":\"5\",\"title\":\"Conde nast logo\",\"_default\":\"\\/perch\\/resources\\/conde-nast-logo.png\",\"bucket\":\"default\",\"path\":\"conde-nast-logo.png\",\"size\":1795,\"w\":82,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"82\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"conde-nast-logo-thumb@2x.png\",\"size\":1795,\"mime\":\"\",\"assetID\":\"6\"}}},\"alt\":\"The Cross Shop, as seen in Conde Nast magazine\"},{\"image\":{\"assetID\":\"7\",\"title\":\"Elle logo\",\"_default\":\"\\/perch\\/resources\\/elle-logo.png\",\"bucket\":\"default\",\"path\":\"elle-logo.png\",\"size\":662,\"w\":86,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"86\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"elle-logo-thumb@2x.png\",\"size\":662,\"mime\":\"\",\"assetID\":\"8\"}}},\"alt\":\"The Cross Shop, as seen in Elle magazine\"}]}','  The Cross, as seen in Vogue  The Cross Shop, as seen in the Telegraph  The Cross Shop, as seen in Style magazine  The Cross Shop, as seen in Bazaar magazine  The Cross Shop, as seen in Conde Nast magazine  The Cross Shop, as seen in Elle magazine ','2015-07-01 21:26:16','1'),
	(6,2,5,1,3,1000,'{\"_id\":\"2\",\"images\":[{\"image\":{\"assetID\":\"1\",\"title\":\"Vogue logo\",\"_default\":\"\\/perch\\/resources\\/vogue-logo.png\",\"bucket\":\"default\",\"path\":\"vogue-logo.png\",\"size\":2259,\"w\":101,\"h\":25,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"25\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"vogue-logo-thumb@2x.png\",\"size\":2259,\"mime\":\"\",\"assetID\":\"2\"}}},\"alt\":\"The Cross, as seen in Vogue\"},{\"image\":{\"assetID\":\"11\",\"title\":\"Telegraph logo\",\"_default\":\"\\/perch\\/resources\\/telegraph-logo.png\",\"bucket\":\"default\",\"path\":\"telegraph-logo.png\",\"size\":2833,\"w\":163,\"h\":27,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"24\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"telegraph-logo-thumb@2x.png\",\"size\":8533,\"mime\":\"\",\"assetID\":\"12\"}}},\"alt\":\"The Cross Shop, as seen in the Telegraph\"},{\"image\":{\"assetID\":\"9\",\"title\":\"Style logo\",\"_default\":\"\\/perch\\/resources\\/style-logo.png\",\"bucket\":\"default\",\"path\":\"style-logo.png\",\"size\":1404,\"w\":101,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"style-logo-thumb@2x.png\",\"size\":1404,\"mime\":\"\",\"assetID\":\"10\"}}},\"alt\":\"The Cross Shop, as seen in Style magazine\"},{\"image\":{\"assetID\":\"3\",\"title\":\"Bazaar logo\",\"_default\":\"\\/perch\\/resources\\/bazaar-logo.png\",\"bucket\":\"default\",\"path\":\"bazaar-logo.png\",\"size\":1675,\"w\":111,\"h\":29,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"111\",\"h\":\"29\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bazaar-logo-thumb@2x.png\",\"size\":1675,\"mime\":\"\",\"assetID\":\"4\"}}},\"alt\":\"The Cross Shop, as seen in Bazaar magazine\"},{\"image\":{\"assetID\":\"5\",\"title\":\"Conde nast logo\",\"_default\":\"\\/perch\\/resources\\/conde-nast-logo.png\",\"bucket\":\"default\",\"path\":\"conde-nast-logo.png\",\"size\":1795,\"w\":82,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"82\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"conde-nast-logo-thumb@2x.png\",\"size\":1795,\"mime\":\"\",\"assetID\":\"6\"}}},\"alt\":\"The Cross Shop, as seen in Conde Nast magazine\"},{\"image\":{\"assetID\":\"7\",\"title\":\"Elle logo\",\"_default\":\"\\/perch\\/resources\\/elle-logo.png\",\"bucket\":\"default\",\"path\":\"elle-logo.png\",\"size\":662,\"w\":86,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"86\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"elle-logo-thumb@2x.png\",\"size\":662,\"mime\":\"\",\"assetID\":\"8\"}}},\"alt\":\"The Cross Shop, as seen in Elle magazine\"}]}','  The Cross, as seen in Vogue  The Cross Shop, as seen in the Telegraph  The Cross Shop, as seen in Style magazine  The Cross Shop, as seen in Bazaar magazine  The Cross Shop, as seen in Conde Nast magazine  The Cross Shop, as seen in Elle magazine ','2015-07-01 21:27:25','1'),
	(7,3,2,1,0,1000,'','','2015-07-06 23:21:01',''),
	(8,3,2,1,1,1000,'','','2015-07-06 23:21:07','1'),
	(9,4,3,1,0,1000,'','','2015-07-06 23:21:13',''),
	(10,4,3,1,1,1000,'','','2015-07-06 23:21:16','1'),
	(11,4,3,1,2,1000,'','','2015-07-06 23:21:44','1'),
	(12,5,4,1,0,1000,'','','2015-07-06 23:21:53',''),
	(13,5,4,1,1,1000,'','','2015-07-06 23:22:31','1'),
	(14,6,6,1,0,1000,'','','2015-07-06 23:22:43',''),
	(16,2,5,1,4,1000,'{\"_id\":\"2\"}','     ','2015-07-06 23:24:30','1'),
	(17,2,5,1,5,1000,'{\"_id\":\"2\",\"images\":[{\"image\":{\"assetID\":\"13\",\"title\":\"Bazaar logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/bazaar-logo-2.png\",\"bucket\":\"footer-logos\",\"path\":\"bazaar-logo-2.png\",\"size\":1675,\"w\":111,\"h\":29,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"111\",\"h\":\"29\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bazaar-logo-2-thumb@2x.png\",\"size\":1675,\"mime\":\"\",\"assetID\":\"14\"}}},\"alt\":null}]}','   ','2015-07-06 23:24:40','1'),
	(18,2,5,1,6,1000,'{\"_id\":\"2\",\"images\":[{\"image\":{\"assetID\":\"13\",\"title\":\"Bazaar logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/bazaar-logo-2.png\",\"bucket\":\"footer-logos\",\"path\":\"bazaar-logo-2.png\",\"size\":1675,\"w\":111,\"h\":29,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"111\",\"h\":\"29\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bazaar-logo-2-thumb@2x.png\",\"size\":1675,\"mime\":\"\",\"assetID\":\"14\"}}},\"alt\":null},{\"image\":{\"assetID\":\"15\",\"title\":\"Telegraph logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/telegraph-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"telegraph-logo-1.png\",\"size\":2833,\"w\":163,\"h\":27,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"24\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"telegraph-logo-1-thumb@2x.png\",\"size\":8533,\"mime\":\"\",\"assetID\":\"16\"}}},\"alt\":null},{\"image\":{\"assetID\":\"17\",\"title\":\"Conde nast logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/conde-nast-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"conde-nast-logo-1.png\",\"size\":1795,\"w\":82,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"82\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"conde-nast-logo-1-thumb@2x.png\",\"size\":1795,\"mime\":\"\",\"assetID\":\"18\"}}},\"alt\":null},{\"image\":{\"assetID\":\"19\",\"title\":\"Elle logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/elle-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"elle-logo-1.png\",\"size\":662,\"w\":86,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"86\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"elle-logo-1-thumb@2x.png\",\"size\":662,\"mime\":\"\",\"assetID\":\"20\"}}},\"alt\":null},{\"image\":{\"assetID\":\"21\",\"title\":\"Style logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/style-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"style-logo-1.png\",\"size\":1404,\"w\":101,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"style-logo-1-thumb@2x.png\",\"size\":1404,\"mime\":\"\",\"assetID\":\"22\"}}},\"alt\":null},{\"image\":{\"assetID\":\"23\",\"title\":\"Vogue logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/vogue-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"vogue-logo-1.png\",\"size\":2259,\"w\":101,\"h\":25,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"25\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"vogue-logo-1-thumb@2x.png\",\"size\":2259,\"mime\":\"\",\"assetID\":\"24\"}}},\"alt\":null}]}','             ','2015-07-06 23:25:58','1'),
	(19,6,6,1,1,1000,'{\"_id\":\"6\",\"full-width-image\":{\"assetID\":\"25\",\"title\":\"Home hero 1\",\"_default\":\"\\/perch\\/resources\\/home-hero-1-1.jpg\",\"bucket\":\"default\",\"path\":\"home-hero-1-1.jpg\",\"size\":65387,\"w\":930,\"h\":399,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"64\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"home-hero-1-1-thumb@2x.jpg\",\"size\":15694,\"mime\":\"\",\"assetID\":\"26\"}}},\"alt\":\"The Cross Shop\",\"_title\":\"The Cross Shop\"}','  The Cross Shop ','2015-07-06 23:28:18','1'),
	(20,2,5,1,7,1000,'{\"_id\":\"2\",\"images\":[{\"image\":{\"assetID\":\"13\",\"title\":\"Bazaar logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/bazaar-logo-2.png\",\"bucket\":\"footer-logos\",\"path\":\"bazaar-logo-2.png\",\"size\":1675,\"w\":111,\"h\":29,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"111\",\"h\":\"29\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bazaar-logo-2-thumb@2x.png\",\"size\":1675,\"mime\":\"\",\"assetID\":\"14\"}}},\"alt\":null},{\"image\":{\"assetID\":\"15\",\"title\":\"Telegraph logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/telegraph-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"telegraph-logo-1.png\",\"size\":2833,\"w\":163,\"h\":27,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"24\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"telegraph-logo-1-thumb@2x.png\",\"size\":8533,\"mime\":\"\",\"assetID\":\"16\"}}},\"alt\":null},{\"image\":{\"assetID\":\"17\",\"title\":\"Conde nast logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/conde-nast-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"conde-nast-logo-1.png\",\"size\":1795,\"w\":82,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"82\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"conde-nast-logo-1-thumb@2x.png\",\"size\":1795,\"mime\":\"\",\"assetID\":\"18\"}}},\"alt\":null},{\"image\":{\"assetID\":\"19\",\"title\":\"Elle logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/elle-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"elle-logo-1.png\",\"size\":662,\"w\":86,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"86\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"elle-logo-1-thumb@2x.png\",\"size\":662,\"mime\":\"\",\"assetID\":\"20\"}}},\"alt\":null},{\"image\":{\"assetID\":\"21\",\"title\":\"Style logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/style-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"style-logo-1.png\",\"size\":1404,\"w\":101,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"style-logo-1-thumb@2x.png\",\"size\":1404,\"mime\":\"\",\"assetID\":\"22\"}}},\"alt\":null},{\"image\":{\"assetID\":\"23\",\"title\":\"Vogue logo\",\"_default\":\"\\/perch\\/resources\\/footer-logos\\/vogue-logo-1.png\",\"bucket\":\"footer-logos\",\"path\":\"vogue-logo-1.png\",\"size\":2259,\"w\":101,\"h\":25,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"25\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"vogue-logo-1-thumb@2x.png\",\"size\":2259,\"mime\":\"\",\"assetID\":\"24\"}}},\"alt\":null}]}','             ','2015-07-06 23:32:21','1'),
	(43,7,7,1,19,1000,'{\"_id\":\"7\",\"inlink-panels\":[{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"29\",\"title\":\"Blog feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/blog-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"blog-feed-panel.jpg\",\"size\":11593,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"blog-feed-panel-thumb@2x.jpg\",\"size\":26596,\"mime\":\"\",\"assetID\":\"30\"}}},\"alt\":\"Blog feed\",\"inlink-link\":null,\"inlink-text\":\"On the Blog\",\"_title\":\"On the Blog\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"31\",\"title\":\"New instore panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/new-instore-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"new-instore-panel.jpg\",\"size\":10274,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"new-instore-panel-thumb@2x.jpg\",\"size\":24895,\"mime\":\"\",\"assetID\":\"32\"}}},\"alt\":\"New Instore\",\"inlink-link\":null,\"inlink-text\":\"New Instore\",\"_title\":\"New Instore\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"33\",\"title\":\"Bespoke panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/bespoke-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"bespoke-panel.jpg\",\"size\":5259,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bespoke-panel-thumb@2x.jpg\",\"size\":13761,\"mime\":\"\",\"assetID\":\"34\"}}},\"alt\":\"Bespoke\",\"inlink-link\":null,\"inlink-text\":\"Bespoke\",\"_title\":\"Bespoke\"},{\"external-link\":\"1\",\"inlink-panel-image\":{\"assetID\":\"27\",\"title\":\"Instagram feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/instagram-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"instagram-feed-panel.jpg\",\"size\":9430,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"instagram-feed-panel-thumb@2x.jpg\",\"size\":23070,\"mime\":\"\",\"assetID\":\"28\"}}},\"alt\":\"Instagram panel\",\"inlink-link\":\"https:\\/\\/instagram.com\\/thecrossshop\\/\",\"inlink-text\":\"Follow us on Instagram\",\"_title\":\"Follow us on Instagram\"}]}','   Blog feed  On the Blog   New Instore  New Instore   Bespoke  Bespoke 1  Instagram panel https://instagram.com/thecrossshop/ Follow us on Instagram ','2015-07-07 15:26:03','1'),
	(23,8,8,2,0,1000,'','','2015-07-06 23:41:34',''),
	(24,8,8,2,1,1000,'{\"_id\":\"8\",\"full-width-image\":{\"assetID\":\"35\",\"title\":\"Contact hero\",\"_default\":\"\\/perch\\/resources\\/contact-hero.jpg\",\"bucket\":\"default\",\"path\":\"contact-hero.jpg\",\"size\":40141,\"w\":954,\"h\":431,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"67\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"contact-hero-thumb@2x.jpg\",\"size\":9575,\"mime\":\"\",\"assetID\":\"36\"}}},\"alt\":\"Contact the Cross\",\"_title\":\"Contact the Cross\"}','  Contact the Cross ','2015-07-06 23:41:51','1'),
	(25,9,9,2,0,1000,'','','2015-07-06 23:41:58',''),
	(26,9,9,2,1,1000,'{\"_id\":\"9\",\"inlink-panels\":[{\"inlink-panel-image\":{\"assetID\":\"27\",\"title\":\"Instagram feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/instagram-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"instagram-feed-panel.jpg\",\"size\":9430,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"instagram-feed-panel-thumb@2x.jpg\",\"size\":23070,\"mime\":\"\",\"assetID\":\"28\"}}},\"alt\":null,\"inlink-link\":null,\"inlink-text\":\"Follow us on Instagram\",\"_title\":\"Follow us on Instagram\"},{\"inlink-panel-image\":{\"assetID\":\"29\",\"title\":\"Blog feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/blog-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"blog-feed-panel.jpg\",\"size\":11593,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"blog-feed-panel-thumb@2x.jpg\",\"size\":26596,\"mime\":\"\",\"assetID\":\"30\"}}},\"alt\":null,\"inlink-link\":null,\"inlink-text\":\"On the Blog\",\"_title\":\"On the Blog\"},{\"inlink-panel-image\":{\"assetID\":\"31\",\"title\":\"New instore panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/new-instore-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"new-instore-panel.jpg\",\"size\":10274,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"new-instore-panel-thumb@2x.jpg\",\"size\":24895,\"mime\":\"\",\"assetID\":\"32\"}}},\"alt\":null,\"inlink-link\":null,\"inlink-text\":\"New Instore\",\"_title\":\"New Instore\"},{\"inlink-panel-image\":{\"assetID\":\"33\",\"title\":\"Bespoke panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/bespoke-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"bespoke-panel.jpg\",\"size\":5259,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bespoke-panel-thumb@2x.jpg\",\"size\":13761,\"mime\":\"\",\"assetID\":\"34\"}}},\"alt\":null,\"inlink-link\":null,\"inlink-text\":\"Bespoke\",\"_title\":\"Bespoke\"}]}','    Follow us on Instagram    On the Blog    New Instore    Bespoke ','2015-07-06 23:42:52','1'),
	(45,7,7,1,21,1000,'{\"_id\":\"7\",\"inlink-panels\":[{\"external-link\":\"1\",\"inlink-panel-image\":{\"assetID\":\"27\",\"title\":\"Instagram feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/instagram-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"instagram-feed-panel.jpg\",\"size\":9430,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"instagram-feed-panel-thumb@2x.jpg\",\"size\":23070,\"mime\":\"\",\"assetID\":\"28\"}}},\"alt\":\"Instagram panel\",\"inlink-link\":\"https:\\/\\/instagram.com\\/thecrossshop\\/\",\"inlink-text\":\"Follow us on Instagram\",\"_title\":\"Follow us on Instagram\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"29\",\"title\":\"Blog feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/blog-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"blog-feed-panel.jpg\",\"size\":11593,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"blog-feed-panel-thumb@2x.jpg\",\"size\":26596,\"mime\":\"\",\"assetID\":\"30\"}}},\"alt\":\"Blog feed\",\"inlink-link\":null,\"inlink-text\":\"On the Blog\",\"_title\":\"On the Blog\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"31\",\"title\":\"New instore panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/new-instore-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"new-instore-panel.jpg\",\"size\":10274,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"new-instore-panel-thumb@2x.jpg\",\"size\":24895,\"mime\":\"\",\"assetID\":\"32\"}}},\"alt\":\"New Instore\",\"inlink-link\":null,\"inlink-text\":\"New Instore\",\"_title\":\"New Instore\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"33\",\"title\":\"Bespoke panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/bespoke-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"bespoke-panel.jpg\",\"size\":5259,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bespoke-panel-thumb@2x.jpg\",\"size\":13761,\"mime\":\"\",\"assetID\":\"34\"}}},\"alt\":\"Bespoke\",\"inlink-link\":null,\"inlink-text\":\"Bespoke\",\"_title\":\"Bespoke\"}]}',' 1  Instagram panel https://instagram.com/thecrossshop/ Follow us on Instagram   Blog feed  On the Blog   New Instore  New Instore   Bespoke  Bespoke ','2015-07-07 15:29:10','1'),
	(47,10,10,1,1,1000,'{\"_id\":\"10\",\"slideshow-image\":{\"assetID\":\"25\",\"title\":\"Home hero 1\",\"_default\":\"\\/perch\\/resources\\/home-hero-1-1.jpg\",\"bucket\":\"default\",\"path\":\"home-hero-1-1.jpg\",\"size\":65387,\"w\":930,\"h\":399,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"64\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"home-hero-1-1-thumb@2x.jpg\",\"size\":15694,\"mime\":\"\",\"assetID\":\"26\"}}},\"alt\":\"Slide1\",\"_title\":\"Slide1\"}','  Slide1 ','2015-07-07 18:17:52','1'),
	(48,11,10,1,1,1001,'','','2015-07-07 18:17:52',''),
	(49,10,10,1,2,1000,'{\"_id\":\"10\",\"slideshow-image\":{\"assetID\":\"25\",\"title\":\"Home hero 1\",\"_default\":\"\\/perch\\/resources\\/home-hero-1-1.jpg\",\"bucket\":\"default\",\"path\":\"home-hero-1-1.jpg\",\"size\":65387,\"w\":930,\"h\":399,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"64\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"home-hero-1-1-thumb@2x.jpg\",\"size\":15694,\"mime\":\"\",\"assetID\":\"26\"}}},\"alt\":\"Slide1\",\"_title\":\"Slide1\"}','  Slide1 ','2015-07-07 18:18:03','1'),
	(50,11,10,1,2,1001,'{\"_id\":\"11\",\"slideshow-image\":{\"assetID\":\"35\",\"title\":\"Contact hero\",\"_default\":\"\\/perch\\/resources\\/contact-hero.jpg\",\"bucket\":\"default\",\"path\":\"contact-hero.jpg\",\"size\":40141,\"w\":954,\"h\":431,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"67\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"contact-hero-thumb@2x.jpg\",\"size\":9575,\"mime\":\"\",\"assetID\":\"36\"}}},\"alt\":\"Slide 2\",\"_title\":\"Slide 2\"}','  Slide 2 ','2015-07-07 18:18:03','1'),
	(54,12,10,1,4,1000,'','','2015-07-07 19:05:03',''),
	(55,12,10,1,5,1000,'{\"_id\":\"12\",\"slideshow-image\":{\"assetID\":\"39\",\"title\":\"Home hero 1\",\"_default\":\"\\/perch\\/resources\\/slideshow-images\\/home-hero-1.jpg\",\"bucket\":\"slideshow-images\",\"path\":\"home-hero-1.jpg\",\"size\":65387,\"w\":930,\"h\":399,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"64\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"home-hero-1-thumb@2x.jpg\",\"size\":15694,\"mime\":\"\",\"assetID\":\"40\"}}},\"alt\":null}','   ','2015-07-07 19:05:56','1'),
	(52,11,10,1,3,1001,'{\"_id\":\"11\",\"slideshow-image\":{\"assetID\":\"35\",\"title\":\"Contact hero\",\"_default\":\"\\/perch\\/resources\\/contact-hero.jpg\",\"bucket\":\"default\",\"path\":\"contact-hero.jpg\",\"size\":40141,\"w\":954,\"h\":431,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"67\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"contact-hero-thumb@2x.jpg\",\"size\":9575,\"mime\":\"\",\"assetID\":\"36\"}}},\"alt\":\"Slide 2\",\"_title\":\"Slide 2\"}','  Slide 2 ','2015-07-07 19:05:00','1'),
	(38,7,7,1,14,1000,'{\"_id\":\"7\",\"inlink-panels\":[{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"29\",\"title\":\"Blog feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/blog-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"blog-feed-panel.jpg\",\"size\":11593,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"blog-feed-panel-thumb@2x.jpg\",\"size\":26596,\"mime\":\"\",\"assetID\":\"30\"}}},\"alt\":\"Blog feed\",\"inlink-link\":null,\"inlink-text\":\"On the Blog\",\"_title\":\"On the Blog\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"31\",\"title\":\"New instore panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/new-instore-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"new-instore-panel.jpg\",\"size\":10274,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"new-instore-panel-thumb@2x.jpg\",\"size\":24895,\"mime\":\"\",\"assetID\":\"32\"}}},\"alt\":\"New Instore\",\"inlink-link\":null,\"inlink-text\":\"New Instore\",\"_title\":\"New Instore\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"33\",\"title\":\"Bespoke panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/bespoke-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"bespoke-panel.jpg\",\"size\":5259,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bespoke-panel-thumb@2x.jpg\",\"size\":13761,\"mime\":\"\",\"assetID\":\"34\"}}},\"alt\":\"Bespoke\",\"inlink-link\":null,\"inlink-text\":\"Bespoke\",\"_title\":\"Bespoke\"},{\"external-link\":\"1\",\"inlink-panel-image\":{\"assetID\":\"27\",\"title\":\"Instagram feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/instagram-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"instagram-feed-panel.jpg\",\"size\":9430,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"instagram-feed-panel-thumb@2x.jpg\",\"size\":23070,\"mime\":\"\",\"assetID\":\"28\"}}},\"alt\":\"Instagram panel\",\"inlink-link\":\"https:\\/\\/instagram.com\\/thecrossshop\\/\",\"inlink-text\":\"Follow us on Instagram\",\"_title\":\"Follow us on Instagram\"}]}','   Blog feed  On the Blog   New Instore  New Instore   Bespoke  Bespoke 1  Instagram panel https://instagram.com/thecrossshop/ Follow us on Instagram ','2015-07-07 15:23:53','1'),
	(39,7,7,1,15,1000,'{\"_id\":\"7\",\"inlink-panels\":[{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"29\",\"title\":\"Blog feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/blog-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"blog-feed-panel.jpg\",\"size\":11593,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"blog-feed-panel-thumb@2x.jpg\",\"size\":26596,\"mime\":\"\",\"assetID\":\"30\"}}},\"alt\":\"Blog feed\",\"inlink-link\":null,\"inlink-text\":\"On the Blog\",\"_title\":\"On the Blog\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"31\",\"title\":\"New instore panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/new-instore-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"new-instore-panel.jpg\",\"size\":10274,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"new-instore-panel-thumb@2x.jpg\",\"size\":24895,\"mime\":\"\",\"assetID\":\"32\"}}},\"alt\":\"New Instore\",\"inlink-link\":null,\"inlink-text\":\"New Instore\",\"_title\":\"New Instore\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"33\",\"title\":\"Bespoke panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/bespoke-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"bespoke-panel.jpg\",\"size\":5259,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bespoke-panel-thumb@2x.jpg\",\"size\":13761,\"mime\":\"\",\"assetID\":\"34\"}}},\"alt\":\"Bespoke\",\"inlink-link\":null,\"inlink-text\":\"Bespoke\",\"_title\":\"Bespoke\"},{\"external-link\":\"1\",\"inlink-panel-image\":{\"assetID\":\"27\",\"title\":\"Instagram feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/instagram-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"instagram-feed-panel.jpg\",\"size\":9430,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"instagram-feed-panel-thumb@2x.jpg\",\"size\":23070,\"mime\":\"\",\"assetID\":\"28\"}}},\"alt\":\"Instagram panel\",\"inlink-link\":\"https:\\/\\/instagram.com\\/thecrossshop\\/\",\"inlink-text\":\"Follow us on Instagram\",\"_title\":\"Follow us on Instagram\"}]}','   Blog feed  On the Blog   New Instore  New Instore   Bespoke  Bespoke 1  Instagram panel https://instagram.com/thecrossshop/ Follow us on Instagram ','2015-07-07 15:25:01','1'),
	(40,7,7,1,16,1000,'{\"_id\":\"7\",\"inlink-panels\":[{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"29\",\"title\":\"Blog feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/blog-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"blog-feed-panel.jpg\",\"size\":11593,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"blog-feed-panel-thumb@2x.jpg\",\"size\":26596,\"mime\":\"\",\"assetID\":\"30\"}}},\"alt\":\"Blog feed\",\"inlink-link\":null,\"inlink-text\":\"On the Blog\",\"_title\":\"On the Blog\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"31\",\"title\":\"New instore panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/new-instore-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"new-instore-panel.jpg\",\"size\":10274,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"new-instore-panel-thumb@2x.jpg\",\"size\":24895,\"mime\":\"\",\"assetID\":\"32\"}}},\"alt\":\"New Instore\",\"inlink-link\":null,\"inlink-text\":\"New Instore\",\"_title\":\"New Instore\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"33\",\"title\":\"Bespoke panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/bespoke-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"bespoke-panel.jpg\",\"size\":5259,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bespoke-panel-thumb@2x.jpg\",\"size\":13761,\"mime\":\"\",\"assetID\":\"34\"}}},\"alt\":\"Bespoke\",\"inlink-link\":null,\"inlink-text\":\"Bespoke\",\"_title\":\"Bespoke\"},{\"external-link\":\"1\",\"inlink-panel-image\":{\"assetID\":\"27\",\"title\":\"Instagram feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/instagram-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"instagram-feed-panel.jpg\",\"size\":9430,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"instagram-feed-panel-thumb@2x.jpg\",\"size\":23070,\"mime\":\"\",\"assetID\":\"28\"}}},\"alt\":\"Instagram panel\",\"inlink-link\":\"https:\\/\\/instagram.com\\/thecrossshop\\/\",\"inlink-text\":\"Follow us on Instagram\",\"_title\":\"Follow us on Instagram\"}]}','   Blog feed  On the Blog   New Instore  New Instore   Bespoke  Bespoke 1  Instagram panel https://instagram.com/thecrossshop/ Follow us on Instagram ','2015-07-07 15:25:19','1'),
	(41,7,7,1,17,1000,'{\"_id\":\"7\",\"inlink-panels\":[{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"29\",\"title\":\"Blog feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/blog-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"blog-feed-panel.jpg\",\"size\":11593,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"blog-feed-panel-thumb@2x.jpg\",\"size\":26596,\"mime\":\"\",\"assetID\":\"30\"}}},\"alt\":\"Blog feed\",\"inlink-link\":null,\"inlink-text\":\"On the Blog\",\"_title\":\"On the Blog\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"31\",\"title\":\"New instore panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/new-instore-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"new-instore-panel.jpg\",\"size\":10274,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"new-instore-panel-thumb@2x.jpg\",\"size\":24895,\"mime\":\"\",\"assetID\":\"32\"}}},\"alt\":\"New Instore\",\"inlink-link\":null,\"inlink-text\":\"New Instore\",\"_title\":\"New Instore\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"33\",\"title\":\"Bespoke panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/bespoke-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"bespoke-panel.jpg\",\"size\":5259,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bespoke-panel-thumb@2x.jpg\",\"size\":13761,\"mime\":\"\",\"assetID\":\"34\"}}},\"alt\":\"Bespoke\",\"inlink-link\":null,\"inlink-text\":\"Bespoke\",\"_title\":\"Bespoke\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"27\",\"title\":\"Instagram feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/instagram-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"instagram-feed-panel.jpg\",\"size\":9430,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"instagram-feed-panel-thumb@2x.jpg\",\"size\":23070,\"mime\":\"\",\"assetID\":\"28\"}}},\"alt\":\"Instagram panel\",\"inlink-link\":\"https:\\/\\/instagram.com\\/thecrossshop\\/\",\"inlink-text\":\"Follow us on Instagram\",\"_title\":\"Follow us on Instagram\"}]}','   Blog feed  On the Blog   New Instore  New Instore   Bespoke  Bespoke   Instagram panel https://instagram.com/thecrossshop/ Follow us on Instagram ','2015-07-07 15:25:29','1'),
	(42,7,7,1,18,1000,'{\"_id\":\"7\",\"inlink-panels\":[{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"29\",\"title\":\"Blog feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/blog-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"blog-feed-panel.jpg\",\"size\":11593,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"blog-feed-panel-thumb@2x.jpg\",\"size\":26596,\"mime\":\"\",\"assetID\":\"30\"}}},\"alt\":\"Blog feed\",\"inlink-link\":null,\"inlink-text\":\"On the Blog\",\"_title\":\"On the Blog\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"31\",\"title\":\"New instore panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/new-instore-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"new-instore-panel.jpg\",\"size\":10274,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"new-instore-panel-thumb@2x.jpg\",\"size\":24895,\"mime\":\"\",\"assetID\":\"32\"}}},\"alt\":\"New Instore\",\"inlink-link\":null,\"inlink-text\":\"New Instore\",\"_title\":\"New Instore\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"33\",\"title\":\"Bespoke panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/bespoke-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"bespoke-panel.jpg\",\"size\":5259,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bespoke-panel-thumb@2x.jpg\",\"size\":13761,\"mime\":\"\",\"assetID\":\"34\"}}},\"alt\":\"Bespoke\",\"inlink-link\":null,\"inlink-text\":\"Bespoke\",\"_title\":\"Bespoke\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"27\",\"title\":\"Instagram feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/instagram-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"instagram-feed-panel.jpg\",\"size\":9430,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"instagram-feed-panel-thumb@2x.jpg\",\"size\":23070,\"mime\":\"\",\"assetID\":\"28\"}}},\"alt\":\"Instagram panel\",\"inlink-link\":\"https:\\/\\/instagram.com\\/thecrossshop\\/\",\"inlink-text\":\"Follow us on Instagram\",\"_title\":\"Follow us on Instagram\"}]}','   Blog feed  On the Blog   New Instore  New Instore   Bespoke  Bespoke   Instagram panel https://instagram.com/thecrossshop/ Follow us on Instagram ','2015-07-07 15:25:54','1'),
	(44,7,7,1,20,1000,'{\"_id\":\"7\",\"inlink-panels\":[{\"external-link\":\"1\",\"inlink-panel-image\":{\"assetID\":\"27\",\"title\":\"Instagram feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/instagram-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"instagram-feed-panel.jpg\",\"size\":9430,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"instagram-feed-panel-thumb@2x.jpg\",\"size\":23070,\"mime\":\"\",\"assetID\":\"28\"}}},\"alt\":\"Instagram panel\",\"inlink-link\":\"https:\\/\\/instagram.com\\/thecrossshop\\/\",\"inlink-text\":\"Follow us on Instagram\",\"_title\":\"Follow us on Instagram\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"29\",\"title\":\"Blog feed panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/blog-feed-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"blog-feed-panel.jpg\",\"size\":11593,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"blog-feed-panel-thumb@2x.jpg\",\"size\":26596,\"mime\":\"\",\"assetID\":\"30\"}}},\"alt\":\"Blog feed\",\"inlink-link\":null,\"inlink-text\":\"On the Blog\",\"_title\":\"On the Blog\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"31\",\"title\":\"New instore panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/new-instore-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"new-instore-panel.jpg\",\"size\":10274,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"new-instore-panel-thumb@2x.jpg\",\"size\":24895,\"mime\":\"\",\"assetID\":\"32\"}}},\"alt\":\"New Instore\",\"inlink-link\":null,\"inlink-text\":\"New Instore\",\"_title\":\"New Instore\"},{\"external-link\":null,\"inlink-panel-image\":{\"assetID\":\"33\",\"title\":\"Bespoke panel\",\"_default\":\"\\/perch\\/resources\\/inlink-images\\/bespoke-panel.jpg\",\"bucket\":\"inlink-images\",\"path\":\"bespoke-panel.jpg\",\"size\":5259,\"w\":219,\"h\":209,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"143\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bespoke-panel-thumb@2x.jpg\",\"size\":13761,\"mime\":\"\",\"assetID\":\"34\"}}},\"alt\":\"Bespoke\",\"inlink-link\":null,\"inlink-text\":\"Bespoke\",\"_title\":\"Bespoke\"}]}',' 1  Instagram panel https://instagram.com/thecrossshop/ Follow us on Instagram   Blog feed  On the Blog   New Instore  New Instore   Bespoke  Bespoke ','2015-07-07 15:27:42','1'),
	(46,10,10,1,0,1000,'','','2015-07-07 18:17:38',''),
	(56,13,10,1,5,1001,'','','2015-07-07 19:05:56',''),
	(57,12,10,1,6,1000,'{\"_id\":\"12\",\"slideshow-image\":{\"assetID\":\"39\",\"title\":\"Home hero 1\",\"_default\":\"\\/perch\\/resources\\/slideshow-images\\/home-hero-1.jpg\",\"bucket\":\"slideshow-images\",\"path\":\"home-hero-1.jpg\",\"size\":65387,\"w\":930,\"h\":399,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"64\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"home-hero-1-thumb@2x.jpg\",\"size\":15694,\"mime\":\"\",\"assetID\":\"40\"}}},\"alt\":null}','   ','2015-07-07 19:06:03','1'),
	(58,13,10,1,6,1001,'{\"_id\":\"13\",\"slideshow-image\":{\"assetID\":\"37\",\"title\":\"Home hero 2\",\"_default\":\"\\/perch\\/resources\\/slideshow-images\\/home-hero-2.jpg\",\"bucket\":\"slideshow-images\",\"path\":\"home-hero-2.jpg\",\"size\":62541,\"w\":930,\"h\":399,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"64\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"home-hero-2-thumb@2x.jpg\",\"size\":14627,\"mime\":\"\",\"assetID\":\"38\"}}},\"alt\":null}','   ','2015-07-07 19:06:03','1'),
	(59,14,11,2,0,1000,'','','2015-07-08 16:19:04',''),
	(60,14,11,2,1,1000,'{\"_id\":\"14\",\"page-title\":\"find us ]\",\"_title\":\"find us ] The Cross Shop, W11 4LR\",\"page-copy\":{\"raw\":\"Customers return to The Cross for the overall shopping \\u0003experience. Most of our regulars are on first name basis \\u0003and enjoy the friendly and welcoming atmosphere. Come \\u0003and visit us in the shop to get the real Cross experience. \\r\\n\\r\\nMonday to Saturday 10am - 6pm\\r\\n\\r\\n141 Portland Road  \\r\\nHolland Park  \\r\\nLondon   W11 4LR\\r\\n\\r\\nph: +44(0)20 7727 6760  \\r\\ninfo@thecrossshop.co.uk\\r\\n\\r\\nClosest tube station: Holland Park  \\r\\n[Find us on Google Maps](https:\\/\\/www.google.co.uk\\/maps?f=q&source=s_q&hl=en&geocode&q&sll=51.509991,-0.209931&sspn=0.004995,0.009602&g=141+Portland+Rd,+Kensington,+Greater+London+W11+4,+United+Kingdom&ie=UTF8&ll=51.510292,-0.210478&spn=0.00215,0.009602&z=17&iwloc=A&layer=c&cbll=51.510291,-0.210475&panoid=U2ssumJ8iIPxtvisG2FVaQ&cbp=11,272.93,,0,-3.93 \\\"Find us on Google Maps\\\")\",\"processed\":\"<p>Customers return to The Cross for the overall shopping \\u0003experience. Most of our regulars are on first name basis \\u0003and enjoy the friendly and welcoming atmosphere. Come \\u0003and visit us in the shop to get the real Cross experience. <\\/p>\\n<p>Monday to Saturday 10am - 6pm<\\/p>\\n<p>141 Portland Road<br \\/>\\nHolland Park<br \\/>\\nLondon   W11 4LR<\\/p>\\n<p>ph: +44(0)20 7727 6760<br \\/>\\ninfo@thecrossshop.co.uk<\\/p>\\n<p>Closest tube station: Holland Park<br \\/>\\n<a href=\\\"https:\\/\\/www.google.co.uk\\/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode&amp;q&amp;sll=51.509991,-0.209931&amp;sspn=0.004995,0.009602&amp;g=141+Portland+Rd,+Kensington,+Greater+London+W11+4,+United+Kingdom&amp;ie=UTF8&amp;ll=51.510292,-0.210478&amp;spn=0.00215,0.009602&amp;z=17&amp;iwloc=A&amp;layer=c&amp;cbll=51.510291,-0.210475&amp;panoid=U2ssumJ8iIPxtvisG2FVaQ&amp;cbp=11,272.93,,0,-3.93\\\" title=\\\"Find us on Google Maps\\\">Find us on Google Maps<\\/a><\\/p>\"},\"full-width-image\":{\"assetID\":\"41\",\"title\":\"Contact map\",\"_default\":\"\\/perch\\/resources\\/contact-map-2.jpg\",\"bucket\":\"default\",\"path\":\"contact-map-2.jpg\",\"size\":46961,\"w\":500,\"h\":430,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"129\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"contact-map-2-thumb@2x.jpg\",\"size\":16213,\"mime\":\"\",\"assetID\":\"42\"}}},\"alt\":\"The Cross Shop, W11 4LR\"}',' find us ] Customers return to The Cross for the overall shopping experience. Most of our regulars are on first name basis and enjoy the friendly and welcoming atmosphere. Come and visit us in the shop to get the real Cross experience. \nMonday to Saturday 10am - 6pm\n141 Portland Road\nHolland Park\nLondon   W11 4LR\nph: +44(0)20 7727 6760\ninfo@thecrossshop.co.uk\nClosest tube station: Holland Park\nFind us on Google Maps  The Cross Shop, W11 4LR ','2015-07-13 13:09:04','1'),
	(61,14,11,2,2,1000,'{\"_id\":\"14\",\"page-title\":\"find us ]\",\"_title\":\"find us ] The Cross Shop, W11 4LR\",\"page-copy\":{\"raw\":\"Customers return to The Cross for the overall shopping \\u0003experience. Most of our regulars are on first name basis \\u0003and enjoy the friendly and welcoming atmosphere. Come \\u0003and visit us in the shop to get the real Cross experience. \\r\\n\\r\\nMonday to Saturday 10am - 6pm\\r\\n\\r\\n141 Portland Road  \\r\\nHolland Park  \\r\\nLondon   W11 4LR\\r\\n\\r\\nph: +44(0)20 7727 6760  \\r\\ninfo@thecrossshop.co.uk\\r\\n\\r\\nClosest tube station: Holland Park  \\r\\n[Find us on Google Maps](https:\\/\\/www.google.co.uk\\/maps?f=q&source=s_q&hl=en&geocode&q&sll=51.509991,-0.209931&sspn=0.004995,0.009602&g=141+Portland+Rd,+Kensington,+Greater+London+W11+4,+United+Kingdom&ie=UTF8&ll=51.510292,-0.210478&spn=0.00215,0.009602&z=17&iwloc=A&layer=c&cbll=51.510291,-0.210475&panoid=U2ssumJ8iIPxtvisG2FVaQ&cbp=11,272.93,,0,-3.93 \\\"Find us on Google Maps\\\")\",\"processed\":\"<p>Customers return to The Cross for the overall shopping \\u0003experience. Most of our regulars are on first name basis \\u0003and enjoy the friendly and welcoming atmosphere. Come \\u0003and visit us in the shop to get the real Cross experience. <\\/p>\\n<p>Monday to Saturday 10am - 6pm<\\/p>\\n<p>141 Portland Road<br \\/>\\nHolland Park<br \\/>\\nLondon   W11 4LR<\\/p>\\n<p>ph: +44(0)20 7727 6760<br \\/>\\ninfo@thecrossshop.co.uk<\\/p>\\n<p>Closest tube station: Holland Park<br \\/>\\n<a href=\\\"https:\\/\\/www.google.co.uk\\/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode&amp;q&amp;sll=51.509991,-0.209931&amp;sspn=0.004995,0.009602&amp;g=141+Portland+Rd,+Kensington,+Greater+London+W11+4,+United+Kingdom&amp;ie=UTF8&amp;ll=51.510292,-0.210478&amp;spn=0.00215,0.009602&amp;z=17&amp;iwloc=A&amp;layer=c&amp;cbll=51.510291,-0.210475&amp;panoid=U2ssumJ8iIPxtvisG2FVaQ&amp;cbp=11,272.93,,0,-3.93\\\" title=\\\"Find us on Google Maps\\\">Find us on Google Maps<\\/a><\\/p>\"},\"full-width-image\":null,\"alt\":\"The Cross Shop, W11 4LR\"}',' find us ] Customers return to The Cross for the overall shopping experience. Most of our regulars are on first name basis and enjoy the friendly and welcoming atmosphere. Come and visit us in the shop to get the real Cross experience. \nMonday to Saturday 10am - 6pm\n141 Portland Road\nHolland Park\nLondon   W11 4LR\nph: +44(0)20 7727 6760\ninfo@thecrossshop.co.uk\nClosest tube station: Holland Park\nFind us on Google Maps  The Cross Shop, W11 4LR ','2015-07-13 13:10:45','1'),
	(62,14,11,2,3,1000,'{\"_id\":\"14\",\"page-title\":\"find us ]\",\"_title\":\"find us ] The Cross Shop, W11 4LR\",\"page-copy\":{\"raw\":\"Customers return to The Cross for the overall shopping \\u0003experience. Most of our regulars are on first name basis \\u0003and enjoy the friendly and welcoming atmosphere. Come \\u0003and visit us in the shop to get the real Cross experience. \\r\\n\\r\\nMonday to Saturday 10am - 6pm\\r\\n\\r\\n141 Portland Road  \\r\\nHolland Park  \\r\\nLondon   W11 4LR\\r\\n\\r\\nph: +44(0)20 7727 6760  \\r\\ninfo@thecrossshop.co.uk\\r\\n\\r\\nClosest tube station: Holland Park  \\r\\n[Find us on Google Maps](https:\\/\\/www.google.co.uk\\/maps?f=q&source=s_q&hl=en&geocode&q&sll=51.509991,-0.209931&sspn=0.004995,0.009602&g=141+Portland+Rd,+Kensington,+Greater+London+W11+4,+United+Kingdom&ie=UTF8&ll=51.510292,-0.210478&spn=0.00215,0.009602&z=17&iwloc=A&layer=c&cbll=51.510291,-0.210475&panoid=U2ssumJ8iIPxtvisG2FVaQ&cbp=11,272.93,,0,-3.93 \\\"Find us on Google Maps\\\")\",\"processed\":\"<p>Customers return to The Cross for the overall shopping \\u0003experience. Most of our regulars are on first name basis \\u0003and enjoy the friendly and welcoming atmosphere. Come \\u0003and visit us in the shop to get the real Cross experience. <\\/p>\\n<p>Monday to Saturday 10am - 6pm<\\/p>\\n<p>141 Portland Road<br \\/>\\nHolland Park<br \\/>\\nLondon   W11 4LR<\\/p>\\n<p>ph: +44(0)20 7727 6760<br \\/>\\ninfo@thecrossshop.co.uk<\\/p>\\n<p>Closest tube station: Holland Park<br \\/>\\n<a href=\\\"https:\\/\\/www.google.co.uk\\/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode&amp;q&amp;sll=51.509991,-0.209931&amp;sspn=0.004995,0.009602&amp;g=141+Portland+Rd,+Kensington,+Greater+London+W11+4,+United+Kingdom&amp;ie=UTF8&amp;ll=51.510292,-0.210478&amp;spn=0.00215,0.009602&amp;z=17&amp;iwloc=A&amp;layer=c&amp;cbll=51.510291,-0.210475&amp;panoid=U2ssumJ8iIPxtvisG2FVaQ&amp;cbp=11,272.93,,0,-3.93\\\" title=\\\"Find us on Google Maps\\\">Find us on Google Maps<\\/a><\\/p>\"},\"full-width-image\":{\"assetID\":\"43\",\"title\":\"Contact map\",\"_default\":\"\\/perch\\/resources\\/contact-map-3.jpg\",\"bucket\":\"default\",\"path\":\"contact-map-3.jpg\",\"size\":46248,\"w\":465,\"h\":398,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"128\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"contact-map-3-thumb@2x.jpg\",\"size\":17618,\"mime\":\"\",\"assetID\":\"44\"}}},\"alt\":\"The Cross Shop, W11 4LR\"}',' find us ] Customers return to The Cross for the overall shopping experience. Most of our regulars are on first name basis and enjoy the friendly and welcoming atmosphere. Come and visit us in the shop to get the real Cross experience. \nMonday to Saturday 10am - 6pm\n141 Portland Road\nHolland Park\nLondon   W11 4LR\nph: +44(0)20 7727 6760\ninfo@thecrossshop.co.uk\nClosest tube station: Holland Park\nFind us on Google Maps  The Cross Shop, W11 4LR ','2015-07-13 13:11:54','1');

/*!40000 ALTER TABLE `perch2_content_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_content_regions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_content_regions`;

CREATE TABLE `perch2_content_regions` (
  `regionID` int(10) NOT NULL AUTO_INCREMENT,
  `pageID` int(10) unsigned NOT NULL,
  `regionKey` varchar(255) NOT NULL DEFAULT '',
  `regionPage` varchar(255) NOT NULL DEFAULT '',
  `regionHTML` longtext NOT NULL,
  `regionNew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `regionOrder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `regionTemplate` varchar(255) NOT NULL DEFAULT '',
  `regionMultiple` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `regionOptions` text NOT NULL,
  `regionSearchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `regionRev` int(10) unsigned NOT NULL DEFAULT '0',
  `regionLatestRev` int(10) unsigned NOT NULL DEFAULT '0',
  `regionEditRoles` varchar(255) NOT NULL DEFAULT '*',
  `regionUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`regionID`),
  KEY `idx_key` (`regionKey`),
  KEY `idx_path` (`regionPage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_content_regions` WRITE;
/*!40000 ALTER TABLE `perch2_content_regions` DISABLE KEYS */;

INSERT INTO `perch2_content_regions` (`regionID`, `pageID`, `regionKey`, `regionPage`, `regionHTML`, `regionNew`, `regionOrder`, `regionTemplate`, `regionMultiple`, `regionOptions`, `regionSearchable`, `regionRev`, `regionLatestRev`, `regionEditRoles`, `regionUpdated`)
VALUES
	(1,1,'Instagram Account','*','',0,0,'text.html',0,'{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false}',1,1,1,'*','2015-07-01 14:35:30'),
	(2,1,'Facebook Account','*','',0,1,'text.html',0,'{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false}',1,1,1,'*','2015-07-06 23:21:07'),
	(3,1,'Twitter Account','*','',0,2,'text.html',0,'{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false}',1,2,2,'*','2015-07-06 23:21:44'),
	(4,1,'Pinterest Account','*','',0,3,'text.html',0,'{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false}',1,1,1,'*','2015-07-06 23:22:31'),
	(5,1,'Footer Logos','*','\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/footer-logos/bazaar-logo-2.png\" alt=\"\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/footer-logos/telegraph-logo-1.png\" alt=\"\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/footer-logos/conde-nast-logo-1.png\" alt=\"\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/footer-logos/elle-logo-1.png\" alt=\"\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/footer-logos/style-logo-1.png\" alt=\"\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/footer-logos/vogue-logo-1.png\" alt=\"\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n',0,6,'footer_logos.html',0,'{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false}',1,7,7,'*','2015-07-06 23:32:21'),
	(7,1,'Home Inlink Panels','/index.php','\n\n<div class=\"row inset-white spacer\">\n	\n\n\n	\n	\n		<div class=\"three columns inlink-panel\">\n\n			\n		  \n	  	<img class=\"u-full-width\" src=\"/perch/resources/inlink-images/instagram-feed-panel.jpg\" alt=\"Instagram panel\" />\n		\n		 	<a href=\"https://instagram.com/thecrossshop/\" target=\"_blank\" >Follow us on Instagram</a>\n		  \n		</div>\n		\n	\n	\n		<div class=\"three columns inlink-panel\">\n\n			\n		  \n	  	<img class=\"u-full-width\" src=\"/perch/resources/inlink-images/blog-feed-panel.jpg\" alt=\"Blog feed\" />\n		\n		 	<a href=\"\" >On the Blog</a>\n		  \n		</div>\n		\n	\n	\n		<div class=\"three columns inlink-panel\">\n\n			\n		  \n	  	<img class=\"u-full-width\" src=\"/perch/resources/inlink-images/new-instore-panel.jpg\" alt=\"New Instore\" />\n		\n		 	<a href=\"\" >New Instore</a>\n		  \n		</div>\n		\n	\n	\n		<div class=\"three columns inlink-panel\">\n\n			\n		  \n	  	<img class=\"u-full-width\" src=\"/perch/resources/inlink-images/bespoke-panel.jpg\" alt=\"Bespoke\" />\n		\n		 	<a href=\"\" >Bespoke</a>\n		  \n		</div>\n		\n	\n\n\n\n</div>\n\n',0,5,'inlink_panels.html',0,'{\"edit_mode\":\"singlepage\"}',1,21,21,'*','2015-07-07 18:53:57'),
	(12,3,'About Us Page Title','/about-us.php','<!-- Undefined content: About Us Page Title -->',1,4,'',0,'',1,0,0,'*','2015-07-13 12:58:02'),
	(9,2,'Contact Inlink Panels','/contact.php','\n\n<div class=\"row inset-white spacer\">\n	\n\n\n	\n	\n		<div class=\"three columns inlink-panel\">\n		  \n	  	<img class=\"u-full-width\" src=\"/perch/resources/inlink-images/instagram-feed-panel.jpg\" alt=\"\" />\n		\n		 	<a href=\"\">Follow us on Instagram</a>\n		  \n		</div>\n		\n	\n	\n		<div class=\"three columns inlink-panel\">\n		  \n	  	<img class=\"u-full-width\" src=\"/perch/resources/inlink-images/blog-feed-panel.jpg\" alt=\"\" />\n		\n		 	<a href=\"\">On the Blog</a>\n		  \n		</div>\n		\n	\n	\n		<div class=\"three columns inlink-panel\">\n		  \n	  	<img class=\"u-full-width\" src=\"/perch/resources/inlink-images/new-instore-panel.jpg\" alt=\"\" />\n		\n		 	<a href=\"\">New Instore</a>\n		  \n		</div>\n		\n	\n	\n		<div class=\"three columns inlink-panel\">\n		  \n	  	<img class=\"u-full-width\" src=\"/perch/resources/inlink-images/bespoke-panel.jpg\" alt=\"\" />\n		\n		 	<a href=\"\">Bespoke</a>\n		  \n		</div>\n		\n	\n\n\n\n</div>\n\n\n\n\n',0,5,'inlink_panels.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-07-06 23:42:52'),
	(10,1,'Home Hero Slideshow','/index.php','\n\n<div class=\"row\">\n\n  <div class=\"twelve columns inset-white\">\n\n		<ul class=\"rslides\" id=\"slider1\">\n\n\n			<li><img class=\"u-full-width\" src=\"/perch/resources/slideshow-images/home-hero-1.jpg\" alt=\"\" /></li>\n\n\n\n\n\n\n			<li><img class=\"u-full-width\" src=\"/perch/resources/slideshow-images/home-hero-2.jpg\" alt=\"\" /></li>\n\n\n		</ul>\n\n	</div>\n\n</div>\n\n\n\n\n',0,5,'responsive_slideshow.html',1,'{\"edit_mode\":\"singlepage\"}',1,6,6,'*','2015-07-07 19:06:03'),
	(11,2,'Contact Main Copy','/contact.php','<div class=\"row\">\n\n  <div class=\"twelve columns inset-white\">\n	  \n	  <div class=\"six columns\">\n		  \n		  <h1 class=\"handwritten\">find us ]</h1>\n		  \n		  <p>Customers return to The Cross for the overall shopping experience. Most of our regulars are on first name basis and enjoy the friendly and welcoming atmosphere. Come and visit us in the shop to get the real Cross experience. </p>\n<p>Monday to Saturday 10am - 6pm</p>\n<p>141 Portland Road<br />\nHolland Park<br />\nLondon   W11 4LR</p>\n<p>ph: +44(0)20 7727 6760<br />\ninfo@thecrossshop.co.uk</p>\n<p>Closest tube station: Holland Park<br />\n<a href=\"https://www.google.co.uk/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode&amp;q&amp;sll=51.509991,-0.209931&amp;sspn=0.004995,0.009602&amp;g=141+Portland+Rd,+Kensington,+Greater+London+W11+4,+United+Kingdom&amp;ie=UTF8&amp;ll=51.510292,-0.210478&amp;spn=0.00215,0.009602&amp;z=17&amp;iwloc=A&amp;layer=c&amp;cbll=51.510291,-0.210475&amp;panoid=U2ssumJ8iIPxtvisG2FVaQ&amp;cbp=11,272.93,,0,-3.93\" title=\"Find us on Google Maps\">Find us on Google Maps</a></p>\n		  \n	  </div>\n	  \n	  <div class=\"six columns\">	  \n    \n    	<img class=\"u-full-width\" src=\"/perch/resources/contact-map-3.jpg\" alt=\"The Cross Shop, W11 4LR\" />\n    	\n	  </div>\n	\n	</div>\n\n</div>\n\n',0,4,'two_col_copy_and_responsive_image.html',0,'{\"edit_mode\":\"singlepage\"}',1,3,3,'*','2015-07-13 13:11:54');

/*!40000 ALTER TABLE `perch2_content_regions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_navigation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_navigation`;

CREATE TABLE `perch2_navigation` (
  `groupID` int(10) NOT NULL AUTO_INCREMENT,
  `groupTitle` varchar(255) NOT NULL DEFAULT '',
  `groupSlug` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_navigation_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_navigation_pages`;

CREATE TABLE `perch2_navigation_pages` (
  `navpageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pageID` int(10) unsigned NOT NULL DEFAULT '0',
  `groupID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageOrder` int(10) unsigned NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) unsigned NOT NULL,
  `pageTreePosition` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`navpageID`),
  KEY `idx_group` (`groupID`),
  KEY `idx_page_group` (`pageID`,`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_page_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_page_templates`;

CREATE TABLE `perch2_page_templates` (
  `templateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `templateTitle` varchar(255) NOT NULL DEFAULT '',
  `templatePath` varchar(255) NOT NULL DEFAULT '',
  `optionsPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `templateReference` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `templateNavGroups` varchar(255) DEFAULT '',
  PRIMARY KEY (`templateID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_pages`;

CREATE TABLE `perch2_pages` (
  `pageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pagePath` varchar(255) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `pageNavText` varchar(255) NOT NULL DEFAULT '',
  `pageNew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pageOrder` int(10) unsigned NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `pageSortPath` varchar(255) NOT NULL DEFAULT '',
  `pageTreePosition` varchar(64) NOT NULL DEFAULT '',
  `pageSubpageRoles` varchar(255) NOT NULL DEFAULT '',
  `pageSubpagePath` varchar(255) NOT NULL DEFAULT '',
  `pageHidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pageNavOnly` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pageAccessTags` varchar(255) NOT NULL DEFAULT '',
  `pageCreatorID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageModified` datetime NOT NULL DEFAULT '2014-01-01 00:00:00',
  `pageAttributes` text NOT NULL,
  `pageAttributeTemplate` varchar(255) NOT NULL DEFAULT 'default.html',
  `pageTemplate` char(255) NOT NULL DEFAULT '',
  `templateID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageSubpageTemplates` varchar(255) NOT NULL DEFAULT '',
  `pageCollections` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pageID`),
  KEY `idx_parent` (`pageParentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_pages` WRITE;
/*!40000 ALTER TABLE `perch2_pages` DISABLE KEYS */;

INSERT INTO `perch2_pages` (`pageID`, `pageParentID`, `pagePath`, `pageTitle`, `pageNavText`, `pageNew`, `pageOrder`, `pageDepth`, `pageSortPath`, `pageTreePosition`, `pageSubpageRoles`, `pageSubpagePath`, `pageHidden`, `pageNavOnly`, `pageAccessTags`, `pageCreatorID`, `pageModified`, `pageAttributes`, `pageAttributeTemplate`, `pageTemplate`, `templateID`, `pageSubpageTemplates`, `pageCollections`)
VALUES
	(1,0,'/index.php','Home page','Home page',0,1,1,'','000-001','','',0,0,'',0,'2015-07-07 18:06:03','','default.html','',0,'',''),
	(2,0,'/contact.php','Contact','Contact',0,2,1,'/contact','000-002','','',0,0,'',0,'2015-07-13 12:11:54','','default.html','',0,'',''),
	(3,0,'/about-us.php','About us','About us',0,3,1,'/about-us','000-003','','',0,0,'',0,'2015-07-13 11:58:02','','default.html','',0,'','');

/*!40000 ALTER TABLE `perch2_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_resource_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resource_tags`;

CREATE TABLE `perch2_resource_tags` (
  `tagID` int(10) NOT NULL AUTO_INCREMENT,
  `tagTitle` varchar(255) NOT NULL DEFAULT '',
  `tagSlug` varchar(255) NOT NULL DEFAULT '',
  `tagCount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `perch2_resource_tags` WRITE;
/*!40000 ALTER TABLE `perch2_resource_tags` DISABLE KEYS */;

INSERT INTO `perch2_resource_tags` (`tagID`, `tagTitle`, `tagSlug`, `tagCount`)
VALUES
	(1,'map','map',1),
	(2,'contact-us','contact-us',1);

/*!40000 ALTER TABLE `perch2_resource_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resources`;

CREATE TABLE `perch2_resources` (
  `resourceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resourceApp` char(32) NOT NULL DEFAULT 'content',
  `resourceBucket` char(16) NOT NULL DEFAULT 'default',
  `resourceFile` char(255) NOT NULL DEFAULT '',
  `resourceKey` enum('orig','thumb') DEFAULT NULL,
  `resourceParentID` int(10) NOT NULL DEFAULT '0',
  `resourceType` char(4) NOT NULL DEFAULT '',
  `resourceCreated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `resourceUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `resourceAWOL` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `resourceTitle` char(255) DEFAULT NULL,
  `resourceFileSize` int(10) unsigned DEFAULT NULL,
  `resourceWidth` int(10) unsigned DEFAULT NULL,
  `resourceHeight` int(10) unsigned DEFAULT NULL,
  `resourceCrop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `resourceDensity` float NOT NULL DEFAULT '1',
  `resourceTargetWidth` int(10) unsigned DEFAULT NULL,
  `resourceTargetHeight` int(10) unsigned DEFAULT NULL,
  `resourceMimeType` char(64) DEFAULT NULL,
  `resourceInLibrary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`resourceID`),
  UNIQUE KEY `idx_file` (`resourceBucket`,`resourceFile`),
  KEY `idx_app` (`resourceApp`),
  KEY `idx_key` (`resourceKey`),
  KEY `idx_type` (`resourceType`),
  KEY `idx_awol` (`resourceAWOL`),
  KEY `idx_library` (`resourceInLibrary`),
  FULLTEXT KEY `idx_search` (`resourceTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_resources` WRITE;
/*!40000 ALTER TABLE `perch2_resources` DISABLE KEYS */;

INSERT INTO `perch2_resources` (`resourceID`, `resourceApp`, `resourceBucket`, `resourceFile`, `resourceKey`, `resourceParentID`, `resourceType`, `resourceCreated`, `resourceUpdated`, `resourceAWOL`, `resourceTitle`, `resourceFileSize`, `resourceWidth`, `resourceHeight`, `resourceCrop`, `resourceDensity`, `resourceTargetWidth`, `resourceTargetHeight`, `resourceMimeType`, `resourceInLibrary`)
VALUES
	(13,'content','footer-logos','bazaar-logo-2.png','orig',0,'png','2015-07-06 22:24:08','2015-07-06 23:24:08',0,'Bazaar logo',1675,111,29,0,1,NULL,NULL,'image/png',0),
	(2,'content','default','vogue-logo-thumb@2x.png','thumb',1,'png','2015-07-01 20:22:09','2015-07-01 21:22:09',0,'Vogue logo',2259,101,25,0,2,150,150,'',0),
	(14,'content','footer-logos','bazaar-logo-2-thumb@2x.png','thumb',13,'png','2015-07-06 22:24:08','2015-07-06 23:24:08',0,'Bazaar logo',1675,111,29,0,2,150,150,'',0),
	(4,'content','default','bazaar-logo-thumb@2x.png','thumb',3,'png','2015-07-01 20:23:51','2015-07-01 21:23:51',0,'Bazaar logo',1675,111,29,0,2,150,150,'',0),
	(15,'content','footer-logos','telegraph-logo-1.png','orig',0,'png','2015-07-06 22:24:54','2015-07-06 23:24:54',0,'Telegraph logo',2833,163,27,0,1,NULL,NULL,'image/png',0),
	(6,'content','default','conde-nast-logo-thumb@2x.png','thumb',5,'png','2015-07-01 20:23:51','2015-07-01 21:23:51',0,'Conde nast logo',1795,82,32,0,2,150,150,'',0),
	(16,'content','footer-logos','telegraph-logo-1-thumb@2x.png','thumb',15,'png','2015-07-06 22:24:54','2015-07-06 23:24:54',0,'Telegraph logo',8533,150,24,0,2,150,150,'image/png',0),
	(8,'content','default','elle-logo-thumb@2x.png','thumb',7,'png','2015-07-01 20:23:52','2015-07-01 21:23:52',0,'Elle logo',662,86,32,0,2,150,150,'',0),
	(17,'content','footer-logos','conde-nast-logo-1.png','orig',0,'png','2015-07-06 22:25:08','2015-07-06 23:25:08',0,'Conde nast logo',1795,82,32,0,1,NULL,NULL,'image/png',0),
	(10,'content','default','style-logo-thumb@2x.png','thumb',9,'png','2015-07-01 20:23:52','2015-07-01 21:23:52',0,'Style logo',1404,101,32,0,2,150,150,'',0),
	(18,'content','footer-logos','conde-nast-logo-1-thumb@2x.png','thumb',17,'png','2015-07-06 22:25:08','2015-07-06 23:25:08',0,'Conde nast logo',1795,82,32,0,2,150,150,'',0),
	(12,'content','default','telegraph-logo-thumb@2x.png','thumb',11,'png','2015-07-01 20:23:52','2015-07-01 21:23:52',0,'Telegraph logo',8533,150,24,0,2,150,150,'image/png',0),
	(19,'content','footer-logos','elle-logo-1.png','orig',0,'png','2015-07-06 22:25:22','2015-07-06 23:25:22',0,'Elle logo',662,86,32,0,1,NULL,NULL,'image/png',0),
	(20,'content','footer-logos','elle-logo-1-thumb@2x.png','thumb',19,'png','2015-07-06 22:25:22','2015-07-06 23:25:22',0,'Elle logo',662,86,32,0,2,150,150,'',0),
	(21,'content','footer-logos','style-logo-1.png','orig',0,'png','2015-07-06 22:25:40','2015-07-06 23:25:40',0,'Style logo',1404,101,32,0,1,NULL,NULL,'image/png',0),
	(22,'content','footer-logos','style-logo-1-thumb@2x.png','thumb',21,'png','2015-07-06 22:25:40','2015-07-06 23:25:40',0,'Style logo',1404,101,32,0,2,150,150,'',0),
	(23,'content','footer-logos','vogue-logo-1.png','orig',0,'png','2015-07-06 22:25:53','2015-07-06 23:25:53',0,'Vogue logo',2259,101,25,0,1,NULL,NULL,'image/png',0),
	(24,'content','footer-logos','vogue-logo-1-thumb@2x.png','thumb',23,'png','2015-07-06 22:25:53','2015-07-06 23:25:53',0,'Vogue logo',2259,101,25,0,2,150,150,'',0),
	(43,'content','default','contact-map-3.jpg','orig',0,'jpg','2015-07-13 12:11:22','2015-07-13 13:11:22',0,'Contact map',46248,465,398,0,1,NULL,NULL,'image/jpeg',0),
	(26,'content','default','home-hero-1-1-thumb@2x.jpg','thumb',25,'jpg','2015-07-06 22:28:08','2015-07-06 23:28:08',0,'Home hero 1',15694,150,64,0,2,150,150,'image/jpeg',0),
	(27,'content','inlink-images','instagram-feed-panel.jpg','orig',0,'jpg','2015-07-06 22:33:28','2015-07-06 23:33:28',0,'Instagram feed panel',9430,219,209,0,1,NULL,NULL,'image/jpeg',0),
	(28,'content','inlink-images','instagram-feed-panel-thumb@2x.jpg','thumb',27,'jpg','2015-07-06 22:33:28','2015-07-06 23:33:28',0,'Instagram feed panel',23070,150,143,0,2,150,150,'image/jpeg',0),
	(29,'content','inlink-images','blog-feed-panel.jpg','orig',0,'jpg','2015-07-06 22:33:43','2015-07-06 23:33:43',0,'Blog feed panel',11593,219,209,0,1,NULL,NULL,'image/jpeg',0),
	(30,'content','inlink-images','blog-feed-panel-thumb@2x.jpg','thumb',29,'jpg','2015-07-06 22:33:43','2015-07-06 23:33:43',0,'Blog feed panel',26596,150,143,0,2,150,150,'image/jpeg',0),
	(31,'content','inlink-images','new-instore-panel.jpg','orig',0,'jpg','2015-07-06 22:34:19','2015-07-06 23:34:19',0,'New instore panel',10274,219,209,0,1,NULL,NULL,'image/jpeg',0),
	(32,'content','inlink-images','new-instore-panel-thumb@2x.jpg','thumb',31,'jpg','2015-07-06 22:34:19','2015-07-06 23:34:19',0,'New instore panel',24895,150,143,0,2,150,150,'image/jpeg',0),
	(33,'content','inlink-images','bespoke-panel.jpg','orig',0,'jpg','2015-07-06 22:34:53','2015-07-06 23:34:53',0,'Bespoke panel',5259,219,209,0,1,NULL,NULL,'image/jpeg',0),
	(34,'content','inlink-images','bespoke-panel-thumb@2x.jpg','thumb',33,'jpg','2015-07-06 22:34:53','2015-07-06 23:34:53',0,'Bespoke panel',13761,150,143,0,2,150,150,'image/jpeg',0),
	(44,'content','default','contact-map-3-thumb@2x.jpg','thumb',43,'jpg','2015-07-13 12:11:22','2015-07-13 13:11:22',0,'Contact map',17618,150,128,0,2,150,150,'image/jpeg',0),
	(36,'content','default','contact-hero-thumb@2x.jpg','thumb',35,'jpg','2015-07-06 22:41:41','2015-07-06 23:41:41',0,'Contact hero',9575,150,67,0,2,150,150,'image/jpeg',0),
	(37,'content','slideshow-images','home-hero-2.jpg','orig',0,'jpg','2015-07-07 18:05:49','2015-07-07 19:05:49',0,'Home hero 2',62541,930,399,0,1,NULL,NULL,'image/jpeg',0),
	(38,'content','slideshow-images','home-hero-2-thumb@2x.jpg','thumb',37,'jpg','2015-07-07 18:05:49','2015-07-07 19:05:49',0,'Home hero 2',14627,150,64,0,2,150,150,'image/jpeg',0),
	(39,'content','slideshow-images','home-hero-1.jpg','orig',0,'jpg','2015-07-07 18:05:49','2015-07-07 19:05:49',0,'Home hero 1',65387,930,399,0,1,NULL,NULL,'image/jpeg',0),
	(40,'content','slideshow-images','home-hero-1-thumb@2x.jpg','thumb',39,'jpg','2015-07-07 18:05:49','2015-07-07 19:05:49',0,'Home hero 1',15694,150,64,0,2,150,150,'image/jpeg',0),
	(42,'content','default','contact-map-2-thumb@2x.jpg','thumb',41,'jpg','2015-07-13 12:06:41','2015-07-13 13:06:41',0,'Contact map',16213,150,129,0,2,150,150,'image/jpeg',0);

/*!40000 ALTER TABLE `perch2_resources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_resources_to_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resources_to_tags`;

CREATE TABLE `perch2_resources_to_tags` (
  `resourceID` int(10) NOT NULL DEFAULT '0',
  `tagID` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`resourceID`,`tagID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

LOCK TABLES `perch2_resources_to_tags` WRITE;
/*!40000 ALTER TABLE `perch2_resources_to_tags` DISABLE KEYS */;

INSERT INTO `perch2_resources_to_tags` (`resourceID`, `tagID`)
VALUES
	(43,1),
	(43,2);

/*!40000 ALTER TABLE `perch2_resources_to_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_settings`;

CREATE TABLE `perch2_settings` (
  `settingID` varchar(60) NOT NULL DEFAULT '',
  `userID` int(10) unsigned NOT NULL DEFAULT '0',
  `settingValue` text NOT NULL,
  PRIMARY KEY (`settingID`,`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_settings` WRITE;
/*!40000 ALTER TABLE `perch2_settings` DISABLE KEYS */;

INSERT INTO `perch2_settings` (`settingID`, `userID`, `settingValue`)
VALUES
	('headerColour',0,'#ffffff'),
	('content_singlePageEdit',0,'1'),
	('helpURL',0,''),
	('siteURL',0,'/'),
	('hideBranding',0,'0'),
	('content_collapseList',0,'1'),
	('lang',0,'en-gb'),
	('update_2.8.8',0,'done'),
	('latest_version',0,'2.8.8'),
	('on_sale_version',0,'2.8.8');

/*!40000 ALTER TABLE `perch2_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_user_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_privileges`;

CREATE TABLE `perch2_user_privileges` (
  `privID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `privKey` varchar(255) NOT NULL DEFAULT '',
  `privTitle` varchar(255) NOT NULL DEFAULT '',
  `privOrder` int(10) unsigned NOT NULL DEFAULT '99',
  PRIMARY KEY (`privID`),
  UNIQUE KEY `idx_key` (`privKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_user_privileges` WRITE;
/*!40000 ALTER TABLE `perch2_user_privileges` DISABLE KEYS */;

INSERT INTO `perch2_user_privileges` (`privID`, `privKey`, `privTitle`, `privOrder`)
VALUES
	(1,'perch.login','Log in',1),
	(2,'perch.settings','Change settings',2),
	(3,'perch.users.manage','Manage users',3),
	(4,'perch.updatenotices','View update notices',4),
	(5,'content.regions.delete','Delete regions',1),
	(6,'content.regions.options','Edit region options',2),
	(7,'content.pages.edit','Edit page details',1),
	(8,'content.pages.reorder','Reorder pages',2),
	(9,'content.pages.create','Add new pages',3),
	(10,'content.pages.configure','Configure page settings',5),
	(11,'content.pages.delete','Delete pages',4),
	(12,'content.templates.delete','Delete master pages',6),
	(13,'content.navgroups.configure','Configure navigation groups',7),
	(14,'content.navgroups.create','Create navigation groups',8),
	(15,'content.navgroups.delete','Delete navigation groups',9),
	(16,'content.pages.create.toplevel','Add new top-level pages',3),
	(17,'content.pages.delete.own','Delete pages they created themselves',4),
	(18,'content.templates.configure','Configure master pages',6),
	(19,'content.pages.attributes','Edit page titles and attributes',6),
	(20,'assets.create','Upload assets',2);

/*!40000 ALTER TABLE `perch2_user_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_user_role_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_role_privileges`;

CREATE TABLE `perch2_user_role_privileges` (
  `roleID` int(10) unsigned NOT NULL,
  `privID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`roleID`,`privID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_user_role_privileges` WRITE;
/*!40000 ALTER TABLE `perch2_user_role_privileges` DISABLE KEYS */;

INSERT INTO `perch2_user_role_privileges` (`roleID`, `privID`)
VALUES
	(1,1),
	(1,7),
	(1,8),
	(1,25),
	(2,1),
	(2,2),
	(2,3),
	(2,4),
	(2,5),
	(2,6),
	(2,7),
	(2,8),
	(2,9),
	(2,10),
	(2,11),
	(2,12);

/*!40000 ALTER TABLE `perch2_user_role_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_roles`;

CREATE TABLE `perch2_user_roles` (
  `roleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleTitle` varchar(255) NOT NULL DEFAULT '',
  `roleSlug` varchar(255) NOT NULL DEFAULT '',
  `roleMasterAdmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_user_roles` WRITE;
/*!40000 ALTER TABLE `perch2_user_roles` DISABLE KEYS */;

INSERT INTO `perch2_user_roles` (`roleID`, `roleTitle`, `roleSlug`, `roleMasterAdmin`)
VALUES
	(1,'Editor','editor',0),
	(2,'Admin','admin',1);

/*!40000 ALTER TABLE `perch2_user_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_users`;

CREATE TABLE `perch2_users` (
  `userID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userUsername` varchar(255) NOT NULL DEFAULT '',
  `userPassword` varchar(255) NOT NULL DEFAULT '',
  `userCreated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userLastLogin` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userGivenName` varchar(255) NOT NULL DEFAULT '',
  `userFamilyName` varchar(255) NOT NULL DEFAULT '',
  `userEmail` varchar(255) NOT NULL DEFAULT '',
  `userEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userHash` char(32) NOT NULL DEFAULT '',
  `roleID` int(10) unsigned NOT NULL DEFAULT '1',
  `userMasterAdmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`),
  KEY `idx_enabled` (`userEnabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_users` WRITE;
/*!40000 ALTER TABLE `perch2_users` DISABLE KEYS */;

INSERT INTO `perch2_users` (`userID`, `userUsername`, `userPassword`, `userCreated`, `userUpdated`, `userLastLogin`, `userGivenName`, `userFamilyName`, `userEmail`, `userEnabled`, `userHash`, `roleID`, `userMasterAdmin`)
VALUES
	(1,'admin_tcs','$P$BuDQI3DUZo2juXhgC41QmsRrEWfioa/','2015-06-29 14:46:38','2015-07-13 13:11:54','2015-07-13 12:05:38','Alex','Tebbutt','alex@ifnotwhynot.com',1,'f4c8d0ac1a26670025f09055c36e7a26',2,1);

/*!40000 ALTER TABLE `perch2_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
