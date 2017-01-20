/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.14 : Database - abaperfex
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`abaperfex` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `abaperfex`;

/*Table structure for table `tblactivitylog` */

DROP TABLE IF EXISTS `tblactivitylog`;

CREATE TABLE `tblactivitylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staffid` (`staffid`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

/*Data for the table `tblactivitylog` */

insert  into `tblactivitylog`(`id`,`description`,`date`,`staffid`) values (1,'New Staff Member Added [ID: 2, rey castanares]','2017-01-16 16:56:52',' '),(2,'Staff Member Updated [ID: 2, rey castanares]','2017-01-16 16:58:06',' '),(3,'New Leads Status Added [StatusID: 2, Name: Prospect]','2017-01-16 17:05:59',' '),(4,'Leads Status Updated [StatusID: 1, Name: Client]','2017-01-16 17:06:07',' '),(5,'New Custom Field Added [firstname]','2017-01-16 17:09:09',' '),(6,'New Custom Field Added [lastname]','2017-01-16 17:09:31',' '),(7,'New Custom Field Added [lastname]','2017-01-16 17:09:45',' '),(8,'Custom Field Updated [lastname]','2017-01-16 17:10:02',' '),(9,'Custom Field Updated [lastname]','2017-01-16 17:10:56',' '),(10,'Staff Member Updated [ID: 2, rey castanares]','2017-01-16 17:15:53',' '),(11,'Custom Field Updated [lastname]','2017-01-16 17:16:18',' '),(12,'New Custom Field Added [Salutation]','2017-01-16 17:19:24',' '),(13,'Custom Field Updated [Salutation]','2017-01-16 17:20:04',' '),(14,'Custom Field Updated [firstname]','2017-01-16 17:20:19',' '),(15,'Custom Field Updated [lastname]','2017-01-16 17:20:27',' '),(16,'Custom Field Updated [lastname]','2017-01-16 17:20:33',' '),(17,'Custom Field Updated [Middle Name]','2017-01-16 17:20:45',' '),(18,'Custom Field Updated [First Name]','2017-01-16 17:20:52',' '),(19,'Custom Field Updated [Last Name]','2017-01-16 17:21:01',' '),(20,'Custom Field Updated [Title]','2017-01-16 17:21:09',' '),(21,'Custom Field Updated [Title]','2017-01-16 17:21:25',' '),(22,'New Custom Field Added [Suffix]','2017-01-16 17:22:30',' '),(23,'New Custom Field Added [Office Number]','2017-01-16 17:22:54',' '),(24,'Custom Field Updated [First Name]','2017-01-16 17:28:26',' '),(25,'Custom Field Updated [Last Name]','2017-01-16 17:28:35',' '),(26,'Custom Field Updated [Middle Name]','2017-01-16 17:28:42',' '),(27,'Custom Field Updated [Suffix]','2017-01-16 17:28:53',' '),(28,'Custom Field Updated [Office Number]','2017-01-16 17:28:59',' '),(29,'Failed Login Attempt [Email:crm@abacare.com, Is Staff Member:No, IP:::1]','2017-01-17 14:32:22',' '),(30,'Failed Login Attempt [Email:crm@abacare.com, Is Staff Member:No, IP:::1]','2017-01-17 14:32:36',' '),(31,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 14:34:50',' '),(32,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 14:38:03',' '),(33,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 14:44:26',' '),(34,'Lead Deleted [Deleted by:  , LeadID: 3]','2017-01-17 14:45:17',' '),(35,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 14:45:26',' '),(36,'Lead Deleted [Deleted by:  , LeadID: 4]','2017-01-17 14:46:45',' '),(37,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 14:46:55',' '),(38,'Lead Deleted [Deleted by:  , LeadID: 5]','2017-01-17 14:47:49',' '),(39,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 14:47:58',' '),(40,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 14:57:30',' '),(41,'New Lead Added [Name: test]','2017-01-17 15:05:17',' '),(42,'New Lead Added [Name: test]','2017-01-17 15:05:20',' '),(43,'New Lead Added [Name: test]','2017-01-17 15:06:57',' '),(44,'New Lead Added [Name: test]','2017-01-17 15:08:42',' '),(45,'Lead Deleted [Deleted by:  , LeadID: 11]','2017-01-17 15:12:27',' '),(46,'New Lead Added [Name: test]','2017-01-17 15:14:41',' '),(47,'Lead Deleted [Deleted by:  , LeadID: 12]','2017-01-17 15:15:38',' '),(48,'New Lead Added [Name: test]','2017-01-17 15:15:57',' '),(49,'Lead Deleted [Deleted by:  , LeadID: 13]','2017-01-17 15:18:17',' '),(50,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:18:28',' '),(51,'Lead Deleted [Deleted by:  , LeadID: 14]','2017-01-17 15:20:11',' '),(52,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:23:30',' '),(53,'Lead Deleted [Deleted by:  , LeadID: 15]','2017-01-17 15:26:03',' '),(54,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:26:14',' '),(55,'Lead Deleted [Deleted by:  , LeadID: 16]','2017-01-17 15:26:56',' '),(56,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:27:03',' '),(57,'Lead Deleted [Deleted by:  , LeadID: 17]','2017-01-17 15:27:55',' '),(58,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:28:01',' '),(59,'Lead Deleted [Deleted by:  , LeadID: 18]','2017-01-17 15:29:26',' '),(60,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:29:35',' '),(61,'Lead Deleted [Deleted by:  , LeadID: 19]','2017-01-17 15:30:38',' '),(62,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:30:50',' '),(63,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:33:30',' '),(64,'Lead Deleted [Deleted by:  , LeadID: 1]','2017-01-17 15:34:51',' '),(65,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:35:00',' '),(66,'Lead Deleted [Deleted by:  , LeadID: 2]','2017-01-17 15:35:37',' '),(67,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:35:49',' '),(68,'New Lead Added [Name: Mr. Rey Castanares1]','2017-01-17 15:35:49',' '),(69,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 15:40:54',' '),(70,'New Staff Member Added [ID: 3, BDE1 1]','2017-01-17 15:56:40',' '),(71,'New Role Added [ID: 2.General Manage (GM)]','2017-01-17 15:57:19',' '),(72,'New Custom Field Added [Sales Office]','2017-01-17 16:28:31',' '),(73,'New Custom Field Added [Sales Office]','2017-01-17 16:29:39',' '),(74,'Custom Field Updated [Sales Office]','2017-01-17 16:35:35',' '),(75,'Custom Field Updated [Sales Office]','2017-01-17 16:35:42',' '),(76,'Staff Member Updated [ID: 3, BDE1 1]','2017-01-17 16:36:29',' '),(77,'Staff Member Updated [ID: 3, BDE1 1]','2017-01-17 16:36:58',' '),(78,'Staff Member Updated [ID: 3, BDE1 1]','2017-01-17 16:37:28',' '),(79,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 16:38:35',' '),(80,'Lead Deleted [Deleted by:  , LeadID: 6]','2017-01-17 16:54:32',' '),(81,'Lead Deleted [Deleted by:  , LeadID: 5]','2017-01-17 16:54:32',' '),(82,'Lead Deleted [Deleted by:  , LeadID: 3]','2017-01-17 16:54:32',' '),(83,'Lead Deleted [Deleted by:  , LeadID: 4]','2017-01-17 16:54:32',' '),(84,'New Lead Added [Name: Mr. Rey Castanares]','2017-01-17 16:54:45',' '),(85,'New Lead Added [Name: Mr. Rey Castanares1]','2017-01-17 16:54:45',' '),(86,'Lead Deleted [Deleted by:  , LeadID: 7]','2017-01-18 09:41:50',' '),(87,'Lead Deleted [Deleted by:  , LeadID: 8]','2017-01-18 09:41:50',' '),(88,'Staff Member Updated [ID: 2, rey castanares]','2017-01-18 11:09:15',' '),(89,'Role Updated [ID: 1.Chairman]','2017-01-18 11:17:35',' '),(90,'New Role Added [ID: 3.Director]','2017-01-18 11:17:43',' '),(91,'New Role Added [ID: 4.Business Development Director]','2017-01-18 11:17:57',' '),(92,'New Role Added [ID: 5.Business Development Manager]','2017-01-18 11:18:09',' '),(93,'New Role Added [ID: 6.Business Development Executive]','2017-01-18 11:18:24',' '),(94,'New Role Added [ID: 7.Client Servicing Manager]','2017-01-18 11:18:43',' '),(95,'New Role Added [ID: 8.Client Servicing Corporate]','2017-01-18 11:18:51',' '),(96,'New Role Added [ID: 9.Client Servicing - Individual]','2017-01-18 11:18:57',' '),(97,'Staff Member Updated [ID: 2, rey castanares]','2017-01-18 11:31:40',' '),(98,'New Lead Added [Name: test]','2017-01-18 11:40:04',' '),(99,'New Staff Member Added [ID: 4, bdd1 1]','2017-01-18 11:44:44',' '),(100,'Staff Member Updated [ID: 4, bdd1 1]','2017-01-18 11:44:55',' '),(101,'New Staff Member Added [ID: 5, bdm1 1]','2017-01-18 11:45:46',' '),(102,'Staff Member Updated [ID: 5, bdm1 1]','2017-01-18 11:45:59',' '),(103,'Staff Member Updated [ID: 3, BDE1 1]','2017-01-18 11:46:16',' '),(104,'New Staff Member Added [ID: 6, gm1 1]','2017-01-18 11:47:46',' '),(105,'Staff Member Updated [ID: 6, gm1 1]','2017-01-18 11:47:53',' '),(106,'Failed Login Attempt [Email:bde1@bde1.com, Is Staff Member:Yes, IP:::1]','2017-01-18 11:48:27',NULL),(107,'Staff Member Updated [ID: 3, BDE1 1]','2017-01-18 11:48:44',' '),(108,'Staff Member Updated [ID: 3, BDE1 1]','2017-01-18 11:48:54',' '),(109,'Staff Member Updated [ID: 3, BDE1 1]','2017-01-18 11:49:33',' '),(110,'Staff Member Updated [ID: 4, bdd1 1]','2017-01-18 11:50:15',' '),(111,'Staff Member Updated [ID: 5, bdm1 1]','2017-01-18 11:50:54',' '),(112,'Staff Member Updated [ID: 6, gm1 1]','2017-01-18 11:51:16',' '),(113,'Role Updated [ID: 5.Business Development Executive]','2017-01-18 12:01:09',' '),(114,'Custom Field Status Changed [FieldID: 3 - Active: 0]','2017-01-18 14:27:29',' '),(115,'Settings Updated []','2017-01-18 14:48:41',' '),(116,'Custom Field Updated [Salutation]','2017-01-18 15:20:07',' '),(117,'New Lead Added [Name: testcn]','2017-01-18 15:35:36',' '),(118,'Lead Deleted [Deleted by:  , LeadID: 10]','2017-01-18 16:32:30',' '),(119,'Lead Deleted [Deleted by:  , LeadID: 9]','2017-01-18 16:32:33',' '),(120,'New Lead Added [Name: ]','2017-01-18 16:33:10',' '),(121,'New Lead Added [Name: ]','2017-01-18 16:35:58','BDE1 1'),(122,'New Lead Added [Name: ]','2017-01-18 16:45:32',' '),(123,'Lead Deleted [Deleted by:  , LeadID: 13]','2017-01-18 16:49:04',' '),(124,'Lead Deleted [Deleted by:  , LeadID: 12]','2017-01-18 16:49:07',' '),(125,'Lead Deleted [Deleted by:  , LeadID: 11]','2017-01-18 16:49:10',' '),(126,'New Lead Added [Name: ]','2017-01-18 16:49:45',' '),(127,'New Lead Added [Name: testb]','2017-01-18 17:18:32',' '),(128,'New Lead Added [Name: testc]','2017-01-18 17:24:09',' '),(129,'New Lead Added [Name: ]','2017-01-18 17:26:56',' '),(130,'New Lead Added [Name: teste]','2017-01-18 18:00:59',' '),(131,'New Lead Added [Name: testf]','2017-01-18 18:01:49',' '),(132,'Lead Deleted [Deleted by:  , LeadID: 19]','2017-01-18 18:02:42',' '),(133,'Lead Deleted [Deleted by:  , LeadID: 18]','2017-01-18 18:02:45',' '),(134,'Lead Deleted [Deleted by:  , LeadID: 17]','2017-01-18 18:02:49',' '),(135,'New Lead Added [Name: testd]','2017-01-18 18:03:14',' '),(136,'Lead Updated [Name: testd testd]','2017-01-18 18:08:58',' '),(137,'Staff Member Updated [ID: 2, rey castanares]','2017-01-19 09:36:12',' '),(138,'Tried to access page where dont have permission [customers]','2017-01-19 09:36:15','rey castanares'),(139,'Staff Member Updated [ID: 6, gm1 1]','2017-01-19 10:45:52',' '),(140,'Custom Field Updated [Sales Office]','2017-01-19 10:46:34',' '),(141,'Custom Field Updated [Sales Office]','2017-01-19 10:46:57',' '),(142,'Custom Field Updated [Sales Office]','2017-01-19 10:54:26',' '),(143,'Lead Updated [Name: testc testa]','2017-01-19 12:18:03',' '),(144,'Tried to access page where dont have permission [staff]','2017-01-19 15:06:21','rey castanares'),(145,'Staff Member Updated [ID: 2, rey castanares]','2017-01-19 15:34:06',' '),(146,'Staff Member Updated [ID: 2, rey castanares]','2017-01-19 15:37:44',' '),(147,'New Lead Added [Name: teste]','2017-01-19 15:48:04','bdd1 1'),(148,'Staff Member Updated [ID: 3, BDE1 1]','2017-01-19 15:48:47',' '),(149,'Staff Member Updated [ID: 5, bdm1 1]','2017-01-19 15:49:17',' '),(150,'Custom Field Updated [Sales Office]','2017-01-19 15:49:52',' '),(151,'New Staff Member Added [ID: 7, bdd2 2]','2017-01-19 15:50:40',' '),(152,'Staff Member Updated [ID: 7, bde2 2]','2017-01-19 15:51:19',' '),(153,'New Staff Member Added [ID: 8, bdm2 2]','2017-01-19 15:52:06',' '),(154,'New Lead Added [Name: testf]','2017-01-19 15:55:24','bdd1 1'),(155,'Role Updated [ID: 2.Business Development Director]','2017-01-19 16:00:18',' '),(156,'Staff Member Updated [ID: 4, bdd1 1]','2017-01-19 16:32:52',' '),(157,'Staff Member Updated [ID: 4, bdd1 1]','2017-01-19 16:33:06',' '),(158,'Staff Member Updated [ID: 4, bdd1 1]','2017-01-19 16:33:17',' '),(159,'Staff Member Updated [ID: 4, bdd1 1]','2017-01-19 16:34:03',' '),(160,'Staff Member Updated [ID: 4, bdd1 1]','2017-01-19 16:37:26',' '),(161,'Lead Updated [Name: testb testa]','2017-01-19 16:47:08',' '),(162,'Staff Member Updated [ID: 4, bdd1 1]','2017-01-19 16:49:23',' ');

/*Table structure for table `tblannouncements` */

DROP TABLE IF EXISTS `tblannouncements`;

CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `message` text,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL,
  PRIMARY KEY (`announcementid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblannouncements` */

/*Table structure for table `tblclients` */

DROP TABLE IF EXISTS `tblclients`;

CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(100) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(300) DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `country` (`country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblclients` */

/*Table structure for table `tblcommentlikes` */

DROP TABLE IF EXISTS `tblcommentlikes`;

CREATE TABLE `tblcommentlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblcommentlikes` */

/*Table structure for table `tblcontactpermissions` */

DROP TABLE IF EXISTS `tblcontactpermissions`;

CREATE TABLE `tblcontactpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblcontactpermissions` */

/*Table structure for table `tblcontacts` */

DROP TABLE IF EXISTS `tblcontacts`;

CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(300) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblcontacts` */

/*Table structure for table `tblcontractrenewals` */

DROP TABLE IF EXISTS `tblcontractrenewals`;

CREATE TABLE `tblcontractrenewals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(11,2) DEFAULT NULL,
  `new_value` decimal(11,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `is_on_old_expiry_notified` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblcontractrenewals` */

/*Table structure for table `tblcontracts` */

DROP TABLE IF EXISTS `tblcontracts`;

CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `description` text,
  `subject` varchar(300) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT '0',
  `contract_value` decimal(11,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT '0',
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `client` (`client`),
  KEY `contract_type` (`contract_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblcontracts` */

/*Table structure for table `tblcontracttypes` */

DROP TABLE IF EXISTS `tblcontracttypes`;

CREATE TABLE `tblcontracttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblcontracttypes` */

/*Table structure for table `tblcountries` */

DROP TABLE IF EXISTS `tblcountries`;

CREATE TABLE `tblcountries` (
  `country_id` int(5) NOT NULL AUTO_INCREMENT,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

/*Data for the table `tblcountries` */

insert  into `tblcountries`(`country_id`,`iso2`,`short_name`,`long_name`,`iso3`,`numcode`,`un_member`,`calling_code`,`cctld`) values (1,'AF','Afghanistan','Islamic Republic of Afghanistan','AFG','004','yes','93','.af'),(2,'AX','Aland Islands','&Aring;land Islands','ALA','248','no','358','.ax'),(3,'AL','Albania','Republic of Albania','ALB','008','yes','355','.al'),(4,'DZ','Algeria','People\'s Democratic Republic of Algeria','DZA','012','yes','213','.dz'),(5,'AS','American Samoa','American Samoa','ASM','016','no','1+684','.as'),(6,'AD','Andorra','Principality of Andorra','AND','020','yes','376','.ad'),(7,'AO','Angola','Republic of Angola','AGO','024','yes','244','.ao'),(8,'AI','Anguilla','Anguilla','AIA','660','no','1+264','.ai'),(9,'AQ','Antarctica','Antarctica','ATA','010','no','672','.aq'),(10,'AG','Antigua and Barbuda','Antigua and Barbuda','ATG','028','yes','1+268','.ag'),(11,'AR','Argentina','Argentine Republic','ARG','032','yes','54','.ar'),(12,'AM','Armenia','Republic of Armenia','ARM','051','yes','374','.am'),(13,'AW','Aruba','Aruba','ABW','533','no','297','.aw'),(14,'AU','Australia','Commonwealth of Australia','AUS','036','yes','61','.au'),(15,'AT','Austria','Republic of Austria','AUT','040','yes','43','.at'),(16,'AZ','Azerbaijan','Republic of Azerbaijan','AZE','031','yes','994','.az'),(17,'BS','Bahamas','Commonwealth of The Bahamas','BHS','044','yes','1+242','.bs'),(18,'BH','Bahrain','Kingdom of Bahrain','BHR','048','yes','973','.bh'),(19,'BD','Bangladesh','People\'s Republic of Bangladesh','BGD','050','yes','880','.bd'),(20,'BB','Barbados','Barbados','BRB','052','yes','1+246','.bb'),(21,'BY','Belarus','Republic of Belarus','BLR','112','yes','375','.by'),(22,'BE','Belgium','Kingdom of Belgium','BEL','056','yes','32','.be'),(23,'BZ','Belize','Belize','BLZ','084','yes','501','.bz'),(24,'BJ','Benin','Republic of Benin','BEN','204','yes','229','.bj'),(25,'BM','Bermuda','Bermuda Islands','BMU','060','no','1+441','.bm'),(26,'BT','Bhutan','Kingdom of Bhutan','BTN','064','yes','975','.bt'),(27,'BO','Bolivia','Plurinational State of Bolivia','BOL','068','yes','591','.bo'),(28,'BQ','Bonaire, Sint Eustatius and Saba','Bonaire, Sint Eustatius and Saba','BES','535','no','599','.bq'),(29,'BA','Bosnia and Herzegovina','Bosnia and Herzegovina','BIH','070','yes','387','.ba'),(30,'BW','Botswana','Republic of Botswana','BWA','072','yes','267','.bw'),(31,'BV','Bouvet Island','Bouvet Island','BVT','074','no','NONE','.bv'),(32,'BR','Brazil','Federative Republic of Brazil','BRA','076','yes','55','.br'),(33,'IO','British Indian Ocean Territory','British Indian Ocean Territory','IOT','086','no','246','.io'),(34,'BN','Brunei','Brunei Darussalam','BRN','096','yes','673','.bn'),(35,'BG','Bulgaria','Republic of Bulgaria','BGR','100','yes','359','.bg'),(36,'BF','Burkina Faso','Burkina Faso','BFA','854','yes','226','.bf'),(37,'BI','Burundi','Republic of Burundi','BDI','108','yes','257','.bi'),(38,'KH','Cambodia','Kingdom of Cambodia','KHM','116','yes','855','.kh'),(39,'CM','Cameroon','Republic of Cameroon','CMR','120','yes','237','.cm'),(40,'CA','Canada','Canada','CAN','124','yes','1','.ca'),(41,'CV','Cape Verde','Republic of Cape Verde','CPV','132','yes','238','.cv'),(42,'KY','Cayman Islands','The Cayman Islands','CYM','136','no','1+345','.ky'),(43,'CF','Central African Republic','Central African Republic','CAF','140','yes','236','.cf'),(44,'TD','Chad','Republic of Chad','TCD','148','yes','235','.td'),(45,'CL','Chile','Republic of Chile','CHL','152','yes','56','.cl'),(46,'CN','China','People\'s Republic of China','CHN','156','yes','86','.cn'),(47,'CX','Christmas Island','Christmas Island','CXR','162','no','61','.cx'),(48,'CC','Cocos (Keeling) Islands','Cocos (Keeling) Islands','CCK','166','no','61','.cc'),(49,'CO','Colombia','Republic of Colombia','COL','170','yes','57','.co'),(50,'KM','Comoros','Union of the Comoros','COM','174','yes','269','.km'),(51,'CG','Congo','Republic of the Congo','COG','178','yes','242','.cg'),(52,'CK','Cook Islands','Cook Islands','COK','184','some','682','.ck'),(53,'CR','Costa Rica','Republic of Costa Rica','CRI','188','yes','506','.cr'),(54,'CI','Cote d\'ivoire (Ivory Coast)','Republic of C&ocirc;te D\'Ivoire (Ivory Coast)','CIV','384','yes','225','.ci'),(55,'HR','Croatia','Republic of Croatia','HRV','191','yes','385','.hr'),(56,'CU','Cuba','Republic of Cuba','CUB','192','yes','53','.cu'),(57,'CW','Curacao','Cura&ccedil;ao','CUW','531','no','599','.cw'),(58,'CY','Cyprus','Republic of Cyprus','CYP','196','yes','357','.cy'),(59,'CZ','Czech Republic','Czech Republic','CZE','203','yes','420','.cz'),(60,'CD','Democratic Republic of the Congo','Democratic Republic of the Congo','COD','180','yes','243','.cd'),(61,'DK','Denmark','Kingdom of Denmark','DNK','208','yes','45','.dk'),(62,'DJ','Djibouti','Republic of Djibouti','DJI','262','yes','253','.dj'),(63,'DM','Dominica','Commonwealth of Dominica','DMA','212','yes','1+767','.dm'),(64,'DO','Dominican Republic','Dominican Republic','DOM','214','yes','1+809, 8','.do'),(65,'EC','Ecuador','Republic of Ecuador','ECU','218','yes','593','.ec'),(66,'EG','Egypt','Arab Republic of Egypt','EGY','818','yes','20','.eg'),(67,'SV','El Salvador','Republic of El Salvador','SLV','222','yes','503','.sv'),(68,'GQ','Equatorial Guinea','Republic of Equatorial Guinea','GNQ','226','yes','240','.gq'),(69,'ER','Eritrea','State of Eritrea','ERI','232','yes','291','.er'),(70,'EE','Estonia','Republic of Estonia','EST','233','yes','372','.ee'),(71,'ET','Ethiopia','Federal Democratic Republic of Ethiopia','ETH','231','yes','251','.et'),(72,'FK','Falkland Islands (Malvinas)','The Falkland Islands (Malvinas)','FLK','238','no','500','.fk'),(73,'FO','Faroe Islands','The Faroe Islands','FRO','234','no','298','.fo'),(74,'FJ','Fiji','Republic of Fiji','FJI','242','yes','679','.fj'),(75,'FI','Finland','Republic of Finland','FIN','246','yes','358','.fi'),(76,'FR','France','French Republic','FRA','250','yes','33','.fr'),(77,'GF','French Guiana','French Guiana','GUF','254','no','594','.gf'),(78,'PF','French Polynesia','French Polynesia','PYF','258','no','689','.pf'),(79,'TF','French Southern Territories','French Southern Territories','ATF','260','no',NULL,'.tf'),(80,'GA','Gabon','Gabonese Republic','GAB','266','yes','241','.ga'),(81,'GM','Gambia','Republic of The Gambia','GMB','270','yes','220','.gm'),(82,'GE','Georgia','Georgia','GEO','268','yes','995','.ge'),(83,'DE','Germany','Federal Republic of Germany','DEU','276','yes','49','.de'),(84,'GH','Ghana','Republic of Ghana','GHA','288','yes','233','.gh'),(85,'GI','Gibraltar','Gibraltar','GIB','292','no','350','.gi'),(86,'GR','Greece','Hellenic Republic','GRC','300','yes','30','.gr'),(87,'GL','Greenland','Greenland','GRL','304','no','299','.gl'),(88,'GD','Grenada','Grenada','GRD','308','yes','1+473','.gd'),(89,'GP','Guadaloupe','Guadeloupe','GLP','312','no','590','.gp'),(90,'GU','Guam','Guam','GUM','316','no','1+671','.gu'),(91,'GT','Guatemala','Republic of Guatemala','GTM','320','yes','502','.gt'),(92,'GG','Guernsey','Guernsey','GGY','831','no','44','.gg'),(93,'GN','Guinea','Republic of Guinea','GIN','324','yes','224','.gn'),(94,'GW','Guinea-Bissau','Republic of Guinea-Bissau','GNB','624','yes','245','.gw'),(95,'GY','Guyana','Co-operative Republic of Guyana','GUY','328','yes','592','.gy'),(96,'HT','Haiti','Republic of Haiti','HTI','332','yes','509','.ht'),(97,'HM','Heard Island and McDonald Islands','Heard Island and McDonald Islands','HMD','334','no','NONE','.hm'),(98,'HN','Honduras','Republic of Honduras','HND','340','yes','504','.hn'),(99,'HK','Hong Kong','Hong Kong','HKG','344','no','852','.hk'),(100,'HU','Hungary','Hungary','HUN','348','yes','36','.hu'),(101,'IS','Iceland','Republic of Iceland','ISL','352','yes','354','.is'),(102,'IN','India','Republic of India','IND','356','yes','91','.in'),(103,'ID','Indonesia','Republic of Indonesia','IDN','360','yes','62','.id'),(104,'IR','Iran','Islamic Republic of Iran','IRN','364','yes','98','.ir'),(105,'IQ','Iraq','Republic of Iraq','IRQ','368','yes','964','.iq'),(106,'IE','Ireland','Ireland','IRL','372','yes','353','.ie'),(107,'IM','Isle of Man','Isle of Man','IMN','833','no','44','.im'),(108,'IL','Israel','State of Israel','ISR','376','yes','972','.il'),(109,'IT','Italy','Italian Republic','ITA','380','yes','39','.jm'),(110,'JM','Jamaica','Jamaica','JAM','388','yes','1+876','.jm'),(111,'JP','Japan','Japan','JPN','392','yes','81','.jp'),(112,'JE','Jersey','The Bailiwick of Jersey','JEY','832','no','44','.je'),(113,'JO','Jordan','Hashemite Kingdom of Jordan','JOR','400','yes','962','.jo'),(114,'KZ','Kazakhstan','Republic of Kazakhstan','KAZ','398','yes','7','.kz'),(115,'KE','Kenya','Republic of Kenya','KEN','404','yes','254','.ke'),(116,'KI','Kiribati','Republic of Kiribati','KIR','296','yes','686','.ki'),(117,'XK','Kosovo','Republic of Kosovo','---','---','some','381',''),(118,'KW','Kuwait','State of Kuwait','KWT','414','yes','965','.kw'),(119,'KG','Kyrgyzstan','Kyrgyz Republic','KGZ','417','yes','996','.kg'),(120,'LA','Laos','Lao People\'s Democratic Republic','LAO','418','yes','856','.la'),(121,'LV','Latvia','Republic of Latvia','LVA','428','yes','371','.lv'),(122,'LB','Lebanon','Republic of Lebanon','LBN','422','yes','961','.lb'),(123,'LS','Lesotho','Kingdom of Lesotho','LSO','426','yes','266','.ls'),(124,'LR','Liberia','Republic of Liberia','LBR','430','yes','231','.lr'),(125,'LY','Libya','Libya','LBY','434','yes','218','.ly'),(126,'LI','Liechtenstein','Principality of Liechtenstein','LIE','438','yes','423','.li'),(127,'LT','Lithuania','Republic of Lithuania','LTU','440','yes','370','.lt'),(128,'LU','Luxembourg','Grand Duchy of Luxembourg','LUX','442','yes','352','.lu'),(129,'MO','Macao','The Macao Special Administrative Region','MAC','446','no','853','.mo'),(130,'MK','Macedonia','The Former Yugoslav Republic of Macedonia','MKD','807','yes','389','.mk'),(131,'MG','Madagascar','Republic of Madagascar','MDG','450','yes','261','.mg'),(132,'MW','Malawi','Republic of Malawi','MWI','454','yes','265','.mw'),(133,'MY','Malaysia','Malaysia','MYS','458','yes','60','.my'),(134,'MV','Maldives','Republic of Maldives','MDV','462','yes','960','.mv'),(135,'ML','Mali','Republic of Mali','MLI','466','yes','223','.ml'),(136,'MT','Malta','Republic of Malta','MLT','470','yes','356','.mt'),(137,'MH','Marshall Islands','Republic of the Marshall Islands','MHL','584','yes','692','.mh'),(138,'MQ','Martinique','Martinique','MTQ','474','no','596','.mq'),(139,'MR','Mauritania','Islamic Republic of Mauritania','MRT','478','yes','222','.mr'),(140,'MU','Mauritius','Republic of Mauritius','MUS','480','yes','230','.mu'),(141,'YT','Mayotte','Mayotte','MYT','175','no','262','.yt'),(142,'MX','Mexico','United Mexican States','MEX','484','yes','52','.mx'),(143,'FM','Micronesia','Federated States of Micronesia','FSM','583','yes','691','.fm'),(144,'MD','Moldava','Republic of Moldova','MDA','498','yes','373','.md'),(145,'MC','Monaco','Principality of Monaco','MCO','492','yes','377','.mc'),(146,'MN','Mongolia','Mongolia','MNG','496','yes','976','.mn'),(147,'ME','Montenegro','Montenegro','MNE','499','yes','382','.me'),(148,'MS','Montserrat','Montserrat','MSR','500','no','1+664','.ms'),(149,'MA','Morocco','Kingdom of Morocco','MAR','504','yes','212','.ma'),(150,'MZ','Mozambique','Republic of Mozambique','MOZ','508','yes','258','.mz'),(151,'MM','Myanmar (Burma)','Republic of the Union of Myanmar','MMR','104','yes','95','.mm'),(152,'NA','Namibia','Republic of Namibia','NAM','516','yes','264','.na'),(153,'NR','Nauru','Republic of Nauru','NRU','520','yes','674','.nr'),(154,'NP','Nepal','Federal Democratic Republic of Nepal','NPL','524','yes','977','.np'),(155,'NL','Netherlands','Kingdom of the Netherlands','NLD','528','yes','31','.nl'),(156,'NC','New Caledonia','New Caledonia','NCL','540','no','687','.nc'),(157,'NZ','New Zealand','New Zealand','NZL','554','yes','64','.nz'),(158,'NI','Nicaragua','Republic of Nicaragua','NIC','558','yes','505','.ni'),(159,'NE','Niger','Republic of Niger','NER','562','yes','227','.ne'),(160,'NG','Nigeria','Federal Republic of Nigeria','NGA','566','yes','234','.ng'),(161,'NU','Niue','Niue','NIU','570','some','683','.nu'),(162,'NF','Norfolk Island','Norfolk Island','NFK','574','no','672','.nf'),(163,'KP','North Korea','Democratic People\'s Republic of Korea','PRK','408','yes','850','.kp'),(164,'MP','Northern Mariana Islands','Northern Mariana Islands','MNP','580','no','1+670','.mp'),(165,'NO','Norway','Kingdom of Norway','NOR','578','yes','47','.no'),(166,'OM','Oman','Sultanate of Oman','OMN','512','yes','968','.om'),(167,'PK','Pakistan','Islamic Republic of Pakistan','PAK','586','yes','92','.pk'),(168,'PW','Palau','Republic of Palau','PLW','585','yes','680','.pw'),(169,'PS','Palestine','State of Palestine (or Occupied Palestinian Territory)','PSE','275','some','970','.ps'),(170,'PA','Panama','Republic of Panama','PAN','591','yes','507','.pa'),(171,'PG','Papua New Guinea','Independent State of Papua New Guinea','PNG','598','yes','675','.pg'),(172,'PY','Paraguay','Republic of Paraguay','PRY','600','yes','595','.py'),(173,'PE','Peru','Republic of Peru','PER','604','yes','51','.pe'),(174,'PH','Phillipines','Republic of the Philippines','PHL','608','yes','63','.ph'),(175,'PN','Pitcairn','Pitcairn','PCN','612','no','NONE','.pn'),(176,'PL','Poland','Republic of Poland','POL','616','yes','48','.pl'),(177,'PT','Portugal','Portuguese Republic','PRT','620','yes','351','.pt'),(178,'PR','Puerto Rico','Commonwealth of Puerto Rico','PRI','630','no','1+939','.pr'),(179,'QA','Qatar','State of Qatar','QAT','634','yes','974','.qa'),(180,'RE','Reunion','R&eacute;union','REU','638','no','262','.re'),(181,'RO','Romania','Romania','ROU','642','yes','40','.ro'),(182,'RU','Russia','Russian Federation','RUS','643','yes','7','.ru'),(183,'RW','Rwanda','Republic of Rwanda','RWA','646','yes','250','.rw'),(184,'BL','Saint Barthelemy','Saint Barth&eacute;lemy','BLM','652','no','590','.bl'),(185,'SH','Saint Helena','Saint Helena, Ascension and Tristan da Cunha','SHN','654','no','290','.sh'),(186,'KN','Saint Kitts and Nevis','Federation of Saint Christopher and Nevis','KNA','659','yes','1+869','.kn'),(187,'LC','Saint Lucia','Saint Lucia','LCA','662','yes','1+758','.lc'),(188,'MF','Saint Martin','Saint Martin','MAF','663','no','590','.mf'),(189,'PM','Saint Pierre and Miquelon','Saint Pierre and Miquelon','SPM','666','no','508','.pm'),(190,'VC','Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','VCT','670','yes','1+784','.vc'),(191,'WS','Samoa','Independent State of Samoa','WSM','882','yes','685','.ws'),(192,'SM','San Marino','Republic of San Marino','SMR','674','yes','378','.sm'),(193,'ST','Sao Tome and Principe','Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe','STP','678','yes','239','.st'),(194,'SA','Saudi Arabia','Kingdom of Saudi Arabia','SAU','682','yes','966','.sa'),(195,'SN','Senegal','Republic of Senegal','SEN','686','yes','221','.sn'),(196,'RS','Serbia','Republic of Serbia','SRB','688','yes','381','.rs'),(197,'SC','Seychelles','Republic of Seychelles','SYC','690','yes','248','.sc'),(198,'SL','Sierra Leone','Republic of Sierra Leone','SLE','694','yes','232','.sl'),(199,'SG','Singapore','Republic of Singapore','SGP','702','yes','65','.sg'),(200,'SX','Sint Maarten','Sint Maarten','SXM','534','no','1+721','.sx'),(201,'SK','Slovakia','Slovak Republic','SVK','703','yes','421','.sk'),(202,'SI','Slovenia','Republic of Slovenia','SVN','705','yes','386','.si'),(203,'SB','Solomon Islands','Solomon Islands','SLB','090','yes','677','.sb'),(204,'SO','Somalia','Somali Republic','SOM','706','yes','252','.so'),(205,'ZA','South Africa','Republic of South Africa','ZAF','710','yes','27','.za'),(206,'GS','South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','SGS','239','no','500','.gs'),(207,'KR','South Korea','Republic of Korea','KOR','410','yes','82','.kr'),(208,'SS','South Sudan','Republic of South Sudan','SSD','728','yes','211','.ss'),(209,'ES','Spain','Kingdom of Spain','ESP','724','yes','34','.es'),(210,'LK','Sri Lanka','Democratic Socialist Republic of Sri Lanka','LKA','144','yes','94','.lk'),(211,'SD','Sudan','Republic of the Sudan','SDN','729','yes','249','.sd'),(212,'SR','Suriname','Republic of Suriname','SUR','740','yes','597','.sr'),(213,'SJ','Svalbard and Jan Mayen','Svalbard and Jan Mayen','SJM','744','no','47','.sj'),(214,'SZ','Swaziland','Kingdom of Swaziland','SWZ','748','yes','268','.sz'),(215,'SE','Sweden','Kingdom of Sweden','SWE','752','yes','46','.se'),(216,'CH','Switzerland','Swiss Confederation','CHE','756','yes','41','.ch'),(217,'SY','Syria','Syrian Arab Republic','SYR','760','yes','963','.sy'),(218,'TW','Taiwan','Republic of China (Taiwan)','TWN','158','former','886','.tw'),(219,'TJ','Tajikistan','Republic of Tajikistan','TJK','762','yes','992','.tj'),(220,'TZ','Tanzania','United Republic of Tanzania','TZA','834','yes','255','.tz'),(221,'TH','Thailand','Kingdom of Thailand','THA','764','yes','66','.th'),(222,'TL','Timor-Leste (East Timor)','Democratic Republic of Timor-Leste','TLS','626','yes','670','.tl'),(223,'TG','Togo','Togolese Republic','TGO','768','yes','228','.tg'),(224,'TK','Tokelau','Tokelau','TKL','772','no','690','.tk'),(225,'TO','Tonga','Kingdom of Tonga','TON','776','yes','676','.to'),(226,'TT','Trinidad and Tobago','Republic of Trinidad and Tobago','TTO','780','yes','1+868','.tt'),(227,'TN','Tunisia','Republic of Tunisia','TUN','788','yes','216','.tn'),(228,'TR','Turkey','Republic of Turkey','TUR','792','yes','90','.tr'),(229,'TM','Turkmenistan','Turkmenistan','TKM','795','yes','993','.tm'),(230,'TC','Turks and Caicos Islands','Turks and Caicos Islands','TCA','796','no','1+649','.tc'),(231,'TV','Tuvalu','Tuvalu','TUV','798','yes','688','.tv'),(232,'UG','Uganda','Republic of Uganda','UGA','800','yes','256','.ug'),(233,'UA','Ukraine','Ukraine','UKR','804','yes','380','.ua'),(234,'AE','United Arab Emirates','United Arab Emirates','ARE','784','yes','971','.ae'),(235,'GB','United Kingdom','United Kingdom of Great Britain and Nothern Ireland','GBR','826','yes','44','.uk'),(236,'US','United States','United States of America','USA','840','yes','1','.us'),(237,'UM','United States Minor Outlying Islands','United States Minor Outlying Islands','UMI','581','no','NONE','NONE'),(238,'UY','Uruguay','Eastern Republic of Uruguay','URY','858','yes','598','.uy'),(239,'UZ','Uzbekistan','Republic of Uzbekistan','UZB','860','yes','998','.uz'),(240,'VU','Vanuatu','Republic of Vanuatu','VUT','548','yes','678','.vu'),(241,'VA','Vatican City','State of the Vatican City','VAT','336','no','39','.va'),(242,'VE','Venezuela','Bolivarian Republic of Venezuela','VEN','862','yes','58','.ve'),(243,'VN','Vietnam','Socialist Republic of Vietnam','VNM','704','yes','84','.vn'),(244,'VG','Virgin Islands, British','British Virgin Islands','VGB','092','no','1+284','.vg'),(245,'VI','Virgin Islands, US','Virgin Islands of the United States','VIR','850','no','1+340','.vi'),(246,'WF','Wallis and Futuna','Wallis and Futuna','WLF','876','no','681','.wf'),(247,'EH','Western Sahara','Western Sahara','ESH','732','no','212','.eh'),(248,'YE','Yemen','Republic of Yemen','YEM','887','yes','967','.ye'),(249,'ZM','Zambia','Republic of Zambia','ZMB','894','yes','260','.zm'),(250,'ZW','Zimbabwe','Republic of Zimbabwe','ZWE','716','yes','263','.zw');

/*Table structure for table `tblcurrencies` */

DROP TABLE IF EXISTS `tblcurrencies`;

CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tblcurrencies` */

insert  into `tblcurrencies`(`id`,`symbol`,`name`,`isdefault`) values (1,'$','USD',1),(2,'€','EUR',0);

/*Table structure for table `tblcustomeradmins` */

DROP TABLE IF EXISTS `tblcustomeradmins`;

CREATE TABLE `tblcustomeradmins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL,
  KEY `staff_id` (`staff_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblcustomeradmins` */

/*Table structure for table `tblcustomergroups_in` */

DROP TABLE IF EXISTS `tblcustomergroups_in`;

CREATE TABLE `tblcustomergroups_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblcustomergroups_in` */

/*Table structure for table `tblcustomersgroups` */

DROP TABLE IF EXISTS `tblcustomersgroups`;

CREATE TABLE `tblcustomersgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblcustomersgroups` */

/*Table structure for table `tblcustomfields` */

DROP TABLE IF EXISTS `tblcustomfields`;

CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldto` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `options` mediumtext,
  `field_order` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `only_admin` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_client_portal` int(11) NOT NULL DEFAULT '0',
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT '0',
  `bs_column` int(11) NOT NULL DEFAULT '12',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tblcustomfields` */

insert  into `tblcustomfields`(`id`,`fieldto`,`name`,`slug`,`required`,`type`,`options`,`field_order`,`active`,`show_on_pdf`,`only_admin`,`show_on_table`,`show_on_client_portal`,`disalow_client_to_edit`,`bs_column`) values (1,'leads','First Name','leads_firstname',1,'input','',3,1,0,0,0,0,0,6),(2,'leads','Last Name','leads_lastname',1,'input','',4,1,0,0,0,0,0,6),(3,'leads','Middle Name','leads_middlename',1,'input','',5,0,0,0,0,0,0,6),(4,'leads','Salutation','leads_salutation',1,'select','Mr,Mrs,Ms',1,1,0,0,0,0,0,6),(5,'leads','Suffix','leads_suffix',0,'input','',6,1,0,0,0,0,0,6),(6,'leads','Office Number','leads_office_number',1,'input','',7,1,0,0,0,0,0,6),(7,'leads','Sales Office','leads_sales_office',1,'select','Beijing,\r\nCebu,\r\nHong Kong,\r\nIndochina,\r\nInternational,\r\nShanghai,\r\nSingapore',7,1,0,0,1,0,0,6),(8,'staff','Sales Office','staff_sales_office',1,'select','Beijing,\r\nCebu,\r\nHong Kong,\r\nIndochina,\r\nInternational,\r\nShanghai,\r\nSingapore',2,1,0,0,1,0,0,12);

/*Table structure for table `tblcustomfieldsvalues` */

DROP TABLE IF EXISTS `tblcustomfieldsvalues`;

CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid` (`relid`),
  KEY `fieldid` (`fieldid`),
  KEY `fieldto` (`fieldto`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

/*Data for the table `tblcustomfieldsvalues` */

insert  into `tblcustomfieldsvalues`(`id`,`relid`,`fieldid`,`fieldto`,`value`) values (126,20,6,'leads','123d'),(103,16,7,'leads','Indochina'),(100,16,2,'leads','testc'),(101,16,5,'leads','sfc'),(102,16,6,'leads','123c'),(99,16,1,'leads','testc'),(95,15,5,'leads','sfb'),(97,15,7,'leads','Hong Kong'),(98,16,4,'leads','Mrs'),(96,15,6,'leads','123b'),(94,15,2,'leads','testb'),(86,14,4,'leads','Mr'),(87,14,1,'leads','testa'),(88,14,2,'leads','testa'),(89,14,5,'leads','sf'),(90,14,6,'leads','123'),(91,14,7,'leads','Cebu'),(92,15,4,'leads','Mr'),(93,15,1,'leads','testb'),(125,20,5,'leads','sfd'),(124,20,2,'leads','testd1'),(123,20,1,'leads','testd1'),(122,20,4,'leads','Mrs'),(130,21,4,'leads','Mr'),(129,6,8,'staff','Beijing'),(128,2,8,'staff','Cebu'),(127,20,7,'leads','Cebu'),(134,21,6,'leads','123e'),(133,21,5,'leads','sfe'),(132,21,2,'leads','teste'),(131,21,1,'leads','teste'),(135,21,7,'leads','Singapore'),(136,3,8,'staff','Singapore'),(137,5,8,'staff','Singapore'),(138,7,8,'staff','Beijing'),(139,8,8,'staff','Beijing'),(140,22,4,'leads','Mr'),(141,22,1,'leads','testf'),(142,22,2,'leads','testf'),(143,22,5,'leads','sff'),(144,22,6,'leads','123f'),(145,22,7,'leads','Singapore'),(146,4,8,'staff','Singapore');

/*Table structure for table `tbldepartments` */

DROP TABLE IF EXISTS `tbldepartments`;

CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext,
  `encryption` varchar(3) DEFAULT NULL,
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `calendar_id` mediumtext,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`departmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbldepartments` */

/*Table structure for table `tbldismissedannouncements` */

DROP TABLE IF EXISTS `tbldismissedannouncements`;

CREATE TABLE `tbldismissedannouncements` (
  `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`dismissedannouncementid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbldismissedannouncements` */

/*Table structure for table `tblemaillists` */

DROP TABLE IF EXISTS `tblemaillists`;

CREATE TABLE `tblemaillists` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `creator` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblemaillists` */

/*Table structure for table `tblemailtemplates` */

DROP TABLE IF EXISTS `tblemailtemplates`;

CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL,
  PRIMARY KEY (`emailtemplateid`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `tblemailtemplates` */

insert  into `tblemailtemplates`(`emailtemplateid`,`type`,`slug`,`language`,`name`,`subject`,`message`,`fromname`,`fromemail`,`plaintext`,`active`,`order`) values (1,'client','new-client-created','english','New Contact Added/Registered (Welcome Email)','Welcome aboard','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for registering on the {companyname} CRM System.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We just wanted to say welcome.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us if you need any help.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click here to view your profile: {crm_url}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">(This is an automated email, so please don\'t reply to this email address)</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(2,'invoice','invoice-send-to-client','english','Send Invoice to Customer','Invoice with number {invoice_number} created','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We have prepared the following invoice for you: #&nbsp;{invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Invoice status:&nbsp;<strong style=\"font-family: Helvetica, Arial, sans-serif;\">{invoice_status}</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please click on the link below to view the invoice online: <strong>{invoice_link}</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(3,'ticket','new-ticket-opened-admin','english','New Ticket Opened (Opened by Staff, Sent to Customer)','New Support Ticket Opened','<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">New support ticket has been opened.</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; color: #000000; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; color: #000000; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(4,'ticket','ticket-reply','english','Ticket Reply (Sent to Customer)','New Ticket Reply','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;<span style=\"background-color: inherit;\">{contact_firstname} </span>{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have a new ticket reply to ticket #{ticket_id}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(5,'ticket','ticket-autoresponse','english','New Ticket Opened - Autoresponse','New Support Ticket Opened','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {ticket_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: {ticket_priority}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(6,'invoice','invoice-payment-recorded','english','Invoice Payment Recorded (Sent to Customer)','Invoice Payment Recorded','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Payment recorded for invoice&nbsp;# {invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{invoice_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(7,'invoice','invoice-overdue-notice','english','Invoice Overdue Notice','Invoice Overdue Notice - {invoice_number}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is an overdue notice for invoice # {invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This invoice was due: {invoice_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please view the invoice here: &nbsp;{invoice_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(8,'invoice','invoice-already-send','english','Invoice Already Sent to Customer','On your command here is the invoice','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi <span style=\"background-color: inherit;\">{contact_firstname} {contact_lastname}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">At your request, please see the link to invoice # {invoice_number}&nbsp;below.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click here to view the invoice online: {invoice_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(9,'ticket','new-ticket-created-staff','english','New Ticket Created (Opened by Customer, Sent to Staff Members)','New Ticket Created','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new support ticket has been opened.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(10,'estimate','estimate-send-to-client','english','Send Estimate to Customer','Estimate # {estimate_number} created','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please find the attached estimate # {estimate_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Estimate status:&nbsp;<strong>{estimate_status}</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{estimate_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to your communication.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(11,'ticket','ticket-reply-to-admin','english','Ticket Reply (Sent to Staff)','New Support Ticket Reply','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view this ticket any time at <span style=\"background-color: inherit;\">{ticket_url}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(12,'estimate','estimate-already-send','english','Estimate Already Sent to Customer','Estimate # {estimate_number} ','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for your estimate request.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the follow estimate on the following link {estimate_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(13,'contract','contract-expiration','english','Contract Expiration','Contract Expiration Reminder','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {client_company}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject {contract_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description {contract_description}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Date Start {contract_datestart}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Date End {contract_dateend}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Value {contract_contract_value}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(14,'tasks','task-assigned','english','New Task Assigned (Sent to Staff)','New Task Assigned to You - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have been assigned a new task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: <span style=\"background-color: #ffffff;\">{task_name}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: #ffffff;\">{task_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please click on the following link to view this task: {task_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(15,'tasks','task-added-as-follower','english','Staff Member Added as Follower on Task','You are added as follower on task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} <span style=\"background-color: #ffffff;\">{staff_lastname}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have been added as follower on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: {task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: {task_description}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: {task_priority}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Start date: {task_startdate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: {task_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please click on the following link to view this task: {task_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div>&nbsp;</div>','{companyname} | CRM','',0,1,0),(16,'tasks','task-commented','english','New Comment on Task (Sent to Staff)','New Comment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A comment has been made on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: &nbsp;{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: &nbsp;{task_description}<br />Comment: {task_comment}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: {task_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(17,'tasks','task-marked-as-finished','english','Task Marked as Finished (Sent to Staff)','Task Marked as Finished - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} marked the following task as complete:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}<br /></span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please click on the following link to view: <span style=\"background-color: inherit;\">{task_link}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(18,'tasks','task-added-attachment','english','New Attachment on Task (Sent to Staff)','New Attachment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} added an attachment on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please click on the following link to view: <span style=\"background-color: inherit;\">{task_link}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(19,'tasks','task-unmarked-as-finished','english','Task Unmarked as Finished (Sent to Staff)','Task UN-marked as finished - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} <span style=\"background-color: inherit;\">marked the </span>following task as <strong>in-complete / unfinished</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span><span style=\"background-color: inherit;\">{task_name}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: {task_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please click on the following link to view: <span style=\"background-color: inherit;\">{task_link}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(20,'estimate','estimate-declined-to-staff','english','Estimate Declined (Sent to Staff)','Customer Declined Estimate','<div><span style=\"font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <span style=\"background-color: inherit;\">{estimate_number}</span></span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">You can view the estimate on the following link <span style=\"background-color: inherit;\">{estimate_link}</span></span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(21,'estimate','estimate-accepted-to-staff','english','Estimate Accepted (Sent to Staff)','Customer Accepted Estimate','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <span style=\"background-color: inherit;\">{estimate_number}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the estimate on the following link <span style=\"background-color: inherit;\">{estimate_link}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(22,'proposals','proposal-client-accepted','english','Customer Action - Accepted (Sent to Staff)','Customer Accepted Proposal','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Client {proposal_proposal_to} accepted the following proposal:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Total: {proposal_total}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">View the proposal on the following link: {proposal_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>','{companyname} | CRM','',0,1,0),(23,'proposals','proposal-send-to-customer','english','Send Proposal to Customer','Proposal','<div>Dear {proposal_proposal_to}</div>\r\n<div>&nbsp;</div>\r\n<div>Please find our attached proposal.</div>\r\n<div>&nbsp;</div>\r\n<div>This proposal is valid until: {proposal_open_till}</div>\r\n<div>You can view the proposal on the following link: {proposal_link}</div>\r\n<div>&nbsp;</div>\r\n<div>Please don\'t hesitate to comment online if you have any questions.</div>\r\n<div>&nbsp;</div>\r\n<div>We look forward to your communication.</div>\r\n<div>&nbsp;</div>\r\n<div>Kind regards</div>\r\n<div>&nbsp;</div>\r\n<div>{email_signature}</div>','{companyname} | CRM','',0,1,0),(24,'proposals','proposal-client-declined','english','Customer Action - Declined (Sent to Staff)','Client Declined Proposal','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer {proposal_proposal_to} declined the proposal {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">View the proposal on the following link {proposal_link} or from the admin area.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div>&nbsp;</div>','{companyname} | CRM','',0,1,0),(25,'proposals','proposal-client-thank-you','english','Thank You Email (Sent to Customer After Accept)','Thank for you accepting proposal','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {proposal_proposal_to}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank for for accepting the proposal.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to doing business with you.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We will contact you as soon as possible</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(26,'proposals','proposal-comment-to-client','english','New Comment  (Sent to Customer Contacts)','New Proposal Comment','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {proposal_proposal_to}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new comment has been made on the following proposal: {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view and reply to the comment on the following link: {proposal_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(27,'proposals','proposal-comment-to-admin','english','New Comment (Sent to Staff) ','New Proposal Comment','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hello</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new <strong>comment</strong> has been made to the proposal <span style=\"background-color: inherit;\">{proposal_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view and reply to the comment on the following link: <span style=\"background-color: inherit;\">{proposal_link} or from the admin area.</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(28,'estimate','estimate-thank-you-to-customer','english','Thank You Email (Sent to Customer After Accept)','Thank for you accepting estimate','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank for for accepting the estimate.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to doing business with you.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We will contact you as soon as possible.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(29,'tasks','task-deadline-notification','english','Task Deadline Reminder - Sent to Assigned Members','Task Deadline Reminder','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is an automated email from {companyname}.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">The task {task_name} deadline is on {task_duedate}. This task is still not finished.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please click on the following link to view: <span style=\"background-color: inherit;\">{task_link}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(30,'contract','send-contract','english','Send Contract to Customer','Contract - {contract_subject}','<p>Hi&nbsp;{client_company}</p>\r\n<p>Please find the {contract_subject}&nbsp;attached.</p>\r\n<p>&nbsp;</p>\r\n<p>Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(31,'invoice','invoice-payment-recorded-to-staff','english','Invoice Payment Recorded (Sent to Staff)','New Invoice Payment','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer recorded payment for invoice # {invoice_number}</span></div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{invoice_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(32,'ticket','auto-close-ticket','english','Auto Close Ticket','Ticket Auto Closed','<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket&nbsp;{ticket_subject} has been auto close due to inactivity.</span></p>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket #: <span style=\"background-color: inherit;\">{ticket_id}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(33,'project','new-project-discussion-created-to-staff','english','New Project Discussion (Sent to Project Members)','New Project Discussion Created','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project discussion created from&nbsp;{discussion_creator}</p>\r\n<p>Subject:&nbsp;{discussion_subject}</p>\r\n<p>Description:&nbsp;{discussion_description}</p>\r\n<p>You can view the discussion on the following link:&nbsp;{discussion_link}</p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(34,'project','new-project-discussion-created-to-customer','english','New Project Discussion (Sent to Customer Contacts)','New Project Discussion Created','<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project discussion created from&nbsp;{discussion_creator}</p>\r\n<p>Subject:&nbsp;{discussion_subject}</p>\r\n<p>Description:&nbsp;{discussion_description}</p>\r\n<p>You can view the discussion on the following link:&nbsp;{discussion_link}</p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(35,'project','new-project-file-uploaded-to-customer','english','New Project File Uploaded (Sent to Customer Contacts)','New Project File Uploaded','<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;{project_name} from&nbsp;{file_creator}</p>\r\n<p>You can view the project on the following link:&nbsp;{project_link}<br />To view&nbsp;the file in our CRM&nbsp;you can click on the following link:&nbsp;{discussion_link}</p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(36,'project','new-project-file-uploaded-to-staff','english','New Project File Uploaded (Sent to Project Members)','New Project File Uploaded','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;{project_name} from&nbsp;{file_creator}</p>\r\n<p>You can view the project on the following link:&nbsp;{project_link}<br />To view&nbsp;the file you can click on the following link:&nbsp;{discussion_link}</p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(37,'project','new-project-discussion-comment-to-customer','english','New Discussion Comment  (Sent to Customer Contacts)','New Discussion Comment','<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New discussion comment has been made on {discussion_subject} from&nbsp;{comment_creator}</p>\r\n<p>Discussion subject:&nbsp;{discussion_subject}</p>\r\n<p>Comment:&nbsp;{discussion_comment}</p>\r\n<p>You can view the discussion on the following link:&nbsp;{discussion_link}</p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(38,'project','new-project-discussion-comment-to-staff','english','New Discussion Comment (Sent to Project Members)','New Discussion Comment','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New discussion comment has been made on {discussion_subject} from&nbsp;{comment_creator}</p>\r\n<p>Discussion subject:&nbsp;{discussion_subject}</p>\r\n<p>Comment:&nbsp;{discussion_comment}</p>\r\n<p>You can view the discussion on the following link:&nbsp;{discussion_link}</p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(39,'project','staff-added-as-project-member','english','Staff Added as Project Member','New project assigned to you','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project has been assigned to you.</p>\r\n<p>You can view the project on the following link&nbsp;{project_link}</p>\r\n<p>Project name:&nbsp;{project_name}</p>\r\n<p>&nbsp;</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(40,'estimate','estimate-expiry-reminder','english','Estimate Expiration Reminder','Estimate Expiration Reminder','<p>Hello&nbsp;{client_company}</p>\r\n<p>The estimate with&nbsp;{estimate_number} will expire on&nbsp;{estimate_expirydate}</p>\r\n<p>You can view the estimate on the following link:&nbsp;{estimate_link}</p>\r\n<p>Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(41,'proposals','proposal-expiry-reminder','english','Proposal Expiration Reminder','Proposal Expiration Reminder','<p>Hello&nbsp;{proposal_proposal_to}</p>\r\n<p>The proposal {proposal_subject} will expire on&nbsp;{proposal_open_till}</p>\r\n<p>You can view the proposal on the following link:&nbsp;{proposal_link}</p>\r\n<p>Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(42,'staff','new-staff-created','english','New Staff Created (Welcome Email)','You are added as staff member','Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />You are added as member on our CRM.<br />You can login at {admin_url}<br /><br />Please use the following&nbsp;logic credentials:<br /><br />Email:&nbsp;{staff_email}<br />Password:&nbsp;{password}<br /><br />Best Regards,<br />{email_signature}','{companyname} | CRM','',0,1,0),(43,'client','contact-forgot-password','english','Forgot Password','Create New Password','<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /> <big><strong>{reset_password_url}</strong></big><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}','{companyname} | CRM','',0,1,0),(44,'client','contact-password-reseted','english','Password Reset - Confirmation','Your password has been changed','<strong>You have changed your password.<br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br />If this wasnt you, please contact us.<br /><br />{email_signature}','{companyname} | CRM','',0,1,0),(45,'client','contact-set-password','english','Set New Password','Set new password on {companyname} ','<h2>Setup your new password on {companyname}</h2>\r\nPlease use the following link to setup your new password.<br /><br />Keep it in your records so you don\'t forget it.<br /><br /> Please set your new password in 48 hours. After that you wont be able to set your password. <br /><br />You can login at: {crm_url}<br /> Your email address for login: {contact_email}<br /> <br /><big><strong>{set_password_url}</strong></big><br /> <br />{email_signature}','{companyname} | CRM','',0,1,0),(46,'staff','staff-forgot-password','english','Forgot Password','Create New Password','<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /> <big><strong>{reset_password_url}</strong></big><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}','{companyname} | CRM','',0,1,0),(47,'staff','staff-password-reseted','english','Password Reset - Confirmation','Your password has been changed','<strong>You have changed your password.<br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /> If this wasnt you, please contact us.<br /><br />{email_signature}','{companyname} | CRM','',0,1,0),(48,'project','assigned-to-project','english','New Project Created (Sent to Customer Contacts)','New Project Created','<p>Hello&nbsp;{contact_firstname}</p>\r\n<p>New project is assigned to your company.<br />Project Name:&nbsp;{project_name}</p>\r\n<p>You can view the project on the following link:{project_link}</p>\r\n<p>We are looking forward hearing from you.</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(49,'tasks','task-marked-as-finished-to-contacts','english','Task Marked as Finished (Sent to customer contacts)','Task Marked as Finished - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} marked the following task as complete:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}<br /></span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please click on the following link to view: <span style=\"background-color: inherit;\">{task_link}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(50,'tasks','task-added-attachment-to-contacts','english','New Attachment on Task (Sent to Customer Contacts)','New Attachment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} added an attachment on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please click on the following link to view: <span style=\"background-color: inherit;\">{task_link}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(51,'tasks','task-commented-to-contacts','english','New Comment on Task (Sent to Customer Contacts)','New Comment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A comment has been made on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: &nbsp;{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: &nbsp;{task_description}<br />Comment: {task_comment}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: {task_link}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0);

/*Table structure for table `tblestimates` */

DROP TABLE IF EXISTS `tblestimates`;

CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `currency` (`currency`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblestimates` */

/*Table structure for table `tblevents` */

DROP TABLE IF EXISTS `tblevents`;

CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblevents` */

/*Table structure for table `tblexpenses` */

DROP TABLE IF EXISTS `tblexpenses`;

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text,
  `expense_name` varchar(500) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `billable` int(11) DEFAULT '0',
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` int(11) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblexpenses` */

/*Table structure for table `tblexpensescategories` */

DROP TABLE IF EXISTS `tblexpensescategories`;

CREATE TABLE `tblexpensescategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblexpensescategories` */

/*Table structure for table `tblfiles` */

DROP TABLE IF EXISTS `tblfiles`;

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(600) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblfiles` */

/*Table structure for table `tblformquestionboxes` */

DROP TABLE IF EXISTS `tblformquestionboxes`;

CREATE TABLE `tblformquestionboxes` (
  `boxid` int(11) NOT NULL AUTO_INCREMENT,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`boxid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblformquestionboxes` */

/*Table structure for table `tblformquestionboxesdescription` */

DROP TABLE IF EXISTS `tblformquestionboxesdescription`;

CREATE TABLE `tblformquestionboxesdescription` (
  `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`questionboxdescriptionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblformquestionboxesdescription` */

/*Table structure for table `tblformquestions` */

DROP TABLE IF EXISTS `tblformquestions`;

CREATE TABLE `tblformquestions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `question_order` int(11) NOT NULL,
  PRIMARY KEY (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblformquestions` */

/*Table structure for table `tblformresults` */

DROP TABLE IF EXISTS `tblformresults`;

CREATE TABLE `tblformresults` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text,
  `resultsetid` int(11) NOT NULL,
  PRIMARY KEY (`resultid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblformresults` */

/*Table structure for table `tblgoals` */

DROP TABLE IF EXISTS `tblgoals`;

CREATE TABLE `tblgoals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_type` int(11) NOT NULL,
  `contract_type` int(11) NOT NULL DEFAULT '0',
  `achievement` int(11) NOT NULL,
  `notify_when_fail` tinyint(1) NOT NULL DEFAULT '1',
  `notify_when_achieve` tinyint(1) NOT NULL DEFAULT '1',
  `notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblgoals` */

/*Table structure for table `tblinvoicepaymentrecords` */

DROP TABLE IF EXISTS `tblinvoicepaymentrecords`;

CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `paymentmethod` (`paymentmethod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblinvoicepaymentrecords` */

/*Table structure for table `tblinvoicepaymentsmodes` */

DROP TABLE IF EXISTS `tblinvoicepaymentsmodes`;

CREATE TABLE `tblinvoicepaymentsmodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `invoices_only` int(11) NOT NULL DEFAULT '0',
  `expenses_only` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tblinvoicepaymentsmodes` */

insert  into `tblinvoicepaymentsmodes`(`id`,`name`,`description`,`show_on_pdf`,`invoices_only`,`expenses_only`,`active`) values (1,'Bank',NULL,0,0,0,1);

/*Table structure for table `tblinvoices` */

DROP TABLE IF EXISTS `tblinvoices`;

CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `last_overdue_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT '0',
  `allowed_payment_modes` mediumtext,
  `token` mediumtext,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `currency` (`currency`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblinvoices` */

/*Table structure for table `tblitems` */

DROP TABLE IF EXISTS `tblitems`;

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `long_description` text,
  `rate` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblitems` */

/*Table structure for table `tblitems_in` */

DROP TABLE IF EXISTS `tblitems_in`;

CREATE TABLE `tblitems_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `qty` decimal(11,2) NOT NULL,
  `rate` decimal(11,2) NOT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblitems_in` */

/*Table structure for table `tblitemsrelated` */

DROP TABLE IF EXISTS `tblitemsrelated`;

CREATE TABLE `tblitemsrelated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblitemsrelated` */

/*Table structure for table `tblitemstax` */

DROP TABLE IF EXISTS `tblitemstax`;

CREATE TABLE `tblitemstax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblitemstax` */

/*Table structure for table `tblknowledgebase` */

DROP TABLE IF EXISTS `tblknowledgebase`;

CREATE TABLE `tblknowledgebase` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblknowledgebase` */

/*Table structure for table `tblknowledgebasearticleanswers` */

DROP TABLE IF EXISTS `tblknowledgebasearticleanswers`;

CREATE TABLE `tblknowledgebasearticleanswers` (
  `articleanswerid` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`articleanswerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblknowledgebasearticleanswers` */

/*Table structure for table `tblknowledgebasegroups` */

DROP TABLE IF EXISTS `tblknowledgebasegroups`;

CREATE TABLE `tblknowledgebasegroups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblknowledgebasegroups` */

/*Table structure for table `tblleadactivitylog` */

DROP TABLE IF EXISTS `tblleadactivitylog`;

CREATE TABLE `tblleadactivitylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

/*Data for the table `tblleadactivitylog` */

insert  into `tblleadactivitylog`(`id`,`leadid`,`description`,`additional_data`,`date`,`staffid`,`full_name`) values (81,22,'not_lead_activity_assigned_to','a:2:{i:0;s:6:\"bdd1 1\";i:1;s:79:\"<a href=\"http://localhost:81/perfex/admin/profile/7\" target=\"_blank\">bde2 2</a>\";}','2017-01-19 15:55:24',4,'bdd1 1'),(80,22,'not_lead_activity_created','','2017-01-19 15:55:24',4,'bdd1 1'),(79,21,'not_lead_activity_assigned_to','a:2:{i:0;s:6:\"bdd1 1\";i:1;s:79:\"<a href=\"http://localhost:81/perfex/admin/profile/3\" target=\"_blank\">BDE1 1</a>\";}','2017-01-19 15:48:04',4,'bdd1 1'),(77,16,'not_lead_activity_assigned_to','a:2:{i:0;s:1:\" \";i:1;s:62:\"<a href=\"http://localhost:81/perfex/admin/profile/6\">gm1 1</a>\";}','2017-01-19 12:18:03',1,' '),(78,21,'not_lead_activity_created','','2017-01-19 15:48:04',4,'bdd1 1'),(76,20,'not_lead_activity_assigned_to','a:2:{i:0;s:1:\" \";i:1;s:87:\"<a href=\"http://localhost:81/perfex/admin/profile/2\" target=\"_blank\">rey castanares</a>\";}','2017-01-18 18:03:14',1,' '),(67,16,'not_lead_activity_created','','2017-01-18 17:24:09',1,' '),(35,20,'not_lead_activity_created','','2017-01-17 15:30:50',1,' '),(36,20,'not_lead_activity_assigned_to','a:2:{i:0;s:1:\" \";i:1;s:87:\"<a href=\"http://localhost:81/perfex/admin/profile/2\" target=\"_blank\">rey castanares</a>\";}','2017-01-17 15:30:50',1,' '),(75,20,'not_lead_activity_created','','2017-01-18 18:03:14',1,' '),(68,16,'not_lead_activity_assigned_to','a:2:{i:0;s:1:\" \";i:1;s:87:\"<a href=\"http://localhost:81/perfex/admin/profile/2\" target=\"_blank\">rey castanares</a>\";}','2017-01-18 17:24:09',1,' '),(66,15,'not_lead_activity_assigned_to','a:2:{i:0;s:1:\" \";i:1;s:87:\"<a href=\"http://localhost:81/perfex/admin/profile/2\" target=\"_blank\">rey castanares</a>\";}','2017-01-18 17:18:32',1,' '),(65,15,'not_lead_activity_created','','2017-01-18 17:18:32',1,' '),(63,14,'not_lead_activity_created','','2017-01-18 16:49:45',1,' '),(64,14,'not_lead_activity_assigned_to','a:2:{i:0;s:1:\" \";i:1;s:87:\"<a href=\"http://localhost:81/perfex/admin/profile/2\" target=\"_blank\">rey castanares</a>\";}','2017-01-18 16:49:45',1,' '),(82,15,'not_lead_activity_assigned_to','a:2:{i:0;s:1:\" \";i:1;s:62:\"<a href=\"http://localhost:81/perfex/admin/profile/6\">gm1 1</a>\";}','2017-01-19 16:47:08',1,' ');

/*Table structure for table `tblleads` */

DROP TABLE IF EXISTS `tblleads`;

CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(300) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT '1',
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT '0',
  `junk` int(11) NOT NULL DEFAULT '0',
  `last_lead_status` int(11) NOT NULL DEFAULT '0',
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT '0',
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `assigned` (`assigned`),
  KEY `source` (`source`),
  KEY `lastcontact` (`lastcontact`),
  KEY `leadorder` (`leadorder`),
  KEY `dateadded` (`dateadded`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `tblleads` */

insert  into `tblleads`(`id`,`name`,`title`,`company`,`country`,`zip`,`city`,`state`,`address`,`assigned`,`dateadded`,`status`,`source`,`lastcontact`,`dateassigned`,`last_status_change`,`addedfrom`,`email`,`leadorder`,`phonenumber`,`date_converted`,`lost`,`junk`,`last_lead_status`,`is_imported_from_email_integration`,`email_integration_uid`,`is_public`,`client_id`) values (20,'testd1 testd1','','',25,'','','','',2,'2017-01-18 18:03:14',2,2,'2017-01-18 18:03:14','2017-01-18',NULL,1,'d@d.com',1,'',NULL,0,0,0,0,NULL,0,0),(21,'teste teste','','',14,'','','','',3,'2017-01-19 15:48:04',2,2,'2017-01-19 15:48:04','2017-01-19',NULL,4,'e@e.com',1,'',NULL,0,0,0,0,NULL,0,0),(22,'testf testf','','',6,'','','','',7,'2017-01-19 15:55:24',2,2,'2017-01-19 15:55:24','2017-01-19',NULL,4,'f@f.com',1,'',NULL,0,0,0,0,NULL,0,0),(14,'testa testa','','',1,'','','','',2,'2017-01-18 16:49:45',2,1,'2017-01-18 16:49:45','2017-01-18',NULL,1,'a@a.com',1,'',NULL,0,0,0,0,NULL,0,0),(15,'testb testb','','',2,'','','','',6,'2017-01-18 17:18:32',2,2,'2017-01-18 17:18:32','2017-01-19',NULL,1,'b@b.com',1,'',NULL,0,0,0,0,NULL,0,0),(16,'testc testc','','',3,'','','','',6,'2017-01-18 17:24:09',2,2,'2017-01-18 17:24:09','2017-01-19',NULL,1,'c@c.com',1,'',NULL,0,0,0,0,NULL,0,0);

/*Table structure for table `tblleadsemailintegration` */

DROP TABLE IF EXISTS `tblleadsemailintegration`;

CREATE TABLE `tblleadsemailintegration` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT '5',
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT '1',
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT '1',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tblleadsemailintegration` */

insert  into `tblleadsemailintegration`(`id`,`active`,`email`,`imap_server`,`password`,`check_every`,`responsible`,`lead_source`,`lead_status`,`encryption`,`folder`,`last_run`,`notify_lead_imported`,`notify_lead_contact_more_times`,`notify_type`,`notify_ids`,`only_loop_on_unseen_emails`,`delete_after_import`) values (1,0,'','','',10,0,0,0,'tls','inbox','',1,1,'roles','',1,0);

/*Table structure for table `tblleadsemailintegrationemails` */

DROP TABLE IF EXISTS `tblleadsemailintegrationemails`;

CREATE TABLE `tblleadsemailintegrationemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext,
  `body` mediumtext,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblleadsemailintegrationemails` */

/*Table structure for table `tblleadssources` */

DROP TABLE IF EXISTS `tblleadssources`;

CREATE TABLE `tblleadssources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tblleadssources` */

insert  into `tblleadssources`(`id`,`name`) values (1,'Google'),(2,'Facebook');

/*Table structure for table `tblleadsstatus` */

DROP TABLE IF EXISTS `tblleadsstatus`;

CREATE TABLE `tblleadsstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tblleadsstatus` */

insert  into `tblleadsstatus`(`id`,`name`,`statusorder`,`color`,`isdefault`) values (1,'Client',2,'#7cb342',1),(2,'Prospect',1,'',0);

/*Table structure for table `tbllistemails` */

DROP TABLE IF EXISTS `tbllistemails`;

CREATE TABLE `tbllistemails` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbllistemails` */

/*Table structure for table `tblmaillistscustomfields` */

DROP TABLE IF EXISTS `tblmaillistscustomfields`;

CREATE TABLE `tblmaillistscustomfields` (
  `customfieldid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `fieldslug` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblmaillistscustomfields` */

/*Table structure for table `tblmaillistscustomfieldvalues` */

DROP TABLE IF EXISTS `tblmaillistscustomfieldvalues`;

CREATE TABLE `tblmaillistscustomfieldvalues` (
  `customfieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `customfieldid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldvalueid`),
  KEY `customfieldid` (`customfieldid`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblmaillistscustomfieldvalues` */

/*Table structure for table `tblmigrations` */

DROP TABLE IF EXISTS `tblmigrations`;

CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblmigrations` */

insert  into `tblmigrations`(`version`) values (130);

/*Table structure for table `tblmilestones` */

DROP TABLE IF EXISTS `tblmilestones`;

CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL,
  `description` text,
  `description_visible_to_customer` tinyint(1) DEFAULT '0',
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `datecreated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblmilestones` */

/*Table structure for table `tblnotes` */

DROP TABLE IF EXISTS `tblnotes`;

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblnotes` */

/*Table structure for table `tblnotifications` */

DROP TABLE IF EXISTS `tblnotifications`;

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT '0',
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext,
  `additional_data` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `tblnotifications` */

insert  into `tblnotifications`(`id`,`isread`,`date`,`description`,`fromuserid`,`fromclientid`,`from_fullname`,`touserid`,`fromcompany`,`link`,`additional_data`) values (1,1,'2017-01-17 14:38:03','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=2','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(2,1,'2017-01-17 14:44:26','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=3','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(3,1,'2017-01-17 14:45:26','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=4','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(4,1,'2017-01-17 14:46:55','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=5','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(5,1,'2017-01-17 14:47:58','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=6','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(6,1,'2017-01-17 14:57:30','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=7','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(7,1,'2017-01-17 15:08:42','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=11','a:2:{i:0;s:1:\" \";i:1;s:4:\"test\";}'),(8,1,'2017-01-17 15:14:41','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=12','a:2:{i:0;s:1:\" \";i:1;s:4:\"test\";}'),(9,1,'2017-01-17 15:15:57','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=13','a:2:{i:0;s:1:\" \";i:1;s:4:\"test\";}'),(10,1,'2017-01-17 15:18:28','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=14','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(11,1,'2017-01-17 15:23:30','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=15','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(12,1,'2017-01-17 15:26:14','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=16','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(13,1,'2017-01-17 15:27:03','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=17','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(14,1,'2017-01-17 15:28:01','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=18','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(15,1,'2017-01-17 15:29:35','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=19','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(16,1,'2017-01-17 15:30:50','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=20','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(17,1,'2017-01-17 15:33:30','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=1','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(18,1,'2017-01-17 15:35:00','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=2','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(19,1,'2017-01-17 15:35:49','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=3','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(20,1,'2017-01-17 15:35:49','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=4','a:2:{i:0;s:1:\" \";i:1;s:19:\"Mr. Rey Castanares1\";}'),(21,1,'2017-01-17 15:40:54','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=5','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(22,1,'2017-01-17 16:38:35','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=6','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(23,1,'2017-01-17 16:54:45','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=7','a:2:{i:0;s:1:\" \";i:1;s:18:\"Mr. Rey Castanares\";}'),(24,1,'2017-01-17 16:54:45','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=8','a:2:{i:0;s:1:\" \";i:1;s:19:\"Mr. Rey Castanares1\";}'),(25,1,'2017-01-18 11:40:04','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=9','a:2:{i:0;s:1:\" \";i:1;s:4:\"test\";}'),(26,1,'2017-01-18 15:35:36','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=10','a:2:{i:0;s:1:\" \";i:1;s:6:\"testcn\";}'),(27,1,'2017-01-18 16:33:10','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=11','a:2:{i:0;s:1:\" \";i:1;s:0:\"\";}'),(28,1,'2017-01-18 16:35:58','not_assigned_lead_to_you',3,0,'BDE1 1',2,NULL,'#leadid=12','a:2:{i:0;s:6:\"BDE1 1\";i:1;s:0:\"\";}'),(29,1,'2017-01-18 16:45:32','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=13','a:2:{i:0;s:1:\" \";i:1;s:0:\"\";}'),(30,1,'2017-01-18 16:49:45','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=14','a:2:{i:0;s:1:\" \";i:1;s:0:\"\";}'),(31,1,'2017-01-18 17:18:32','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=15','a:2:{i:0;s:1:\" \";i:1;s:5:\"testb\";}'),(32,1,'2017-01-18 17:24:09','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=16','a:2:{i:0;s:1:\" \";i:1;s:5:\"testc\";}'),(33,0,'2017-01-18 17:26:56','not_assigned_lead_to_you',1,0,' ',6,NULL,'#leadid=17','a:2:{i:0;s:1:\" \";i:1;s:0:\"\";}'),(34,0,'2017-01-18 18:00:59','not_assigned_lead_to_you',1,0,' ',5,NULL,'#leadid=18','a:2:{i:0;s:1:\" \";i:1;s:5:\"teste\";}'),(35,0,'2017-01-18 18:01:49','not_assigned_lead_to_you',1,0,' ',3,NULL,'#leadid=19','a:2:{i:0;s:1:\" \";i:1;s:5:\"testf\";}'),(36,1,'2017-01-18 18:03:14','not_assigned_lead_to_you',1,0,' ',2,NULL,'#leadid=20','a:2:{i:0;s:1:\" \";i:1;s:5:\"testd\";}'),(37,0,'2017-01-19 12:18:03','not_assigned_lead_to_you',1,0,' ',6,NULL,'#leadid=16','a:2:{i:0;s:1:\" \";i:1;s:11:\"testc testa\";}'),(38,0,'2017-01-19 15:48:04','not_assigned_lead_to_you',4,0,'bdd1 1',3,NULL,'#leadid=21','a:2:{i:0;s:6:\"bdd1 1\";i:1;s:5:\"teste\";}'),(39,0,'2017-01-19 15:55:24','not_assigned_lead_to_you',4,0,'bdd1 1',7,NULL,'#leadid=22','a:2:{i:0;s:6:\"bdd1 1\";i:1;s:5:\"testf\";}'),(40,0,'2017-01-19 16:47:08','not_assigned_lead_to_you',1,0,' ',6,NULL,'#leadid=15','a:2:{i:0;s:1:\" \";i:1;s:11:\"testb testa\";}');

/*Table structure for table `tbloptions` */

DROP TABLE IF EXISTS `tbloptions`;

CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;

/*Data for the table `tbloptions` */

insert  into `tbloptions`(`id`,`name`,`value`) values (1,'dateformat','Y-m-d|%Y-%m-%d'),(2,'companyname',''),(3,'services','1'),(4,'maximum_allowed_ticket_attachments','4'),(5,'ticket_attachments_file_extensions','.jpg,.png,.pdf,.doc,.docx'),(6,'staff_access_only_assigned_departments','1'),(7,'use_knowledge_base','1'),(8,'smtp_email',''),(9,'smtp_password',''),(10,'smtp_port',''),(11,'smtp_host',''),(12,'smtp_email_charset','utf-8'),(13,'default_timezone','Asia/Hong_Kong'),(14,'clients_default_theme','perfex'),(15,'company_logo','logo.png'),(16,'tables_pagination_limit','25'),(17,'main_domain',''),(18,'allow_registration','0'),(19,'knowledge_base_without_registration','1'),(20,'email_signature',''),(21,'default_staff_role','1'),(22,'newsfeed_maximum_files_upload','20'),(23,'newsfeed_maximum_file_size','10'),(24,'contract_expiration_before','4'),(25,'invoice_prefix','INV-'),(26,'decimal_separator','.'),(27,'thousand_separator',','),(28,'currency_placement','before'),(29,'invoice_company_name',''),(30,'invoice_company_address',''),(31,'invoice_company_city',''),(32,'invoice_company_country_code',''),(33,'invoice_company_postal_code',''),(34,'invoice_company_phonenumber',''),(35,'view_invoice_only_logged_in','0'),(36,'invoice_number_format','1'),(37,'next_invoice_number','1'),(38,'cron_send_invoice_overdue_reminder','1'),(39,'active_language','english'),(40,'invoice_number_decrement_on_delete','1'),(41,'automatically_send_invoice_overdue_reminder_after','7'),(42,'automatically_resend_invoice_overdue_reminder_after','3'),(43,'last_recurring_expenses_cron',''),(44,'survey_send_emails_per_cron_run','100'),(45,'delete_only_on_last_invoice','1'),(46,'delete_only_on_last_estimate','1'),(47,'create_invoice_from_recurring_only_on_paid_invoices','0'),(48,'allow_payment_amount_to_be_modified','1'),(49,'send_renewed_invoice_from_recurring_to_email','1'),(50,'rtl_support_client','0'),(51,'last_recurring_invoices_cron',''),(52,'limit_top_search_bar_results_to','10'),(53,'estimate_prefix','EST-'),(54,'next_estimate_number','1'),(55,'estimate_number_decrement_on_delete','1'),(56,'estimate_number_format','1'),(57,'estimate_auto_convert_to_invoice_on_client_accept','1'),(58,'exclude_estimate_from_client_area_with_draft_status','1'),(59,'rtl_support_admin','0'),(60,'last_cron_run',''),(61,'show_sale_agent_on_estimates','1'),(62,'show_sale_agent_on_invoices','1'),(63,'predefined_terms_invoice',''),(64,'leads_default_source',''),(65,'default_contact_permissions','a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}'),(66,'predefined_terms_estimate',''),(67,'predefined_clientnote_invoice',''),(68,'predefined_clientnote_estimate',''),(69,'custom_pdf_logo_image_url',''),(70,'number_padding_prefixes','6'),(71,'favicon','favicon.ico'),(72,'auto_backup_enabled','0'),(73,'invoice_due_after','7'),(74,'google_api_key',''),(75,'google_calendar_main_calendar',''),(76,'default_tax',''),(77,'show_invoices_on_calendar','1'),(78,'show_estimates_on_calendar','1'),(79,'show_contracts_on_calendar','1'),(80,'show_tasks_on_calendar','1'),(81,'show_customer_reminders_on_calendar','1'),(82,'auto_backup_every','7'),(83,'last_auto_backup',''),(84,'output_client_pdfs_from_admin_area_in_client_language','0'),(85,'show_lead_reminders_on_calendar','1'),(86,'aside_menu_active','{\"aside_menu_active\":[{\"name\":\"als_dashboard\",\"url\":\"\\/\",\"permission\":\"\",\"icon\":\"fa fa-tachometer\",\"id\":\"dashboard\"},{\"name\":\"als_clients\",\"url\":\"clients\",\"permission\":\"customers\",\"icon\":\"fa fa-users\",\"id\":\"customers\"},{\"name\":\"als_leads\",\"url\":\"leads\",\"permission\":\"is_staff_member\",\"icon\":\"fa fa-tty\",\"id\":\"leads\"},{\"name\":\"support\",\"url\":\"tickets\",\"permission\":\"\",\"icon\":\"fa fa-life-ring\",\"id\":\"tickets\"},{\"name\":\"als_tasks\",\"url\":\"tasks\\/list_tasks\",\"permission\":\"\",\"icon\":\"fa fa-tasks\",\"id\":\"tasks\"},{\"name\":\"als_kb\",\"url\":\"#\",\"permission\":\"knowledge_base\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"knowledge-base\",\"children\":[{\"name\":\"als_all_articles\",\"url\":\"knowledge_base\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-all-articles\"},{\"name\":\"als_kb_groups\",\"url\":\"knowledge_base\\/manage_groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-groups\"}]},{\"name\":\"als_reports\",\"url\":\"#\",\"permission\":\"reports\",\"icon\":\"fa fa-pie-chart\",\"id\":\"reports\",\"children\":[{\"name\":\"als_reports_sales_submenu\",\"url\":\"reports\\/sales\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-sales\"},{\"name\":\"als_reports_expenses\",\"url\":\"reports\\/expenses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses\"},{\"name\":\"als_expenses_vs_income\",\"url\":\"reports\\/expenses_vs_income\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses-vs-income\"},{\"name\":\"als_reports_leads_submenu\",\"url\":\"reports\\/leads\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-leads\"},{\"name\":\"als_kb_articles_submenu\",\"url\":\"reports\\/knowledge_base_articles\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-kb-articles\"}]},{\"name\":\"als_utilities\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cogs\",\"id\":\"utilities\",\"children\":[{\"name\":\"als_media\",\"url\":\"utilities\\/media\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-media\"},{\"name\":\"bulk_pdf_exporter\",\"url\":\"utilities\\/bulk_pdf_exporter\",\"permission\":\"bulk_pdf_exporter\",\"icon\":\"\",\"id\":\"child-bulk-pdf-exporter\"},{\"name\":\"als_calendar_submenu\",\"url\":\"utilities\\/calendar\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-calendar\"},{\"name\":\"als_goals_tracking\",\"url\":\"goals\",\"permission\":\"goals\",\"icon\":\"\",\"id\":\"child-goals-tracking\"},{\"name\":\"als_surveys\",\"url\":\"surveys\",\"permission\":\"surveys\",\"icon\":\"\",\"id\":\"child-surveys\"},{\"name\":\"als_announcements_submenu\",\"url\":\"announcements\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-announcements\"},{\"name\":\"utility_backup\",\"url\":\"utilities\\/backup\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-database-backup\"},{\"name\":\"als_activity_log_submenu\",\"url\":\"utilities\\/activity_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-activity-log\"},{\"name\":\"ticket_pipe_log\",\"url\":\"utilities\\/pipe_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-pipe-log\"}]}]}'),(87,'show_expense_reminders_on_calendar','1'),(88,'only_show_contact_tickets','1'),(89,'aside_menu_inactive','{\"aside_menu_inactive\":[{\"name\":\"projects\",\"url\":\"projects\",\"permission\":\"\",\"icon\":\"fa fa-cubes\",\"id\":\"projects\"},{\"name\":\"als_sales\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-balance-scale\",\"id\":\"sales\",\"children\":[{\"name\":\"proposals\",\"url\":\"proposals\",\"permission\":\"proposals\",\"icon\":\"\",\"id\":\"child-proposals\"},{\"name\":\"estimates\",\"url\":\"estimates\\/list_estimates\",\"permission\":\"estimates\",\"icon\":\"\",\"id\":\"child-estimates\"},{\"name\":\"invoices\",\"url\":\"invoices\\/list_invoices\",\"permission\":\"invoices\",\"icon\":\"\",\"id\":\"child-invoices\"},{\"name\":\"payments\",\"url\":\"payments\",\"permission\":\"payments\",\"icon\":\"\",\"id\":\"child-payments\"},{\"name\":\"items\",\"url\":\"invoice_items\",\"permission\":\"items\",\"icon\":\"\",\"id\":\"child-items\"}]},{\"name\":\"als_expenses\",\"url\":\"expenses\\/list_expenses\",\"permission\":\"expenses\",\"icon\":\"fa fa-sort-amount-asc\",\"id\":\"expenses\"},{\"name\":\"als_contracts\",\"url\":\"contracts\",\"permission\":\"contracts\",\"icon\":\"fa fa-file\",\"id\":\"contracts\"}]}'),(90,'setup_menu_active','{\"setup_menu_active\":[{\"name\":\"als_staff\",\"url\":\"staff\",\"permission\":\"staff\",\"icon\":\"\",\"id\":\"staff\"},{\"name\":\"clients\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"customers\",\"children\":[{\"name\":\"customer_groups\",\"url\":\"clients\\/groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"groups\"}]},{\"name\":\"support\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"\",\"id\":\"tickets\",\"children\":[{\"name\":\"acs_departments\",\"url\":\"departments\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"departments\"},{\"name\":\"acs_ticket_predefined_replies_submenu\",\"url\":\"tickets\\/predifined_replies\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"predifined-replies\"},{\"name\":\"acs_ticket_priority_submenu\",\"url\":\"tickets\\/priorities\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-priority\"},{\"name\":\"acs_ticket_statuses_submenu\",\"url\":\"tickets\\/statuses\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-statuses\"},{\"name\":\"acs_ticket_services_submenu\",\"url\":\"tickets\\/services\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"services\"},{\"name\":\"spam_filters\",\"url\":\"tickets\\/spam_filters\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"spam-filters\"}]},{\"name\":\"acs_leads\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"leads\",\"children\":[{\"name\":\"acs_leads_sources_submenu\",\"url\":\"leads\\/sources\",\"permission\":\"\",\"icon\":\"\",\"id\":\"sources\"},{\"name\":\"acs_leads_statuses_submenu\",\"url\":\"leads\\/statuses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"statuses\"},{\"name\":\"leads_email_integration\",\"url\":\"leads\\/email_integration\",\"permission\":\"\",\"icon\":\"\",\"id\":\"email-integration\"}]},{\"name\":\"acs_finance\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"finance\",\"children\":[{\"name\":\"acs_sales_taxes_submenu\",\"url\":\"taxes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"taxes\"},{\"name\":\"acs_sales_currencies_submenu\",\"url\":\"currencies\",\"permission\":\"\",\"icon\":\"\",\"id\":\"currencies\"},{\"name\":\"acs_sales_payment_modes_submenu\",\"url\":\"paymentmodes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"payment-modes\"},{\"name\":\"acs_expense_categories\",\"url\":\"expenses\\/categories\",\"permission\":\"\",\"icon\":\"\",\"id\":\"expenses-categories\"}]},{\"name\":\"acs_contracts\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"contracts\",\"children\":[{\"name\":\"acs_contract_types\",\"url\":\"contracts\\/types\",\"permission\":\"\",\"icon\":\"\",\"id\":\"contract-types\"}]},{\"name\":\"acs_email_templates\",\"url\":\"emails\",\"permission\":\"email_templates\",\"icon\":\"\",\"id\":\"email-templates\"},{\"name\":\"asc_custom_fields\",\"url\":\"custom_fields\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"custom-fields\"},{\"name\":\"acs_roles\",\"url\":\"roles\",\"permission\":\"roles\",\"icon\":\"\",\"id\":\"roles\"},{\"name\":\"menu_builder\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"menu-builder\",\"children\":[{\"name\":\"main_menu\",\"url\":\"utilities\\/main_menu\",\"permission\":\"\",\"icon\":\"\",\"id\":\"organize-sidebar\"},{\"name\":\"setup_menu\",\"url\":\"utilities\\/setup_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"setup-menu\"}]},{\"name\":\"theme_style\",\"url\":\"utilities\\/theme_style\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"theme-style\"},{\"name\":\"acs_settings\",\"url\":\"settings\",\"permission\":\"settings\",\"icon\":\"\",\"id\":\"settings\"}]}'),(91,'access_tickets_to_none_staff_members','0'),(92,'setup_menu_inactive','{\"setup_menu_inactive\":[]}'),(93,'customer_default_country',''),(94,'view_estimate_only_logged_in','0'),(95,'show_status_on_pdf_ei','1'),(96,'email_piping_only_replies','0'),(97,'email_piping_only_registered','0'),(98,'email_piping_enabled','0'),(99,'email_piping_default_priority','2'),(100,'total_to_words_lowercase','0'),(101,'show_tax_per_item','1'),(102,'last_survey_send_cron',''),(103,'total_to_words_enabled','0'),(104,'receive_notification_on_new_ticket','0'),(105,'autoclose_tickets_after','48'),(106,'media_max_file_size_upload','50'),(107,'client_staff_add_edit_delete_task_comments_first_hour','0'),(108,'show_projects_on_calendar','1'),(109,'leads_kanban_limit','50'),(110,'tasks_reminder_notification_before','2'),(111,'pdf_font','freesans'),(112,'pdf_table_heading_color','#323a45'),(113,'pdf_table_heading_text_color','#ffffff'),(114,'pdf_font_size','10'),(115,'defaut_leads_kanban_sort','dateadded'),(116,'defaut_leads_kanban_sort_type','desc'),(117,'allowed_files','.gif,.png,.jpeg,.jpg,.pdf,.doc,.txt,.docx,.xls,.zip,.rar,.xlsx,.mp4,.psd,.csv'),(118,'show_all_tasks_for_project_member','1'),(119,'email_protocol','smtp'),(120,'calendar_first_day','0'),(121,'recaptcha_secret_key',''),(122,'show_help_on_setup_menu','1'),(123,'show_proposals_on_calendar','1'),(124,'smtp_encryption',''),(125,'recaptcha_site_key',''),(126,'smtp_username',''),(127,'auto_stop_tasks_timers_on_new_timer','0'),(128,'notification_when_customer_pay_invoice','1'),(129,'theme_style','[]'),(130,'calendar_invoice_color','#ff6f00'),(131,'calendar_estimate_color','#ff6f00'),(132,'calendar_proposal_color','#84c529'),(133,'calendar_task_color','#fc2d42'),(134,'calendar_reminder_color','#03a9f4'),(135,'calendar_contract_color','#b72974'),(136,'calendar_project_color','#eda334'),(137,'update_info_message',''),(138,'pdf_logo_width','100'),(139,'show_invoice_reminders_on_calendar','1'),(140,'show_estimate_reminders_on_calendar','1'),(141,'show_proposal_reminders_on_calendar','1'),(142,'proposal_due_after','7'),(143,'allow_customer_to_change_ticket_status','0'),(144,'lead_lock_after_convert_to_customer','0'),(145,'default_estimates_pipeline_sort','expirydate'),(146,'default_proposals_pipeline_sort','open_till'),(147,'defaut_proposals_pipeline_sort_type','desc'),(148,'defaut_estimates_pipeline_sort_type','desc'),(149,'send_estimate_expiry_reminder_before','4'),(150,'estimate_expiry_reminder_enabled','1'),(151,'leads_default_status','2'),(152,'proposal_expiry_reminder_enabled','1'),(153,'send_proposal_expiry_reminder_before','4'),(154,'use_recaptcha_customers_area','0'),(155,'remove_decimals_on_zero','0'),(156,'remove_tax_name_from_item_table','0'),(157,'pdf_format_invoice','A4-PORTRAIT'),(158,'pdf_format_estimate','A4-PORTRAIT'),(159,'pdf_format_proposal','A4-PORTRAIT'),(160,'pdf_format_payment','A4-PORTRAIT'),(161,'pdf_format_contract','A4-PORTRAIT'),(162,'swap_pdf_info','0'),(163,'pdf_text_color','#000000'),(164,'auto_check_for_new_notifications','0'),(165,'exclude_invoice_from_client_area_with_draft_status','1'),(166,'cron_has_run_from_cli','1'),(167,'hide_cron_is_required_message','0'),(168,'dropbox_app_key',''),(169,'auto_assign_customer_admin_after_lead_convert','1'),(170,'default_task_priority','2'),(171,'show_transactions_on_invoice_pdf','1'),(172,'tasks_kanban_limit','50'),(173,'show_pay_link_to_invoice_pdf','1'),(174,'proposal_number_prefix','PRO-'),(175,'proposals_pipeline_limit','50'),(176,'estimates_pipeline_limit','50'),(177,'purchase_key',''),(178,'paymentmethod_stripe_active','0'),(179,'paymentmethod_stripe_label','Stripe'),(180,'paymentmethod_stripe_api_secret_key',''),(181,'paymentmethod_stripe_api_publishable_key',''),(182,'paymentmethod_stripe_currencies','USD,CAD'),(183,'paymentmethod_stripe_test_mode_enabled','1'),(184,'paymentmethod_two_checkout_active','0'),(185,'paymentmethod_two_checkout_label','2Checkout'),(186,'paymentmethod_two_checkout_account_number',''),(187,'paymentmethod_two_checkout_private_key',''),(188,'paymentmethod_two_checkout_publishable_key',''),(189,'paymentmethod_two_checkout_currencies','USD,EUR'),(190,'paymentmethod_two_checkout_test_mode_enabled','1'),(191,'paymentmethod_paypal_active','0'),(192,'paymentmethod_paypal_label','Paypal'),(193,'paymentmethod_paypal_username',''),(194,'paymentmethod_paypal_password',''),(195,'paymentmethod_paypal_signature',''),(196,'paymentmethod_paypal_currencies','EUR,USD'),(197,'paymentmethod_paypal_test_mode_enabled','1'),(198,'paymentmethod_mollie_active','0'),(199,'paymentmethod_mollie_label','Mollie'),(200,'paymentmethod_mollie_api_key',''),(201,'paymentmethod_mollie_currencies','EUR'),(202,'paymentmethod_mollie_test_mode_enabled','1'),(203,'paymentmethod_authorize_sim_active','0'),(204,'paymentmethod_authorize_sim_label','Authorize.net'),(205,'paymentmethod_authorize_sim_api_login_id',''),(206,'paymentmethod_authorize_sim_api_transaction_key',''),(207,'paymentmethod_authorize_sim_api_secret_key',''),(208,'paymentmethod_authorize_sim_currencies','USD'),(209,'paymentmethod_authorize_sim_test_mode_enabled','0'),(210,'paymentmethod_authorize_sim_developer_mode_enabled','1'),(211,'paymentmethod_authorize_aim_active','0'),(212,'paymentmethod_authorize_aim_label','Authorize.net'),(213,'paymentmethod_authorize_aim_api_login_id',''),(214,'paymentmethod_authorize_aim_api_transaction_key',''),(215,'paymentmethod_authorize_aim_currencies','USD'),(216,'paymentmethod_authorize_aim_test_mode_enabled','0'),(217,'paymentmethod_authorize_aim_developer_mode_enabled','1');

/*Table structure for table `tblpermissions` */

DROP TABLE IF EXISTS `tblpermissions`;

CREATE TABLE `tblpermissions` (
  `permissionid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `shortname` mediumtext NOT NULL,
  PRIMARY KEY (`permissionid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `tblpermissions` */

insert  into `tblpermissions`(`permissionid`,`name`,`shortname`) values (1,'Contracts','contracts'),(2,'Tasks','tasks'),(3,'Reports','reports'),(4,'Settings','settings'),(5,'Projects','projects'),(6,'Surveys','surveys'),(7,'Staff','staff'),(8,'Customers','customers'),(9,'Email Templates','email_templates'),(10,'Roles','roles'),(11,'Estimates','estimates'),(12,'Knowledge base','knowledge_base'),(13,'Proposals','proposals'),(14,'Goals','goals'),(15,'Expenses','expenses'),(16,'Bulk PDF Exporter','bulk_pdf_exporter'),(17,'Payments','payments'),(18,'Invoices','invoices'),(19,'Items','items'),(20,'Leads','leads');

/*Table structure for table `tblpinnedprojects` */

DROP TABLE IF EXISTS `tblpinnedprojects`;

CREATE TABLE `tblpinnedprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblpinnedprojects` */

/*Table structure for table `tblpostcomments` */

DROP TABLE IF EXISTS `tblpostcomments`;

CREATE TABLE `tblpostcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblpostcomments` */

/*Table structure for table `tblpostlikes` */

DROP TABLE IF EXISTS `tblpostlikes`;

CREATE TABLE `tblpostlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblpostlikes` */

/*Table structure for table `tblposts` */

DROP TABLE IF EXISTS `tblposts`;

CREATE TABLE `tblposts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblposts` */

/*Table structure for table `tblpredifinedreplies` */

DROP TABLE IF EXISTS `tblpredifinedreplies`;

CREATE TABLE `tblpredifinedreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblpredifinedreplies` */

/*Table structure for table `tblpriorities` */

DROP TABLE IF EXISTS `tblpriorities`;

CREATE TABLE `tblpriorities` (
  `priorityid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`priorityid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tblpriorities` */

insert  into `tblpriorities`(`priorityid`,`name`) values (1,'Low'),(2,'Medium'),(3,'High');

/*Table structure for table `tblprojectactivity` */

DROP TABLE IF EXISTS `tblprojectactivity`;

CREATE TABLE `tblprojectactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `description_key` varchar(500) NOT NULL COMMENT 'Language file key',
  `additional_data` text,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblprojectactivity` */

/*Table structure for table `tblprojectdiscussioncomments` */

DROP TABLE IF EXISTS `tblprojectdiscussioncomments`;

CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `fullname` varchar(300) DEFAULT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblprojectdiscussioncomments` */

/*Table structure for table `tblprojectdiscussions` */

DROP TABLE IF EXISTS `tblprojectdiscussions`;

CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblprojectdiscussions` */

/*Table structure for table `tblprojectfiles` */

DROP TABLE IF EXISTS `tblprojectfiles`;

CREATE TABLE `tblprojectfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` mediumtext NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `description` text,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT '0',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblprojectfiles` */

/*Table structure for table `tblprojectmembers` */

DROP TABLE IF EXISTS `tblprojectmembers`;

CREATE TABLE `tblprojectmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblprojectmembers` */

/*Table structure for table `tblprojectnotes` */

DROP TABLE IF EXISTS `tblprojectnotes`;

CREATE TABLE `tblprojectnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblprojectnotes` */

/*Table structure for table `tblprojects` */

DROP TABLE IF EXISTS `tblprojects`;

CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `project_created` date NOT NULL,
  `progress` int(11) DEFAULT '0',
  `progress_from_tasks` int(11) NOT NULL DEFAULT '1',
  `project_cost` decimal(11,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblprojects` */

/*Table structure for table `tblprojectsettings` */

DROP TABLE IF EXISTS `tblprojectsettings`;

CREATE TABLE `tblprojectsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblprojectsettings` */

/*Table structure for table `tblproposalcomments` */

DROP TABLE IF EXISTS `tblproposalcomments`;

CREATE TABLE `tblproposalcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblproposalcomments` */

/*Table structure for table `tblproposals` */

DROP TABLE IF EXISTS `tblproposals`;

CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(500) DEFAULT NULL,
  `content` longtext,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(11,2) DEFAULT NULL,
  `discount_percent` decimal(11,2) NOT NULL,
  `discount_total` decimal(11,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(600) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblproposals` */

/*Table structure for table `tblreminders` */

DROP TABLE IF EXISTS `tblreminders`;

CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT '1',
  `creator` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblreminders` */

/*Table structure for table `tblrolepermissions` */

DROP TABLE IF EXISTS `tblrolepermissions`;

CREATE TABLE `tblrolepermissions` (
  `rolepermissionid` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `permissionid` int(11) NOT NULL,
  PRIMARY KEY (`rolepermissionid`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

/*Data for the table `tblrolepermissions` */

insert  into `tblrolepermissions`(`rolepermissionid`,`roleid`,`can_view`,`can_edit`,`can_create`,`can_delete`,`permissionid`) values (1,2,0,0,0,0,16),(2,2,0,0,0,0,1),(3,2,0,0,0,0,8),(4,2,0,0,0,0,9),(5,2,0,0,0,0,11),(6,2,0,0,0,0,15),(7,2,0,0,0,0,14),(8,2,0,0,0,0,18),(9,2,0,0,0,0,19),(10,2,0,0,0,0,12),(11,2,0,0,0,0,17),(12,2,1,1,1,0,5),(13,2,0,0,0,0,13),(14,2,0,0,0,0,3),(15,2,0,0,0,0,10),(16,2,0,0,0,0,4),(17,2,0,0,0,0,7),(18,2,0,0,0,0,6),(19,2,0,0,0,0,2),(20,2,0,0,0,0,20),(21,1,0,0,0,0,16),(22,1,0,0,0,0,1),(23,1,0,0,0,0,8),(24,1,0,0,0,0,9),(25,1,0,0,0,0,11),(26,1,0,0,0,0,15),(27,1,0,0,0,0,14),(28,1,0,0,0,0,18),(29,1,0,0,0,0,19),(30,1,0,0,0,0,12),(31,1,0,0,0,0,20),(32,1,0,0,0,0,17),(33,1,0,0,0,0,5),(34,1,0,0,0,0,13),(35,1,0,0,0,0,3),(36,1,0,0,0,0,10),(37,1,0,0,0,0,4),(38,1,0,0,0,0,7),(39,1,0,0,0,0,6),(40,1,0,0,0,0,2),(41,3,0,0,0,0,16),(42,3,0,0,0,0,1),(43,3,0,0,0,0,8),(44,3,0,0,0,0,9),(45,3,0,0,0,0,11),(46,3,0,0,0,0,15),(47,3,0,0,0,0,14),(48,3,0,0,0,0,18),(49,3,0,0,0,0,19),(50,3,0,0,0,0,12),(51,3,0,0,0,0,20),(52,3,0,0,0,0,17),(53,3,0,0,0,0,5),(54,3,0,0,0,0,13),(55,3,0,0,0,0,3),(56,3,0,0,0,0,10),(57,3,0,0,0,0,4),(58,3,0,0,0,0,7),(59,3,0,0,0,0,6),(60,3,0,0,0,0,2),(61,4,0,0,0,0,16),(62,4,0,0,0,0,1),(63,4,0,0,0,0,8),(64,4,0,0,0,0,9),(65,4,0,0,0,0,11),(66,4,0,0,0,0,15),(67,4,0,0,0,0,14),(68,4,0,0,0,0,18),(69,4,0,0,0,0,19),(70,4,0,0,0,0,12),(71,4,0,0,0,0,20),(72,4,0,0,0,0,17),(73,4,0,0,0,0,5),(74,4,0,0,0,0,13),(75,4,0,0,0,0,3),(76,4,0,0,0,0,10),(77,4,0,0,0,0,4),(78,4,0,0,0,0,7),(79,4,0,0,0,0,6),(80,4,0,0,0,0,2),(81,5,0,0,0,0,16),(82,5,0,0,0,0,1),(83,5,1,1,1,0,8),(84,5,0,0,0,0,9),(85,5,0,0,0,0,11),(86,5,0,0,0,0,15),(87,5,0,0,0,0,14),(88,5,0,0,0,0,18),(89,5,0,0,0,0,19),(90,5,0,0,0,0,12),(91,5,0,0,0,0,20),(92,5,0,0,0,0,17),(93,5,0,0,0,0,5),(94,5,0,0,0,0,13),(95,5,0,0,0,0,3),(96,5,0,0,0,0,10),(97,5,0,0,0,0,4),(98,5,0,0,0,0,7),(99,5,0,0,0,0,6),(100,5,0,0,0,0,2),(101,6,0,0,0,0,16),(102,6,0,0,0,0,1),(103,6,0,0,0,0,8),(104,6,0,0,0,0,9),(105,6,0,0,0,0,11),(106,6,0,0,0,0,15),(107,6,0,0,0,0,14),(108,6,0,0,0,0,18),(109,6,0,0,0,0,19),(110,6,0,0,0,0,12),(111,6,0,0,0,0,20),(112,6,0,0,0,0,17),(113,6,0,0,0,0,5),(114,6,0,0,0,0,13),(115,6,0,0,0,0,3),(116,6,0,0,0,0,10),(117,6,0,0,0,0,4),(118,6,0,0,0,0,7),(119,6,0,0,0,0,6),(120,6,0,0,0,0,2),(121,7,0,0,0,0,16),(122,7,0,0,0,0,1),(123,7,0,0,0,0,8),(124,7,0,0,0,0,9),(125,7,0,0,0,0,11),(126,7,0,0,0,0,15),(127,7,0,0,0,0,14),(128,7,0,0,0,0,18),(129,7,0,0,0,0,19),(130,7,0,0,0,0,12),(131,7,0,0,0,0,20),(132,7,0,0,0,0,17),(133,7,0,0,0,0,5),(134,7,0,0,0,0,13),(135,7,0,0,0,0,3),(136,7,0,0,0,0,10),(137,7,0,0,0,0,4),(138,7,0,0,0,0,7),(139,7,0,0,0,0,6),(140,7,0,0,0,0,2),(141,8,0,0,0,0,16),(142,8,0,0,0,0,1),(143,8,0,0,0,0,8),(144,8,0,0,0,0,9),(145,8,0,0,0,0,11),(146,8,0,0,0,0,15),(147,8,0,0,0,0,14),(148,8,0,0,0,0,18),(149,8,0,0,0,0,19),(150,8,0,0,0,0,12),(151,8,0,0,0,0,20),(152,8,0,0,0,0,17),(153,8,0,0,0,0,5),(154,8,0,0,0,0,13),(155,8,0,0,0,0,3),(156,8,0,0,0,0,10),(157,8,0,0,0,0,4),(158,8,0,0,0,0,7),(159,8,0,0,0,0,6),(160,8,0,0,0,0,2),(161,9,0,0,0,0,16),(162,9,0,0,0,0,1),(163,9,0,0,0,0,8),(164,9,0,0,0,0,9),(165,9,0,0,0,0,11),(166,9,0,0,0,0,15),(167,9,0,0,0,0,14),(168,9,0,0,0,0,18),(169,9,0,0,0,0,19),(170,9,0,0,0,0,12),(171,9,0,0,0,0,20),(172,9,0,0,0,0,17),(173,9,0,0,0,0,5),(174,9,0,0,0,0,13),(175,9,0,0,0,0,3),(176,9,0,0,0,0,10),(177,9,0,0,0,0,4),(178,9,0,0,0,0,7),(179,9,0,0,0,0,6),(180,9,0,0,0,0,2);

/*Table structure for table `tblroles` */

DROP TABLE IF EXISTS `tblroles`;

CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `tblroles` */

insert  into `tblroles`(`roleid`,`name`) values (6,'Chairman'),(3,'General Manage (GM)'),(7,'Director'),(2,'Business Development Director'),(4,'Business Development Manager'),(5,'Business Development Executive'),(1,'Client Servicing Manager'),(9,'Client Servicing Corporate'),(8,'Client Servicing - Individual');

/*Table structure for table `tblsalesactivity` */

DROP TABLE IF EXISTS `tblsalesactivity`;

CREATE TABLE `tblsalesactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblsalesactivity` */

/*Table structure for table `tblservices` */

DROP TABLE IF EXISTS `tblservices`;

CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblservices` */

/*Table structure for table `tblsessions` */

DROP TABLE IF EXISTS `tblsessions`;

CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblsessions` */

insert  into `tblsessions`(`id`,`ip_address`,`timestamp`,`data`) values ('4jv4qem6bi19f02l11mo0nv82fkc3n8o','::1',1484819666,'__ci_last_regenerate|i:1484819414;staff_user_id|s:1:\"4\";staff_logged_in|b:1;'),('rvh7tvj4528sk26jqjc9h3bfs2kkhkpg','::1',1484816283,'__ci_last_regenerate|i:1484816246;staff_user_id|s:1:\"3\";staff_logged_in|b:1;'),('mfq3kt0426qpm37unrj9d7c0rsl1quco','::1',1484816286,'__ci_last_regenerate|i:1484816285;staff_user_id|s:1:\"4\";staff_logged_in|b:1;'),('0qvfhhu6so6t3luu457voqit99b819qd','::1',1484819423,'__ci_last_regenerate|i:1484819339;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('8j8h2tc5rsndtl5pp21kiepke0qotj94','::1',1484815738,'__ci_last_regenerate|i:1484815666;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('14f6vln2rvgkruvvp6co2hg5lucv7q8n','::1',1484815770,'__ci_last_regenerate|i:1484815740;staff_user_id|s:1:\"4\";staff_logged_in|b:1;'),('qua4d64uegblhsnckl09ie1nhiic1364','::1',1484815764,'__ci_last_regenerate|i:1484815665;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('5fu0i57895roop1cqam37nert0hkjqch','::1',1484815629,'__ci_last_regenerate|i:1484815089;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('avvdechspn8cje8n19pfhq03k0rgctmp','::1',1484815563,'__ci_last_regenerate|i:1484815192;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('59lio79i13rm7oqgsm70f8sd89u9dhu6','::1',1484815060,'__ci_last_regenerate|i:1484814896;staff_user_id|s:1:\"4\";staff_logged_in|b:1;'),('57oknln3arpn3qqfom50fhp7fo9poan4','::1',1484815047,'__ci_last_regenerate|i:1484814747;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('pej0pb9cjdrq9lroa0g17vjqadml6udk','::1',1484814884,'__ci_last_regenerate|i:1484814595;staff_user_id|s:1:\"3\";staff_logged_in|b:1;'),('9m55g4hsq5jo41nqcascrlavvbh1it8b','::1',1484814850,'__ci_last_regenerate|i:1484814562;staff_user_id|s:1:\"4\";staff_logged_in|b:1;'),('qqeq0emb7f0cm3tdm30bq3ov3j6bnv1l','::1',1484812823,'__ci_last_regenerate|i:1484812822;staff_user_id|s:1:\"4\";staff_logged_in|b:1;'),('nkvvtd8au16kkm84la4i54mhs66s7p8p','::1',1484812819,'__ci_last_regenerate|i:1484812728;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:26:\"Role updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('hm5hu1vd3epqolm4oj7oun2s3d55n17k','::1',1484812560,'__ci_last_regenerate|i:1484812452;staff_user_id|s:1:\"3\";staff_logged_in|b:1;'),('qc5jnvkfdhv68citmddtuj2ng2fcaf6q','::1',1484812630,'__ci_last_regenerate|i:1484812394;staff_user_id|s:1:\"4\";staff_logged_in|b:1;'),('ql0o6dnlrdo444e1tacob4e4uonspv8a','::1',1484812721,'__ci_last_regenerate|i:1484812326;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('unbqoldapve407vhooo7nvai6ugcplu8','::1',1484812319,'__ci_last_regenerate|i:1484812000;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('tlkcorc62k55ujh23f58uunn5ju19udj','::1',1484812353,'__ci_last_regenerate|i:1484811584;staff_user_id|s:1:\"4\";staff_logged_in|b:1;'),('akie61hena3ispekfhmac4tok4ohgn43','::1',1484811997,'__ci_last_regenerate|i:1484811464;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('5uj4nk9oipk54tn1iievj61jr5457jk1','::1',1484789811,'__ci_last_regenerate|i:1484789718;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('k6kkb4mc9b6k68kmbiuvcm5e2kg3pj86','::1',1484790568,'__ci_last_regenerate|i:1484789732;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('hbho81ciaqo4j9cql9s0hpodv8tnscc5','::1',1484793934,'__ci_last_regenerate|i:1484790573;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('o5k3li68klpvdekqo9aip7difcj7lm4a','::1',1484794020,'__ci_last_regenerate|i:1484793936;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('toi4lddu1cof1668b12n1b1i4fguj4of','::1',1484794857,'__ci_last_regenerate|i:1484794461;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('v5lvtt35s2rd8mllkvd9rva2b449vteu','::1',1484795058,'__ci_last_regenerate|i:1484794858;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('21dioamri9mdnjvslgd4lr5b728t0hkp','::1',1484795186,'__ci_last_regenerate|i:1484795184;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('gu778sq6uv5of2k1rcoqptr27tjl0722','::1',1484795203,'__ci_last_regenerate|i:1484795195;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('rdateds7r3v4ln41bm2j6s2vuv4vc0ra','::1',1484795775,'__ci_last_regenerate|i:1484795530;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('mg5kpopqtsqeq2s8bojt7bcl50kctc3n','::1',1484795672,'__ci_last_regenerate|i:1484795651;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('kol0jt55nvtu13stb4pgcsg93ol6se0q','::1',1484797451,'__ci_last_regenerate|i:1484797398;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('33129d0mgibmi9fq1n0iavhdigfvkpif','::1',1484797528,'__ci_last_regenerate|i:1484797518;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('ffmgh0q55vuamgombteggd7k0i3rqd1l','::1',1484798257,'__ci_last_regenerate|i:1484798177;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('87okqnkqh79or3rhr4c11re5k5a494v0','::1',1484798658,'__ci_last_regenerate|i:1484798374;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('e23jdaf39a6gpca7gai667736shjtlkp','::1',1484799023,'__ci_last_regenerate|i:1484798893;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('7eu7k2vovbpr1t1rohe78vj5rev3n3le','::1',1484799492,'__ci_last_regenerate|i:1484799217;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('g0b7qulr4c17he45ske4h6o88m1du216','::1',1484799811,'__ci_last_regenerate|i:1484799412;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('kq2rjgup89u37uqcpddcevqjp3h70h4l','::1',1484800239,'__ci_last_regenerate|i:1484800148;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('l3i4d6sfskmldqu79shkncfq0rhshkr3','::1',1484800251,'__ci_last_regenerate|i:1484800157;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('136nlbqfc5cr1mtfgsqs2ieip71rd56r','::1',1484800592,'__ci_last_regenerate|i:1484800579;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('hetv1hq2g57m1sta95oe2tqfrkshfl1b','::1',1484803941,'__ci_last_regenerate|i:1484803709;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2dcq19478rkglki9t9u4jbuvavmdlr3u','::1',1484804040,'__ci_last_regenerate|i:1484804038;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('etcl606l0l9o4qtpapqc4nu3avdbrhbk','::1',1484805619,'__ci_last_regenerate|i:1484805609;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('jjf76pocmpn32q3cc9fn0ep7a7frib0g','::1',1484806179,'__ci_last_regenerate|i:1484805922;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('ns5k7939k66tos68688tosk1qhm5c3lk','::1',1484806174,'__ci_last_regenerate|i:1484806091;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('fbrtd3scar89n39pevsrckf1c1u608km','::1',1484806497,'__ci_last_regenerate|i:1484806496;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('9q5on1ss0tc7miu07h1st480i25b7v1u','::1',1484806518,'__ci_last_regenerate|i:1484806501;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('8rqdj9f8fdvji2kjp5ttjok75rkckeec','::1',1484807200,'__ci_last_regenerate|i:1484807026;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('o4ml9t9apvp2kug6pjl78jm1cmovi3ro','::1',1484807138,'__ci_last_regenerate|i:1484807124;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('ke4n06kcp0m3a0bsqbbpjsd0h2rok09l','::1',1484807380,'__ci_last_regenerate|i:1484807379;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('0fsrjosflvmtl9m12ardaj92hl1l8v11','::1',1484808067,'__ci_last_regenerate|i:1484808051;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('1jlshvcpr8q4u4a0alad4ioau5sq3qns','::1',1484809563,'__ci_last_regenerate|i:1484809539;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('ma883qgme4ktlcsfvphgcspmgq34romv','::1',1484809810,'__ci_last_regenerate|i:1484809591;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('of9aq97tfcq7hfsgh2j84bmr86itespl','::1',1484810130,'__ci_last_regenerate|i:1484810028;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('r7opi3ra9vfjvsf0qitbch755snns4tp','::1',1484810056,'__ci_last_regenerate|i:1484810056;'),('6lqmlfmjhes3h276ovgpgih51aljat3i','::1',1484810235,'__ci_last_regenerate|i:1484810112;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('dic9dfnr9hjerotfqi2g00bcvcudket8','::1',1484810501,'__ci_last_regenerate|i:1484810418;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('tkg9p4rp8oivb0an61dpdm6mdol3gip9','::1',1484811175,'__ci_last_regenerate|i:1484810899;staff_user_id|s:1:\"2\";staff_logged_in|b:1;'),('giu68nnf59dehg1822mqv6sfugkju5op','::1',1484811464,'__ci_last_regenerate|i:1484810959;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('qsjmpoumpallr55k958335o92lpprgam','::1',1484811494,'__ci_last_regenerate|i:1484811204;staff_user_id|s:1:\"2\";staff_logged_in|b:1;');

/*Table structure for table `tblstaff` */

DROP TABLE IF EXISTS `tblstaff`;

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext,
  `linkedin` mediumtext,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(300) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(300) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `email_signature` text,
  PRIMARY KEY (`staffid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tblstaff` */

insert  into `tblstaff`(`staffid`,`email`,`firstname`,`lastname`,`facebook`,`linkedin`,`phonenumber`,`skype`,`password`,`datecreated`,`profile_image`,`last_ip`,`last_login`,`last_password_change`,`new_pass_key`,`new_pass_key_requested`,`admin`,`role`,`active`,`default_language`,`direction`,`media_path_slug`,`is_not_staff`,`hourly_rate`,`email_signature`) values (1,'crm@abacare.com','','',NULL,NULL,NULL,NULL,'$2a$08$D6zVD/xBwYl9f2yQAn.LYePZefGez6P23e7JCMpjCNuE65nCF05GW','2017-01-16 08:37:12',NULL,'::1','2017-01-19 15:15:22',NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,0,'0.00',NULL),(2,'rey.castanares@abacare.com','rey','castanares','','','','rey.castanares.abacare','$2a$08$l2IV5U7/t0KQMAOE/eqACOxb1Z5/iEdVbBNRDq3S01BjReuzDA/Ga','2017-01-16 16:56:52',NULL,'::1','2017-01-19 16:40:15','2017-01-18 11:31:40',NULL,NULL,0,1,1,'','','rey-castanares',0,'10.00',''),(3,'bde1@abacare.com','BDE1','1','','','','bde1.abacare','$2a$08$K8yVXn2yC.2QJ7Y8iik/C.yOkoTM3oo/dd/7Vo78bpZIsSX8kh3Mm','2017-01-17 15:56:40',NULL,'::1','2017-01-19 16:57:59','2017-01-18 11:49:33',NULL,NULL,0,5,1,'','','bde1-1',0,'10.00',''),(4,'bdd1@abacare.com','bdd1','1','','','','crm@abacare.com','$2a$08$5rsdug8kNZdEK7VSE/9YJ.gNpD7AGoA00KF00odjK3rXXiWLfw6ou','2017-01-18 11:44:44',NULL,'::1','2017-01-19 15:39:55','2017-01-19 16:49:22',NULL,NULL,0,2,1,'','','bdd1-1',0,'10.00',''),(5,'bdm1@abacare.com','bdm1','1','','','','crm@abacare.com','$2a$08$k8LzZsF2d4KBr6eyYmtoL.U9DyBdy9c5YkrFqIt/D.VCiiyGWRemG','2017-01-18 11:45:46',NULL,NULL,NULL,'2017-01-19 15:49:17',NULL,NULL,0,4,1,'','','bdm1-1',0,'10.00',''),(6,'gm1@abacare.com','gm1','1','','','','crm@abacare.com','$2a$08$ESSuFdrf2t8.niU0bn8FGOxMHVUO.LzVBwcbSZU99yKusjzKRuXdm','2017-01-18 11:47:46',NULL,'::1','2017-01-18 11:52:35','2017-01-19 10:45:52',NULL,NULL,0,3,1,'','','gm1-1',0,'10.00',''),(7,'bde2@abacare.com','bde2','2','','','','crm@abacare.com','$2a$08$LfU9i0xXCdAcANq3nL5d8.nZFbHIqHrusYzb8VMCh8JOayMZXyM.e','2017-01-19 15:50:39',NULL,NULL,NULL,'2017-01-19 15:51:19',NULL,NULL,0,5,1,'','','bdd2-2',0,'10.00',''),(8,'bdm2@abacare.com','bdm2','2','','','','crm@abacare.com','$2a$08$99We64vOryDLzaKLAKXeIu563D8b.5H8r5h7aMmQAABJrmc5K4jJ2','2017-01-19 15:52:06',NULL,NULL,NULL,NULL,NULL,NULL,0,4,1,'','','bdm2-2',0,'10.00','');

/*Table structure for table `tblstaffdepartments` */

DROP TABLE IF EXISTS `tblstaffdepartments`;

CREATE TABLE `tblstaffdepartments` (
  `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  PRIMARY KEY (`staffdepartmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblstaffdepartments` */

/*Table structure for table `tblstaffpermissions` */

DROP TABLE IF EXISTS `tblstaffpermissions`;

CREATE TABLE `tblstaffpermissions` (
  `staffpermid` int(11) NOT NULL AUTO_INCREMENT,
  `permissionid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `staffid` int(11) NOT NULL,
  PRIMARY KEY (`staffpermid`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

/*Data for the table `tblstaffpermissions` */

insert  into `tblstaffpermissions`(`staffpermid`,`permissionid`,`can_view`,`can_edit`,`can_create`,`can_delete`,`staffid`) values (38,2,0,0,0,0,2),(37,6,0,0,0,0,2),(36,7,0,0,0,0,2),(35,4,0,0,0,0,2),(34,10,0,0,0,0,2),(33,3,0,0,0,0,2),(32,13,0,0,0,0,2),(31,5,0,0,0,0,2),(30,17,0,0,0,0,2),(29,12,0,0,0,0,2),(28,19,0,0,0,0,2),(27,18,0,0,0,0,2),(26,14,0,0,0,0,2),(25,15,0,0,0,0,2),(24,11,0,0,0,0,2),(23,9,0,0,0,0,2),(22,8,0,0,0,0,2),(21,1,0,0,0,0,2),(20,16,0,0,0,0,2),(39,16,0,0,0,0,3),(40,1,0,0,0,0,3),(41,8,1,1,1,0,3),(42,9,0,0,0,0,3),(43,11,0,0,0,0,3),(44,15,0,0,0,0,3),(45,14,0,0,0,0,3),(46,18,0,0,0,0,3),(47,19,0,0,0,0,3),(48,12,0,0,0,0,3),(49,17,0,0,0,0,3),(50,5,0,0,0,0,3),(51,13,0,0,0,0,3),(52,3,0,0,0,0,3),(53,10,0,0,0,0,3),(54,4,0,0,0,0,3),(55,7,0,0,0,0,3),(56,6,0,0,0,0,3),(57,2,0,0,0,0,3),(58,20,0,0,0,0,3),(59,20,0,0,0,0,2),(60,16,0,0,0,0,4),(61,1,0,0,0,0,4),(62,8,1,1,1,0,4),(63,9,0,0,0,0,4),(64,11,0,0,0,0,4),(65,15,0,0,0,0,4),(66,14,0,0,0,0,4),(67,18,0,0,0,0,4),(68,19,0,0,0,0,4),(69,12,0,0,0,0,4),(70,20,0,0,0,0,4),(71,17,0,0,0,0,4),(72,5,0,0,0,0,4),(73,13,0,0,0,0,4),(74,3,0,0,0,0,4),(75,10,0,0,0,0,4),(76,4,0,0,0,0,4),(77,7,0,0,0,0,4),(78,6,0,0,0,0,4),(79,2,0,0,0,0,4),(80,16,0,0,0,0,5),(81,1,0,0,0,0,5),(82,8,1,1,1,0,5),(83,9,0,0,0,0,5),(84,11,0,0,0,0,5),(85,15,0,0,0,0,5),(86,14,0,0,0,0,5),(87,18,0,0,0,0,5),(88,19,0,0,0,0,5),(89,12,0,0,0,0,5),(90,20,0,0,0,0,5),(91,17,0,0,0,0,5),(92,5,0,0,0,0,5),(93,13,0,0,0,0,5),(94,3,0,0,0,0,5),(95,10,0,0,0,0,5),(96,4,0,0,0,0,5),(97,7,0,0,0,0,5),(98,6,0,0,0,0,5),(99,2,0,0,0,0,5),(100,16,0,0,0,0,6),(101,1,0,0,0,0,6),(102,8,1,1,1,0,6),(103,9,0,0,0,0,6),(104,11,0,0,0,0,6),(105,15,0,0,0,0,6),(106,14,0,0,0,0,6),(107,18,0,0,0,0,6),(108,19,0,0,0,0,6),(109,12,0,0,0,0,6),(110,20,0,0,0,0,6),(111,17,0,0,0,0,6),(112,5,0,0,0,0,6),(113,13,0,0,0,0,6),(114,3,0,0,0,0,6),(115,10,0,0,0,0,6),(116,4,0,0,0,0,6),(117,7,0,0,0,0,6),(118,6,0,0,0,0,6),(119,2,0,0,0,0,6),(120,16,0,0,0,0,1),(121,1,0,0,0,0,1),(122,8,1,1,1,0,1),(123,9,0,0,0,0,1),(124,11,0,0,0,0,1),(125,15,0,0,0,0,1),(126,14,0,0,0,0,1),(127,18,0,0,0,0,1),(128,19,0,0,0,0,1),(129,12,0,0,0,0,1),(130,20,0,0,0,0,1),(131,17,0,0,0,0,1),(132,5,0,0,0,0,1),(133,13,0,0,0,0,1),(134,3,0,0,0,0,1),(135,10,0,0,0,0,1),(136,4,0,0,0,0,1),(137,7,0,0,0,0,1),(138,6,0,0,0,0,1),(139,2,0,0,0,0,1),(140,16,0,0,0,0,7),(141,1,0,0,0,0,7),(142,8,1,1,1,0,7),(143,9,0,0,0,0,7),(144,11,0,0,0,0,7),(145,15,0,0,0,0,7),(146,14,0,0,0,0,7),(147,18,0,0,0,0,7),(148,19,0,0,0,0,7),(149,12,0,0,0,0,7),(150,20,0,0,0,0,7),(151,17,0,0,0,0,7),(152,5,0,0,0,0,7),(153,13,0,0,0,0,7),(154,3,0,0,0,0,7),(155,10,0,0,0,0,7),(156,4,0,0,0,0,7),(157,7,0,0,0,0,7),(158,6,0,0,0,0,7),(159,2,0,0,0,0,7),(160,16,0,0,0,0,8),(161,1,0,0,0,0,8),(162,8,0,0,0,0,8),(163,9,0,0,0,0,8),(164,11,0,0,0,0,8),(165,15,0,0,0,0,8),(166,14,0,0,0,0,8),(167,18,0,0,0,0,8),(168,19,0,0,0,0,8),(169,12,0,0,0,0,8),(170,20,0,0,0,0,8),(171,17,0,0,0,0,8),(172,5,0,0,0,0,8),(173,13,0,0,0,0,8),(174,3,0,0,0,0,8),(175,10,0,0,0,0,8),(176,4,0,0,0,0,8),(177,7,0,0,0,0,8),(178,6,0,0,0,0,8),(179,2,0,0,0,0,8);

/*Table structure for table `tblstafftaskassignees` */

DROP TABLE IF EXISTS `tblstafftaskassignees`;

CREATE TABLE `tblstafftaskassignees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`),
  KEY `staffid` (`staffid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblstafftaskassignees` */

/*Table structure for table `tblstafftaskcomments` */

DROP TABLE IF EXISTS `tblstafftaskcomments`;

CREATE TABLE `tblstafftaskcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblstafftaskcomments` */

/*Table structure for table `tblstafftasks` */

DROP TABLE IF EXISTS `tblstafftasks`;

CREATE TABLE `tblstafftasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '0',
  `billed` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `kanban_order` int(11) NOT NULL DEFAULT '0',
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `deadline_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `kanban_order` (`kanban_order`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblstafftasks` */

/*Table structure for table `tblstafftasksfollowers` */

DROP TABLE IF EXISTS `tblstafftasksfollowers`;

CREATE TABLE `tblstafftasksfollowers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblstafftasksfollowers` */

/*Table structure for table `tblsurveyresultsets` */

DROP TABLE IF EXISTS `tblsurveyresultsets`;

CREATE TABLE `tblsurveyresultsets` (
  `resultsetid` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`resultsetid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblsurveyresultsets` */

/*Table structure for table `tblsurveys` */

DROP TABLE IF EXISTS `tblsurveys`;

CREATE TABLE `tblsurveys` (
  `surveyid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text NOT NULL,
  `viewdescription` text,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT '0',
  `onlyforloggedin` int(11) DEFAULT '0',
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`surveyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblsurveys` */

/*Table structure for table `tblsurveysemailsendcron` */

DROP TABLE IF EXISTS `tblsurveysemailsendcron`;

CREATE TABLE `tblsurveysemailsendcron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` int(11) DEFAULT NULL,
  `listid` varchar(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblsurveysemailsendcron` */

/*Table structure for table `tblsurveysendlog` */

DROP TABLE IF EXISTS `tblsurveysendlog`;

CREATE TABLE `tblsurveysendlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `iscronfinished` int(11) NOT NULL DEFAULT '0',
  `send_to_mail_lists` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblsurveysendlog` */

/*Table structure for table `tbltaskchecklists` */

DROP TABLE IF EXISTS `tbltaskchecklists`;

CREATE TABLE `tbltaskchecklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT '0',
  `list_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbltaskchecklists` */

/*Table structure for table `tbltaskstimers` */

DROP TABLE IF EXISTS `tbltaskstimers`;

CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbltaskstimers` */

/*Table structure for table `tbltaxes` */

DROP TABLE IF EXISTS `tbltaxes`;

CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbltaxes` */

/*Table structure for table `tblticketattachments` */

DROP TABLE IF EXISTS `tblticketattachments`;

CREATE TABLE `tblticketattachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` mediumtext NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblticketattachments` */

/*Table structure for table `tblticketpipelog` */

DROP TABLE IF EXISTS `tblticketpipelog`;

CREATE TABLE `tblticketpipelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `email_to` varchar(500) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblticketpipelog` */

/*Table structure for table `tblticketreplies` */

DROP TABLE IF EXISTS `tblticketreplies`;

CREATE TABLE `tblticketreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `email` text,
  `date` datetime NOT NULL,
  `message` text,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblticketreplies` */

/*Table structure for table `tbltickets` */

DROP TABLE IF EXISTS `tbltickets`;

CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL AUTO_INCREMENT,
  `adminreplying` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `email` text,
  `name` text,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message` text,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT '0',
  `adminread` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketid`),
  KEY `service` (`service`),
  KEY `department` (`department`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbltickets` */

/*Table structure for table `tblticketsspamcontrol` */

DROP TABLE IF EXISTS `tblticketsspamcontrol`;

CREATE TABLE `tblticketsspamcontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblticketsspamcontrol` */

/*Table structure for table `tblticketstatus` */

DROP TABLE IF EXISTS `tblticketstatus`;

CREATE TABLE `tblticketstatus` (
  `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketstatusid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tblticketstatus` */

insert  into `tblticketstatus`(`ticketstatusid`,`name`,`isdefault`,`statuscolor`,`statusorder`) values (3,'Answered',1,'#0000ff',3),(4,'On Hold',1,'#c0c0c0',4),(2,'In progress',1,'#84c529',2),(5,'Closed',1,'#03a9f4',5),(1,'Open',1,'#ff2d42',1);

/*Table structure for table `tbltodoitems` */

DROP TABLE IF EXISTS `tbltodoitems`;

CREATE TABLE `tbltodoitems` (
  `todoid` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`todoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbltodoitems` */

/*Table structure for table `tbluserautologin` */

DROP TABLE IF EXISTS `tbluserautologin`;

CREATE TABLE `tbluserautologin` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbluserautologin` */

/*Table structure for table `tblviewstracking` */

DROP TABLE IF EXISTS `tblviewstracking`;

CREATE TABLE `tblviewstracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblviewstracking` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
