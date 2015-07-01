# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.10)
# Database: tcs_rebuild
# Generation Time: 2015-07-01 20:37:57 +0000
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
	(44,2,5,1,3,'_order','1000');

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
	(6,2,5,1,3,1000,'{\"_id\":\"2\",\"images\":[{\"image\":{\"assetID\":\"1\",\"title\":\"Vogue logo\",\"_default\":\"\\/perch\\/resources\\/vogue-logo.png\",\"bucket\":\"default\",\"path\":\"vogue-logo.png\",\"size\":2259,\"w\":101,\"h\":25,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"25\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"vogue-logo-thumb@2x.png\",\"size\":2259,\"mime\":\"\",\"assetID\":\"2\"}}},\"alt\":\"The Cross, as seen in Vogue\"},{\"image\":{\"assetID\":\"11\",\"title\":\"Telegraph logo\",\"_default\":\"\\/perch\\/resources\\/telegraph-logo.png\",\"bucket\":\"default\",\"path\":\"telegraph-logo.png\",\"size\":2833,\"w\":163,\"h\":27,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"24\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"telegraph-logo-thumb@2x.png\",\"size\":8533,\"mime\":\"\",\"assetID\":\"12\"}}},\"alt\":\"The Cross Shop, as seen in the Telegraph\"},{\"image\":{\"assetID\":\"9\",\"title\":\"Style logo\",\"_default\":\"\\/perch\\/resources\\/style-logo.png\",\"bucket\":\"default\",\"path\":\"style-logo.png\",\"size\":1404,\"w\":101,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"101\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"style-logo-thumb@2x.png\",\"size\":1404,\"mime\":\"\",\"assetID\":\"10\"}}},\"alt\":\"The Cross Shop, as seen in Style magazine\"},{\"image\":{\"assetID\":\"3\",\"title\":\"Bazaar logo\",\"_default\":\"\\/perch\\/resources\\/bazaar-logo.png\",\"bucket\":\"default\",\"path\":\"bazaar-logo.png\",\"size\":1675,\"w\":111,\"h\":29,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"111\",\"h\":\"29\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"bazaar-logo-thumb@2x.png\",\"size\":1675,\"mime\":\"\",\"assetID\":\"4\"}}},\"alt\":\"The Cross Shop, as seen in Bazaar magazine\"},{\"image\":{\"assetID\":\"5\",\"title\":\"Conde nast logo\",\"_default\":\"\\/perch\\/resources\\/conde-nast-logo.png\",\"bucket\":\"default\",\"path\":\"conde-nast-logo.png\",\"size\":1795,\"w\":82,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"82\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"conde-nast-logo-thumb@2x.png\",\"size\":1795,\"mime\":\"\",\"assetID\":\"6\"}}},\"alt\":\"The Cross Shop, as seen in Conde Nast magazine\"},{\"image\":{\"assetID\":\"7\",\"title\":\"Elle logo\",\"_default\":\"\\/perch\\/resources\\/elle-logo.png\",\"bucket\":\"default\",\"path\":\"elle-logo.png\",\"size\":662,\"w\":86,\"h\":32,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"86\",\"h\":\"32\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"elle-logo-thumb@2x.png\",\"size\":662,\"mime\":\"\",\"assetID\":\"8\"}}},\"alt\":\"The Cross Shop, as seen in Elle magazine\"}]}','  The Cross, as seen in Vogue  The Cross Shop, as seen in the Telegraph  The Cross Shop, as seen in Style magazine  The Cross Shop, as seen in Bazaar magazine  The Cross Shop, as seen in Conde Nast magazine  The Cross Shop, as seen in Elle magazine ','2015-07-01 21:27:25','1');

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
	(2,1,'Facebook Account','/index.php','<!-- Undefined content: Facebook Account -->',1,1,'',0,'',1,0,0,'*','2015-07-01 14:34:47'),
	(3,1,'Twitter Account','/index.php','<!-- Undefined content: Twitter Account -->',1,2,'',0,'',1,0,0,'*','2015-07-01 14:34:47'),
	(4,1,'Pinterest Account','/index.php','<!-- Undefined content: Pinterest Account -->',1,3,'',0,'',1,0,0,'*','2015-07-01 14:34:47'),
	(5,1,'Footer Logos','/index.php','\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/vogue-logo.png\" alt=\"The Cross, as seen in Vogue\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/telegraph-logo.png\" alt=\"The Cross Shop, as seen in the Telegraph\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/style-logo.png\" alt=\"The Cross Shop, as seen in Style magazine\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/bazaar-logo.png\" alt=\"The Cross Shop, as seen in Bazaar magazine\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/conde-nast-logo.png\" alt=\"The Cross Shop, as seen in Conde Nast magazine\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n\n\n  <div class=\"two columns\">\n\n    <img src=\"/perch/resources/elle-logo.png\" alt=\"The Cross Shop, as seen in Elle magazine\" class=\"u-max-full-width\" />\n      \n  </div>\n    \n',0,4,'footer_logos.html',0,'{\"edit_mode\":\"singlepage\"}',1,3,3,'*','2015-07-01 21:27:25');

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
	(1,0,'/index.php','Home page','Home page',0,1,1,'','000-001','','',0,0,'',0,'2015-07-01 20:27:25','','default.html','',0,'','');

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
	(1,'content','default','vogue-logo.png','orig',0,'png','2015-07-01 20:22:09','2015-07-01 21:22:09',0,'Vogue logo',2259,101,25,0,1,NULL,NULL,'image/png',0),
	(2,'content','default','vogue-logo-thumb@2x.png','thumb',1,'png','2015-07-01 20:22:09','2015-07-01 21:22:09',0,'Vogue logo',2259,101,25,0,2,150,150,'',0),
	(3,'content','default','bazaar-logo.png','orig',0,'png','2015-07-01 20:23:51','2015-07-01 21:23:51',0,'Bazaar logo',1675,111,29,0,1,NULL,NULL,'image/png',0),
	(4,'content','default','bazaar-logo-thumb@2x.png','thumb',3,'png','2015-07-01 20:23:51','2015-07-01 21:23:51',0,'Bazaar logo',1675,111,29,0,2,150,150,'',0),
	(5,'content','default','conde-nast-logo.png','orig',0,'png','2015-07-01 20:23:51','2015-07-01 21:23:51',0,'Conde nast logo',1795,82,32,0,1,NULL,NULL,'image/png',0),
	(6,'content','default','conde-nast-logo-thumb@2x.png','thumb',5,'png','2015-07-01 20:23:51','2015-07-01 21:23:51',0,'Conde nast logo',1795,82,32,0,2,150,150,'',0),
	(7,'content','default','elle-logo.png','orig',0,'png','2015-07-01 20:23:52','2015-07-01 21:23:52',0,'Elle logo',662,86,32,0,1,NULL,NULL,'image/png',0),
	(8,'content','default','elle-logo-thumb@2x.png','thumb',7,'png','2015-07-01 20:23:52','2015-07-01 21:23:52',0,'Elle logo',662,86,32,0,2,150,150,'',0),
	(9,'content','default','style-logo.png','orig',0,'png','2015-07-01 20:23:52','2015-07-01 21:23:52',0,'Style logo',1404,101,32,0,1,NULL,NULL,'image/png',0),
	(10,'content','default','style-logo-thumb@2x.png','thumb',9,'png','2015-07-01 20:23:52','2015-07-01 21:23:52',0,'Style logo',1404,101,32,0,2,150,150,'',0),
	(11,'content','default','telegraph-logo.png','orig',0,'png','2015-07-01 20:23:52','2015-07-01 21:23:52',0,'Telegraph logo',2833,163,27,0,1,NULL,NULL,'image/png',0),
	(12,'content','default','telegraph-logo-thumb@2x.png','thumb',11,'png','2015-07-01 20:23:52','2015-07-01 21:23:52',0,'Telegraph logo',8533,150,24,0,2,150,150,'image/png',0);

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
	(1,'admin_tcs','$P$BuDQI3DUZo2juXhgC41QmsRrEWfioa/','2015-06-29 14:46:38','2015-07-01 21:27:25','2015-07-01 13:10:31','Alex','Tebbutt','alex@ifnotwhynot.com',1,'49d0da43cda062520e73f5265803d04e',2,1);

/*!40000 ALTER TABLE `perch2_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
