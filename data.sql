-- phpMyAdmin SQL Dump
-- version 3.4.7.1
-- http://www.phpmyadmin.net
--
-- Host: 62.149.150.92
-- Generato il: Gen 31, 2017 alle 09:25
-- Versione del server: 5.0.92
-- Versione PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Sql249907_4`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `tl_extension`
--

DROP TABLE IF EXISTS `tl_extension`;
CREATE TABLE IF NOT EXISTS `tl_extension` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(64) NOT NULL default '',
  `folder` varchar(48) NOT NULL default '',
  `author` varchar(128) NOT NULL default '',
  `copyright` varchar(128) NOT NULL default '',
  `package` varchar(64) NOT NULL default '',
  `license` varchar(64) NOT NULL default '',
  `addBeMod` char(1) NOT NULL default '',
  `beClasses` varchar(255) NOT NULL default '',
  `beTables` varchar(255) NOT NULL default '',
  `beTemplates` varchar(255) NOT NULL default '',
  `addFeMod` char(1) NOT NULL default '',
  `feClasses` varchar(255) NOT NULL default '',
  `feTables` varchar(255) NOT NULL default '',
  `feTemplates` varchar(255) NOT NULL default '',
  `addLanguage` char(1) NOT NULL default '',
  `languages` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `tl_extension`
--

INSERT INTO `tl_extension` (`id`, `tstamp`, `title`, `folder`, `author`, `copyright`, `package`, `license`, `addBeMod`, `beClasses`, `beTables`, `beTemplates`, `addFeMod`, `feClasses`, `feTables`, `feTemplates`, `addLanguage`, `languages`) VALUES
(2, 1446714932, 'beachcup', 'beachcup', 'Jakob Pallhuber', 'Copyright Â© Jakob Pallhuber All Rights Reserved', 'beachcup', 'LGPL', '1', '', 'tl_beachcup_season,tl_beachcup_stage,tl_beachcup_organizer,tl_beachcup_venue,tl_beachcup_tournament,tl_beachcup_tournament_type,tl_beachcup_registration,tl_beachcup_registration_state,tl_beachcup_team,tl_beachcup_player,tl_beachcup_player_level', '', '1', 'BeachcupStageList', '', 'beachcup_stage_list', '1', 'en,de,it');

-- --------------------------------------------------------

--
-- Struttura della tabella `tl_form`
--

DROP TABLE IF EXISTS `tl_form`;
CREATE TABLE IF NOT EXISTS `tl_form` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(128) character set utf8 collate utf8_bin NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `sendViaEmail` char(1) NOT NULL default '',
  `recipient` varchar(1022) NOT NULL default '',
  `subject` varchar(255) NOT NULL default '',
  `format` varchar(12) NOT NULL default '',
  `skipEmpty` char(1) NOT NULL default '',
  `storeValues` char(1) NOT NULL default '',
  `targetTable` varchar(64) NOT NULL default '',
  `method` varchar(12) NOT NULL default '',
  `novalidate` char(1) NOT NULL default '',
  `attributes` varchar(255) NOT NULL default '',
  `formID` varchar(64) NOT NULL default '',
  `tableless` char(1) NOT NULL default '',
  `allowTags` char(1) NOT NULL default '',
  `storeFormdata` char(1) NOT NULL default '',
  `efgStoreValues` char(1) NOT NULL default '',
  `useFormValues` char(1) NOT NULL default '',
  `useFieldNames` char(1) NOT NULL default '',
  `efgAliasField` varchar(64) NOT NULL default '',
  `sendConfirmationMail` char(1) NOT NULL default '',
  `confirmationMailRecipientField` varchar(64) NOT NULL default '',
  `confirmationMailRecipient` varchar(255) NOT NULL default '',
  `confirmationMailSender` varchar(255) NOT NULL default '',
  `confirmationMailReplyto` varchar(255) NOT NULL default '',
  `confirmationMailSubject` varchar(255) NOT NULL default '',
  `confirmationMailText` text,
  `confirmationMailTemplate` binary(16) default NULL,
  `confirmationMailSkipEmpty` char(1) NOT NULL default '',
  `sendFormattedMail` char(1) NOT NULL default '',
  `formattedMailRecipient` text,
  `formattedMailSubject` varchar(255) NOT NULL default '',
  `formattedMailText` text,
  `formattedMailTemplate` binary(16) default NULL,
  `formattedMailSkipEmpty` char(1) NOT NULL default '',
  `addConfirmationMailAttachments` char(1) NOT NULL default '',
  `confirmationMailAttachments` blob,
  `addFormattedMailAttachments` char(1) NOT NULL default '',
  `formattedMailAttachments` blob,
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dump dei dati per la tabella `tl_form`
--

INSERT INTO `tl_form` (`id`, `tstamp`, `title`, `alias`, `jumpTo`, `sendViaEmail`, `recipient`, `subject`, `format`, `skipEmpty`, `storeValues`, `targetTable`, `method`, `novalidate`, `attributes`, `formID`, `tableless`, `allowTags`, `storeFormdata`, `efgStoreValues`, `useFormValues`, `useFieldNames`, `efgAliasField`, `sendConfirmationMail`, `confirmationMailRecipientField`, `confirmationMailRecipient`, `confirmationMailSender`, `confirmationMailReplyto`, `confirmationMailSubject`, `confirmationMailText`, `confirmationMailTemplate`, `confirmationMailSkipEmpty`, `sendFormattedMail`, `formattedMailRecipient`, `formattedMailSubject`, `formattedMailText`, `formattedMailTemplate`, `formattedMailSkipEmpty`, `addConfirmationMailAttachments`, `confirmationMailAttachments`, `addFormattedMailAttachments`, `formattedMailAttachments`) VALUES
(2, 1462430099, 'Kontakt', 'kontakt', 0, '1', 'info@beachcup.it', 'Website Kontakt', 'raw', '', '', '', 'POST', '', 'a:2:{i:0;s:0:"";i:1;s:15:"responsive-form";}', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', NULL, '', NULL),
(4, 1463754797, 'Spieler Deutsch', 'spieler-de', 0, '', '', '', 'raw', '', '1', 'tl_beachcup_player', 'POST', '', 'a:2:{i:0;s:0:"";i:1;s:15:"responsive-form";}', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', NULL, '', NULL),
(5, 1463671197, 'Teams', 'teams', 0, '', '', '', 'raw', '', '1', 'tl_beachcup_team', 'POST', '', 'a:2:{i:0;s:0:"";i:1;s:15:"responsive-form";}', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', NULL, '', NULL),
(6, 1463671218, 'Anmeldungen Deutsch', 'anmeldungen-deutsch', 0, '', '', '', 'raw', '', '1', 'tl_beachcup_registration', 'POST', '', 'a:2:{i:0;s:0:"";i:1;s:15:"responsive-form";}', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', NULL, '', NULL),
(7, 1463672065, 'Anmeldungen Italienisch', 'anmeldungen-italienisch', 0, '', '', '', 'raw', '', '1', 'tl_beachcup_registration', 'POST', '', 'a:2:{i:0;s:0:"";i:1;s:15:"responsive-form";}', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', NULL, '', NULL),
(8, 1463754817, 'Spieler Italienisch', 'spieler-it', 0, '', '', '', 'raw', '', '1', 'tl_beachcup_player', 'POST', '', 'a:2:{i:0;s:0:"";i:1;s:15:"responsive-form";}', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `tl_form_field`
--

DROP TABLE IF EXISTS `tl_form_field`;
CREATE TABLE IF NOT EXISTS `tl_form_field` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `invisible` char(1) NOT NULL default '',
  `type` varchar(32) NOT NULL default '',
  `name` varchar(64) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `text` text,
  `html` text,
  `options` blob,
  `mandatory` char(1) NOT NULL default '',
  `rgxp` varchar(32) NOT NULL default '',
  `placeholder` varchar(255) NOT NULL default '',
  `minlength` int(10) unsigned NOT NULL default '0',
  `maxlength` int(10) unsigned NOT NULL default '0',
  `size` varchar(255) NOT NULL default '',
  `multiple` char(1) NOT NULL default '',
  `mSize` smallint(5) unsigned NOT NULL default '0',
  `extensions` varchar(255) NOT NULL default '',
  `storeFile` char(1) NOT NULL default '',
  `uploadFolder` binary(16) default NULL,
  `useHomeDir` char(1) NOT NULL default '',
  `doNotOverwrite` char(1) NOT NULL default '',
  `fsType` varchar(32) NOT NULL default '',
  `class` varchar(255) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  `accesskey` char(1) NOT NULL default '',
  `tabindex` smallint(5) unsigned NOT NULL default '0',
  `fSize` smallint(5) unsigned NOT NULL default '0',
  `customTpl` varchar(64) NOT NULL default '',
  `addSubmit` char(1) NOT NULL default '',
  `slabel` varchar(255) NOT NULL default '',
  `imageSubmit` char(1) NOT NULL default '',
  `singleSRC` binary(16) default NULL,
  `efgLookupOptions` text,
  `efgMultiSRC` blob,
  `efgImageMultiple` char(1) NOT NULL default '',
  `efgImageUseHomeDir` char(1) NOT NULL default '',
  `efgImageSortBy` varchar(32) NOT NULL default '',
  `efgImageSize` varchar(255) NOT NULL default '',
  `efgImagePerRow` smallint(5) unsigned NOT NULL default '0',
  `efgImageMargin` varchar(255) NOT NULL default '',
  `efgImageFullsize` char(1) NOT NULL default '',
  `efgAddBackButton` char(1) NOT NULL default '',
  `efgBackSlabel` varchar(255) NOT NULL default '',
  `efgSwitchButtonOrder` char(1) NOT NULL default '',
  `efgBackStoreSessionValues` char(1) NOT NULL default '',
  `efgBackImageSubmit` char(1) NOT NULL default '',
  `efgBackSingleSRC` binary(16) default NULL,
  `conditionField` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dump dei dati per la tabella `tl_form_field`
--

INSERT INTO `tl_form_field` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `name`, `label`, `text`, `html`, `options`, `mandatory`, `rgxp`, `placeholder`, `minlength`, `maxlength`, `size`, `multiple`, `mSize`, `extensions`, `storeFile`, `uploadFolder`, `useHomeDir`, `doNotOverwrite`, `fsType`, `class`, `value`, `accesskey`, `tabindex`, `fSize`, `customTpl`, `addSubmit`, `slabel`, `imageSubmit`, `singleSRC`, `efgLookupOptions`, `efgMultiSRC`, `efgImageMultiple`, `efgImageUseHomeDir`, `efgImageSortBy`, `efgImageSize`, `efgImagePerRow`, `efgImageMargin`, `efgImageFullsize`, `efgAddBackButton`, `efgBackSlabel`, `efgSwitchButtonOrder`, `efgBackStoreSessionValues`, `efgBackImageSubmit`, `efgBackSingleSRC`, `conditionField`) VALUES
(1, 2, 128, 1460800664, '', 'text', 'name', '{{ifnlng::it}}Name{{ifnlng}}{{iflng::it}}Nome{{iflng}}', NULL, NULL, NULL, '1', 'alnum', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(2, 2, 256, 1460800713, '', 'text', 'email', '{{ifnlng::it}}Email{{ifnlng}}{{iflng::it}}E-mail{{iflng}}', NULL, NULL, NULL, '1', 'email', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(3, 2, 384, 1460800801, '', 'textarea', 'message', '{{ifnlng::it}}Nachricht{{ifnlng}}{{iflng::it}}Messagio{{iflng}}', NULL, NULL, NULL, '1', 'extnd', '', 0, 0, 'a:2:{i:0;s:1:"8";i:1;s:1:"0";}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(4, 2, 512, 1460800823, '', 'submit', '', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '{{ifnlng::it}}Senden{{ifnlng}}{{iflng::it}}Invia{{iflng}}', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(8, 4, 256, 1463755001, '', 'text', 'surname', 'Nachname', NULL, NULL, NULL, '1', '', '', 0, 255, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(6, 4, 1408, 1463496175, '', 'hidden', 'user', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '{{user::id}}', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(7, 4, 128, 1463754991, '', 'text', 'name', 'Name', NULL, NULL, NULL, '1', '', '', 0, 255, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(9, 4, 384, 1465550254, '', 'text', 'birth_date', 'Geburtsdatum (TT.MM.JJJJ)', NULL, '<div class="widget widget-text mandatory">\n	<label for="ctrl_9" class="mandatory">\n		<span class="invisible">{{ifnlng::it}}Pflichtfeld{{ifnlng}}{{iflng::it}}Obbligatorio{{iflng}}</span> {{ifnlng::it}}Geburtsdatum{{ifnlng}}{{iflng::it}}Data di nascita{{iflng}}<span class="mandatory">*</span>\n	</label>\n	<input type="date" name="birth_date" id="ctrl_9" class="text mandatory" value="" required>\n</div>', NULL, '1', 'date', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(10, 4, 512, 1463755024, '', 'text', 'birth_place', 'Geburtsort', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(11, 4, 640, 1463755053, '', 'select', 'gender', 'Geschlecht', NULL, NULL, 0x613a333a7b693a303b613a333a7b733a353a2276616c7565223b733a343a226d616c65223b733a353a226c6162656c223b733a393a224dc3a46e6e6c696368223b733a373a2264656661756c74223b733a313a2231223b7d693a313b613a323a7b733a353a2276616c7565223b733a363a2266656d616c65223b733a353a226c6162656c223b733a383a22576569626c696368223b7d693a323b613a323a7b733a353a2276616c7565223b733a353a226f74686572223b733a353a226c6162656c223b733a393a22536f6e737469676573223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(16, 4, 1280, 1463755359, '', 'text', 'email', 'Email', NULL, NULL, NULL, '1', 'email', '', 0, 255, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(12, 4, 768, 1463755063, '', 'text', 'address', 'Adresse', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(13, 4, 896, 1463755072, '', 'text', 'zip_code', 'Postleitzahl', NULL, NULL, NULL, '1', 'digit', '', 0, 11, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(14, 4, 1024, 1463755082, '', 'text', 'city', 'Ort', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(15, 4, 1152, 1463755330, '', 'select', 'country', 'Land', NULL, NULL, 0x613a353a7b693a303b613a333a7b733a353a2276616c7565223b733a323a226974223b733a353a226c6162656c223b733a373a224974616c69656e223b733a373a2264656661756c74223b733a313a2231223b7d693a313b613a323a7b733a353a2276616c7565223b733a323a226465223b733a353a226c6162656c223b733a31313a22446575747363686c616e64223b7d693a323b613a323a7b733a353a2276616c7565223b733a323a226174223b733a353a226c6162656c223b733a31303a22c3967374657265696368223b7d693a333b613a323a7b733a353a2276616c7565223b733a323a226368223b733a353a226c6162656c223b733a373a225363687765697a223b7d693a343b613a323a7b733a353a2276616c7565223b733a313a222d223b733a353a226c6162656c223b733a373a22416e6465726573223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(17, 4, 1344, 1463755371, '', 'text', 'phone_number', 'Telefonnummer', NULL, NULL, NULL, '', 'phone', '', 0, 255, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(18, 4, 1376, 1463755384, '', 'select', 'shirt_size', 'T-Shirt Größe', NULL, NULL, 0x613a373a7b693a303b613a323a7b733a353a2276616c7565223b733a333a22585853223b733a353a226c6162656c223b733a333a22585853223b7d693a313b613a323a7b733a353a2276616c7565223b733a323a225853223b733a353a226c6162656c223b733a323a225853223b7d693a323b613a323a7b733a353a2276616c7565223b733a313a2253223b733a353a226c6162656c223b733a313a2253223b7d693a333b613a333a7b733a353a2276616c7565223b733a313a224d223b733a353a226c6162656c223b733a313a224d223b733a373a2264656661756c74223b733a313a2231223b7d693a343b613a323a7b733a353a2276616c7565223b733a313a224c223b733a353a226c6162656c223b733a313a224c223b7d693a353b613a323a7b733a353a2276616c7565223b733a323a22584c223b733a353a226c6162656c223b733a323a22584c223b7d693a363b613a323a7b733a353a2276616c7565223b733a333a2258584c223b733a353a226c6162656c223b733a333a2258584c223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(19, 4, 1392, 1463755394, '', 'efgLookupSelect', 'player_level', 'Spielerlevel', NULL, NULL, 0x613a31303a7b693a303b613a323a7b733a353a2276616c7565223b733a313a2232223b733a353a226c6162656c223b733a373a2253455249455f41223b7d693a313b613a323a7b733a353a2276616c7565223b733a313a2233223b733a353a226c6162656c223b733a383a2253455249455f4132223b7d693a323b613a323a7b733a353a2276616c7565223b733a313a2234223b733a353a226c6162656c223b733a383a2253455249455f4231223b7d693a333b613a323a7b733a353a2276616c7565223b733a313a2235223b733a353a226c6162656c223b733a383a2253455249455f4232223b7d693a343b613a323a7b733a353a2276616c7565223b733a313a2236223b733a353a226c6162656c223b733a373a2253455249455f43223b7d693a353b613a323a7b733a353a2276616c7565223b733a313a2237223b733a353a226c6162656c223b733a373a2253455249455f44223b7d693a363b613a323a7b733a353a2276616c7565223b733a313a2238223b733a353a226c6162656c223b733a353a224449565f31223b7d693a373b613a323a7b733a353a2276616c7565223b733a313a2239223b733a353a226c6162656c223b733a353a224449565f32223b7d693a383b613a323a7b733a353a2276616c7565223b733a323a223130223b733a353a226c6162656c223b733a353a224449565f33223b7d693a393b613a333a7b733a353a2276616c7565223b733a323a223131223b733a353a226c6162656c223b733a353a224f54484552223b733a373a2264656661756c74223b733a313a2231223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, 'a:4:{s:12:"lookup_field";s:39:"tl_beachcup_player_level.description_de";s:11:"lookup_sort";s:0:"";s:16:"lookup_val_field";s:27:"tl_beachcup_player_level.id";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(20, 4, 1400, 1463756884, '', 'checkbox', 'has_privacy', '<span><a target="_blank" href="http://www.beachcup.it/files/2016/Eigenerklaerung.pdf">Privacy</a> bestätigen</span>', NULL, NULL, 0x613a313a7b693a303b613a323a7b733a353a2276616c7565223b733a313a2231223b733a353a226c6162656c223b733a363a225b6e6273705d223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', 'reset-css', '', '', 0, 0, '', '', '', '', NULL, 'a:3:{s:12:"lookup_field";s:30:"tl_beachcup_player.has_privacy";s:11:"lookup_sort";s:0:"";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(21, 4, 1536, 1482860942, '', 'submit', '', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', 'Speichern und neu', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(29, 7, 128, 1466243768, '', 'efgLookupSelect', 'tournament_id', 'Torneo', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, 'a:4:{s:12:"lookup_field";s:30:"tl_beachcup_tournament.name_it";s:11:"lookup_sort";s:37:"custom_sql_registration_tournament_it";s:16:"lookup_val_field";s:25:"tl_beachcup_tournament.id";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(54, 5, 320, 1479737346, '', 'hidden', 'user', '{{ifnlng::it}}Spieler 2{{ifnlng}}{{iflng::it}}Giocatore 2{{iflng}}', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '{{user::id}}', '', 0, 0, '', '', '', '', NULL, 'a:4:{s:12:"lookup_field";s:30:"tl_beachcup_player.player_name";s:11:"lookup_sort";s:15:"custom_sql_team";s:16:"lookup_val_field";s:21:"tl_beachcup_player.id";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(23, 5, 128, 1463664445, '', 'efgLookupSelect', 'player_1', '{{ifnlng::it}}Spieler 1{{ifnlng}}{{iflng::it}}Giocatore 1{{iflng}}', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, 'a:4:{s:12:"lookup_field";s:30:"tl_beachcup_player.player_name";s:11:"lookup_sort";s:15:"custom_sql_team";s:16:"lookup_val_field";s:21:"tl_beachcup_player.id";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(24, 5, 256, 1463512024, '', 'efgLookupSelect', 'player_2', '{{ifnlng::it}}Spieler 2{{ifnlng}}{{iflng::it}}Giocatore 2{{iflng}}', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, 'a:4:{s:12:"lookup_field";s:30:"tl_beachcup_player.player_name";s:11:"lookup_sort";s:15:"custom_sql_team";s:16:"lookup_val_field";s:21:"tl_beachcup_player.id";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(25, 5, 384, 1482861025, '', 'submit', '', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '{{ifnlng::it}}Speichern und neu{{ifnlng}}{{iflng::it}}Salva e nuovo{{iflng}}', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(26, 6, 128, 1466243755, '', 'efgLookupSelect', 'tournament_id', 'Turnier', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, 'a:4:{s:12:"lookup_field";s:30:"tl_beachcup_tournament.name_de";s:11:"lookup_sort";s:37:"custom_sql_registration_tournament_de";s:16:"lookup_val_field";s:25:"tl_beachcup_tournament.id";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(27, 6, 224, 1463814281, '', 'efgLookupSelect', 'team_id', 'Team', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, 'a:4:{s:12:"lookup_field";s:21:"tl_beachcup_team.name";s:11:"lookup_sort";s:26:"custom_sql_registration_de";s:16:"lookup_val_field";s:19:"tl_beachcup_team.id";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(28, 6, 384, 1463668398, '', 'submit', '', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', 'Anmelden', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(30, 7, 256, 1463672313, '', 'efgLookupSelect', 'team_id', 'Squadra', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, 'a:4:{s:12:"lookup_field";s:21:"tl_beachcup_team.name";s:11:"lookup_sort";s:26:"custom_sql_registration_it";s:16:"lookup_val_field";s:19:"tl_beachcup_team.id";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(31, 7, 384, 1463931958, '', 'submit', '', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', 'Iscrivere', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(33, 4, 1216, 1482155523, '', 'text', 'tax_number', 'Steuernummer', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(34, 8, 128, 1463754833, '', 'text', 'name', 'Nome', NULL, NULL, NULL, '1', '', '', 0, 255, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(35, 8, 256, 1463757229, '', 'text', 'surname', 'Cognome', NULL, NULL, NULL, '1', '', '', 0, 255, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(36, 8, 384, 1465550279, '', 'text', 'birth_date', 'Data di nascita (GG.MM.AAAA)', NULL, '<div class="widget widget-text mandatory">\n	<label for="ctrl_9" class="mandatory">\n		<span class="invisible">{{ifnlng::it}}Pflichtfeld{{ifnlng}}{{iflng::it}}Obbligatorio{{iflng}}</span> {{ifnlng::it}}Geburtsdatum{{ifnlng}}{{iflng::it}}Data di nascita{{iflng}}<span class="mandatory">*</span>\n	</label>\n	<input type="date" name="birth_date" id="ctrl_9" class="text mandatory" value="" required>\n</div>', NULL, '1', 'date', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(37, 8, 512, 1463757251, '', 'text', 'birth_place', 'Luogo di nascita', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(38, 8, 640, 1463757282, '', 'select', 'gender', 'Sesso', NULL, NULL, 0x613a333a7b693a303b613a333a7b733a353a2276616c7565223b733a343a226d616c65223b733a353a226c6162656c223b733a373a224d617363696c65223b733a373a2264656661756c74223b733a313a2231223b7d693a313b613a323a7b733a353a2276616c7565223b733a363a2266656d616c65223b733a353a226c6162656c223b733a393a2246656d6d696e6c6965223b7d693a323b613a323a7b733a353a2276616c7565223b733a353a226f74686572223b733a353a226c6162656c223b733a353a22416c74726f223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(39, 8, 768, 1463757298, '', 'text', 'address', 'Indirizzo', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(40, 8, 896, 1463757308, '', 'text', 'zip_code', 'Codice postale', NULL, NULL, NULL, '1', 'digit', '', 0, 11, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(41, 8, 1024, 1463757336, '', 'text', 'city', 'Paese', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(42, 8, 1152, 1463757374, '', 'select', 'country', 'Stato', NULL, NULL, 0x613a353a7b693a303b613a333a7b733a353a2276616c7565223b733a323a226974223b733a353a226c6162656c223b733a363a224974616c6961223b733a373a2264656661756c74223b733a313a2231223b7d693a313b613a323a7b733a353a2276616c7565223b733a323a226465223b733a353a226c6162656c223b733a383a224765726d616e6961223b7d693a323b613a323a7b733a353a2276616c7565223b733a323a226174223b733a353a226c6162656c223b733a373a2241757374726961223b7d693a333b613a323a7b733a353a2276616c7565223b733a323a226368223b733a353a226c6162656c223b733a383a225376697a7a657261223b7d693a343b613a323a7b733a353a2276616c7565223b733a313a222d223b733a353a226c6162656c223b733a353a22416c74726f223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(43, 8, 1216, 1482155538, '', 'text', 'tax_number', 'Codice fiscale', NULL, NULL, NULL, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(53, 7, 320, 1463926566, '', 'hidden', 'state_id', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '1', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(44, 8, 1280, 1463757394, '', 'text', 'email', 'E-mail', NULL, NULL, NULL, '1', 'email', '', 0, 255, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(45, 8, 1344, 1463757412, '', 'text', 'phone_number', 'Numero di telefono', NULL, NULL, NULL, '', 'phone', '', 0, 255, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(46, 8, 1376, 1463757430, '', 'select', 'shirt_size', 'Dimensione della camicia', NULL, NULL, 0x613a373a7b693a303b613a323a7b733a353a2276616c7565223b733a333a22585853223b733a353a226c6162656c223b733a333a22585853223b7d693a313b613a323a7b733a353a2276616c7565223b733a323a225853223b733a353a226c6162656c223b733a323a225853223b7d693a323b613a323a7b733a353a2276616c7565223b733a313a2253223b733a353a226c6162656c223b733a313a2253223b7d693a333b613a333a7b733a353a2276616c7565223b733a313a224d223b733a353a226c6162656c223b733a313a224d223b733a373a2264656661756c74223b733a313a2231223b7d693a343b613a323a7b733a353a2276616c7565223b733a313a224c223b733a353a226c6162656c223b733a313a224c223b7d693a353b613a323a7b733a353a2276616c7565223b733a323a22584c223b733a353a226c6162656c223b733a323a22584c223b7d693a363b613a323a7b733a353a2276616c7565223b733a333a2258584c223b733a353a226c6162656c223b733a333a2258584c223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(47, 8, 1392, 1463757652, '', 'efgLookupSelect', 'player_level', 'Livello', NULL, NULL, 0x613a31303a7b693a303b613a323a7b733a353a2276616c7565223b733a313a2232223b733a353a226c6162656c223b733a373a2253455249455f41223b7d693a313b613a323a7b733a353a2276616c7565223b733a313a2233223b733a353a226c6162656c223b733a383a2253455249455f4132223b7d693a323b613a323a7b733a353a2276616c7565223b733a313a2234223b733a353a226c6162656c223b733a383a2253455249455f4231223b7d693a333b613a323a7b733a353a2276616c7565223b733a313a2235223b733a353a226c6162656c223b733a383a2253455249455f4232223b7d693a343b613a323a7b733a353a2276616c7565223b733a313a2236223b733a353a226c6162656c223b733a373a2253455249455f43223b7d693a353b613a323a7b733a353a2276616c7565223b733a313a2237223b733a353a226c6162656c223b733a373a2253455249455f44223b7d693a363b613a323a7b733a353a2276616c7565223b733a313a2238223b733a353a226c6162656c223b733a353a224449565f31223b7d693a373b613a323a7b733a353a2276616c7565223b733a313a2239223b733a353a226c6162656c223b733a353a224449565f32223b7d693a383b613a323a7b733a353a2276616c7565223b733a323a223130223b733a353a226c6162656c223b733a353a224449565f33223b7d693a393b613a333a7b733a353a2276616c7565223b733a323a223131223b733a353a226c6162656c223b733a353a224f54484552223b733a373a2264656661756c74223b733a313a2231223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, 'a:4:{s:12:"lookup_field";s:39:"tl_beachcup_player_level.description_it";s:11:"lookup_sort";s:0:"";s:16:"lookup_val_field";s:27:"tl_beachcup_player_level.id";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(48, 8, 1400, 1463757201, '', 'checkbox', 'has_privacy', '<span><a target="_blank" href="http://www.beachcup.it/files/2016/Liberatoria.pdf">Conferma</a> privacy</span>', NULL, NULL, 0x613a313a7b693a303b613a323a7b733a353a2276616c7565223b733a313a2231223b733a353a226c6162656c223b733a363a225b6e6273705d223b7d7d, '1', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, 'a:3:{s:12:"lookup_field";s:30:"tl_beachcup_player.has_privacy";s:11:"lookup_sort";s:0:"";s:12:"lookup_where";s:0:"";}', NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(49, 8, 1408, 1463754802, '', 'hidden', 'user', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '{{user::id}}', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(50, 8, 1536, 1482861048, '', 'submit', '', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', 'Salva e nuovo', '', NULL, NULL, NULL, '', '', '', '', 0, '', '', '', '', '', '', '', NULL, 0),
(52, 6, 320, 1463926541, '', 'hidden', 'state_id', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '1', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(55, 6, 352, 1479744949, '', 'hidden', 'user', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '{{user::id}}', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(56, 7, 352, 1479744966, '', 'hidden', 'user', '', NULL, NULL, NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '{{user::id}}', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(57, 4, 1664, 1485600283, '', 'html', '', '', NULL, '<div class="submit_container">\n	<input type="button" onclick="submitAndRedirect(''#f4'', ''http://www.beachcup.it/de/meine-teams.html'');" class="submit" value="Speichern und weiter">\n</div>', NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(58, 8, 1664, 1485600262, '', 'html', '', '', NULL, '<div class="submit_container">\n	<input type="button" onclick="submitAndRedirect(''#f8'', ''http://www.beachcup.it/it/le-mie-squadre.html'');" class="submit" value="Salva e continua">\n</div>', NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0),
(59, 5, 512, 1485600237, '', 'html', '', '', NULL, '<div class="submit_container">\n	<input type="button" onclick="submitAndRedirect(''#f5'', ''{{ifnlng::it}}http://www.beachcup.it/de/meine-anmeldungen.html{{ifnlng}}{{iflng::it}}http://www.beachcup.it/it/le-mie-iscrizioni.html{{iflng}}'');" class="submit" value="{{ifnlng::it}}Speichern und weiter{{ifnlng}}{{iflng::it}}Salva e continua{{iflng}}">\n</div>', NULL, '', '', '', 0, 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '', NULL, NULL, NULL, '', '', '', '', 4, '', '', '', '', '', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `tl_layout`
--

DROP TABLE IF EXISTS `tl_layout`;
CREATE TABLE IF NOT EXISTS `tl_layout` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `rows` varchar(8) NOT NULL default '',
  `headerHeight` varchar(255) NOT NULL default '',
  `footerHeight` varchar(255) NOT NULL default '',
  `cols` varchar(8) NOT NULL default '',
  `widthLeft` varchar(255) NOT NULL default '',
  `widthRight` varchar(255) NOT NULL default '',
  `sections` varchar(1022) NOT NULL default '',
  `sPosition` varchar(32) NOT NULL default '',
  `framework` varchar(255) NOT NULL default '',
  `stylesheet` blob,
  `external` blob,
  `orderExt` blob,
  `loadingOrder` varchar(16) NOT NULL default '',
  `newsfeeds` blob,
  `calendarfeeds` blob,
  `modules` blob,
  `template` varchar(64) NOT NULL default '',
  `doctype` varchar(32) NOT NULL default '',
  `webfonts` varchar(255) NOT NULL default '',
  `picturefill` char(1) NOT NULL default '',
  `viewport` varchar(255) NOT NULL default '',
  `titleTag` varchar(255) NOT NULL default '',
  `cssClass` varchar(255) NOT NULL default '',
  `onload` varchar(255) NOT NULL default '',
  `head` text,
  `addJQuery` char(1) NOT NULL default '',
  `jSource` varchar(16) NOT NULL default '',
  `jquery` text,
  `addMooTools` char(1) NOT NULL default '',
  `mooSource` varchar(16) NOT NULL default '',
  `mootools` text,
  `analytics` text,
  `script` text,
  `static` char(1) NOT NULL default '',
  `width` varchar(255) NOT NULL default '',
  `align` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `tl_layout`
--

INSERT INTO `tl_layout` (`id`, `pid`, `tstamp`, `name`, `rows`, `headerHeight`, `footerHeight`, `cols`, `widthLeft`, `widthRight`, `sections`, `sPosition`, `framework`, `stylesheet`, `external`, `orderExt`, `loadingOrder`, `newsfeeds`, `calendarfeeds`, `modules`, `template`, `doctype`, `webfonts`, `picturefill`, `viewport`, `titleTag`, `cssClass`, `onload`, `head`, `addJQuery`, `jSource`, `jquery`, `addMooTools`, `mooSource`, `mootools`, `analytics`, `script`, `static`, `width`, `align`) VALUES
(2, 2, 1485847921, 'Beachcup Seitenlayout Deutsch', '3rw', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '1cl', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '', '', 'main', 'a:2:{i:0;s:10:"layout.css";i:1;s:14:"responsive.css";}', NULL, 0x613a31313a7b693a303b733a31363a22c393c2a15fc2acc3bb3711c3a5c2adc3223b693a313b733a31363a2261378cbb015a11e68100448a5b243f5c223b693a323b733a31363a22513836c28dc3a23111c3a5c2b9c3b044223b693a333b733a31363a22513836e280a1c3a23111c3a5c2b9c3b0223b693a343b733a31363a22513836c281c3a23111c3a5c2b9c3b044223b693a353b733a31363a225138367bc3a23111c3a5c2b9c3b044c5223b693a363b733a31363a2251383672c3a23111c3a5c2b9c3b044c5223b693a373b733a31363a225138366dc3a23111c3a5c2b9c3b044c5223b693a383b733a31363a2251383667c3a23111c3a5c2b9c3b044c5223b693a393b733a31363a225138365bc3a23111c3a5c2b9c3b044c5223b693a31303b733a31363a22208329450b9d11e69da600163e006592223b7d, 0x613a31313a7b693a303b733a31363a22513836e280a1c3a23111c3a5c2b9c3b0223b693a313b733a31363a22513836c28dc3a23111c3a5c2b9c3b044223b693a323b733a31363a225138367bc3a23111c3a5c2b9c3b044c5223b693a333b733a31363a225138365bc3a23111c3a5c2b9c3b044c5223b693a343b733a31363a225138366dc3a23111c3a5c2b9c3b044c5223b693a353b733a31363a2251383667c3a23111c3a5c2b9c3b044c5223b693a363b733a31363a22513836c281c3a23111c3a5c2b9c3b044223b693a373b733a31363a2251383672c3a23111c3a5c2b9c3b044c5223b693a383b733a31363a2261378cbb015a11e68100448a5b243f5c223b693a393b733a31363a22c393c2a15fc2acc3bb3711c3a5c2adc3223b693a31303b733a31363a22208329450b9d11e69da600163e006592223b7d, 'external_first', NULL, NULL, 0x613a353a7b693a303b613a333a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a323a223237223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a323a223135223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a343b613a333a7b733a333a226d6f64223b733a313a2236223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d7d, 'fe_page', 'html5', 'Open+Sans:300italic,700italic,800italic,400,300,700,800|Lobster&subset=latin,latin-ext', '', '', '', '', '', '<link rel="icon" type="image/ico" href="./files/themes/images/favicon.ico">\n<script type=''text/javascript'' src=''./files/themes/js/jquery-1-11-3.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jquery-migrate-1-2-1.min.js''></script>\n<script type=''text/javascript'' src=''http://maps.google.com/maps/api/js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/gmap3.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/oms.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/richmarker-compiled.js''></script>\n<link   href="./assets/nanogallery/css/nanogallery.min.css" rel="stylesheet" type="text/css"/>\n<script src="./assets/nanogallery/jquery.nanogallery.min.js" type="text/javascript"></script>', '', '', NULL, '', 'moo_local', NULL, '', '<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/core.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/widget.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/mouse.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/draggable.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/slider.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/jquery.ui.touch-punch.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/et_google_fonts.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jquery.tinyscrollbar.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/superfish.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jquery.fitvids.js''></script>\n<script type=''text/javascript''>\n/* <![CDATA[ */\nvar et_custom = {"toggle_text":"<span>Beachcup<\\/span>News","mobile_nav_text":"Navigation Menu"};\n/* ]]> */\n</script>\n<script type=''text/javascript'' src=''./files/themes/js/custom.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/fancybox/jquery.easing-1.3.pack.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/fancybox/jquery.fancybox-1.3.4.pack.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/et-ptemplates-frontend.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/modernizr.js''></script>\n<script type="text/javascript" src="./files/themes/js/details-shim.min.js"></script>\n<script type="text/javascript" src="./files/themes/js/slick/slick.min.js"></script>\n<script>\njQuery(document).ready(function() {  //-- default jQuery call, do stuff when page is loaded\n        jQuery("#nanoGallery").nanoGallery({\n        	kind: ''picasa'',\n        	userID: ''117059972345806779264'',\n        	thumbnailLabel: {\n        		displayDescription: false\n        	}\n        });\n        \n        jQuery(''#sponsors'').slick({\n			dots: false,\n			infinite: true,\n			arrows: false,\n			vertical: true,\n			autoplay: true,\n			autoplaySpeed: 4000,\n			draggable: false,\n			adaptiveHeight: false\n		});\n    });\n\nfunction submitAndRedirect(id, url)\n{\n	var form = jQuery(id);\n	\n	jQuery.ajax({\n		type: "POST",\n		url: form.attr("action"),\n		data: form.serialize(), \n		success: function(response)\n					{\n						window.location.replace(url);\n					}\n	});\n}\n</script>', '', '', 'center'),
(3, 2, 1485847948, 'Beachcup Seitenlayout Italienisch', '3rw', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '1cl', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '', '', 'main', 'a:2:{i:0;s:10:"layout.css";i:1;s:14:"responsive.css";}', NULL, 0x613a31313a7b693a303b733a31363a22c393c2a15fc2acc3bb3711c3a5c2adc3223b693a313b733a31363a2261378cbb015a11e68100448a5b243f5c223b693a323b733a31363a22513836c28dc3a23111c3a5c2b9c3b044223b693a333b733a31363a22513836e280a1c3a23111c3a5c2b9c3b0223b693a343b733a31363a22513836c281c3a23111c3a5c2b9c3b044223b693a353b733a31363a225138367bc3a23111c3a5c2b9c3b044c5223b693a363b733a31363a2251383672c3a23111c3a5c2b9c3b044c5223b693a373b733a31363a225138366dc3a23111c3a5c2b9c3b044c5223b693a383b733a31363a2251383667c3a23111c3a5c2b9c3b044c5223b693a393b733a31363a225138365bc3a23111c3a5c2b9c3b044c5223b693a31303b733a31363a22208329450b9d11e69da600163e006592223b7d, 0x613a31313a7b693a303b733a31363a22513836e280a1c3a23111c3a5c2b9c3b0223b693a313b733a31363a22513836c28dc3a23111c3a5c2b9c3b044223b693a323b733a31363a225138367bc3a23111c3a5c2b9c3b044c5223b693a333b733a31363a225138365bc3a23111c3a5c2b9c3b044c5223b693a343b733a31363a225138366dc3a23111c3a5c2b9c3b044c5223b693a353b733a31363a2251383667c3a23111c3a5c2b9c3b044c5223b693a363b733a31363a22513836c281c3a23111c3a5c2b9c3b044223b693a373b733a31363a2251383672c3a23111c3a5c2b9c3b044c5223b693a383b733a31363a2261378cbb015a11e68100448a5b243f5c223b693a393b733a31363a22c393c2a15fc2acc3bb3711c3a5c2adc3223b693a31303b733a31363a22208329450b9d11e69da600163e006592223b7d, 'external_first', NULL, NULL, 0x613a353a7b693a303b613a333a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a323a223237223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a323a223235223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a343b613a333a7b733a333a226d6f64223b733a313a2236223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d7d, 'fe_page', 'html5', 'Open+Sans:300italic,700italic,800italic,400,300,700,800|Lobster&subset=latin,latin-ext', '', '', '', '', '', '<link rel="icon" type="image/ico" href="./files/themes/images/favicon.ico">\n<script type=''text/javascript'' src=''./files/themes/js/jquery-1-11-3.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jquery-migrate-1-2-1.min.js''></script>\n<script type=''text/javascript'' src=''http://maps.google.com/maps/api/js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/gmap3.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/oms.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/richmarker-compiled.js''></script>\n<link   href="./assets/nanogallery/css/nanogallery.min.css" rel="stylesheet" type="text/css"/>\n<script src="./assets/nanogallery/jquery.nanogallery.min.js" type="text/javascript"></script>', '', '', NULL, '', 'moo_local', NULL, '', '<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/core.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/widget.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/mouse.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/draggable.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/slider.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jqueryui-1-11-4/jquery.ui.touch-punch.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/et_google_fonts.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jquery.tinyscrollbar.min.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/superfish.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/jquery.fitvids.js''></script>\n<script type=''text/javascript''>\n/* <![CDATA[ */\nvar et_custom = {"toggle_text":"<span>Beachcup<\\/span>News","mobile_nav_text":"Navigation Menu"};\n/* ]]> */\n</script>\n<script type=''text/javascript'' src=''./files/themes/js/custom.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/fancybox/jquery.easing-1.3.pack.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/fancybox/jquery.fancybox-1.3.4.pack.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/et-ptemplates-frontend.js''></script>\n<script type=''text/javascript'' src=''./files/themes/js/modernizr.js''></script>\n<script type="text/javascript" src="./files/themes/js/details-shim.min.js"></script>\n<script type="text/javascript" src="./files/themes/js/slick/slick.min.js"></script>\n<script>\njQuery(document).ready(function() {  //-- default jQuery call, do stuff when page is loaded\n        jQuery("#nanoGallery").nanoGallery({\n        	kind: ''picasa'',\n        	userID: ''117059972345806779264'',\n        	thumbnailLabel: {\n        		displayDescription: false\n        	}\n        });\n        \n        jQuery(''#sponsors'').slick({\n			dots: false,\n			infinite: true,\n			arrows: false,\n			vertical: true,\n			autoplay: true,\n			autoplaySpeed: 4000,\n			draggable: false,\n			adaptiveHeight: false\n		});\n    });\n\nfunction submitAndRedirect(id, url)\n{\n	var form = jQuery(id);\n	\n	jQuery.ajax({\n		type: "POST",\n		url: form.attr("action"),\n		data: form.serialize(), \n		success: function(response)\n					{\n						window.location.replace(url);\n					}\n	});\n}\n</script>', '', '', 'center');

-- --------------------------------------------------------

--
-- Struttura della tabella `tl_module`
--

DROP TABLE IF EXISTS `tl_module`;
CREATE TABLE IF NOT EXISTS `tl_module` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `headline` varchar(255) NOT NULL default '',
  `type` varchar(64) NOT NULL default '',
  `levelOffset` smallint(5) unsigned NOT NULL default '0',
  `showLevel` smallint(5) unsigned NOT NULL default '0',
  `hardLimit` char(1) NOT NULL default '',
  `showProtected` char(1) NOT NULL default '',
  `defineRoot` char(1) NOT NULL default '',
  `rootPage` int(10) unsigned NOT NULL default '0',
  `navigationTpl` varchar(64) NOT NULL default '',
  `customTpl` varchar(64) NOT NULL default '',
  `pages` blob,
  `orderPages` blob,
  `showHidden` char(1) NOT NULL default '',
  `customLabel` varchar(64) NOT NULL default '',
  `autologin` char(1) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `redirectBack` char(1) NOT NULL default '',
  `cols` varchar(32) NOT NULL default '',
  `editable` blob,
  `memberTpl` varchar(64) NOT NULL default '',
  `tableless` char(1) NOT NULL default '',
  `form` int(10) unsigned NOT NULL default '0',
  `queryType` varchar(32) NOT NULL default '',
  `fuzzy` char(1) NOT NULL default '',
  `contextLength` smallint(5) unsigned NOT NULL default '0',
  `totalLength` smallint(5) unsigned NOT NULL default '0',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `searchType` varchar(32) NOT NULL default '',
  `searchTpl` varchar(64) NOT NULL default '',
  `inColumn` varchar(32) NOT NULL default '',
  `skipFirst` smallint(5) unsigned NOT NULL default '0',
  `loadFirst` char(1) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `transparent` char(1) NOT NULL default '',
  `flashvars` varchar(255) NOT NULL default '',
  `altContent` text,
  `source` varchar(32) NOT NULL default '',
  `singleSRC` binary(16) default NULL,
  `url` varchar(255) NOT NULL default '',
  `interactive` char(1) NOT NULL default '',
  `flashID` varchar(64) NOT NULL default '',
  `flashJS` text,
  `imgSize` varchar(64) NOT NULL default '',
  `useCaption` char(1) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `multiSRC` blob,
  `orderSRC` blob,
  `html` text,
  `rss_cache` int(10) unsigned NOT NULL default '0',
  `rss_feed` text,
  `rss_template` varchar(32) NOT NULL default '',
  `numberOfItems` smallint(5) unsigned NOT NULL default '0',
  `disableCaptcha` char(1) NOT NULL default '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) NOT NULL default '',
  `reg_skipName` char(1) NOT NULL default '',
  `reg_close` varchar(32) NOT NULL default '',
  `reg_assignDir` char(1) NOT NULL default '',
  `reg_homeDir` binary(16) default NULL,
  `reg_activate` char(1) NOT NULL default '',
  `reg_jumpTo` int(10) unsigned NOT NULL default '0',
  `reg_text` text,
  `reg_password` text,
  `protected` char(1) NOT NULL default '',
  `groups` blob,
  `guests` char(1) NOT NULL default '',
  `cssID` varchar(255) NOT NULL default '',
  `space` varchar(64) NOT NULL default '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) NOT NULL default '',
  `cal_startDay` smallint(5) unsigned NOT NULL default '1',
  `cal_format` varchar(32) NOT NULL default '',
  `cal_ignoreDynamic` char(1) NOT NULL default '',
  `cal_order` varchar(32) NOT NULL default '',
  `cal_readerModule` int(10) unsigned NOT NULL default '0',
  `cal_limit` smallint(5) unsigned NOT NULL default '0',
  `cal_template` varchar(32) NOT NULL default '',
  `cal_ctemplate` varchar(32) NOT NULL default '',
  `cal_showQuantity` char(1) NOT NULL default '',
  `com_order` varchar(32) NOT NULL default '',
  `com_moderate` char(1) NOT NULL default '',
  `com_bbcode` char(1) NOT NULL default '',
  `com_requireLogin` char(1) NOT NULL default '',
  `com_disableCaptcha` char(1) NOT NULL default '',
  `com_template` varchar(32) NOT NULL default '',
  `faq_categories` blob,
  `faq_readerModule` int(10) unsigned NOT NULL default '0',
  `list_table` varchar(64) NOT NULL default '',
  `list_fields` varchar(255) NOT NULL default '',
  `list_where` varchar(255) NOT NULL default '',
  `list_search` varchar(255) NOT NULL default '',
  `list_sort` varchar(255) NOT NULL default '',
  `list_info` varchar(255) NOT NULL default '',
  `list_info_where` varchar(255) NOT NULL default '',
  `list_layout` varchar(32) NOT NULL default '',
  `list_info_layout` varchar(32) NOT NULL default '',
  `news_archives` blob,
  `news_featured` varchar(16) NOT NULL default '',
  `news_jumpToCurrent` varchar(16) NOT NULL default '',
  `news_readerModule` int(10) unsigned NOT NULL default '0',
  `news_metaFields` varchar(255) NOT NULL default '',
  `news_template` varchar(32) NOT NULL default '',
  `news_format` varchar(32) NOT NULL default '',
  `news_startDay` smallint(5) unsigned NOT NULL default '0',
  `news_order` varchar(255) NOT NULL default '',
  `news_showQuantity` char(1) NOT NULL default '',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_hideChannels` char(1) NOT NULL default '',
  `nl_subscribe` text,
  `nl_unsubscribe` text,
  `nl_template` varchar(32) NOT NULL default '',
  `hideActiveLanguage` char(1) NOT NULL default '',
  `hideNoFallback` char(1) NOT NULL default '',
  `keepUrlParams` char(1) NOT NULL default '',
  `customLanguage` char(1) NOT NULL default '',
  `customLanguageText` mediumtext,
  `list_formdata` varchar(64) NOT NULL default '',
  `efg_list_searchtype` varchar(32) NOT NULL default '',
  `efg_list_access` varchar(32) NOT NULL default '',
  `efg_fe_edit_access` varchar(32) NOT NULL default '',
  `efg_fe_delete_access` varchar(32) NOT NULL default '',
  `efg_fe_export_access` varchar(32) NOT NULL default '',
  `efg_DetailsKey` varchar(64) NOT NULL default '',
  `efg_iconfolder` varchar(255) NOT NULL default '',
  `efg_fe_keep_id` char(1) NOT NULL default '',
  `efg_fe_no_formatted_mail` char(1) NOT NULL default '',
  `efg_fe_no_confirmation_mail` char(1) NOT NULL default '',
  `efg_com_allow_comments` char(1) NOT NULL default '',
  `efg_com_per_page` smallint(5) unsigned NOT NULL default '0',
  `efg_com_notify` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dump dei dati per la tabella `tl_module`
--

INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `customTpl`, `pages`, `orderPages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `queryType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `searchType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `orderSRC`, `html`, `rss_cache`, `rss_feed`, `rss_template`, `numberOfItems`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_close`, `reg_assignDir`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_search`, `list_sort`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `hideActiveLanguage`, `hideNoFallback`, `keepUrlParams`, `customLanguage`, `customLanguageText`, `list_formdata`, `efg_list_searchtype`, `efg_list_access`, `efg_fe_edit_access`, `efg_fe_delete_access`, `efg_fe_export_access`, `efg_DetailsKey`, `efg_iconfolder`, `efg_fe_keep_id`, `efg_fe_no_formatted_mail`, `efg_fe_no_confirmation_mail`, `efg_com_allow_comments`, `efg_com_per_page`, `efg_com_notify`) VALUES
(5, 2, 1457020006, 'Navigation', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'navigation', 0, 0, '', '', '', 0, 'nav_default', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(6, 2, 1462459821, 'Footer', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '<div id="sponsors">\n	<div>\n		<a href="http://www.raiffeisen.it" target="_blank">\n			<img alt="Banner" src="./files/themes/images/banners/raika.png">\n		</a>\n	</div>\n	<div>\n		<a href="https://www.volleyballdirect.it" target="_blank">\n			<img alt="Banner" src="./files/themes/images/banners/vb-direct.png">\n		</a>\n	</div>\n	<div>\n		<a href="https://www.forst.it" target="_blank">\n			<img alt="Banner" src="./files/themes/images/banners/forst.png">\n		</a>\n	</div>\n	<!--<div>\n		<a href="http://www.sdf.bz.it" target="_blank">\n			<img alt="Banner" src="./files/themes/images/banners/sdf.png">\n		</a>\n	</div>\n	<div>\n		<a href="http://www.vb33.it" target="_blank">\n			<img alt="Banner" src="./files/themes/images/banners/video33.png">\n		</a>\n	</div>\n	<div>\n		<a href="http://fipavbz.net" target="_blank">\n			<img alt="Banner" src="./files/themes/images/banners/fipavbz.png">\n		</a>\n	</div>-->\n	<div>\n		<a href="http://www.vss.bz.it" target="_blank">\n			<img alt="Banner" src="./files/themes/images/banners/vss.png">\n		</a>\n	</div>\n	<div>\n		<a href="http://www.redybz.it" target="_blank">\n			<img alt="Banner" src="./files/themes/images/banners/redy.jpg">\n		</a>\n	</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(11, 2, 1457193144, 'Etappen Landkarte', '', 'stage_map', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(14, 2, 1460801600, 'Nachrichtenleser Deutsch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newsreader', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2232223b7d, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_full', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(15, 2, 1460801626, 'Nachrichtenliste Deutsch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newslist', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2232223b7d, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(16, 2, 1458740497, 'Etappen Liste', '', 'stage_list', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(19, 2, 1460103917, 'Spielergebnisse', '', 'game_results', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(20, 2, 1460800447, 'Gesamtstände', '', 'total_results', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(24, 2, 1460801592, 'Nachrichtenleser Italienisch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newsreader', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2233223b7d, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_full', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(23, 2, 1460801645, 'Nachrichtenslider Italienisch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newslist', 0, 0, '', '', '', 0, '', 'mod_news_slider', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2233223b7d, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_short', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(25, 2, 1460801661, 'Nachrichtenliste Italienisch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newslist', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2233223b7d, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(26, 2, 1460801678, 'Nachrichtenslider Deutsch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newslist', 0, 0, '', '', '', 0, '', 'mod_news_slider', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2232223b7d, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_short', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(27, 2, 1461309437, 'Sprachenwechsler', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'changelanguage', 0, 0, '', '', '', 0, 'nav_changelanguage', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:26:"responsive-language-switch";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(28, 2, 1463678059, 'Login Deutsch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:5:"Login";}', 'login', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 59, '', '1cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(29, 2, 1463926255, 'Registrierung Deutsch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:12:"Registrieren";}', 'registration', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 72, '', '2cl', 0x613a353a7b693a303b733a393a2266697273746e616d65223b693a313b733a383a226c6173746e616d65223b693a323b733a353a22656d61696c223b693a333b733a383a22757365726e616d65223b693a343b733a383a2270617373776f7264223b7d, 'member_default', '1', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', 0x613a313a7b693a303b733a313a2231223b7d, '1', '', '', '', NULL, '1', 57, 'Vielen Dank für Ihre Registrierung auf ##domain##.\n\nBitte klicken Sie ##link## um Ihre Registrierung abzuschließen und Ihr Konto zu aktivieren. Wenn Sie keinen Zugang angefordert haben, ignorieren Sie bitte diese E-Mail.', NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(30, 2, 1463399842, 'Logout', '', 'logout', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(34, 2, 1463926392, 'Registrierung Italienisch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:10:"Registrare";}', 'registration', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 73, '', '2cl', 0x613a353a7b693a303b733a393a2266697273746e616d65223b693a313b733a383a226c6173746e616d65223b693a323b733a353a22656d61696c223b693a333b733a383a22757365726e616d65223b693a343b733a383a2270617373776f7264223b7d, 'member_default', '1', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', 0x613a313a7b693a303b733a313a2231223b7d, '1', '', '', '', NULL, '1', 64, 'Grazie per la tua registrazione su ##domain##.\n\nClicca ##link## per completare la registrazione e per attivare l''account. Se non hai richiesto un account, ignora questa email.', NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(35, 2, 1463678089, 'Login Italienisch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:5:"Login";}', 'login', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 67, '', '1cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(36, 2, 1463927190, 'Anmeldungsliste', '', 'registration_list', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, 'notify_admin'),
(37, 2, 1463927233, 'Spielerliste', '', 'player_list', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, 'notify_admin'),
(38, 2, 1463927250, 'Teamliste', '', 'team_list', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, 'notify_admin'),
(40, 2, 1465886850, 'Passwort vergessen Deutsch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:18:"Passwort vergessen";}', 'lostPassword', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, 'Sie haben ein neues Passwort für ##domain## angefordert.\n\nBitte klicken Sie ##link## um das neue Passwort festzulegen. Wenn Sie diese E-Mail nicht angefordert haben, kontaktieren Sie bitte den Administrator der Webseite.', '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, 'notify_admin'),
(41, 2, 1465886984, 'Passwort vergessen Italienisch', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:17:"Recupera password";}', 'lostPassword', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, 'Sie haben ein neues Passwort für ##domain## angefordert.\n\nBitte klicken Sie ##link## um das neue Passwort festzulegen. Wenn Sie diese E-Mail nicht angefordert haben, kontaktieren Sie bitte den Administrator der Webseite.', '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', 0, 'notify_admin');

-- --------------------------------------------------------

--
-- Struttura della tabella `tl_page`
--

DROP TABLE IF EXISTS `tl_page`;
CREATE TABLE IF NOT EXISTS `tl_page` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(128) character set utf8 collate utf8_bin NOT NULL default '',
  `type` varchar(32) NOT NULL default '',
  `pageTitle` varchar(255) NOT NULL default '',
  `language` varchar(5) NOT NULL default '',
  `robots` varchar(32) NOT NULL default '',
  `description` text,
  `redirect` varchar(32) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `dns` varchar(255) NOT NULL default '',
  `staticFiles` varchar(255) NOT NULL default '',
  `staticPlugins` varchar(255) NOT NULL default '',
  `fallback` char(1) NOT NULL default '',
  `adminEmail` varchar(255) NOT NULL default '',
  `dateFormat` varchar(32) NOT NULL default '',
  `timeFormat` varchar(32) NOT NULL default '',
  `datimFormat` varchar(32) NOT NULL default '',
  `createSitemap` char(1) NOT NULL default '',
  `sitemapName` varchar(32) NOT NULL default '',
  `useSSL` char(1) NOT NULL default '',
  `autoforward` char(1) NOT NULL default '',
  `protected` char(1) NOT NULL default '',
  `groups` blob,
  `includeLayout` char(1) NOT NULL default '',
  `layout` int(10) unsigned NOT NULL default '0',
  `mobileLayout` int(10) unsigned NOT NULL default '0',
  `includeCache` char(1) NOT NULL default '',
  `cache` int(10) unsigned NOT NULL default '0',
  `includeChmod` char(1) NOT NULL default '',
  `cuser` int(10) unsigned NOT NULL default '0',
  `cgroup` int(10) unsigned NOT NULL default '0',
  `chmod` varchar(255) NOT NULL default '',
  `noSearch` char(1) NOT NULL default '',
  `cssClass` varchar(64) NOT NULL default '',
  `sitemap` varchar(32) NOT NULL default '',
  `hide` char(1) NOT NULL default '',
  `guests` char(1) NOT NULL default '',
  `tabindex` smallint(5) unsigned NOT NULL default '0',
  `accesskey` char(1) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `languageMain` int(10) unsigned NOT NULL default '0',
  `languageRoot` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `pid_type_start_stop_published` (`pid`,`type`,`start`,`stop`,`published`),
  KEY `type` (`type`),
  KEY `languageMain` (`languageMain`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dump dei dati per la tabella `tl_page`
--

INSERT INTO `tl_page` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `type`, `pageTitle`, `language`, `robots`, `description`, `redirect`, `jumpTo`, `url`, `target`, `dns`, `staticFiles`, `staticPlugins`, `fallback`, `adminEmail`, `dateFormat`, `timeFormat`, `datimFormat`, `createSitemap`, `sitemapName`, `useSSL`, `autoforward`, `protected`, `groups`, `includeLayout`, `layout`, `mobileLayout`, `includeCache`, `cache`, `includeChmod`, `cuser`, `cgroup`, `chmod`, `noSearch`, `cssClass`, `sitemap`, `hide`, `guests`, `tabindex`, `accesskey`, `published`, `start`, `stop`, `languageMain`, `languageRoot`) VALUES
(13, 7, 384, 1462519842, 'Ranking', 'ranking', 'forward', 'Ranking', '', 'index,follow', '', 'permanent', 14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(7, 0, 128, 1462519966, 'Beachcup Deutsch', 'de', 'root', 'Raiffeisen Beachcup', 'de', '', NULL, 'permanent', 0, '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', NULL, '1', 2, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '', 0, 0),
(8, 7, 32, 1462961045, 'Home', 'home', 'regular', 'Home', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(9, 7, 256, 1462519762, 'Turnier', 'turnier', 'forward', 'Turnier', '', 'index,follow', '', 'permanent', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(10, 9, 128, 1462961070, 'Etappen', 'etappen', 'regular', 'Etappen', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(11, 9, 256, 1462961078, 'Reglement', 'reglement', 'regular', 'Reglement', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(12, 9, 384, 1460972430, 'Landesmeisterschaft', 'landesmeisterschaft', 'regular', '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '', '', '', 0, 0),
(14, 13, 128, 1462961087, 'Etappenstände', 'etappenstaende', 'regular', 'Etappenstände', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(15, 13, 256, 1462961095, 'Gesamtstand', 'gesamtstand', 'regular', 'Gesamtstand', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(16, 7, 512, 1460395675, 'Media', 'media', 'forward', '', '', 'index,follow', '', 'permanent', 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(17, 16, 128, 1462961103, 'Fotos', 'fotos', 'regular', 'Fotos', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(18, 16, 256, 1462961111, 'Videos', 'videos', 'regular', 'Videos', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(19, 7, 640, 1460395707, 'Kontakt', 'kontakt', 'forward', '', '', 'index,follow', '', 'permanent', 20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(20, 19, 128, 1462961127, 'Kontaktformular', 'kontaktformular', 'regular', 'Kontaktformular', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(21, 19, 256, 1462961134, 'Impressum', 'impressum', 'regular', 'Impressum', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(23, 7, 64, 1460972585, 'Nachrichten', 'nachrichten', 'regular', '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', 0, 0),
(55, 53, 256, 1462961240, 'Note legali', 'note-legali', 'regular', 'Note legali', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 21, 0),
(54, 53, 128, 1462961233, 'Modulo di contatto', 'modulo-di-contatto', 'regular', 'Modulo di contatto', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 20, 0),
(52, 50, 256, 1462961226, 'Video', 'video', 'regular', 'Video', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 18, 0),
(53, 40, 640, 1462520159, 'Contatto', 'contatto', 'forward', 'Contatto', '', 'index,follow', '', 'permanent', 54, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 19, 0),
(51, 50, 128, 1462961219, 'Foto', 'foto', 'regular', 'Foto', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 17, 0),
(49, 47, 256, 1462961211, 'Classifiche', 'classifiche', 'regular', 'Classifiche', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 15, 0),
(50, 40, 512, 1462520133, 'Foto e Video', 'foto-e-video', 'forward', 'Foto e Video', '', 'index,follow', '', 'permanent', 51, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 16, 0),
(48, 47, 128, 1462961187, 'Risultati tappe', 'risultati-tappe', 'regular', 'Risultati tappe', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 14, 0),
(46, 43, 384, 1460972529, 'Campionato provinciale', 'campionato-provinciale', 'regular', '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '', '', '', 12, 0),
(47, 40, 384, 1462520064, 'Risultati', 'risultati', 'forward', 'Risultati', '', 'index,follow', '', 'permanent', 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 13, 0),
(45, 43, 256, 1462961179, 'Regolamento', 'reglolamento', 'regular', 'Regolamento', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 11, 0),
(43, 40, 256, 1462521240, 'Torneo', 'torneo', 'forward', 'Torneo', '', 'index,follow', '', 'permanent', 44, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 9, 0),
(44, 43, 128, 1462961170, 'Tappe', 'tappe', 'regular', 'Tappe', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 10, 0),
(42, 40, 64, 1460972507, 'Notizie', 'notizie', 'regular', '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', 23, 0),
(40, 0, 256, 1460803615, 'Beachcup Italienisch', 'it', 'root', 'Raiffeisen Beachcup', 'it', '', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1', 3, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '', 0, 0),
(41, 40, 32, 1462961142, 'Home', 'home', 'regular', 'Home', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 8, 0),
(56, 7, 768, 1463944788, 'My Beachcup', 'my-beachcup-de', 'forward', '', '', 'index,follow', '', 'permanent', 59, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(57, 56, 128, 1463671553, 'Login', 'login-de', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '1', 0, '', '1', '', '', 0, 0),
(58, 56, 256, 1463399776, 'Registrieren', 'registrieren', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '1', 0, '', '1', '', '', 0, 0),
(59, 56, 384, 1463928944, '1. Meine Spieler', 'meine-spieler', 'regular', 'Meine Spieler', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(60, 56, 512, 1463928979, '3. Meine Anmeldungen', 'meine-anmeldungen', 'regular', 'Meine Anmeldungen', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(61, 56, 320, 1463671563, 'Logout', 'logout-de', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(62, 56, 448, 1463928963, '2. Meine Teams', 'meine-teams', 'regular', 'Meine Teams', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 0, 0),
(63, 40, 768, 1463944806, 'My Beachcup', 'my-beachcup-it', 'forward', '', '', '', NULL, 'permanent', 67, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 56, 0),
(64, 63, 128, 1463671577, 'Login', 'login-it', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '1', 0, '', '1', '', '', 57, 0),
(65, 63, 256, 1463671617, 'Logout', 'logout-it', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 61, 0),
(66, 63, 192, 1463671679, 'Registrare', 'registrare', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '1', 0, '', '1', '', '', 58, 0),
(67, 63, 384, 1463929025, '1. I miei giocatori', 'i-miei-giocatori', 'regular', 'I miei giocatori', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 59, 0),
(68, 63, 512, 1463929048, '2. Le mie squadre', 'le-mie-squadre', 'regular', 'Le mie squadre', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 62, 0),
(69, 63, 640, 1463929071, '3. Le mie iscrizioni', 'le-mie-iscrizioni', 'regular', 'Le mie iscrizioni', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', 60, 0),
(70, 7, 16, 1463925099, 'Zugriff verweigert', 'zugriff-verweigert', 'error_403', 'Zugriff verweigert', '', 'noindex,nofollow', '', 'permanent', 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '', 0, 0),
(71, 40, 16, 1463925181, 'Accesso negato', 'accesso-negato', 'error_403', 'Accesso negato', '', 'noindex,nofollow', '', 'permanent', 64, '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '', 70, 0),
(72, 56, 288, 1463925384, 'Bestätigung Registrierung', 'bestaetigung-registrierung', 'regular', 'Bestätigung Registrierung', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '1', '', 'map_default', '1', '', 0, '', '1', '', '', 0, 0),
(73, 63, 224, 1463925495, 'Conferma registrazione', 'conferma-registrazione', 'regular', 'Conferma registrazione', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '1', '', 'map_default', '1', '', 0, '', '1', '', '', 72, 0),
(74, 56, 192, 1465887871, 'Passwort vergessen', 'passwort-vergessen', 'regular', 'Passwort vergessen', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', 0, 0),
(75, 63, 160, 1465887696, 'Recupera password', 'recupera-password', 'regular', 'Recupera password', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', 74, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `tl_theme`
--

DROP TABLE IF EXISTS `tl_theme`;
CREATE TABLE IF NOT EXISTS `tl_theme` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(128) NOT NULL default '',
  `author` varchar(128) NOT NULL default '',
  `folders` blob,
  `screenshot` binary(16) default NULL,
  `templates` varchar(255) NOT NULL default '',
  `vars` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `tl_theme`
--

INSERT INTO `tl_theme` (`id`, `tstamp`, `name`, `author`, `folders`, `screenshot`, `templates`, `vars`) VALUES
(2, 1457019554, 'Beachcup Theme', 'Jakob Pallhuber', 0x613a313a7b693a303b733a31363a22a8841b6be15511e58982448a5b243f5c223b7d, NULL, 'templates/beachcup', 'a:0:{}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
