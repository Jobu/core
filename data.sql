-- MySQL dump 10.15  Distrib 10.0.17-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: contao
-- ------------------------------------------------------
-- Server version	10.0.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tl_extension`
--

DROP TABLE IF EXISTS `tl_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_extension` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(64) NOT NULL DEFAULT '',
  `folder` varchar(48) NOT NULL DEFAULT '',
  `author` varchar(128) NOT NULL DEFAULT '',
  `copyright` varchar(128) NOT NULL DEFAULT '',
  `package` varchar(64) NOT NULL DEFAULT '',
  `license` varchar(64) NOT NULL DEFAULT '',
  `addBeMod` char(1) NOT NULL DEFAULT '',
  `beClasses` varchar(255) NOT NULL DEFAULT '',
  `beTables` varchar(255) NOT NULL DEFAULT '',
  `beTemplates` varchar(255) NOT NULL DEFAULT '',
  `addFeMod` char(1) NOT NULL DEFAULT '',
  `feClasses` varchar(255) NOT NULL DEFAULT '',
  `feTables` varchar(255) NOT NULL DEFAULT '',
  `feTemplates` varchar(255) NOT NULL DEFAULT '',
  `addLanguage` char(1) NOT NULL DEFAULT '',
  `languages` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_extension`
--

LOCK TABLES `tl_extension` WRITE;
/*!40000 ALTER TABLE `tl_extension` DISABLE KEYS */;
INSERT INTO `tl_extension` VALUES (2,1446714932,'beachcup','beachcup','Jakob Pallhuber','Copyright Â© Jakob Pallhuber All Rights Reserved','beachcup','LGPL','1','','tl_beachcup_season,tl_beachcup_stage,tl_beachcup_organizer,tl_beachcup_venue,tl_beachcup_tournament,tl_beachcup_tournament_type,tl_beachcup_registration,tl_beachcup_registration_state,tl_beachcup_team,tl_beachcup_player,tl_beachcup_player_level','','1','BeachcupStageList','','beachcup_stage_list','1','en,de,it');
/*!40000 ALTER TABLE `tl_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form`
--

DROP TABLE IF EXISTS `tl_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `sendViaEmail` char(1) NOT NULL DEFAULT '',
  `recipient` varchar(1022) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `format` varchar(12) NOT NULL DEFAULT '',
  `skipEmpty` char(1) NOT NULL DEFAULT '',
  `storeValues` char(1) NOT NULL DEFAULT '',
  `targetTable` varchar(64) NOT NULL DEFAULT '',
  `method` varchar(12) NOT NULL DEFAULT '',
  `novalidate` char(1) NOT NULL DEFAULT '',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `formID` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `allowTags` char(1) NOT NULL DEFAULT '',
  `storeFormdata` char(1) NOT NULL DEFAULT '',
  `efgStoreValues` char(1) NOT NULL DEFAULT '',
  `useFormValues` char(1) NOT NULL DEFAULT '',
  `useFieldNames` char(1) NOT NULL DEFAULT '',
  `efgAliasField` varchar(64) NOT NULL DEFAULT '',
  `sendConfirmationMail` char(1) NOT NULL DEFAULT '',
  `confirmationMailRecipientField` varchar(64) NOT NULL DEFAULT '',
  `confirmationMailRecipient` varchar(255) NOT NULL DEFAULT '',
  `confirmationMailSender` varchar(255) NOT NULL DEFAULT '',
  `confirmationMailReplyto` varchar(255) NOT NULL DEFAULT '',
  `confirmationMailSubject` varchar(255) NOT NULL DEFAULT '',
  `confirmationMailText` text,
  `confirmationMailTemplate` binary(16) DEFAULT NULL,
  `confirmationMailSkipEmpty` char(1) NOT NULL DEFAULT '',
  `sendFormattedMail` char(1) NOT NULL DEFAULT '',
  `formattedMailRecipient` text,
  `formattedMailSubject` varchar(255) NOT NULL DEFAULT '',
  `formattedMailText` text,
  `formattedMailTemplate` binary(16) DEFAULT NULL,
  `formattedMailSkipEmpty` char(1) NOT NULL DEFAULT '',
  `addConfirmationMailAttachments` char(1) NOT NULL DEFAULT '',
  `confirmationMailAttachments` blob,
  `addFormattedMailAttachments` char(1) NOT NULL DEFAULT '',
  `formattedMailAttachments` blob,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form`
--

LOCK TABLES `tl_form` WRITE;
/*!40000 ALTER TABLE `tl_form` DISABLE KEYS */;
INSERT INTO `tl_form` VALUES (2,1462430099,'Kontakt','kontakt',0,'1','info@beachcup.it','Website Kontakt','raw','','','','POST','','a:2:{i:0;s:0:\"\";i:1;s:15:\"responsive-form\";}','','1','','','','','','','','','','','','',NULL,NULL,'','',NULL,'',NULL,NULL,'','',NULL,'',NULL),(4,1463754797,'Spieler Deutsch','spieler-de',0,'','','','raw','','1','tl_beachcup_player','POST','','a:2:{i:0;s:0:\"\";i:1;s:15:\"responsive-form\";}','','1','','','','','','','','','','','','',NULL,NULL,'','',NULL,'',NULL,NULL,'','',NULL,'',NULL),(5,1463671197,'Teams','teams',0,'','','','raw','','1','tl_beachcup_team','POST','','a:2:{i:0;s:0:\"\";i:1;s:15:\"responsive-form\";}','','1','','','','','','','','','','','','',NULL,NULL,'','',NULL,'',NULL,NULL,'','',NULL,'',NULL),(6,1463671218,'Anmeldungen Deutsch','anmeldungen-deutsch',0,'','','','raw','','1','tl_beachcup_registration','POST','','a:2:{i:0;s:0:\"\";i:1;s:15:\"responsive-form\";}','','1','','','','','','','','','','','','',NULL,NULL,'','',NULL,'',NULL,NULL,'','',NULL,'',NULL),(7,1463672065,'Anmeldungen Italienisch','anmeldungen-italienisch',0,'','','','raw','','1','tl_beachcup_registration','POST','','a:2:{i:0;s:0:\"\";i:1;s:15:\"responsive-form\";}','','1','','','','','','','','','','','','',NULL,NULL,'','',NULL,'',NULL,NULL,'','',NULL,'',NULL),(8,1463754817,'Spieler Italienisch','spieler-it',0,'','','','raw','','1','tl_beachcup_player','POST','','a:2:{i:0;s:0:\"\";i:1;s:15:\"responsive-form\";}','','1','','','','','','','','','','','','',NULL,NULL,'','',NULL,'',NULL,NULL,'','',NULL,'',NULL);
/*!40000 ALTER TABLE `tl_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form_field`
--

DROP TABLE IF EXISTS `tl_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_form_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `invisible` char(1) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `text` text,
  `html` text,
  `options` blob,
  `mandatory` char(1) NOT NULL DEFAULT '',
  `rgxp` varchar(32) NOT NULL DEFAULT '',
  `placeholder` varchar(255) NOT NULL DEFAULT '',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `size` varchar(255) NOT NULL DEFAULT '',
  `multiple` char(1) NOT NULL DEFAULT '',
  `mSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `storeFile` char(1) NOT NULL DEFAULT '',
  `uploadFolder` binary(16) DEFAULT NULL,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) NOT NULL DEFAULT '',
  `fsType` varchar(32) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `addSubmit` char(1) NOT NULL DEFAULT '',
  `slabel` varchar(255) NOT NULL DEFAULT '',
  `imageSubmit` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `efgLookupOptions` text,
  `efgMultiSRC` blob,
  `efgImageMultiple` char(1) NOT NULL DEFAULT '',
  `efgImageUseHomeDir` char(1) NOT NULL DEFAULT '',
  `efgImageSortBy` varchar(32) NOT NULL DEFAULT '',
  `efgImageSize` varchar(255) NOT NULL DEFAULT '',
  `efgImagePerRow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `efgImageMargin` varchar(255) NOT NULL DEFAULT '',
  `efgImageFullsize` char(1) NOT NULL DEFAULT '',
  `efgAddBackButton` char(1) NOT NULL DEFAULT '',
  `efgBackSlabel` varchar(255) NOT NULL DEFAULT '',
  `efgSwitchButtonOrder` char(1) NOT NULL DEFAULT '',
  `efgBackStoreSessionValues` char(1) NOT NULL DEFAULT '',
  `efgBackImageSubmit` char(1) NOT NULL DEFAULT '',
  `efgBackSingleSRC` binary(16) DEFAULT NULL,
  `conditionField` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form_field`
--

LOCK TABLES `tl_form_field` WRITE;
/*!40000 ALTER TABLE `tl_form_field` DISABLE KEYS */;
INSERT INTO `tl_form_field` VALUES (1,2,128,1460800664,'','text','name','{{ifnlng::it}}Name{{ifnlng}}{{iflng::it}}Nome{{iflng}}',NULL,NULL,NULL,'1','alnum','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(2,2,256,1460800713,'','text','email','{{ifnlng::it}}Email{{ifnlng}}{{iflng::it}}E-mail{{iflng}}',NULL,NULL,NULL,'1','email','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(3,2,384,1460800801,'','textarea','message','{{ifnlng::it}}Nachricht{{ifnlng}}{{iflng::it}}Messagio{{iflng}}',NULL,NULL,NULL,'1','extnd','',0,0,'a:2:{i:0;s:1:\"8\";i:1;s:1:\"0\";}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(4,2,512,1460800823,'','submit','','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','{{ifnlng::it}}Senden{{ifnlng}}{{iflng::it}}Invia{{iflng}}','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(8,4,256,1463755001,'','text','surname','Nachname',NULL,NULL,NULL,'1','','',0,255,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(6,4,1408,1463496175,'','hidden','user','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','{{user::id}}','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(7,4,128,1463754991,'','text','name','Name',NULL,NULL,NULL,'1','','',0,255,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(9,4,384,1465550254,'','text','birth_date','Geburtsdatum (TT.MM.JJJJ)',NULL,'<div class=\"widget widget-text mandatory\">\n	<label for=\"ctrl_9\" class=\"mandatory\">\n		<span class=\"invisible\">{{ifnlng::it}}Pflichtfeld{{ifnlng}}{{iflng::it}}Obbligatorio{{iflng}}</span> {{ifnlng::it}}Geburtsdatum{{ifnlng}}{{iflng::it}}Data di nascita{{iflng}}<span class=\"mandatory\">*</span>\n	</label>\n	<input type=\"date\" name=\"birth_date\" id=\"ctrl_9\" class=\"text mandatory\" value=\"\" required>\n</div>',NULL,'1','date','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(10,4,512,1463755024,'','text','birth_place','Geburtsort',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(11,4,640,1463755053,'','select','gender','Geschlecht',NULL,NULL,'a:3:{i:0;a:3:{s:5:\"value\";s:4:\"male\";s:5:\"label\";s:9:\"Männlich\";s:7:\"default\";s:1:\"1\";}i:1;a:2:{s:5:\"value\";s:6:\"female\";s:5:\"label\";s:8:\"Weiblich\";}i:2;a:2:{s:5:\"value\";s:5:\"other\";s:5:\"label\";s:9:\"Sonstiges\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(16,4,1280,1463755359,'','text','email','Email',NULL,NULL,NULL,'1','email','',0,255,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(12,4,768,1463755063,'','text','address','Adresse',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(13,4,896,1463755072,'','text','zip_code','Postleitzahl',NULL,NULL,NULL,'1','digit','',0,11,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(14,4,1024,1463755082,'','text','city','Ort',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(15,4,1152,1463755330,'','select','country','Land',NULL,NULL,'a:5:{i:0;a:3:{s:5:\"value\";s:2:\"it\";s:5:\"label\";s:7:\"Italien\";s:7:\"default\";s:1:\"1\";}i:1;a:2:{s:5:\"value\";s:2:\"de\";s:5:\"label\";s:11:\"Deutschland\";}i:2;a:2:{s:5:\"value\";s:2:\"at\";s:5:\"label\";s:10:\"Östereich\";}i:3;a:2:{s:5:\"value\";s:2:\"ch\";s:5:\"label\";s:7:\"Schweiz\";}i:4;a:2:{s:5:\"value\";s:1:\"-\";s:5:\"label\";s:7:\"Anderes\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(17,4,1344,1463755371,'','text','phone_number','Telefonnummer',NULL,NULL,NULL,'','phone','',0,255,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(18,4,1376,1463755384,'','select','shirt_size','T-Shirt Größe',NULL,NULL,'a:7:{i:0;a:2:{s:5:\"value\";s:3:\"XXS\";s:5:\"label\";s:3:\"XXS\";}i:1;a:2:{s:5:\"value\";s:2:\"XS\";s:5:\"label\";s:2:\"XS\";}i:2;a:2:{s:5:\"value\";s:1:\"S\";s:5:\"label\";s:1:\"S\";}i:3;a:3:{s:5:\"value\";s:1:\"M\";s:5:\"label\";s:1:\"M\";s:7:\"default\";s:1:\"1\";}i:4;a:2:{s:5:\"value\";s:1:\"L\";s:5:\"label\";s:1:\"L\";}i:5;a:2:{s:5:\"value\";s:2:\"XL\";s:5:\"label\";s:2:\"XL\";}i:6;a:2:{s:5:\"value\";s:3:\"XXL\";s:5:\"label\";s:3:\"XXL\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(19,4,1392,1463755394,'','efgLookupSelect','player_level','Spielerlevel',NULL,NULL,'a:10:{i:0;a:2:{s:5:\"value\";s:1:\"2\";s:5:\"label\";s:7:\"SERIE_A\";}i:1;a:2:{s:5:\"value\";s:1:\"3\";s:5:\"label\";s:8:\"SERIE_A2\";}i:2;a:2:{s:5:\"value\";s:1:\"4\";s:5:\"label\";s:8:\"SERIE_B1\";}i:3;a:2:{s:5:\"value\";s:1:\"5\";s:5:\"label\";s:8:\"SERIE_B2\";}i:4;a:2:{s:5:\"value\";s:1:\"6\";s:5:\"label\";s:7:\"SERIE_C\";}i:5;a:2:{s:5:\"value\";s:1:\"7\";s:5:\"label\";s:7:\"SERIE_D\";}i:6;a:2:{s:5:\"value\";s:1:\"8\";s:5:\"label\";s:5:\"DIV_1\";}i:7;a:2:{s:5:\"value\";s:1:\"9\";s:5:\"label\";s:5:\"DIV_2\";}i:8;a:2:{s:5:\"value\";s:2:\"10\";s:5:\"label\";s:5:\"DIV_3\";}i:9;a:3:{s:5:\"value\";s:2:\"11\";s:5:\"label\";s:5:\"OTHER\";s:7:\"default\";s:1:\"1\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,'a:4:{s:12:\"lookup_field\";s:39:\"tl_beachcup_player_level.description_de\";s:11:\"lookup_sort\";s:0:\"\";s:16:\"lookup_val_field\";s:27:\"tl_beachcup_player_level.id\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',0,'','','','','','','',NULL,0),(20,4,1400,1463756884,'','checkbox','has_privacy','<span><a target=\"_blank\" href=\"http://www.beachcup.it/files/2016/Eigenerklaerung.pdf\">Privacy</a> bestätigen</span>',NULL,NULL,'a:1:{i:0;a:2:{s:5:\"value\";s:1:\"1\";s:5:\"label\";s:6:\"[nbsp]\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','reset-css','','',0,0,'','','','',NULL,'a:3:{s:12:\"lookup_field\";s:30:\"tl_beachcup_player.has_privacy\";s:11:\"lookup_sort\";s:0:\"\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',0,'','','','','','','',NULL,0),(21,4,1536,1482860942,'','submit','','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','Speichern und neu','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(29,7,128,1466243768,'','efgLookupSelect','tournament_id','Torneo',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,'a:4:{s:12:\"lookup_field\";s:30:\"tl_beachcup_tournament.name_it\";s:11:\"lookup_sort\";s:37:\"custom_sql_registration_tournament_it\";s:16:\"lookup_val_field\";s:25:\"tl_beachcup_tournament.id\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',4,'','','','','','','',NULL,0),(54,5,320,1479737346,'','hidden','user','{{ifnlng::it}}Spieler 2{{ifnlng}}{{iflng::it}}Giocatore 2{{iflng}}',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','{{user::id}}','',0,0,'','','','',NULL,'a:4:{s:12:\"lookup_field\";s:30:\"tl_beachcup_player.player_name\";s:11:\"lookup_sort\";s:15:\"custom_sql_team\";s:16:\"lookup_val_field\";s:21:\"tl_beachcup_player.id\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',4,'','','','','','','',NULL,0),(23,5,128,1463664445,'','efgLookupSelect','player_1','{{ifnlng::it}}Spieler 1{{ifnlng}}{{iflng::it}}Giocatore 1{{iflng}}',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,'a:4:{s:12:\"lookup_field\";s:30:\"tl_beachcup_player.player_name\";s:11:\"lookup_sort\";s:15:\"custom_sql_team\";s:16:\"lookup_val_field\";s:21:\"tl_beachcup_player.id\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',4,'','','','','','','',NULL,0),(24,5,256,1463512024,'','efgLookupSelect','player_2','{{ifnlng::it}}Spieler 2{{ifnlng}}{{iflng::it}}Giocatore 2{{iflng}}',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,'a:4:{s:12:\"lookup_field\";s:30:\"tl_beachcup_player.player_name\";s:11:\"lookup_sort\";s:15:\"custom_sql_team\";s:16:\"lookup_val_field\";s:21:\"tl_beachcup_player.id\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',4,'','','','','','','',NULL,0),(25,5,384,1482861025,'','submit','','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','{{ifnlng::it}}Speichern und neu{{ifnlng}}{{iflng::it}}Salva e nuovo{{iflng}}','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(26,6,128,1466243755,'','efgLookupSelect','tournament_id','Turnier',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,'a:4:{s:12:\"lookup_field\";s:30:\"tl_beachcup_tournament.name_de\";s:11:\"lookup_sort\";s:37:\"custom_sql_registration_tournament_de\";s:16:\"lookup_val_field\";s:25:\"tl_beachcup_tournament.id\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',4,'','','','','','','',NULL,0),(27,6,224,1463814281,'','efgLookupSelect','team_id','Team',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,'a:4:{s:12:\"lookup_field\";s:21:\"tl_beachcup_team.name\";s:11:\"lookup_sort\";s:26:\"custom_sql_registration_de\";s:16:\"lookup_val_field\";s:19:\"tl_beachcup_team.id\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',4,'','','','','','','',NULL,0),(28,6,384,1463668398,'','submit','','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','Anmelden','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(30,7,256,1463672313,'','efgLookupSelect','team_id','Squadra',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,'a:4:{s:12:\"lookup_field\";s:21:\"tl_beachcup_team.name\";s:11:\"lookup_sort\";s:26:\"custom_sql_registration_it\";s:16:\"lookup_val_field\";s:19:\"tl_beachcup_team.id\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',4,'','','','','','','',NULL,0),(31,7,384,1463931958,'','submit','','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','Iscrivere','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(33,4,1216,1482155523,'','text','tax_number','Steuernummer',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(34,8,128,1463754833,'','text','name','Nome',NULL,NULL,NULL,'1','','',0,255,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(35,8,256,1463757229,'','text','surname','Cognome',NULL,NULL,NULL,'1','','',0,255,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(36,8,384,1465550279,'','text','birth_date','Data di nascita (GG.MM.AAAA)',NULL,'<div class=\"widget widget-text mandatory\">\n	<label for=\"ctrl_9\" class=\"mandatory\">\n		<span class=\"invisible\">{{ifnlng::it}}Pflichtfeld{{ifnlng}}{{iflng::it}}Obbligatorio{{iflng}}</span> {{ifnlng::it}}Geburtsdatum{{ifnlng}}{{iflng::it}}Data di nascita{{iflng}}<span class=\"mandatory\">*</span>\n	</label>\n	<input type=\"date\" name=\"birth_date\" id=\"ctrl_9\" class=\"text mandatory\" value=\"\" required>\n</div>',NULL,'1','date','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(37,8,512,1463757251,'','text','birth_place','Luogo di nascita',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(38,8,640,1463757282,'','select','gender','Sesso',NULL,NULL,'a:3:{i:0;a:3:{s:5:\"value\";s:4:\"male\";s:5:\"label\";s:7:\"Mascile\";s:7:\"default\";s:1:\"1\";}i:1;a:2:{s:5:\"value\";s:6:\"female\";s:5:\"label\";s:9:\"Femminlie\";}i:2;a:2:{s:5:\"value\";s:5:\"other\";s:5:\"label\";s:5:\"Altro\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(39,8,768,1463757298,'','text','address','Indirizzo',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(40,8,896,1463757308,'','text','zip_code','Codice postale',NULL,NULL,NULL,'1','digit','',0,11,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(41,8,1024,1463757336,'','text','city','Paese',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(42,8,1152,1463757374,'','select','country','Stato',NULL,NULL,'a:5:{i:0;a:3:{s:5:\"value\";s:2:\"it\";s:5:\"label\";s:6:\"Italia\";s:7:\"default\";s:1:\"1\";}i:1;a:2:{s:5:\"value\";s:2:\"de\";s:5:\"label\";s:8:\"Germania\";}i:2;a:2:{s:5:\"value\";s:2:\"at\";s:5:\"label\";s:7:\"Austria\";}i:3;a:2:{s:5:\"value\";s:2:\"ch\";s:5:\"label\";s:8:\"Svizzera\";}i:4;a:2:{s:5:\"value\";s:1:\"-\";s:5:\"label\";s:5:\"Altro\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(43,8,1216,1482155538,'','text','tax_number','Codice fiscale',NULL,NULL,NULL,'1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(53,7,320,1463926566,'','hidden','state_id','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','1','',0,0,'','','','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(44,8,1280,1463757394,'','text','email','E-mail',NULL,NULL,NULL,'1','email','',0,255,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(45,8,1344,1463757412,'','text','phone_number','Numero di telefono',NULL,NULL,NULL,'','phone','',0,255,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(46,8,1376,1463757430,'','select','shirt_size','Dimensione della camicia',NULL,NULL,'a:7:{i:0;a:2:{s:5:\"value\";s:3:\"XXS\";s:5:\"label\";s:3:\"XXS\";}i:1;a:2:{s:5:\"value\";s:2:\"XS\";s:5:\"label\";s:2:\"XS\";}i:2;a:2:{s:5:\"value\";s:1:\"S\";s:5:\"label\";s:1:\"S\";}i:3;a:3:{s:5:\"value\";s:1:\"M\";s:5:\"label\";s:1:\"M\";s:7:\"default\";s:1:\"1\";}i:4;a:2:{s:5:\"value\";s:1:\"L\";s:5:\"label\";s:1:\"L\";}i:5;a:2:{s:5:\"value\";s:2:\"XL\";s:5:\"label\";s:2:\"XL\";}i:6;a:2:{s:5:\"value\";s:3:\"XXL\";s:5:\"label\";s:3:\"XXL\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(47,8,1392,1463757652,'','efgLookupSelect','player_level','Livello',NULL,NULL,'a:10:{i:0;a:2:{s:5:\"value\";s:1:\"2\";s:5:\"label\";s:7:\"SERIE_A\";}i:1;a:2:{s:5:\"value\";s:1:\"3\";s:5:\"label\";s:8:\"SERIE_A2\";}i:2;a:2:{s:5:\"value\";s:1:\"4\";s:5:\"label\";s:8:\"SERIE_B1\";}i:3;a:2:{s:5:\"value\";s:1:\"5\";s:5:\"label\";s:8:\"SERIE_B2\";}i:4;a:2:{s:5:\"value\";s:1:\"6\";s:5:\"label\";s:7:\"SERIE_C\";}i:5;a:2:{s:5:\"value\";s:1:\"7\";s:5:\"label\";s:7:\"SERIE_D\";}i:6;a:2:{s:5:\"value\";s:1:\"8\";s:5:\"label\";s:5:\"DIV_1\";}i:7;a:2:{s:5:\"value\";s:1:\"9\";s:5:\"label\";s:5:\"DIV_2\";}i:8;a:2:{s:5:\"value\";s:2:\"10\";s:5:\"label\";s:5:\"DIV_3\";}i:9;a:3:{s:5:\"value\";s:2:\"11\";s:5:\"label\";s:5:\"OTHER\";s:7:\"default\";s:1:\"1\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,'a:4:{s:12:\"lookup_field\";s:39:\"tl_beachcup_player_level.description_it\";s:11:\"lookup_sort\";s:0:\"\";s:16:\"lookup_val_field\";s:27:\"tl_beachcup_player_level.id\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',0,'','','','','','','',NULL,0),(48,8,1400,1463757201,'','checkbox','has_privacy','<span><a target=\"_blank\" href=\"http://www.beachcup.it/files/2016/Liberatoria.pdf\">Conferma</a> privacy</span>',NULL,NULL,'a:1:{i:0;a:2:{s:5:\"value\";s:1:\"1\";s:5:\"label\";s:6:\"[nbsp]\";}}','1','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,'a:3:{s:12:\"lookup_field\";s:30:\"tl_beachcup_player.has_privacy\";s:11:\"lookup_sort\";s:0:\"\";s:12:\"lookup_where\";s:0:\"\";}',NULL,'','','','',0,'','','','','','','',NULL,0),(49,8,1408,1463754802,'','hidden','user','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','{{user::id}}','',0,0,'','','','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(50,8,1536,1482861048,'','submit','','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','Salva e nuovo','',NULL,NULL,NULL,'','','','',0,'','','','','','','',NULL,0),(52,6,320,1463926541,'','hidden','state_id','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','1','',0,0,'','','','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(55,6,352,1479744949,'','hidden','user','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','{{user::id}}','',0,0,'','','','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(56,7,352,1479744966,'','hidden','user','',NULL,NULL,NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','{{user::id}}','',0,0,'','','','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(57,4,1664,1485599702,'','html','','',NULL,'<div class=\"submit_container\">\n	<input type=\"button\" onclick=\"submitAndRedirect(\'#f4\', http://www.beachcup.it/de/meine-teams.html\');\" class=\"submit\" value=\"Speichern und weiter\">\n</div>',NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(58,8,1664,1485599778,'','html','','',NULL,'<div class=\"submit_container\">\n	<input type=\"button\" onclick=\"submitAndRedirect(\'#f8\', http://www.beachcup.it/it/le-mie-squadre.html\');\" class=\"submit\" value=\"Salva e continua\">\n</div>',NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0),(59,5,512,1485599790,'','html','','',NULL,'<div class=\"submit_container\">\n	<input type=\"button\" onclick=\"submitAndRedirect(\'#f5\', {{ifnlng::it}}http://www.beachcup.it/de/meine-anmeldungen.html{{ifnlng}}{{iflng::it}}http://www.beachcup.it/it/le-mie-iscrizioni.html{{iflng}}\');\" class=\"submit\" value=\"{{ifnlng::it}}Speichern und weiter{{ifnlng}}{{iflng::it}}Salva e continua{{iflng}}\">\n</div>',NULL,'','','',0,0,'a:2:{i:0;i:4;i:1;i:40;}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','fsStart','','','',0,0,'','','','',NULL,NULL,NULL,'','','','',4,'','','','','','','',NULL,0);
/*!40000 ALTER TABLE `tl_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_layout`
--

DROP TABLE IF EXISTS `tl_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `rows` varchar(8) NOT NULL DEFAULT '',
  `headerHeight` varchar(255) NOT NULL DEFAULT '',
  `footerHeight` varchar(255) NOT NULL DEFAULT '',
  `cols` varchar(8) NOT NULL DEFAULT '',
  `widthLeft` varchar(255) NOT NULL DEFAULT '',
  `widthRight` varchar(255) NOT NULL DEFAULT '',
  `sections` varchar(1022) NOT NULL DEFAULT '',
  `sPosition` varchar(32) NOT NULL DEFAULT '',
  `framework` varchar(255) NOT NULL DEFAULT '',
  `stylesheet` blob,
  `external` blob,
  `orderExt` blob,
  `loadingOrder` varchar(16) NOT NULL DEFAULT '',
  `newsfeeds` blob,
  `calendarfeeds` blob,
  `modules` blob,
  `template` varchar(64) NOT NULL DEFAULT '',
  `doctype` varchar(32) NOT NULL DEFAULT '',
  `webfonts` varchar(255) NOT NULL DEFAULT '',
  `picturefill` char(1) NOT NULL DEFAULT '',
  `viewport` varchar(255) NOT NULL DEFAULT '',
  `titleTag` varchar(255) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `onload` varchar(255) NOT NULL DEFAULT '',
  `head` text,
  `addJQuery` char(1) NOT NULL DEFAULT '',
  `jSource` varchar(16) NOT NULL DEFAULT '',
  `jquery` text,
  `addMooTools` char(1) NOT NULL DEFAULT '',
  `mooSource` varchar(16) NOT NULL DEFAULT '',
  `mootools` text,
  `analytics` text,
  `script` text,
  `static` char(1) NOT NULL DEFAULT '',
  `width` varchar(255) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_layout`
--

LOCK TABLES `tl_layout` WRITE;
/*!40000 ALTER TABLE `tl_layout` DISABLE KEYS */;
INSERT INTO `tl_layout` VALUES (2,2,1485599653,'Beachcup Seitenlayout Deutsch','3rw','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1cl','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','main','a:2:{i:0;s:10:\"layout.css\";i:1;s:14:\"responsive.css\";}',NULL,'a:11:{i:0;s:16:\"Ó¡_¬û7å­�\";i:1;s:16:\"a7��Z�\0D�[$?\\\";i:2;s:16:\"Q86â1å¹ðD\";i:3;s:16:\"Q86‡â1å¹ð\";i:4;s:16:\"Q86â1å¹ðD\";i:5;s:16:\"Q86{â1å¹ðD�\";i:6;s:16:\"Q86râ1å¹ðD�\";i:7;s:16:\"Q86mâ1å¹ðD�\";i:8;s:16:\"Q86gâ1å¹ðD�\";i:9;s:16:\"Q86[â1å¹ðD�\";i:10;s:16:\" �)E�杦\0>\0e�\";}','a:11:{i:0;s:16:\"Q86‡â1å¹ð\";i:1;s:16:\"Q86â1å¹ðD\";i:2;s:16:\"Q86{â1å¹ðD�\";i:3;s:16:\"Q86[â1å¹ðD�\";i:4;s:16:\"Q86mâ1å¹ðD�\";i:5;s:16:\"Q86gâ1å¹ðD�\";i:6;s:16:\"Q86â1å¹ðD\";i:7;s:16:\"Q86râ1å¹ðD�\";i:8;s:16:\"a7��Z�\0D�[$?\\\";i:9;s:16:\"Ó¡_¬û7å­�\";i:10;s:16:\" �)E�杦\0>\0e�\";}','external_first',NULL,NULL,'a:5:{i:0;a:3:{s:3:\"mod\";s:1:\"5\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";s:1:\"1\";}i:1;a:3:{s:3:\"mod\";s:2:\"27\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";s:1:\"1\";}i:2;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";s:1:\"1\";}i:3;a:3:{s:3:\"mod\";s:2:\"15\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";s:1:\"1\";}i:4;a:3:{s:3:\"mod\";s:1:\"6\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";s:1:\"1\";}}','fe_page','html5','Open+Sans:300italic,700italic,800italic,400,300,700,800|Lobster&subset=latin,latin-ext','','','','','','<link rel=\"icon\" type=\"image/ico\" href=\"./files/themes/images/favicon.ico\">\n<script type=\'text/javascript\' src=\'./files/themes/js/jquery-1-11-3.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jquery-migrate-1-2-1.min.js\'></script>\n<script type=\'text/javascript\' src=\'http://maps.google.com/maps/api/js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/gmap3.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/oms.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/richmarker-compiled.js\'></script>\n<script src=\"./assets/jquery.pwi/js/jquery.blockUI.js\" type=\"text/javascript\"></script> \n<link   href=\"./assets/jquery.pwi/css/pwi.css\" rel=\"stylesheet\" type=\"text/css\"/>\n<script src=\"./assets/jquery.pwi/js/jquery.pwi-min.js\" type=\"text/javascript\"></script>','','',NULL,'','moo_local',NULL,'','<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/core.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/widget.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/mouse.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/draggable.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/slider.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/jquery.ui.touch-punch.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/et_google_fonts.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jquery.tinyscrollbar.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/superfish.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jquery.fitvids.js\'></script>\n<script type=\'text/javascript\'>\n/* <![CDATA[ */\nvar et_custom = {\"toggle_text\":\"<span>Beachcup<\\/span>News\",\"mobile_nav_text\":\"Navigation Menu\"};\n/* ]]> */\n</script>\n<script type=\'text/javascript\' src=\'./files/themes/js/custom.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/fancybox/jquery.easing-1.3.pack.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/fancybox/jquery.fancybox-1.3.4.pack.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/et-ptemplates-frontend.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/modernizr.js\'></script>\n<script type=\"text/javascript\" src=\"./files/themes/js/details-shim.min.js\"></script>\n<script type=\"text/javascript\" src=\"./files/themes/js/slick/slick.min.js\"></script>\n<script>\njQuery(document).ready(function() {  //-- default jQuery call, do stuff when page is loaded\n        jQuery(\"#picasa-albums\").pwi({  //--specify your DIV\'s ID here\n            username: \'info@beachcup.it\'  //--REPLACE WITH YOUR PICASA NAME!!!!\n        });\n        \n        jQuery(\'#sponsors\').slick({\n			dots: false,\n			infinite: true,\n			arrows: false,\n			vertical: true,\n			autoplay: true,\n			autoplaySpeed: 4000,\n			draggable: false,\n			adaptiveHeight: false\n		});\n    });\n\nfunction submitAndRedirect(id, url)\n{\n	var form = jQuery(id);\n	\n	jQuery.ajax({\n		type: \"POST\",\n		url: form.attr(\"action\"),\n		data: form.serialize(), \n		success: function(response)\n					{\n						window.location.replace(url);\n					}\n	});\n}\n</script>','','','center'),(3,2,1485599667,'Beachcup Seitenlayout Italienisch','3rw','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1cl','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','main','a:2:{i:0;s:10:\"layout.css\";i:1;s:14:\"responsive.css\";}',NULL,'a:11:{i:0;s:16:\"Ó¡_¬û7å­�\";i:1;s:16:\"a7��Z�\0D�[$?\\\";i:2;s:16:\"Q86â1å¹ðD\";i:3;s:16:\"Q86‡â1å¹ð\";i:4;s:16:\"Q86â1å¹ðD\";i:5;s:16:\"Q86{â1å¹ðD�\";i:6;s:16:\"Q86râ1å¹ðD�\";i:7;s:16:\"Q86mâ1å¹ðD�\";i:8;s:16:\"Q86gâ1å¹ðD�\";i:9;s:16:\"Q86[â1å¹ðD�\";i:10;s:16:\" �)E�杦\0>\0e�\";}','a:11:{i:0;s:16:\"Q86‡â1å¹ð\";i:1;s:16:\"Q86â1å¹ðD\";i:2;s:16:\"Q86{â1å¹ðD�\";i:3;s:16:\"Q86[â1å¹ðD�\";i:4;s:16:\"Q86mâ1å¹ðD�\";i:5;s:16:\"Q86gâ1å¹ðD�\";i:6;s:16:\"Q86â1å¹ðD\";i:7;s:16:\"Q86râ1å¹ðD�\";i:8;s:16:\"a7��Z�\0D�[$?\\\";i:9;s:16:\"Ó¡_¬û7å­�\";i:10;s:16:\" �)E�杦\0>\0e�\";}','external_first',NULL,NULL,'a:5:{i:0;a:3:{s:3:\"mod\";s:1:\"5\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";s:1:\"1\";}i:1;a:3:{s:3:\"mod\";s:2:\"27\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";s:1:\"1\";}i:2;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";s:1:\"1\";}i:3;a:3:{s:3:\"mod\";s:2:\"25\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";s:1:\"1\";}i:4;a:3:{s:3:\"mod\";s:1:\"6\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";s:1:\"1\";}}','fe_page','html5','Open+Sans:300italic,700italic,800italic,400,300,700,800|Lobster&subset=latin,latin-ext','','','','','','<link rel=\"icon\" type=\"image/ico\" href=\"./files/themes/images/favicon.ico\">\n<script type=\'text/javascript\' src=\'./files/themes/js/jquery-1-11-3.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jquery-migrate-1-2-1.min.js\'></script>\n<script type=\'text/javascript\' src=\'http://maps.google.com/maps/api/js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/gmap3.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/oms.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/richmarker-compiled.js\'></script>\n<script src=\"./assets/jquery.pwi/js/jquery.blockUI.js\" type=\"text/javascript\"></script> \n<link   href=\"./assets/jquery.pwi/css/pwi.css\" rel=\"stylesheet\" type=\"text/css\"/>\n<script src=\"./assets/jquery.pwi/js/jquery.pwi-min.js\" type=\"text/javascript\"></script>','','',NULL,'','moo_local',NULL,'','<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/core.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/widget.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/mouse.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/draggable.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/slider.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jqueryui-1-11-4/jquery.ui.touch-punch.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/et_google_fonts.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jquery.tinyscrollbar.min.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/superfish.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/jquery.fitvids.js\'></script>\n<script type=\'text/javascript\'>\n/* <![CDATA[ */\nvar et_custom = {\"toggle_text\":\"<span>Beachcup<\\/span>News\",\"mobile_nav_text\":\"Navigation Menu\"};\n/* ]]> */\n</script>\n<script type=\'text/javascript\' src=\'./files/themes/js/custom.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/fancybox/jquery.easing-1.3.pack.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/fancybox/jquery.fancybox-1.3.4.pack.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/et-ptemplates-frontend.js\'></script>\n<script type=\'text/javascript\' src=\'./files/themes/js/modernizr.js\'></script>\n<script type=\"text/javascript\" src=\"./files/themes/js/details-shim.min.js\"></script>\n<script type=\"text/javascript\" src=\"./files/themes/js/slick/slick.min.js\"></script>\n<script>\njQuery(document).ready(function() {  //-- default jQuery call, do stuff when page is loaded\n        jQuery(\"#picasa-albums\").pwi({  //--specify your DIV\'s ID here\n            username: \'info@beachcup.it\'  //--REPLACE WITH YOUR PICASA NAME!!!!\n        });\n        \n        jQuery(\'#sponsors\').slick({\n			dots: false,\n			infinite: true,\n			arrows: false,\n			vertical: true,\n			autoplay: true,\n			autoplaySpeed: 4000,\n			draggable: false,\n			adaptiveHeight: false\n		});\n    });\n\nfunction submitAndRedirect(id, url)\n{\n	var form = jQuery(id);\n	\n	jQuery.ajax({\n		type: \"POST\",\n		url: form.attr(\"action\"),\n		data: form.serialize(), \n		success: function(response)\n					{\n						window.location.replace(url);\n					}\n	});\n}\n</script>','','','center');
/*!40000 ALTER TABLE `tl_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_module`
--

DROP TABLE IF EXISTS `tl_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `levelOffset` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hardLimit` char(1) NOT NULL DEFAULT '',
  `showProtected` char(1) NOT NULL DEFAULT '',
  `defineRoot` char(1) NOT NULL DEFAULT '',
  `rootPage` int(10) unsigned NOT NULL DEFAULT '0',
  `navigationTpl` varchar(64) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `pages` blob,
  `orderPages` blob,
  `showHidden` char(1) NOT NULL DEFAULT '',
  `customLabel` varchar(64) NOT NULL DEFAULT '',
  `autologin` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `redirectBack` char(1) NOT NULL DEFAULT '',
  `cols` varchar(32) NOT NULL DEFAULT '',
  `editable` blob,
  `memberTpl` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `queryType` varchar(32) NOT NULL DEFAULT '',
  `fuzzy` char(1) NOT NULL DEFAULT '',
  `contextLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `totalLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `searchType` varchar(32) NOT NULL DEFAULT '',
  `searchTpl` varchar(64) NOT NULL DEFAULT '',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `skipFirst` smallint(5) unsigned NOT NULL DEFAULT '0',
  `loadFirst` char(1) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `transparent` char(1) NOT NULL DEFAULT '',
  `flashvars` varchar(255) NOT NULL DEFAULT '',
  `altContent` text,
  `source` varchar(32) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `interactive` char(1) NOT NULL DEFAULT '',
  `flashID` varchar(64) NOT NULL DEFAULT '',
  `flashJS` text,
  `imgSize` varchar(64) NOT NULL DEFAULT '',
  `useCaption` char(1) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `html` text,
  `rss_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `rss_feed` text,
  `rss_template` varchar(32) NOT NULL DEFAULT '',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) NOT NULL DEFAULT '',
  `reg_skipName` char(1) NOT NULL DEFAULT '',
  `reg_close` varchar(32) NOT NULL DEFAULT '',
  `reg_assignDir` char(1) NOT NULL DEFAULT '',
  `reg_homeDir` binary(16) DEFAULT NULL,
  `reg_activate` char(1) NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_text` text,
  `reg_password` text,
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) unsigned NOT NULL DEFAULT '1',
  `cal_format` varchar(32) NOT NULL DEFAULT '',
  `cal_ignoreDynamic` char(1) NOT NULL DEFAULT '',
  `cal_order` varchar(32) NOT NULL DEFAULT '',
  `cal_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `cal_limit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cal_template` varchar(32) NOT NULL DEFAULT '',
  `cal_ctemplate` varchar(32) NOT NULL DEFAULT '',
  `cal_showQuantity` char(1) NOT NULL DEFAULT '',
  `com_order` varchar(32) NOT NULL DEFAULT '',
  `com_moderate` char(1) NOT NULL DEFAULT '',
  `com_bbcode` char(1) NOT NULL DEFAULT '',
  `com_requireLogin` char(1) NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) NOT NULL DEFAULT '',
  `com_template` varchar(32) NOT NULL DEFAULT '',
  `faq_categories` blob,
  `faq_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `list_table` varchar(64) NOT NULL DEFAULT '',
  `list_fields` varchar(255) NOT NULL DEFAULT '',
  `list_where` varchar(255) NOT NULL DEFAULT '',
  `list_search` varchar(255) NOT NULL DEFAULT '',
  `list_sort` varchar(255) NOT NULL DEFAULT '',
  `list_info` varchar(255) NOT NULL DEFAULT '',
  `list_info_where` varchar(255) NOT NULL DEFAULT '',
  `list_layout` varchar(32) NOT NULL DEFAULT '',
  `list_info_layout` varchar(32) NOT NULL DEFAULT '',
  `news_archives` blob,
  `news_featured` varchar(16) NOT NULL DEFAULT '',
  `news_jumpToCurrent` varchar(16) NOT NULL DEFAULT '',
  `news_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `news_metaFields` varchar(255) NOT NULL DEFAULT '',
  `news_template` varchar(32) NOT NULL DEFAULT '',
  `news_format` varchar(32) NOT NULL DEFAULT '',
  `news_startDay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_order` varchar(255) NOT NULL DEFAULT '',
  `news_showQuantity` char(1) NOT NULL DEFAULT '',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_hideChannels` char(1) NOT NULL DEFAULT '',
  `nl_subscribe` text,
  `nl_unsubscribe` text,
  `nl_template` varchar(32) NOT NULL DEFAULT '',
  `hideActiveLanguage` char(1) NOT NULL DEFAULT '',
  `hideNoFallback` char(1) NOT NULL DEFAULT '',
  `keepUrlParams` char(1) NOT NULL DEFAULT '',
  `customLanguage` char(1) NOT NULL DEFAULT '',
  `customLanguageText` mediumtext,
  `list_formdata` varchar(64) NOT NULL DEFAULT '',
  `efg_list_searchtype` varchar(32) NOT NULL DEFAULT '',
  `efg_list_access` varchar(32) NOT NULL DEFAULT '',
  `efg_fe_edit_access` varchar(32) NOT NULL DEFAULT '',
  `efg_fe_delete_access` varchar(32) NOT NULL DEFAULT '',
  `efg_fe_export_access` varchar(32) NOT NULL DEFAULT '',
  `efg_DetailsKey` varchar(64) NOT NULL DEFAULT '',
  `efg_iconfolder` varchar(255) NOT NULL DEFAULT '',
  `efg_fe_keep_id` char(1) NOT NULL DEFAULT '',
  `efg_fe_no_formatted_mail` char(1) NOT NULL DEFAULT '',
  `efg_fe_no_confirmation_mail` char(1) NOT NULL DEFAULT '',
  `efg_com_allow_comments` char(1) NOT NULL DEFAULT '',
  `efg_com_per_page` smallint(5) unsigned NOT NULL DEFAULT '0',
  `efg_com_notify` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_module`
--

LOCK TABLES `tl_module` WRITE;
/*!40000 ALTER TABLE `tl_module` DISABLE KEYS */;
INSERT INTO `tl_module` VALUES (5,2,1457020006,'Navigation','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','navigation',0,0,'','','',0,'nav_default','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(6,2,1462459821,'Footer','','html',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,'<div id=\"sponsors\">\n	<div>\n		<a href=\"http://www.raiffeisen.it\" target=\"_blank\">\n			<img alt=\"Banner\" src=\"./files/themes/images/banners/raika.png\">\n		</a>\n	</div>\n	<div>\n		<a href=\"https://www.volleyballdirect.it\" target=\"_blank\">\n			<img alt=\"Banner\" src=\"./files/themes/images/banners/vb-direct.png\">\n		</a>\n	</div>\n	<div>\n		<a href=\"https://www.forst.it\" target=\"_blank\">\n			<img alt=\"Banner\" src=\"./files/themes/images/banners/forst.png\">\n		</a>\n	</div>\n	<!--<div>\n		<a href=\"http://www.sdf.bz.it\" target=\"_blank\">\n			<img alt=\"Banner\" src=\"./files/themes/images/banners/sdf.png\">\n		</a>\n	</div>\n	<div>\n		<a href=\"http://www.vb33.it\" target=\"_blank\">\n			<img alt=\"Banner\" src=\"./files/themes/images/banners/video33.png\">\n		</a>\n	</div>\n	<div>\n		<a href=\"http://fipavbz.net\" target=\"_blank\">\n			<img alt=\"Banner\" src=\"./files/themes/images/banners/fipavbz.png\">\n		</a>\n	</div>-->\n	<div>\n		<a href=\"http://www.vss.bz.it\" target=\"_blank\">\n			<img alt=\"Banner\" src=\"./files/themes/images/banners/vss.png\">\n		</a>\n	</div>\n	<div>\n		<a href=\"http://www.redybz.it\" target=\"_blank\">\n			<img alt=\"Banner\" src=\"./files/themes/images/banners/redy.jpg\">\n		</a>\n	</div>\n</div>',3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(11,2,1457193144,'Etappen Landkarte','','stage_map',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(14,2,1460801600,'Nachrichtenleser Deutsch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','newsreader',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default','a:1:{i:0;s:1:\"2\";}','all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_full','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(15,2,1460801626,'Nachrichtenliste Deutsch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','newslist',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','','',NULL,NULL,NULL,3600,NULL,'rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default','a:1:{i:0;s:1:\"2\";}','all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(16,2,1458740497,'Etappen Liste','','stage_list',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(19,2,1460103917,'Spielergebnisse','','game_results',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(20,2,1460800447,'Gesamtstände','','total_results',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(24,2,1460801592,'Nachrichtenleser Italienisch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','newsreader',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default','a:1:{i:0;s:1:\"3\";}','all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_full','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(23,2,1460801645,'Nachrichtenslider Italienisch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','newslist',0,0,'','','',0,'','mod_news_slider',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','','',NULL,NULL,NULL,3600,NULL,'rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default','a:1:{i:0;s:1:\"3\";}','all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_short','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(25,2,1460801661,'Nachrichtenliste Italienisch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','newslist',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','','',NULL,NULL,NULL,3600,NULL,'rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default','a:1:{i:0;s:1:\"3\";}','all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(26,2,1460801678,'Nachrichtenslider Deutsch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','newslist',0,0,'','','',0,'','mod_news_slider',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','','',NULL,NULL,NULL,3600,NULL,'rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default','a:1:{i:0;s:1:\"2\";}','all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_short','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(27,2,1461309437,'Sprachenwechsler','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','changelanguage',0,0,'','','',0,'nav_changelanguage','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:26:\"responsive-language-switch\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(28,2,1463678059,'Login Deutsch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:5:\"Login\";}','login',0,0,'','','',0,'','',NULL,NULL,'','','',59,'','1cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(29,2,1463926255,'Registrierung Deutsch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:12:\"Registrieren\";}','registration',0,0,'','','',0,'','',NULL,NULL,'','','',72,'','2cl','a:5:{i:0;s:9:\"firstname\";i:1;s:8:\"lastname\";i:2;s:5:\"email\";i:3;s:8:\"username\";i:4;s:8:\"password\";}','member_default','1',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'','a:1:{i:0;s:1:\"1\";}','1','','','',NULL,'1',57,'Vielen Dank für Ihre Registrierung auf ##domain##.\n\nBitte klicken Sie ##link## um Ihre Registrierung abzuschließen und Ihr Konto zu aktivieren. Wenn Sie keinen Zugang angefordert haben, ignorieren Sie bitte diese E-Mail.',NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(30,2,1463399842,'Logout','','logout',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(34,2,1463926392,'Registrierung Italienisch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:10:\"Registrare\";}','registration',0,0,'','','',0,'','',NULL,NULL,'','','',73,'','2cl','a:5:{i:0;s:9:\"firstname\";i:1;s:8:\"lastname\";i:2;s:5:\"email\";i:3;s:8:\"username\";i:4;s:8:\"password\";}','member_default','1',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'','a:1:{i:0;s:1:\"1\";}','1','','','',NULL,'1',64,'Grazie per la tua registrazione su ##domain##.\n\nClicca ##link## per completare la registrazione e per attivare l\'account. Se non hai richiesto un account, ignora questa email.',NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(35,2,1463678089,'Login Italienisch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:5:\"Login\";}','login',0,0,'','','',0,'','',NULL,NULL,'','','',67,'','1cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,''),(36,2,1463927190,'Anmeldungsliste','','registration_list',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,'notify_admin'),(37,2,1463927233,'Spielerliste','','player_list',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,'notify_admin'),(38,2,1463927250,'Teamliste','','team_list',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,'notify_admin'),(40,2,1465886850,'Passwort vergessen Deutsch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:18:\"Passwort vergessen\";}','lostPassword',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,'Sie haben ein neues Passwort für ##domain## angefordert.\n\nBitte klicken Sie ##link## um das neue Passwort festzulegen. Wenn Sie diese E-Mail nicht angefordert haben, kontaktieren Sie bitte den Administrator der Webseite.','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,'notify_admin'),(41,2,1465886984,'Passwort vergessen Italienisch','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:17:\"Recupera password\";}','lostPassword',0,0,'','','',0,'','',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,'Sie haben ein neues Passwort für ##domain## angefordert.\n\nBitte klicken Sie ##link## um das neue Passwort festzulegen. Wenn Sie diese E-Mail nicht angefordert haben, kontaktieren Sie bitte den Administrator der Webseite.','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','','','','',NULL,'','','','','','','','','','','','',0,'notify_admin');
/*!40000 ALTER TABLE `tl_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_page`
--

DROP TABLE IF EXISTS `tl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text,
  `redirect` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `dns` varchar(255) NOT NULL DEFAULT '',
  `staticFiles` varchar(255) NOT NULL DEFAULT '',
  `staticPlugins` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `adminEmail` varchar(255) NOT NULL DEFAULT '',
  `dateFormat` varchar(32) NOT NULL DEFAULT '',
  `timeFormat` varchar(32) NOT NULL DEFAULT '',
  `datimFormat` varchar(32) NOT NULL DEFAULT '',
  `createSitemap` char(1) NOT NULL DEFAULT '',
  `sitemapName` varchar(32) NOT NULL DEFAULT '',
  `useSSL` char(1) NOT NULL DEFAULT '',
  `autoforward` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `includeLayout` char(1) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `mobileLayout` int(10) unsigned NOT NULL DEFAULT '0',
  `includeCache` char(1) NOT NULL DEFAULT '',
  `cache` int(10) unsigned NOT NULL DEFAULT '0',
  `includeChmod` char(1) NOT NULL DEFAULT '',
  `cuser` int(10) unsigned NOT NULL DEFAULT '0',
  `cgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `chmod` varchar(255) NOT NULL DEFAULT '',
  `noSearch` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(64) NOT NULL DEFAULT '',
  `sitemap` varchar(32) NOT NULL DEFAULT '',
  `hide` char(1) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `languageMain` int(10) unsigned NOT NULL DEFAULT '0',
  `languageRoot` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `pid_type_start_stop_published` (`pid`,`type`,`start`,`stop`,`published`),
  KEY `type` (`type`),
  KEY `languageMain` (`languageMain`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_page`
--

LOCK TABLES `tl_page` WRITE;
/*!40000 ALTER TABLE `tl_page` DISABLE KEYS */;
INSERT INTO `tl_page` VALUES (13,7,384,1462519842,'Ranking','ranking','forward','Ranking','','index,follow','','permanent',14,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(7,0,128,1462519966,'Beachcup Deutsch','de','root','Raiffeisen Beachcup','de','',NULL,'permanent',0,'','','','','','1','','','','','','','','','',NULL,'1',2,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','','','',0,'','1','','',0,0),(8,7,32,1462961045,'Home','home','regular','Home','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(9,7,256,1462519762,'Turnier','turnier','forward','Turnier','','index,follow','','permanent',10,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(10,9,128,1462961070,'Etappen','etappen','regular','Etappen','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(11,9,256,1462961078,'Reglement','reglement','regular','Reglement','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(12,9,384,1460972430,'Landesmeisterschaft','landesmeisterschaft','regular','','','noindex,nofollow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','','','',0,0),(14,13,128,1462961087,'Etappenstände','etappenstaende','regular','Etappenstände','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(15,13,256,1462961095,'Gesamtstand','gesamtstand','regular','Gesamtstand','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(16,7,512,1460395675,'Media','media','forward','','','index,follow','','permanent',17,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(17,16,128,1462961103,'Fotos','fotos','regular','Fotos','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(18,16,256,1462961111,'Videos','videos','regular','Videos','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(19,7,640,1460395707,'Kontakt','kontakt','forward','','','index,follow','','permanent',20,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(20,19,128,1462961127,'Kontaktformular','kontaktformular','regular','Kontaktformular','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(21,19,256,1462961134,'Impressum','impressum','regular','Impressum','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(23,7,64,1460972585,'Nachrichten','nachrichten','regular','','','noindex,nofollow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','1','',0,'','1','','',0,0),(55,53,256,1462961240,'Note legali','note-legali','regular','Note legali','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',21,0),(54,53,128,1462961233,'Modulo di contatto','modulo-di-contatto','regular','Modulo di contatto','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',20,0),(52,50,256,1462961226,'Video','video','regular','Video','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',18,0),(53,40,640,1462520159,'Contatto','contatto','forward','Contatto','','index,follow','','permanent',54,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',19,0),(51,50,128,1462961219,'Foto','foto','regular','Foto','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',17,0),(49,47,256,1462961211,'Classifiche','classifiche','regular','Classifiche','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',15,0),(50,40,512,1462520133,'Foto e Video','foto-e-video','forward','Foto e Video','','index,follow','','permanent',51,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',16,0),(48,47,128,1462961187,'Risultati tappe','risultati-tappe','regular','Risultati tappe','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',14,0),(46,43,384,1460972529,'Campionato provinciale','campionato-provinciale','regular','','','noindex,nofollow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','','','',12,0),(47,40,384,1462520064,'Risultati','risultati','forward','Risultati','','index,follow','','permanent',48,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',13,0),(45,43,256,1462961179,'Regolamento','reglolamento','regular','Regolamento','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',11,0),(43,40,256,1462521240,'Torneo','torneo','forward','Torneo','','index,follow','','permanent',44,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',9,0),(44,43,128,1462961170,'Tappe','tappe','regular','Tappe','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',10,0),(42,40,64,1460972507,'Notizie','notizie','regular','','','noindex,nofollow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','1','',0,'','1','','',23,0),(40,0,256,1460803615,'Beachcup Italienisch','it','root','Raiffeisen Beachcup','it','',NULL,'permanent',0,'','','','','','','','','','','','','','','',NULL,'1',3,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','','','',0,'','1','','',0,0),(41,40,32,1462961142,'Home','home','regular','Home','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',8,0),(56,7,768,1463944788,'My Beachcup','my-beachcup-de','forward','','','index,follow','','permanent',59,'','','','','','','','','','','','','','','','a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(57,56,128,1463671553,'Login','login-de','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','1',0,'','1','','',0,0),(58,56,256,1463399776,'Registrieren','registrieren','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','1',0,'','1','','',0,0),(59,56,384,1463928944,'1. Meine Spieler','meine-spieler','regular','Meine Spieler','','index,follow','','permanent',0,'','','','','','','','','','','','','','','1','a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(60,56,512,1463928979,'3. Meine Anmeldungen','meine-anmeldungen','regular','Meine Anmeldungen','','index,follow','','permanent',0,'','','','','','','','','','','','','','','1','a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(61,56,320,1463671563,'Logout','logout-de','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','1','a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(62,56,448,1463928963,'2. Meine Teams','meine-teams','regular','Meine Teams','','index,follow','','permanent',0,'','','','','','','','','','','','','','','1','a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',0,0),(63,40,768,1463944806,'My Beachcup','my-beachcup-it','forward','','','',NULL,'permanent',67,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',56,0),(64,63,128,1463671577,'Login','login-it','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','1',0,'','1','','',57,0),(65,63,256,1463671617,'Logout','logout-it','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','1','a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',61,0),(66,63,192,1463671679,'Registrare','registrare','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','1',0,'','1','','',58,0),(67,63,384,1463929025,'1. I miei giocatori','i-miei-giocatori','regular','I miei giocatori','','index,follow','','permanent',0,'','','','','','','','','','','','','','','1','a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',59,0),(68,63,512,1463929048,'2. Le mie squadre','le-mie-squadre','regular','Le mie squadre','','index,follow','','permanent',0,'','','','','','','','','','','','','','','1','a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',62,0),(69,63,640,1463929071,'3. Le mie iscrizioni','le-mie-iscrizioni','regular','Le mie iscrizioni','','index,follow','','permanent',0,'','','','','','','','','','','','','','','1','a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','',60,0),(70,7,16,1463925099,'Zugriff verweigert','zugriff-verweigert','error_403','Zugriff verweigert','','noindex,nofollow','','permanent',57,'','','','','','','','','','','','','','1','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','','','',0,'','1','','',0,0),(71,40,16,1463925181,'Accesso negato','accesso-negato','error_403','Accesso negato','','noindex,nofollow','','permanent',64,'','','','','','','','','','','','','','1','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','','','',0,'','1','','',70,0),(72,56,288,1463925384,'Bestätigung Registrierung','bestaetigung-registrierung','regular','Bestätigung Registrierung','','noindex,nofollow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','1','','map_default','1','',0,'','1','','',0,0),(73,63,224,1463925495,'Conferma registrazione','conferma-registrazione','regular','Conferma registrazione','','noindex,nofollow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','1','','map_default','1','',0,'','1','','',72,0),(74,56,192,1465887871,'Passwort vergessen','passwort-vergessen','regular','Passwort vergessen','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','1','',0,'','1','','',0,0),(75,63,160,1465887696,'Recupera password','recupera-password','regular','Recupera password','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','1','',0,'','1','','',74,0);
/*!40000 ALTER TABLE `tl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_theme`
--

DROP TABLE IF EXISTS `tl_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `author` varchar(128) NOT NULL DEFAULT '',
  `folders` blob,
  `screenshot` binary(16) DEFAULT NULL,
  `templates` varchar(255) NOT NULL DEFAULT '',
  `vars` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_theme`
--

LOCK TABLES `tl_theme` WRITE;
/*!40000 ALTER TABLE `tl_theme` DISABLE KEYS */;
INSERT INTO `tl_theme` VALUES (2,1457019554,'Beachcup Theme','Jakob Pallhuber','a:1:{i:0;s:16:\"��k�U剂D�[$?\\\";}',NULL,'templates/beachcup','a:0:{}');
/*!40000 ALTER TABLE `tl_theme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-28 11:38:20
