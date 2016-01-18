-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Jan 2016 um 17:54
-- Server-Version: 10.0.17-MariaDB
-- PHP-Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `contao`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_article`
--

CREATE TABLE `tl_article` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `keywords` text,
  `showTeaser` char(1) NOT NULL DEFAULT '',
  `teaserCssID` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `printable` varchar(255) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_article`
--

INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `customTpl`, `protected`, `groups`, `guests`, `cssID`, `space`, `published`, `start`, `stop`) VALUES
(1, 2, 128, 1446138545, 'Home', 'home', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '', '1', '', ''),
(2, 3, 128, 1446138618, 'Reglement', 'reglement', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '', '1', '', ''),
(3, 4, 128, 1446138647, 'Landesmeisterschaft', 'landesmeisterschaft', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '', '1', '', ''),
(4, 5, 128, 1446138679, 'Beachcamps', 'beachcamps', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '', '1', '', ''),
(5, 6, 128, 1446138692, 'Kontakt', 'kontakt', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '', '1', '', ''),
(8, 2, 384, 1446140101, 'Sponsoren', 'sponsoren', 1, 'right', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', '', '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', ''),
(7, 2, 256, 1446141306, 'Informationen', 'informationen', 1, 'left', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', '', '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_organizer`
--

CREATE TABLE `tl_beachcup_organizer` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `contact_person` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_organizer`
--

INSERT INTO `tl_beachcup_organizer` (`id`, `tstamp`, `name`, `description`, `contact_person`, `email`, `phone`, `fax`, `mobile_phone`) VALUES
(2, 1449251767, 'Gemeinde Olang', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_player`
--

CREATE TABLE `tl_beachcup_player` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `surname` varchar(255) NOT NULL DEFAULT '',
  `birth_date` varchar(11) NOT NULL DEFAULT '',
  `birth_place` text NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `city` text NOT NULL,
  `country` varchar(2) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone_number` varchar(255) NOT NULL DEFAULT '',
  `tax_number` varchar(16) NOT NULL DEFAULT '',
  `shirt_size` varchar(255) NOT NULL DEFAULT '',
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_fipav` tinyint(1) NOT NULL DEFAULT '0',
  `has_medical_certificate` tinyint(1) NOT NULL DEFAULT '0',
  `has_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `has_shirt` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `player_level` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_player`
--

INSERT INTO `tl_beachcup_player` (`id`, `name`, `surname`, `birth_date`, `birth_place`, `gender`, `address`, `zip_code`, `city`, `country`, `email`, `phone_number`, `tax_number`, `shirt_size`, `is_confirmed`, `is_fipav`, `has_medical_certificate`, `has_privacy`, `has_shirt`, `username`, `password`, `tstamp`, `player_level`) VALUES
(17, 'Jakob', 'Pallhuber', '873064800', 'Innichen', 'male', 'Mitterfeldweg 7/A', 39030, 'Olang', 'it', 'jakob.pallhuber@gmail.com', '03485318251', 'PLLJKB97P01H786E', 'M', 1, 0, 1, 1, 0, 'Joge', '$2y$10$35T1pCPIayWQQNgtaw3cluvEXombCNK5Al4BmRbQ5U4ZtqvtAX38e', 1450015436, 11),
(18, 'Greta', 'Pallhuber', '978994800', 'Innichen', 'female', 'Mitterfeldweg 7/A', 39030, 'Olang', 'it', 'greta.pallhuber@gmail.com', '3474934485', 'sadfassadfasdfas', 'S', 1, 0, 1, 1, 0, 'greta', '$2y$10$KCDFgwHRjeRcCKbXlCCL9OVTlyekWeE0ZiXdWFCxtyTd0pll3l7VC', 1450015407, 11),
(22, 'Peter', 'Noname', '1451084400', 'Bruneck', 'male', 'Starße', 39030, 'Bruneck', 'it', 'noname@gmail.com', '3696276384', 'sadfassadfasdfae', 'M', 0, 0, 0, 0, 0, 'noname', '$2y$10$NZPRvHWZ6i1FYkPrcouaVeBVCR4MaIpRdui13eDhsrpvSGDmUZWne', 1450015446, 8),
(23, 'Isolde', 'Wagner', '1450393200', 'Sterzing', 'female', 'Bahnhof', 40040, 'Sterzing', 'it', 'isi@gmail.com', '8458366274', 'sadfassadfasdsdd', 'S', 0, 0, 0, 0, 0, 'isi', '$2y$10$cHaU9eOT4QFwb35ZCcjneegC3iWrm8s.yPgCp2fr9cTCwA3GSFzwi', 1450015417, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_player_level`
--

CREATE TABLE `tl_beachcup_player_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_player_level`
--

INSERT INTO `tl_beachcup_player_level` (`id`, `code`, `description`, `tstamp`) VALUES
(2, 'SERIE_A', '', 1448994907),
(3, 'SERIE_A2', '', 1448636709),
(4, 'SERIE_B1', '', 1448636729),
(5, 'SERIE_B2', '', 1448636745),
(6, 'SERIE_C', '', 1448636751),
(7, 'SERIE_D', '', 1448636756),
(8, 'DIV_1', '', 1448994833),
(9, 'DIV_2', '', 1448994839),
(10, 'DIV_3', '', 1448994844),
(11, 'OTHER', '', 1448636803);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_registration`
--

CREATE TABLE `tl_beachcup_registration` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tournament_id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED NOT NULL,
  `points` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_registration`
--

INSERT INTO `tl_beachcup_registration` (`id`, `tstamp`, `tournament_id`, `team_id`, `points`) VALUES
(6, 1449330549, 6, 7, 11),
(20, 1452874413, 5, 13, 0),
(17, 1449330541, 5, 7, 16);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_registration_state`
--

CREATE TABLE `tl_beachcup_registration_state` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_registration_state`
--

INSERT INTO `tl_beachcup_registration_state` (`id`, `tstamp`, `code`, `description`) VALUES
(1, 1448994917, 'PROCESSING', ''),
(2, 1448994942, 'COMPLETE', ''),
(3, 1448994950, 'INCOMPLETE', ''),
(4, 1448994963, 'REJECTED', ''),
(5, 1448994971, 'WAITING_LIST', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_season`
--

CREATE TABLE `tl_beachcup_season` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `year` int(11) NOT NULL DEFAULT '2015',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_season`
--

INSERT INTO `tl_beachcup_season` (`id`, `tstamp`, `name`, `description`, `year`, `active`) VALUES
(1, 1452880181, 'Saison Nummer 1', '', 2015, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_stage`
--

CREATE TABLE `tl_beachcup_stage` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `start_date` varchar(11) NOT NULL DEFAULT '',
  `end_date` varchar(11) NOT NULL DEFAULT '',
  `organizer_id` int(10) UNSIGNED NOT NULL,
  `venue_id` int(10) UNSIGNED NOT NULL,
  `season_id` int(10) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_stage`
--

INSERT INTO `tl_beachcup_stage` (`id`, `tstamp`, `name`, `start_date`, `end_date`, `organizer_id`, `venue_id`, `season_id`, `is_enabled`) VALUES
(4, 1449251864, 'Olanger Etappe', '1464991200', '1465077600', 2, 3, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_team`
--

CREATE TABLE `tl_beachcup_team` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `player_1` int(10) UNSIGNED NOT NULL,
  `player_2` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_team`
--

INSERT INTO `tl_beachcup_team` (`id`, `tstamp`, `player_1`, `player_2`) VALUES
(7, 1450974558, 17, 18),
(13, 1449936766, 22, 23);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_tournament`
--

CREATE TABLE `tl_beachcup_tournament` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type_id` int(10) UNSIGNED NOT NULL,
  `stage_id` int(10) UNSIGNED NOT NULL,
  `max_teams` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_tournament`
--

INSERT INTO `tl_beachcup_tournament` (`id`, `tstamp`, `name`, `type_id`, `stage_id`, `max_teams`) VALUES
(5, 1449251892, 'Jugend Turnier', 2, 4, 8),
(6, 1449251911, 'Amateur Turnier', 3, 4, 32);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_tournament_type`
--

CREATE TABLE `tl_beachcup_tournament_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_tournament_type`
--

INSERT INTO `tl_beachcup_tournament_type` (`id`, `tstamp`, `code`, `description`) VALUES
(1, 1449244656, 'OPEN', ''),
(2, 1449244662, 'YOUTH', ''),
(3, 1449244673, 'AMATEUR', ''),
(4, 1449244687, 'CHAMPIONSHIP', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_beachcup_venue`
--

CREATE TABLE `tl_beachcup_venue` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `picture` binary(16) DEFAULT NULL,
  `address` text NOT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `city` text NOT NULL,
  `longitude` double NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_beachcup_venue`
--

INSERT INTO `tl_beachcup_venue` (`id`, `tstamp`, `name`, `description`, `picture`, `address`, `zip_code`, `city`, `longitude`, `latitude`) VALUES
(3, 1450013545, 'Olang', '', 0xf7cd9751a19611e58304448a5b243f5c, 'Sportzone', 39030, 'Olang', 12.024752, 46.768522);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_bootstrap_config`
--

CREATE TABLE `tl_bootstrap_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `override` char(1) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `remove` char(1) NOT NULL DEFAULT '',
  `global` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `icons_path` varchar(64) NOT NULL DEFAULT '',
  `icons_template` varchar(255) NOT NULL DEFAULT '',
  `icons_source` char(5) NOT NULL DEFAULT '',
  `icons_paths` text,
  `icons_files` blob,
  `dropdown_toggle` varchar(255) NOT NULL DEFAULT '',
  `dropdown_formless` mediumblob,
  `form_widget_control` char(1) NOT NULL DEFAULT '',
  `form_widget_modal_footer` char(1) NOT NULL DEFAULT '',
  `form_widget_input_group` char(1) NOT NULL DEFAULT '',
  `form_widget_label` char(1) NOT NULL DEFAULT '',
  `form_widget_styled_select` char(1) NOT NULL DEFAULT '',
  `form_widget_styled_upload` char(1) NOT NULL DEFAULT '',
  `form_default_horizontal` char(1) NOT NULL DEFAULT '',
  `form_horizontal_control` varchar(32) NOT NULL DEFAULT '',
  `form_horizontal_label` varchar(32) NOT NULL DEFAULT '',
  `form_horizontal_offset` varchar(32) NOT NULL DEFAULT '',
  `form_styled_select` char(1) NOT NULL DEFAULT '',
  `form_styled_select_class` varchar(32) NOT NULL DEFAULT '',
  `form_styled_select_style` varchar(32) NOT NULL DEFAULT '',
  `form_styled_upload` char(1) NOT NULL DEFAULT '',
  `form_styled_upload_class` varchar(32) NOT NULL DEFAULT '',
  `form_styled_upload_position` varchar(32) NOT NULL DEFAULT 'right',
  `form_default_submit_btn` varchar(32) NOT NULL DEFAULT '',
  `modal_adjustForm` char(1) NOT NULL DEFAULT '',
  `modal_dismiss` varchar(128) NOT NULL DEFAULT '',
  `form_styled_select_threshold` char(4) NOT NULL DEFAULT '',
  `form_styled_select_size` char(5) NOT NULL DEFAULT '',
  `form_styled_select_format` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_calendar`
--

CREATE TABLE `tl_calendar` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(32) NOT NULL DEFAULT '',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_calendar_events`
--

CREATE TABLE `tl_calendar_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `addTime` char(1) NOT NULL DEFAULT '',
  `startTime` int(10) UNSIGNED DEFAULT NULL,
  `endTime` int(10) UNSIGNED DEFAULT NULL,
  `startDate` int(10) UNSIGNED DEFAULT NULL,
  `endDate` int(10) UNSIGNED DEFAULT NULL,
  `location` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `recurring` char(1) NOT NULL DEFAULT '',
  `repeatEach` varchar(64) NOT NULL DEFAULT '',
  `repeatEnd` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `recurrences` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `articleId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_calendar_feed`
--

CREATE TABLE `tl_calendar_feed` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `calendars` blob,
  `format` varchar(32) NOT NULL DEFAULT '',
  `source` varchar(32) NOT NULL DEFAULT '',
  `maxItems` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_columnset`
--

CREATE TABLE `tl_columnset` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `columns` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sizes` mediumblob,
  `resets` blob,
  `customClasses` blob,
  `rowClass` varchar(64) NOT NULL DEFAULT '',
  `published` char(1) DEFAULT NULL,
  `columnset_xs` blob,
  `columnset_sm` blob,
  `columnset_md` blob,
  `columnset_lg` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_comments`
--

CREATE TABLE `tl_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(128) NOT NULL DEFAULT '',
  `comment` text,
  `addReply` char(1) NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reply` text,
  `published` char(1) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `notified` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_comments_notify`
--

CREATE TABLE `tl_comments_notify` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `addedOn` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `tokenConfirm` varchar(32) NOT NULL DEFAULT '',
  `tokenRemove` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_content`
--

CREATE TABLE `tl_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptable` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `html` mediumtext,
  `listtype` varchar(32) NOT NULL DEFAULT '',
  `listitems` blob,
  `tableitems` mediumblob,
  `summary` varchar(255) NOT NULL DEFAULT '',
  `thead` char(1) NOT NULL DEFAULT '',
  `tfoot` char(1) NOT NULL DEFAULT '',
  `tleft` char(1) NOT NULL DEFAULT '',
  `sortable` char(1) NOT NULL DEFAULT '',
  `sortIndex` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `mooHeadline` varchar(255) NOT NULL DEFAULT '',
  `mooStyle` varchar(255) NOT NULL DEFAULT '',
  `mooClasses` varchar(255) NOT NULL DEFAULT '',
  `highlight` varchar(32) NOT NULL DEFAULT '',
  `shClass` varchar(255) NOT NULL DEFAULT '',
  `code` text,
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `titleText` varchar(255) NOT NULL DEFAULT '',
  `linkTitle` varchar(255) NOT NULL DEFAULT '',
  `embed` varchar(255) NOT NULL DEFAULT '',
  `rel` varchar(64) NOT NULL DEFAULT '',
  `useImage` char(1) NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `perRow` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `numberOfItems` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sortBy` varchar(32) NOT NULL DEFAULT '',
  `metaIgnore` char(1) NOT NULL DEFAULT '',
  `galleryTpl` varchar(64) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `playerSRC` blob,
  `youtube` varchar(16) NOT NULL DEFAULT '',
  `posterSRC` binary(16) DEFAULT NULL,
  `playerSize` varchar(64) NOT NULL DEFAULT '',
  `autoplay` char(1) NOT NULL DEFAULT '',
  `sliderDelay` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sliderSpeed` int(10) UNSIGNED NOT NULL DEFAULT '300',
  `sliderStartSlide` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sliderContinuous` char(1) NOT NULL DEFAULT '',
  `cteAlias` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `articleAlias` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `article` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `form` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `module` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `invisible` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `com_order` varchar(32) NOT NULL DEFAULT '',
  `com_perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `com_moderate` char(1) NOT NULL DEFAULT '',
  `com_bbcode` char(1) NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) NOT NULL DEFAULT '',
  `com_requireLogin` char(1) NOT NULL DEFAULT '',
  `com_template` varchar(32) NOT NULL DEFAULT '',
  `bootstrap_parentId` int(10) UNSIGNED DEFAULT NULL,
  `bootstrap_icon` varchar(32) NOT NULL DEFAULT '',
  `bootstrap_dataAttributes` blob,
  `bootstrap_grid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bootstrap_gridRow` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bootstrap_isGridElement` varchar(8) NOT NULL DEFAULT '',
  `bootstrap_isGridColumn` char(1) NOT NULL DEFAULT '',
  `bootstrap_collapseIn` char(1) NOT NULL DEFAULT '',
  `bootstrap_tabs` blob,
  `bootstrap_fade` char(1) NOT NULL DEFAULT '',
  `bootstrap_buttonStyle` varchar(128) NOT NULL DEFAULT '',
  `bootstrap_buttons` blob,
  `bootstrap_showIndicators` char(1) NOT NULL DEFAULT '',
  `bootstrap_showControls` char(1) NOT NULL DEFAULT '',
  `bootstrap_autostart` char(1) NOT NULL DEFAULT '',
  `bootstrap_interval` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_content`
--

INSERT INTO `tl_content` (`id`, `pid`, `ptable`, `sorting`, `tstamp`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooHeadline`, `mooStyle`, `mooClasses`, `highlight`, `shClass`, `code`, `url`, `target`, `titleText`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `orderSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `metaIgnore`, `galleryTpl`, `customTpl`, `playerSRC`, `youtube`, `posterSRC`, `playerSize`, `autoplay`, `sliderDelay`, `sliderSpeed`, `sliderStartSlide`, `sliderContinuous`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `invisible`, `start`, `stop`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_disableCaptcha`, `com_requireLogin`, `com_template`, `bootstrap_parentId`, `bootstrap_icon`, `bootstrap_dataAttributes`, `bootstrap_grid`, `bootstrap_gridRow`, `bootstrap_isGridElement`, `bootstrap_isGridColumn`, `bootstrap_collapseIn`, `bootstrap_tabs`, `bootstrap_fade`, `bootstrap_buttonStyle`, `bootstrap_buttons`, `bootstrap_showIndicators`, `bootstrap_showControls`, `bootstrap_autostart`, `bootstrap_interval`) VALUES
(1, 1, 'tl_article', 128, 1446140202, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:8:"Beachcup";}', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer</p>', '1', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', NULL, '', '', 0, 300, 0, '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', NULL, '', NULL, 0, 0, '', '', '0', NULL, '', '', NULL, '', '', '', 0),
(2, 7, 'tl_article', 128, 1446143098, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:5:"Infos";}', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', NULL, '', '', 0, 300, 0, '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', NULL, '', NULL, 0, 0, '', '', '0', NULL, '', '', NULL, '', '', '', 0),
(3, 8, 'tl_article', 128, 1446140331, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:9:"Sponsoren";}', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', NULL, '', '', 0, 300, 0, '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', NULL, '', NULL, 0, 0, '', '', '0', NULL, '', '', NULL, '', '', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_cron`
--

CREATE TABLE `tl_cron` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_cron`
--

INSERT INTO `tl_cron` (`id`, `name`, `value`) VALUES
(1, 'lastrun', '1452872520'),
(2, 'monthly', '201601'),
(3, 'weekly', '201602'),
(4, 'daily', '20160115'),
(5, 'hourly', '0'),
(6, 'minutely', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_extension`
--

CREATE TABLE `tl_extension` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `languages` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_extension`
--

INSERT INTO `tl_extension` (`id`, `tstamp`, `title`, `folder`, `author`, `copyright`, `package`, `license`, `addBeMod`, `beClasses`, `beTables`, `beTemplates`, `addFeMod`, `feClasses`, `feTables`, `feTemplates`, `addLanguage`, `languages`) VALUES
(2, 1446714932, 'beachcup', 'beachcup', 'Jakob Pallhuber', 'Copyright © Jakob Pallhuber All Rights Reserved', 'beachcup', 'LGPL', '1', '', 'tl_beachcup_season,tl_beachcup_stage,tl_beachcup_organizer,tl_beachcup_venue,tl_beachcup_tournament,tl_beachcup_tournament_type,tl_beachcup_registration,tl_beachcup_registration_state,tl_beachcup_team,tl_beachcup_player,tl_beachcup_player_level', '', '1', 'BeachcupStageList', '', 'beachcup_stage_list', '1', 'en,de,it');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_faq`
--

CREATE TABLE `tl_faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `answer` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(12) NOT NULL DEFAULT '',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_faq_category`
--

CREATE TABLE `tl_faq_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(16) NOT NULL DEFAULT '',
  `sortOrder` varchar(12) NOT NULL DEFAULT '',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_files`
--

CREATE TABLE `tl_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` binary(16) DEFAULT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uuid` binary(16) DEFAULT NULL,
  `type` varchar(16) NOT NULL DEFAULT '',
  `path` varchar(1022) NOT NULL DEFAULT '',
  `extension` varchar(16) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `found` char(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `importantPartX` int(10) NOT NULL DEFAULT '0',
  `importantPartY` int(10) NOT NULL DEFAULT '0',
  `importantPartWidth` int(10) NOT NULL DEFAULT '0',
  `importantPartHeight` int(10) NOT NULL DEFAULT '0',
  `meta` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_files`
--

INSERT INTO `tl_files` (`id`, `pid`, `tstamp`, `uuid`, `type`, `path`, `extension`, `hash`, `found`, `name`, `importantPartX`, `importantPartY`, `importantPartWidth`, `importantPartHeight`, `meta`) VALUES
(1, NULL, 1445967560, 0xa7bbe4f87cd111e5819f448a5b243f5c, 'folder', 'files/tiny_templates', '', 'eacf331f0ffc35d4b482f1d15a887d3b', '1', 'tiny_templates', 0, 0, 0, 0, NULL),
(2, 0xa7bbe4f87cd111e5819f448a5b243f5c, 1445967560, 0xa7bbe4f27cd111e5819f448a5b243f5c, 'file', 'files/tiny_templates/index.html', 'html', 'aeebec42dc0335ea1e0853f4393259b4', '1', 'index.html', 0, 0, 0, 0, NULL),
(3, NULL, 1445967560, 0xa7bbe4e97cd111e5819f448a5b243f5c, 'file', 'files/tinymce.css', 'css', 'e6cfd2993ed50341da010e66be287d2d', '1', 'tinymce.css', 0, 0, 0, 0, NULL),
(4, NULL, 1450010327, 0x763e9a4fa19611e58304448a5b243f5c, 'folder', 'files/venue_pictures', '', 'e3578b88b25d7f7d7b21907724c7d6de', '1', 'venue_pictures', 0, 0, 0, 0, 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(5, 0x763e9a4fa19611e58304448a5b243f5c, 1450010544, 0xf7cd9751a19611e58304448a5b243f5c, 'file', 'files/venue_pictures/olang.jpg', 'jpg', '32f4036af367216020f55d275619bd9a', '1', 'olang.jpg', 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_form`
--

CREATE TABLE `tl_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `bootstrap_configs` mediumblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_form_field`
--

CREATE TABLE `tl_form_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `size` varchar(255) NOT NULL DEFAULT '',
  `multiple` char(1) NOT NULL DEFAULT '',
  `mSize` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `storeFile` char(1) NOT NULL DEFAULT '',
  `uploadFolder` binary(16) DEFAULT NULL,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) NOT NULL DEFAULT '',
  `fsType` varchar(32) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fSize` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `addSubmit` char(1) NOT NULL DEFAULT '',
  `slabel` varchar(255) NOT NULL DEFAULT '',
  `imageSubmit` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `bootstrap_addIcon` char(1) NOT NULL DEFAULT '',
  `bootstrap_icon` varchar(32) NOT NULL DEFAULT '',
  `bootstrap_iconPosition` varchar(32) NOT NULL DEFAULT '',
  `bootstrap_addUnit` char(1) NOT NULL DEFAULT '',
  `bootstrap_unit` varchar(32) NOT NULL DEFAULT '',
  `bootstrap_unitPosition` varchar(32) NOT NULL DEFAULT '',
  `bootstrap_inlineStyle` char(1) NOT NULL DEFAULT '',
  `bootstrap_addSubmitClass` varchar(255) NOT NULL DEFAULT '',
  `bootstrap_addSubmitIcon` varchar(32) NOT NULL DEFAULT '',
  `bootstrap_addSubmitIconPosition` varchar(32) NOT NULL DEFAULT '',
  `bootstrap_grid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bootstrap_select_search` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_image_size`
--

CREATE TABLE `tl_image_size` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `sizes` varchar(255) NOT NULL DEFAULT '',
  `densities` varchar(255) NOT NULL DEFAULT '',
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `resizeMode` varchar(255) NOT NULL DEFAULT '',
  `zoom` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_image_size_item`
--

CREATE TABLE `tl_image_size_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `media` varchar(255) NOT NULL DEFAULT '',
  `sizes` varchar(255) NOT NULL DEFAULT '',
  `densities` varchar(255) NOT NULL DEFAULT '',
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `resizeMode` varchar(255) NOT NULL DEFAULT '',
  `zoom` int(10) DEFAULT NULL,
  `invisible` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_layout`
--

CREATE TABLE `tl_layout` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `flexible_sections` blob,
  `layoutType` varchar(150) NOT NULL DEFAULT '',
  `bootstrap_headerClass` varchar(150) NOT NULL DEFAULT '',
  `bootstrap_footerClass` varchar(150) NOT NULL DEFAULT '',
  `bootstrap_mainClass` varchar(150) NOT NULL DEFAULT '',
  `bootstrap_leftClass` varchar(150) NOT NULL DEFAULT '',
  `bootstrap_rightClass` varchar(150) NOT NULL DEFAULT '',
  `bootstrap_containerElement` varchar(10) NOT NULL DEFAULT 'container',
  `bootstrap_containerClass` varchar(128) NOT NULL DEFAULT 'container'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_layout`
--

INSERT INTO `tl_layout` (`id`, `pid`, `tstamp`, `name`, `rows`, `headerHeight`, `footerHeight`, `cols`, `widthLeft`, `widthRight`, `sections`, `sPosition`, `framework`, `stylesheet`, `external`, `orderExt`, `loadingOrder`, `newsfeeds`, `calendarfeeds`, `modules`, `template`, `doctype`, `webfonts`, `picturefill`, `viewport`, `titleTag`, `cssClass`, `onload`, `head`, `addJQuery`, `jSource`, `jquery`, `addMooTools`, `mooSource`, `mootools`, `analytics`, `script`, `static`, `width`, `align`, `flexible_sections`, `layoutType`, `bootstrap_headerClass`, `bootstrap_footerClass`, `bootstrap_mainClass`, `bootstrap_leftClass`, `bootstrap_rightClass`, `bootstrap_containerElement`, `bootstrap_containerClass`) VALUES
(1, 1, 1446143082, 'Beachcup Theme Standard', '2rwh', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '', '3cl', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '', '', 'main', '', NULL, NULL, 0x613a313a7b693a303b733a303a22223b7d, 'external_first', NULL, NULL, 0x613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d, 'fe_bootstrap_34', 'html5', '', '', 'width=device-width, initial-scale=1.0', '', '', '', '<link rel="stylesheet" href="composer/vendor/components/bootstrap/css/bootstrap.min.css">\n<script src="composer/vendor/components/bootstrap/js/bootstrap.min.js"></script>', '1', 'j_local', '', '', 'moo_local', NULL, '', '', '', '', 'center', 0x613a303a7b7d, 'bootstrap', '', '', 'col-md-8 col-md-push-2', 'col-md-2 col-md-pull-8', 'col-md-2', 'container', 'container-fluid');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_log`
--

CREATE TABLE `tl_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `text` text,
  `func` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_log`
--

INSERT INTO `tl_log` (`id`, `tstamp`, `source`, `action`, `username`, `text`, `func`, `ip`, `browser`) VALUES
(1, 1445967582, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(2, 1445967582, 'FE', 'CRON', '', 'Purged the image cache', 'Contao\\Automator::purgeImageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(3, 1445967582, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(4, 1445967582, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(5, 1445967582, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(6, 1445967582, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(7, 1445967582, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(8, 1445967595, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(9, 1445967702, 'BE', 'REPOSITORY', 'beach-admin', 'Extension &quot;composer&quot; version &quot;0.15.2&quot; has been installed', 'RepositoryManager::installExtension', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(10, 1445967702, 'BE', 'CRON', 'beach-admin', 'Purged the internal cache', 'Contao\\Automator::purgeInternalCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(11, 1445967716, 'BE', 'TL_ERROR', 'beach-admin', 'SSL certificate problem: unable to get local issuer certificate\n#0 C:\\xampp\\htdocs\\beachcup\\system\\modules\\!composer\\src\\Downloader.php(24): ContaoCommunityAlliance\\Contao\\Composer\\Downloader::curlDownload(''https://getcomp...'', ''C:\\\\xampp\\\\htdocs...'')\n#1 C:\\xampp\\htdocs\\beachcup\\system\\modules\\!composer\\src\\Runtime.php(169): ContaoCommunityAlliance\\Contao\\Composer\\Downloader::download(''https://getcomp...'', ''C:\\\\xampp\\\\htdocs...'')\n#2 C:\\xampp\\htdocs\\beachcup\\system\\modules\\!composer\\src\\ClientBackend.php(233): ContaoCommunityAlliance\\Contao\\Composer\\Runtime::updateComposer()\n#3 C:\\xampp\\htdocs\\beachcup\\system\\modules\\!composer\\src\\ClientBackend.php(105): ContaoCommunityAlliance\\Contao\\Composer\\ClientBackend-&gt;updateComposer()\n#4 C:\\xampp\\htdocs\\beachcup\\system\\modules\\core\\classes\\Backend.php(423): ContaoCommunityAlliance\\Contao\\Composer\\ClientBackend-&gt;generate()\n#5 C:\\xampp\\htdocs\\beachcup\\system\\modules\\core\\controllers\\BackendMain.php(131): Contao\\Backend-&gt;getBackendModule(''composer'')\n#6 C:\\xampp\\htdocs\\beachcup\\contao\\main.php(20): Contao\\BackendMain-&gt;run()\n#7 {main}', 'ContaoCommunityAlliance\\Contao\\Composer\\ClientBackend updateComposer', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(12, 1445967787, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(13, 1445967794, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(14, 1445968661, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(15, 1445968671, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(16, 1445970199, 'BE', 'REPOSITORY', 'beach-admin', 'Extension &quot;composer&quot; has been updated to version &quot;0.15.2&quot;', 'RepositoryManager::updateExtension', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(17, 1445970199, 'BE', 'CRON', 'beach-admin', 'Purged the internal cache', 'Contao\\Automator::purgeInternalCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(18, 1445970486, 'BE', 'GENERAL', 'beach-admin', 'File system/runonce.php ran once and has then been removed successfully', 'Contao\\Backend::handleRunOnce', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(19, 1445970873, 'FE', 'ERROR', '', 'No root page found (host &quot;localhost&quot;, languages &quot;de-DE, de, en-US, en&quot;)', 'Contao\\Frontend::getRootPageFromUrl', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36'),
(20, 1446137237, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(21, 1446137238, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(22, 1446137256, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(23, 1446137261, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_theme.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(24, 1446137306, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_theme.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(25, 1446137312, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(26, 1446137363, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(27, 1446137398, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(28, 1446137400, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(29, 1446137428, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(30, 1446137482, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(31, 1446137545, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(32, 1446137569, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(33, 1446138218, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(34, 1446138363, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(35, 1446138410, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_page.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(36, 1446138460, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_page.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(37, 1446138465, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_page.id=1&quot; has been created', 'tl_page::toggleVisibility', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(38, 1446138517, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_page.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(39, 1446138545, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_page.id=2&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(40, 1446138595, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_page.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(41, 1446138605, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_page.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(42, 1446138618, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_page.id=3&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(43, 1446138631, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_page.id=4&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(44, 1446138647, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_page.id=4&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(45, 1446138651, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_page.id=5&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(46, 1446138679, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_page.id=5&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(47, 1446138683, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_page.id=6&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(48, 1446138692, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_page.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(49, 1446139756, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(50, 1446139888, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(51, 1446139900, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(52, 1446139988, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_article.id=6&quot; has been created by duplicating record &quot;tl_article.id=1&quot; (parent records: tl_page.id=2)', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(53, 1446140003, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_article.id=6&quot; has been created (parent records: tl_page.id=2)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(54, 1446140027, 'BE', 'GENERAL', 'beach-admin', 'DELETE FROM tl_article WHERE id=6', 'Contao\\DC_Table::delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(55, 1446140035, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_article.id=7&quot; has been created (parent records: tl_page.id=2)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(56, 1446140075, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_article.id=7&quot; has been created (parent records: tl_page.id=2)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(57, 1446140082, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_article.id=8&quot; has been created (parent records: tl_page.id=2)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(58, 1446140099, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_article.id=8&quot; has been created (parent records: tl_page.id=2)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(59, 1446140101, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_article.id=7&quot; has been created (parent records: tl_page.id=2)', 'tl_article::toggleVisibility', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(60, 1446140101, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_article.id=8&quot; has been created (parent records: tl_page.id=2)', 'tl_article::toggleVisibility', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(61, 1446140124, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=1, tl_page.id=2)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(62, 1446140202, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=1, tl_page.id=2)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(63, 1446140271, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_content.id=2&quot; has been created (parent records: tl_article.id=7, tl_page.id=2)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(64, 1446140286, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_content.id=2&quot; has been created (parent records: tl_article.id=7, tl_page.id=2)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(65, 1446140298, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_content.id=3&quot; has been created (parent records: tl_article.id=8, tl_page.id=2)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(66, 1446140331, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_content.id=3&quot; has been created (parent records: tl_article.id=8, tl_page.id=2)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(67, 1446140536, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(68, 1446140604, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(69, 1446140610, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(70, 1446140631, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(71, 1446140641, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(72, 1446140699, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(73, 1446141268, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(74, 1446142870, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(75, 1446142966, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(76, 1446143024, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(77, 1446143082, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(78, 1446143098, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_content.id=2&quot; has been created (parent records: tl_article.id=7, tl_page.id=2)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(79, 1446143137, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(80, 1446229399, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(81, 1446229399, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(82, 1446229437, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(83, 1446229563, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_module.id=3&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(84, 1446229707, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(85, 1446229733, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(86, 1446229846, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(87, 1446230529, 'BE', 'GENERAL', 'beach-admin', 'DELETE FROM tl_module WHERE id=4', 'Contao\\DC_Table::delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(88, 1446230543, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(89, 1446392770, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(90, 1446392770, 'FE', 'CRON', '', 'Purged the image cache', 'Contao\\Automator::purgeImageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(91, 1446392770, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(92, 1446392770, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(93, 1446392807, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(94, 1446395471, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_extension.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(95, 1446652126, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(96, 1446652126, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(97, 1446652126, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(98, 1446652126, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(99, 1446652127, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(100, 1446652151, 'BE', 'ACCESS', '', 'Invalid password submitted for username &quot;beach-admin&quot;', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(101, 1446652182, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(102, 1446652200, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_form.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(103, 1446713105, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(104, 1446713385, 'BE', 'CRON', 'beach-admin', 'Purged the internal cache', 'Contao\\Automator::purgeInternalCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(105, 1446713385, 'BE', 'CONFIGURATION', 'beach-admin', 'The global configuration variable &quot;bypassCache&quot; has been changed from &quot;false&quot; to &quot;1&quot;', 'Contao\\DC_File::save', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(106, 1446713385, 'BE', 'CONFIGURATION', 'beach-admin', 'The global configuration variable &quot;displayErrors&quot; has been changed from &quot;false&quot; to &quot;1&quot;', 'Contao\\DC_File::save', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(107, 1446713386, 'BE', 'CONFIGURATION', 'beach-admin', 'The global configuration variable &quot;bootstrapIconSet&quot; has been changed from &quot;&quot; to &quot;glyphicons&quot;', 'Contao\\DC_File::save', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(108, 1446713419, 'BE', 'CONFIGURATION', 'beach-admin', 'The global configuration variable &quot;adminEmail&quot; has been changed from &quot;&quot; to &quot;joge@application-studios.com&quot;', 'Contao\\DC_File::save', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(109, 1446713455, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_extension.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(110, 1446714932, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_extension.id=2&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(111, 1447169348, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(112, 1447169348, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(113, 1447169348, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(114, 1447169348, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(115, 1447169349, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(116, 1447169357, 'BE', 'ACCESS', '', 'Invalid password submitted for username &quot;beach-admin&quot;', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(117, 1447169369, 'BE', 'ACCESS', '', 'Invalid password submitted for username &quot;beach-admin&quot;', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(118, 1447169392, 'BE', 'ACCESS', '', 'Invalid password submitted for username &quot;beach-admin&quot;', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(119, 1447169429, 'BE', 'ACCESS', '', 'User &quot;beach-admin&quot; has been locked for 5 minutes', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(120, 1447169676, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(121, 1447169732, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(122, 1447169744, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(123, 1447169758, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(124, 1447169775, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(125, 1447169790, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_user.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(126, 1447169793, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(127, 1447169799, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(128, 1447173811, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36'),
(129, 1447433466, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(130, 1447433467, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(131, 1447433489, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(132, 1447436100, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(133, 1447436501, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(134, 1447436563, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(135, 1447436583, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=2&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(136, 1447436600, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(137, 1447436839, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(138, 1447437896, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=4&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(139, 1448122123, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(140, 1448122123, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(141, 1448122123, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(142, 1448122123, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(143, 1448122125, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(144, 1448122147, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(145, 1448636563, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(146, 1448636563, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(147, 1448636563, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(148, 1448636563, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(149, 1448636564, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(150, 1448636590, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(151, 1448636684, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=3&quot; has been created by duplicating record &quot;tl_beachcup_player_level.id=2&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(152, 1448636709, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=3&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(153, 1448636714, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=4&quot; has been created by duplicating record &quot;tl_beachcup_player_level.id=3&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(154, 1448636729, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=4&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(155, 1448636737, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=5&quot; has been created by duplicating record &quot;tl_beachcup_player_level.id=4&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(156, 1448636745, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=5&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(157, 1448636747, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=6&quot; has been created by duplicating record &quot;tl_beachcup_player_level.id=5&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(158, 1448636751, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(159, 1448636753, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=7&quot; has been created by duplicating record &quot;tl_beachcup_player_level.id=6&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(160, 1448636756, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(161, 1448636763, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=8&quot; has been created by duplicating record &quot;tl_beachcup_player_level.id=7&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(162, 1448636769, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=8&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(163, 1448636771, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=9&quot; has been created by duplicating record &quot;tl_beachcup_player_level.id=7&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(164, 1448636775, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=9&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(165, 1448636777, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=10&quot; has been created by duplicating record &quot;tl_beachcup_player_level.id=7&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(166, 1448636782, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=10&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(167, 1448636787, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=11&quot; has been created by duplicating record &quot;tl_beachcup_player_level.id=7&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(168, 1448636803, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=11&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(169, 1448641083, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=5&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(170, 1448641093, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=6&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(171, 1448641229, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=7&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(172, 1448641451, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=8&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(173, 1448641771, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=9&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(174, 1448641786, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=10&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(175, 1448641807, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=11&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(176, 1448641956, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=12&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(177, 1448642150, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_news_archive.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(178, 1448642281, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=13&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(179, 1448642676, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=14&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(180, 1448642733, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=15&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(181, 1448710819, 'BE', 'ACCESS', '', 'Invalid password submitted for username &quot;beach-admin&quot;', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(182, 1448711020, 'BE', 'ACCESS', '', 'Invalid password submitted for username &quot;beach-admin&quot;', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(183, 1448711045, 'BE', 'ACCESS', '', 'Invalid password submitted for username &quot;beach-admin&quot;', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(184, 1448711057, 'BE', 'ACCESS', '', 'User &quot;beach-admin&quot; has been locked for 5 minutes', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36');
INSERT INTO `tl_log` (`id`, `tstamp`, `source`, `action`, `username`, `text`, `func`, `ip`, `browser`) VALUES
(185, 1448711437, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(186, 1448711495, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=16&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(187, 1448711934, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=17&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(188, 1448712318, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(189, 1448712483, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(190, 1448712671, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(191, 1448715691, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(192, 1448718492, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(193, 1448718810, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(194, 1448720604, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(195, 1448720636, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(196, 1448720643, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(197, 1448720849, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=4&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(198, 1448720868, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=5&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(199, 1448720884, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=18&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(200, 1448721037, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=18&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(201, 1448721136, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=6&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(202, 1448721641, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(203, 1448721647, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(204, 1448906346, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(205, 1448906346, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(206, 1448906346, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(207, 1448906346, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(208, 1448906347, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(209, 1448906360, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(210, 1448991778, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(211, 1448992300, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=8&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(212, 1448992312, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=8&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(213, 1448992981, 'BE', 'GENERAL', 'beach-admin', 'DELETE FROM tl_beachcup_team WHERE id=8', 'Contao\\DC_Table::delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(214, 1448994755, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration_state.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(215, 1448994823, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration_state.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(216, 1448994833, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=8&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(217, 1448994839, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=9&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(218, 1448994844, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player_level.id=10&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(219, 1448994917, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration_state.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(220, 1448994921, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration_state.id=2&quot; has been created by duplicating record &quot;tl_beachcup_registration_state.id=1&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(221, 1448994942, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration_state.id=2&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(222, 1448994944, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration_state.id=3&quot; has been created by duplicating record &quot;tl_beachcup_registration_state.id=1&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(223, 1448994950, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration_state.id=3&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(224, 1448994952, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration_state.id=4&quot; has been created by duplicating record &quot;tl_beachcup_registration_state.id=1&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(225, 1448994963, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration_state.id=4&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(226, 1448994965, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration_state.id=5&quot; has been created by duplicating record &quot;tl_beachcup_registration_state.id=4&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(227, 1448994971, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration_state.id=5&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(228, 1449164949, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(229, 1449164949, 'FE', 'CRON', '', 'Purged the image cache', 'Contao\\Automator::purgeImageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(230, 1449164949, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(231, 1449164950, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(232, 1449164962, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(233, 1449167659, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),
(234, 1449244227, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(235, 1449244615, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament_type.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(236, 1449244656, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_tournament_type.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(237, 1449244658, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament_type.id=2&quot; has been created by duplicating record &quot;tl_beachcup_tournament_type.id=1&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(238, 1449244662, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_tournament_type.id=2&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(239, 1449244664, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament_type.id=3&quot; has been created by duplicating record &quot;tl_beachcup_tournament_type.id=2&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(240, 1449244673, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_tournament_type.id=3&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(241, 1449244675, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament_type.id=4&quot; has been created by duplicating record &quot;tl_beachcup_tournament_type.id=2&quot;', 'Contao\\DC_Table::copy', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(242, 1449244687, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_tournament_type.id=4&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(243, 1449245537, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(244, 1449246023, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(245, 1449246534, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=4&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(246, 1449246776, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(247, 1449247653, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(248, 1449247658, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(249, 1449249196, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_organizer.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(250, 1449249264, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(251, 1449249268, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament_type.id=5&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(252, 1449249272, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(253, 1449249288, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration_state.id=6&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(254, 1449249292, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=5&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(255, 1449249331, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament.id=4&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(256, 1449249344, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=9&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(257, 1449249349, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player_level.id=12&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(258, 1449250277, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(259, 1449250586, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(260, 1449250608, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_venue.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(261, 1449251447, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(262, 1449251469, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_organizer.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(263, 1449251493, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_organizer.id=2&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(264, 1449251498, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_venue.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(265, 1449251654, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(266, 1449251655, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(267, 1449251655, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(268, 1449251703, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(269, 1449251720, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_venue.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(270, 1449251757, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_venue.id=3&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(271, 1449251767, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_organizer.id=2&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(272, 1449251773, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_season.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(273, 1449251781, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_season.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(274, 1449251786, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=4&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(275, 1449251864, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_stage.id=4&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(276, 1449251874, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament.id=5&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(277, 1449251892, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_tournament.id=5&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(278, 1449251895, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament.id=6&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(279, 1449251911, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_tournament.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(280, 1449251924, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=6&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(281, 1449251932, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(282, 1449318609, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(283, 1449318712, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=7&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(284, 1449318749, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=8&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(285, 1449319063, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament.id=7&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(286, 1449319215, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament_type.id=6&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(287, 1449319410, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=5&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(288, 1449319663, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=6&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(289, 1449319804, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=7&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(290, 1449319861, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=8&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(291, 1449319877, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=19&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(292, 1449319886, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=9&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(293, 1449319933, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=10&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(294, 1449321083, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_organizer.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(295, 1449321476, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_venue.id=4&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(296, 1449321620, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_season.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(297, 1449321778, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=10&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(298, 1449322799, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=9&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(299, 1449324550, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=10&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(300, 1449324568, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=20&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(301, 1449324575, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=11&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(302, 1449324967, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=11&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(303, 1449324999, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=12&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(304, 1449324999, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=13&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(305, 1449325042, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=14&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(306, 1449325047, 'BE', 'ERROR', 'beach-admin', 'Could not load record &quot;tl_beachcup_registration.id=13&quot;', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(307, 1449325070, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=15&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(308, 1449325077, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=16&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(309, 1449325678, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration_state.id=7&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(310, 1449325681, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_tournament.id=8&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(311, 1449325704, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=11&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(312, 1449325747, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=12&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(313, 1449325824, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=17&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(314, 1449325836, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(315, 1449325950, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=18&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(316, 1449326527, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=19&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(317, 1449327586, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(318, 1449327634, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(319, 1449327665, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(320, 1449327712, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(321, 1449327735, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(322, 1449328121, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(323, 1449329478, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(324, 1449330541, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(325, 1449330549, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=6&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(326, 1449332331, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_season.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36'),
(327, 1449931686, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(328, 1449931686, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(329, 1449931686, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(330, 1449931686, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(331, 1449931690, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(332, 1449931705, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(333, 1449936552, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=21&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(334, 1449936556, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=22&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(335, 1449936678, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=22&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(336, 1449936683, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=23&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(337, 1449936752, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=23&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(338, 1449936757, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=13&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(339, 1449936766, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=13&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(340, 1449936772, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_registration.id=20&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(341, 1449936784, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=20&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(342, 1449937190, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(343, 1449937216, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(344, 1450002294, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(345, 1450005946, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=23&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(346, 1450006477, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=20&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(347, 1450006484, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=20&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(348, 1450010327, 'BE', 'FILES', 'beach-admin', 'Folder &quot;files/venue_pictures&quot; has been created', 'Contao\\DC_Folder::save', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(349, 1450010327, 'BE', 'GENERAL', 'beach-admin', 'A new version of file &quot;&quot; has been created', 'Contao\\DC_Folder::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(350, 1450010544, 'BE', 'FILES', 'beach-admin', 'File &quot;olang.jpg&quot; uploaded successfully and was scaled down to the maximum dimensions', 'Contao\\FileUpload::resizeUploadedImage', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(351, 1450010580, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_member.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(352, 1450013545, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_venue.id=3&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(353, 1450015407, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=18&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(354, 1450015417, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=23&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(355, 1450015436, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=17&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(356, 1450015446, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_player.id=22&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36'),
(357, 1450951421, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(358, 1450951421, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(359, 1450951421, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(360, 1450951421, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(361, 1450951422, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(362, 1450951435, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(363, 1450971019, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(364, 1450971971, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(365, 1450971993, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(366, 1450972035, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(367, 1450972086, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(368, 1450972111, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(369, 1450972137, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(370, 1450972505, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(371, 1450972544, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36');
INSERT INTO `tl_log` (`id`, `tstamp`, `source`, `action`, `username`, `text`, `func`, `ip`, `browser`) VALUES
(372, 1450972576, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(373, 1450972647, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(374, 1450972918, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(375, 1450973172, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(376, 1450973186, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(377, 1450973683, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(378, 1450973694, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(379, 1450973706, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=7&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(380, 1450975938, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=14&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(381, 1450976124, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=14&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(382, 1450976140, 'BE', 'GENERAL', 'beach-admin', 'DELETE FROM tl_beachcup_team WHERE id=14', 'Contao\\DC_Table::delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(383, 1450976356, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=15&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(384, 1450976369, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_team.id=15&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(385, 1450976375, 'BE', 'GENERAL', 'beach-admin', 'DELETE FROM tl_beachcup_team WHERE id=15', 'Contao\\DC_Table::delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(386, 1450976378, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_team.id=16&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(387, 1452097536, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(388, 1452097536, 'FE', 'CRON', '', 'Purged the image cache', 'Contao\\Automator::purgeImageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(389, 1452097536, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(390, 1452097536, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(391, 1452097536, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(392, 1452097536, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(393, 1452097537, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(394, 1452097539, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(395, 1452097564, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(396, 1452098585, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(397, 1452098605, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_player.id=24&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(398, 1452098639, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_season.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(399, 1452098660, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_venue.id=5&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(400, 1452098695, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_beachcup_stage.id=12&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(401, 1452099980, 'BE', 'GENERAL', 'beach-admin', 'A new entry &quot;tl_member.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(402, 1452100698, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged out', 'Contao\\User::logout', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(403, 1452872542, 'FE', 'CRON', '', 'Purged the page cache', 'Contao\\Automator::purgePageCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(404, 1452872542, 'FE', 'CRON', '', 'Purged the script cache', 'Contao\\Automator::purgeScriptCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(405, 1452872542, 'FE', 'CRON', '', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(406, 1452872542, 'FE', 'CRON', '', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(407, 1452872544, 'FE', 'CRON', '', 'Checked for Contao updates', 'Contao\\Automator::checkForUpdates', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(408, 1452872549, 'BE', 'ACCESS', 'beach-admin', 'User &quot;beach-admin&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(409, 1452874404, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=20&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(410, 1452874413, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_registration.id=20&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(411, 1452880181, 'BE', 'GENERAL', 'beach-admin', 'A new version of record &quot;tl_beachcup_season.id=1&quot; has been created', 'Contao\\DC_Table::edit', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_member`
--

CREATE TABLE `tl_member` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `dateOfBirth` varchar(11) NOT NULL DEFAULT '',
  `gender` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `postal` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(64) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `mobile` varchar(64) NOT NULL DEFAULT '',
  `fax` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `groups` blob,
  `login` char(1) NOT NULL DEFAULT '',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(128) NOT NULL DEFAULT '',
  `assignDir` char(1) NOT NULL DEFAULT '',
  `homeDir` binary(16) DEFAULT NULL,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `dateAdded` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `currentLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `loginCount` smallint(5) UNSIGNED NOT NULL DEFAULT '3',
  `locked` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session` blob,
  `autologin` varchar(32) DEFAULT NULL,
  `createdOn` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `activation` varchar(32) NOT NULL DEFAULT '',
  `newsletter` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_member_group`
--

CREATE TABLE `tl_member_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `redirect` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_module`
--

CREATE TABLE `tl_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `levelOffset` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `showLevel` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `hardLimit` char(1) NOT NULL DEFAULT '',
  `showProtected` char(1) NOT NULL DEFAULT '',
  `defineRoot` char(1) NOT NULL DEFAULT '',
  `rootPage` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `navigationTpl` varchar(64) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `pages` blob,
  `orderPages` blob,
  `showHidden` char(1) NOT NULL DEFAULT '',
  `customLabel` varchar(64) NOT NULL DEFAULT '',
  `autologin` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `redirectBack` char(1) NOT NULL DEFAULT '',
  `cols` varchar(32) NOT NULL DEFAULT '',
  `editable` blob,
  `memberTpl` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `form` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `queryType` varchar(32) NOT NULL DEFAULT '',
  `fuzzy` char(1) NOT NULL DEFAULT '',
  `contextLength` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `totalLength` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `searchType` varchar(32) NOT NULL DEFAULT '',
  `searchTpl` varchar(64) NOT NULL DEFAULT '',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `skipFirst` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
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
  `rss_cache` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rss_feed` text,
  `rss_template` varchar(32) NOT NULL DEFAULT '',
  `numberOfItems` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) NOT NULL DEFAULT '',
  `reg_skipName` char(1) NOT NULL DEFAULT '',
  `reg_close` varchar(32) NOT NULL DEFAULT '',
  `reg_assignDir` char(1) NOT NULL DEFAULT '',
  `reg_homeDir` binary(16) DEFAULT NULL,
  `reg_activate` char(1) NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reg_text` text,
  `reg_password` text,
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `cal_format` varchar(32) NOT NULL DEFAULT '',
  `cal_ignoreDynamic` char(1) NOT NULL DEFAULT '',
  `cal_order` varchar(32) NOT NULL DEFAULT '',
  `cal_readerModule` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cal_limit` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
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
  `faq_readerModule` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `news_readerModule` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_metaFields` varchar(255) NOT NULL DEFAULT '',
  `news_template` varchar(32) NOT NULL DEFAULT '',
  `news_format` varchar(32) NOT NULL DEFAULT '',
  `news_startDay` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `news_order` varchar(255) NOT NULL DEFAULT '',
  `news_showQuantity` char(1) NOT NULL DEFAULT '',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_hideChannels` char(1) NOT NULL DEFAULT '',
  `nl_subscribe` text,
  `nl_unsubscribe` text,
  `nl_template` varchar(32) NOT NULL DEFAULT '',
  `columnset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bootstrap_navClass` varchar(100) NOT NULL DEFAULT '',
  `bootstrap_isResponsive` char(1) NOT NULL DEFAULT '',
  `bootstrap_addHeader` char(1) NOT NULL DEFAULT '',
  `bootstrap_navbarModules` blob,
  `bootstrap_navbarTemplate` varchar(32) NOT NULL DEFAULT '',
  `bootstrap_navbarBrandTemplate` varchar(64) NOT NULL DEFAULT '',
  `bootstrap_buttons` blob,
  `bootstrap_addModalFooter` char(1) NOT NULL DEFAULT '',
  `bootstrap_addModalButton` char(1) NOT NULL DEFAULT '',
  `bootstrap_modalContentType` varchar(10) NOT NULL DEFAULT '',
  `bootstrap_modalSize` varchar(10) NOT NULL DEFAULT '',
  `bootstrap_module` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bootstrap_article` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bootstrap_text` mediumtext,
  `bootstrap_modalTemplate` varchar(64) NOT NULL DEFAULT '',
  `bootstrap_modalAjax` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_module`
--

INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `customTpl`, `pages`, `orderPages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `queryType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `searchType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `orderSRC`, `html`, `rss_cache`, `rss_feed`, `rss_template`, `numberOfItems`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_close`, `reg_assignDir`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_search`, `list_sort`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `columnset_id`, `bootstrap_navClass`, `bootstrap_isResponsive`, `bootstrap_addHeader`, `bootstrap_navbarModules`, `bootstrap_navbarTemplate`, `bootstrap_navbarBrandTemplate`, `bootstrap_buttons`, `bootstrap_addModalFooter`, `bootstrap_addModalButton`, `bootstrap_modalContentType`, `bootstrap_modalSize`, `bootstrap_module`, `bootstrap_article`, `bootstrap_text`, `bootstrap_modalTemplate`, `bootstrap_modalAjax`) VALUES
(1, 1, 1446137398, 'Hauptnavigation - Navigation', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'navigation', 0, 0, '', '', '', 0, 'nav_bootstrap_dropdown', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, '', '1', '', NULL, 'mod_navbar', 'mod_navbar', 0x613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d, '1', '1', '', '', 0, 0, NULL, '', '1'),
(2, 1, 1446139900, 'Hauptnavigation - Navbar', '', 'bootstrap_navbar', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, '', '1', '1', 0x613a313a7b693a303b613a343a7b733a363a226d6f64756c65223b733a313a2231223b733a383a22666c6f6174696e67223b733a353a227269676874223b733a383a22637373436c617373223b733a303a22223b733a383a22696e616374697665223b733a303a22223b7d7d, 'mod_navbar', 'navbar_brand', 0x613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d, '1', '1', '', '', 0, 0, NULL, '', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_news`
--

CREATE TABLE `tl_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subheadline` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(12) NOT NULL DEFAULT '',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(12) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `articleId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `featured` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_newsletter`
--

CREATE TABLE `tl_newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` mediumtext,
  `text` mediumtext,
  `addFile` char(1) NOT NULL DEFAULT '',
  `files` blob,
  `template` varchar(32) NOT NULL DEFAULT '',
  `sendText` char(1) NOT NULL DEFAULT '',
  `externalImages` char(1) NOT NULL DEFAULT '',
  `sender` varchar(128) NOT NULL DEFAULT '',
  `senderName` varchar(128) NOT NULL DEFAULT '',
  `sent` char(1) NOT NULL DEFAULT '',
  `date` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_newsletter_channel`
--

CREATE TABLE `tl_newsletter_channel` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `useSMTP` char(1) NOT NULL DEFAULT '',
  `smtpHost` varchar(64) NOT NULL DEFAULT '',
  `smtpUser` varchar(128) NOT NULL DEFAULT '',
  `smtpPass` varchar(32) NOT NULL DEFAULT '',
  `smtpEnc` varchar(3) NOT NULL DEFAULT '',
  `smtpPort` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_newsletter_recipients`
--

CREATE TABLE `tl_newsletter_recipients` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `addedOn` varchar(10) NOT NULL DEFAULT '',
  `confirmed` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `token` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_news_archive`
--

CREATE TABLE `tl_news_archive` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(16) NOT NULL DEFAULT '',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_news_feed`
--

CREATE TABLE `tl_news_feed` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `archives` blob,
  `format` varchar(32) NOT NULL DEFAULT '',
  `source` varchar(32) NOT NULL DEFAULT '',
  `maxItems` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_page`
--

CREATE TABLE `tl_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text,
  `redirect` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `layout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobileLayout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includeCache` char(1) NOT NULL DEFAULT '',
  `cache` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includeChmod` char(1) NOT NULL DEFAULT '',
  `cuser` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cgroup` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `chmod` varchar(255) NOT NULL DEFAULT '',
  `noSearch` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(64) NOT NULL DEFAULT '',
  `sitemap` varchar(32) NOT NULL DEFAULT '',
  `hide` char(1) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_page`
--

INSERT INTO `tl_page` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `type`, `pageTitle`, `language`, `robots`, `description`, `redirect`, `jumpTo`, `url`, `target`, `dns`, `staticFiles`, `staticPlugins`, `fallback`, `adminEmail`, `dateFormat`, `timeFormat`, `datimFormat`, `createSitemap`, `sitemapName`, `useSSL`, `autoforward`, `protected`, `groups`, `includeLayout`, `layout`, `mobileLayout`, `includeCache`, `cache`, `includeChmod`, `cuser`, `cgroup`, `chmod`, `noSearch`, `cssClass`, `sitemap`, `hide`, `guests`, `tabindex`, `accesskey`, `published`, `start`, `stop`) VALUES
(1, 0, 128, 1446138595, 'Beachcup', 'beachcup', 'root', 'Beachcup', 'de', '', NULL, 'permanent', 0, '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', NULL, '1', 1, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', ''),
(2, 1, 128, 1446138545, 'Home', 'home', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', ''),
(3, 1, 256, 1446138618, 'Reglement', 'reglement', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', ''),
(4, 1, 384, 1446138647, 'Landesmeisterschaft', 'landesmeisterschaft', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', ''),
(5, 1, 512, 1446138679, 'Beachcamps', 'beachcamps', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', ''),
(6, 5, 128, 1446138692, 'Kontakt', 'kontakt', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_repository_installs`
--

CREATE TABLE `tl_repository_installs` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL DEFAULT '',
  `version` int(9) NOT NULL DEFAULT '0',
  `build` int(9) NOT NULL DEFAULT '0',
  `alpha` char(1) NOT NULL DEFAULT '',
  `beta` char(1) NOT NULL DEFAULT '',
  `rc` char(1) NOT NULL DEFAULT '',
  `stable` char(1) NOT NULL DEFAULT '1',
  `lickey` varchar(255) NOT NULL DEFAULT '',
  `delprot` char(1) NOT NULL DEFAULT '',
  `updprot` char(1) NOT NULL DEFAULT '',
  `error` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_repository_installs`
--

INSERT INTO `tl_repository_installs` (`id`, `tstamp`, `extension`, `version`, `build`, `alpha`, `beta`, `rc`, `stable`, `lickey`, `delprot`, `updprot`, `error`) VALUES
(1, 1445970199, 'composer', 150029, 6, '0', '0', '0', '1', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_repository_instfiles`
--

CREATE TABLE `tl_repository_instfiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filetype` char(1) NOT NULL DEFAULT 'F',
  `flag` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_repository_instfiles`
--

INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES
(1, 1, 1445970159, 'system/modules/!composer', 'D', ''),
(2, 1, 1445970159, 'system/modules/!composer/Contao2ClassFileExistsHack.php', 'F', ''),
(3, 1, 1445970159, 'system/modules/!composer/assets', 'D', ''),
(4, 1, 1445970160, 'system/modules/!composer/assets/.htaccess', 'F', ''),
(5, 1, 1445970160, 'system/modules/!composer/assets/css', 'D', ''),
(6, 1, 1445970160, 'system/modules/!composer/assets/css/backend.css', 'F', ''),
(7, 1, 1445970161, 'system/modules/!composer/assets/css/backend.css.map', 'F', ''),
(8, 1, 1445970161, 'system/modules/!composer/assets/css/backend.scss', 'F', ''),
(9, 1, 1445970161, 'system/modules/!composer/assets/images', 'D', ''),
(10, 1, 1445970161, 'system/modules/!composer/assets/images/clear_composer_cache.png', 'F', ''),
(11, 1, 1445970162, 'system/modules/!composer/assets/images/collapse.png', 'F', ''),
(12, 1, 1445970162, 'system/modules/!composer/assets/images/composer_update.png', 'F', ''),
(13, 1, 1445970162, 'system/modules/!composer/assets/images/database_update.png', 'F', ''),
(14, 1, 1445970163, 'system/modules/!composer/assets/images/dependant.png', 'F', ''),
(15, 1, 1445970163, 'system/modules/!composer/assets/images/dependency.png', 'F', ''),
(16, 1, 1445970164, 'system/modules/!composer/assets/images/expand.png', 'F', ''),
(17, 1, 1445970164, 'system/modules/!composer/assets/images/experts_mode.png', 'F', ''),
(18, 1, 1445970164, 'system/modules/!composer/assets/images/fail.png', 'F', ''),
(19, 1, 1445970165, 'system/modules/!composer/assets/images/icon.png', 'F', ''),
(20, 1, 1445970165, 'system/modules/!composer/assets/images/installed_package.png', 'F', ''),
(21, 1, 1445970165, 'system/modules/!composer/assets/images/installing.png', 'F', ''),
(22, 1, 1445970166, 'system/modules/!composer/assets/images/mark_install.png', 'F', ''),
(23, 1, 1445970166, 'system/modules/!composer/assets/images/not_installed.png', 'F', ''),
(24, 1, 1445970167, 'system/modules/!composer/assets/images/pass.png', 'F', ''),
(25, 1, 1445970167, 'system/modules/!composer/assets/images/remove.png', 'F', ''),
(26, 1, 1445970167, 'system/modules/!composer/assets/images/removing.png', 'F', ''),
(27, 1, 1445970168, 'system/modules/!composer/assets/images/settings_dialog.png', 'F', ''),
(28, 1, 1445970168, 'system/modules/!composer/assets/images/tools_dialog.png', 'F', ''),
(29, 1, 1445970168, 'system/modules/!composer/assets/images/type-component.png', 'F', ''),
(30, 1, 1445970169, 'system/modules/!composer/assets/images/type-composer-installer.png', 'F', ''),
(31, 1, 1445970169, 'system/modules/!composer/assets/images/type-composer-plugin.png', 'F', ''),
(32, 1, 1445970170, 'system/modules/!composer/assets/images/type-contao-module.png', 'F', ''),
(33, 1, 1445970170, 'system/modules/!composer/assets/images/type-legacy-contao-module.png', 'F', ''),
(34, 1, 1445970170, 'system/modules/!composer/assets/images/type-library.png', 'F', ''),
(35, 1, 1445970171, 'system/modules/!composer/assets/images/type-meta-package.png', 'F', ''),
(36, 1, 1445970171, 'system/modules/!composer/assets/images/type-metapackage.png', 'F', ''),
(37, 1, 1445970171, 'system/modules/!composer/assets/images/type-php.png', 'F', ''),
(38, 1, 1445970172, 'system/modules/!composer/assets/images/undo_migration.png', 'F', ''),
(39, 1, 1445970172, 'system/modules/!composer/assets/images/version_locked.png', 'F', ''),
(40, 1, 1445970173, 'system/modules/!composer/assets/images/version_unlocked.png', 'F', ''),
(41, 1, 1445970173, 'system/modules/!composer/assets/images/version_unpinable.png', 'F', ''),
(42, 1, 1445970173, 'system/modules/!composer/assets/images/warn.png', 'F', ''),
(43, 1, 1445970173, 'system/modules/!composer/assets/js', 'D', ''),
(44, 1, 1445970174, 'system/modules/!composer/assets/js/dependencyGraph.js', 'F', ''),
(45, 1, 1445970174, 'system/modules/!composer/assets/js/detached.js', 'F', ''),
(46, 1, 1445970174, 'system/modules/!composer/assets/js/migrate.js', 'F', ''),
(47, 1, 1445970175, 'system/modules/!composer/assets/js/select_packages.js', 'F', ''),
(48, 1, 1445970175, 'system/modules/!composer/config', 'D', ''),
(49, 1, 1445970175, 'system/modules/!composer/config/autoload.ini', 'F', ''),
(50, 1, 1445970176, 'system/modules/!composer/config/autoload.php', 'F', ''),
(51, 1, 1445970176, 'system/modules/!composer/config/config.php', 'F', ''),
(52, 1, 1445970176, 'system/modules/!composer/config/test.phar', 'F', ''),
(53, 1, 1445970176, 'system/modules/!composer/dca', 'D', ''),
(54, 1, 1445970177, 'system/modules/!composer/dca/tl_settings.php', 'F', ''),
(55, 1, 1445970177, 'system/modules/!composer/languages/de', 'D', ''),
(56, 1, 1445970177, 'system/modules/!composer/languages', 'D', ''),
(57, 1, 1445970177, 'system/modules/!composer/languages/de/composer_client.php', 'F', ''),
(58, 1, 1445970178, 'system/modules/!composer/languages/de/default.php', 'F', ''),
(59, 1, 1445970178, 'system/modules/!composer/languages/de/modules.php', 'F', ''),
(60, 1, 1445970178, 'system/modules/!composer/languages/de/tl_settings.php', 'F', ''),
(61, 1, 1445970178, 'system/modules/!composer/languages/en', 'D', ''),
(62, 1, 1445970179, 'system/modules/!composer/languages/en/composer_client.php', 'F', ''),
(63, 1, 1445970179, 'system/modules/!composer/languages/en/default.php', 'F', ''),
(64, 1, 1445970180, 'system/modules/!composer/languages/en/modules.php', 'F', ''),
(65, 1, 1445970180, 'system/modules/!composer/languages/en/tl_settings.php', 'F', ''),
(66, 1, 1445970180, 'system/modules/!composer/languages/fr', 'D', ''),
(67, 1, 1445970180, 'system/modules/!composer/languages/fr/composer_client.php', 'F', ''),
(68, 1, 1445970180, 'system/modules/!composer/languages/rm', 'D', ''),
(69, 1, 1445970181, 'system/modules/!composer/languages/rm/composer_client.php', 'F', ''),
(70, 1, 1445970181, 'system/modules/!composer/languages/rm/default.php', 'F', ''),
(71, 1, 1445970181, 'system/modules/!composer/languages/rm/modules.php', 'F', ''),
(72, 1, 1445970182, 'system/modules/!composer/languages/rm/tl_settings.php', 'F', ''),
(73, 1, 1445970182, 'system/modules/!composer/languages/ru', 'D', ''),
(74, 1, 1445970182, 'system/modules/!composer/languages/ru/composer_client.php', 'F', ''),
(75, 1, 1445970183, 'system/modules/!composer/languages/ru/default.php', 'F', ''),
(76, 1, 1445970183, 'system/modules/!composer/languages/ru/modules.php', 'F', ''),
(77, 1, 1445970183, 'system/modules/!composer/languages/ru/tl_settings.php', 'F', ''),
(78, 1, 1445970183, 'system/modules/!composer/src', 'D', ''),
(79, 1, 1445970184, 'system/modules/!composer/src/ClassLoader.php', 'F', ''),
(80, 1, 1445970184, 'system/modules/!composer/src/Client.php', 'F', ''),
(81, 1, 1445970184, 'system/modules/!composer/src/ClientBackend.php', 'F', ''),
(82, 1, 1445970185, 'system/modules/!composer/src/ConsoleColorConverter.php', 'F', ''),
(83, 1, 1445970185, 'system/modules/!composer/src/Controller', 'D', ''),
(84, 1, 1445970185, 'system/modules/!composer/src/Controller/AbstractController.php', 'F', ''),
(85, 1, 1445970186, 'system/modules/!composer/src/Controller/ClearComposerCacheController.php', 'F', ''),
(86, 1, 1445970186, 'system/modules/!composer/src/Controller/ControllerInterface.php', 'F', ''),
(87, 1, 1445970186, 'system/modules/!composer/src/Controller/DependencyGraphController.php', 'F', ''),
(88, 1, 1445970187, 'system/modules/!composer/src/Controller/DetachedController.php', 'F', ''),
(89, 1, 1445970187, 'system/modules/!composer/src/Controller/DetailsController.php', 'F', ''),
(90, 1, 1445970188, 'system/modules/!composer/src/Controller/ExpertsEditorController.php', 'F', ''),
(91, 1, 1445970188, 'system/modules/!composer/src/Controller/InstalledController.php', 'F', ''),
(92, 1, 1445970188, 'system/modules/!composer/src/Controller/MigrationWizardController.php', 'F', ''),
(93, 1, 1445970189, 'system/modules/!composer/src/Controller/PinController.php', 'F', ''),
(94, 1, 1445970189, 'system/modules/!composer/src/Controller/RemovePackageController.php', 'F', ''),
(95, 1, 1445970190, 'system/modules/!composer/src/Controller/ResyncController.php', 'F', ''),
(96, 1, 1445970190, 'system/modules/!composer/src/Controller/SearchController.php', 'F', ''),
(97, 1, 1445970190, 'system/modules/!composer/src/Controller/SettingsController.php', 'F', ''),
(98, 1, 1445970191, 'system/modules/!composer/src/Controller/SolveController.php', 'F', ''),
(99, 1, 1445970191, 'system/modules/!composer/src/Controller/ToolsController.php', 'F', ''),
(100, 1, 1445970191, 'system/modules/!composer/src/Controller/UndoMigrationController.php', 'F', ''),
(101, 1, 1445970192, 'system/modules/!composer/src/Controller/UpdateDatabaseController.php', 'F', ''),
(102, 1, 1445970192, 'system/modules/!composer/src/Controller/UpdatePackagesController.php', 'F', ''),
(103, 1, 1445970193, 'system/modules/!composer/src/DatabaseInstaller.php', 'F', ''),
(104, 1, 1445970193, 'system/modules/!composer/src/Downloader.php', 'F', ''),
(105, 1, 1445970193, 'system/modules/!composer/src/Runtime.php', 'F', ''),
(106, 1, 1445970193, 'system/modules/!composer/templates', 'D', ''),
(107, 1, 1445970194, 'system/modules/!composer/templates/be_composer_client.html5', 'F', ''),
(108, 1, 1445970194, 'system/modules/!composer/templates/be_composer_client_dependency_graph.html5', 'F', ''),
(109, 1, 1445970195, 'system/modules/!composer/templates/be_composer_client_detached.html5', 'F', ''),
(110, 1, 1445970195, 'system/modules/!composer/templates/be_composer_client_editor.html5', 'F', ''),
(111, 1, 1445970195, 'system/modules/!composer/templates/be_composer_client_errors.html5', 'F', ''),
(112, 1, 1445970196, 'system/modules/!composer/templates/be_composer_client_form.html5', 'F', ''),
(113, 1, 1445970196, 'system/modules/!composer/templates/be_composer_client_install.html5', 'F', ''),
(114, 1, 1445970197, 'system/modules/!composer/templates/be_composer_client_install_composer.html5', 'F', ''),
(115, 1, 1445970197, 'system/modules/!composer/templates/be_composer_client_migrate.html5', 'F', ''),
(116, 1, 1445970197, 'system/modules/!composer/templates/be_composer_client_migrate_undo.html5', 'F', ''),
(117, 1, 1445970198, 'system/modules/!composer/templates/be_composer_client_search.html5', 'F', ''),
(118, 1, 1445970198, 'system/modules/!composer/templates/be_composer_client_settings.html5', 'F', ''),
(119, 1, 1445970198, 'system/modules/!composer/templates/be_composer_client_solve.html5', 'F', ''),
(120, 1, 1445970199, 'system/modules/!composer/templates/be_composer_client_tools.html5', 'F', ''),
(121, 1, 1445970199, 'system/modules/!composer/templates/be_composer_client_update.html5', 'F', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_search`
--

CREATE TABLE `tl_search` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext,
  `filesize` double UNSIGNED NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `language` varchar(5) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_search`
--

INSERT INTO `tl_search` (`id`, `pid`, `tstamp`, `title`, `url`, `text`, `filesize`, `checksum`, `protected`, `groups`, `language`) VALUES
(1, 2, 1452100331, 'Home', '', 'Home Beachcup Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer Infos Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Sponsoren Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 7.61, '0e97cf34dd53c529c3d88337dd25a8e7', '', 0x30, 'de'),
(2, 3, 1446139777, 'Reglement', 'index.php/reglement.html', 'Reglement', 4.16, '01c023b1c702275509ee96094d624525', '', 0x30, 'de'),
(3, 4, 1446139826, 'Landesmeisterschaft', 'index.php/landesmeisterschaft.html', 'Landesmeisterschaft', 4.19, 'd5ed6461c515f2274d8c9b28ced4bf27', '', 0x30, 'de'),
(4, 2, 1446143108, 'Home', 'index.php/home.html', 'Home Beachcup Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer Infos Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Sponsoren Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 7.61, '0e97cf34dd53c529c3d88337dd25a8e7', '', 0x30, 'de'),
(5, 6, 1446143124, 'Kontakt', 'index.php/kontakt.html', 'Kontakt', 4.13, '9c35ae96e2d822f9a9ff30175fc26038', '', 0x30, 'de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_search_index`
--

CREATE TABLE `tl_search_index` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `word` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `relevance` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_search_index`
--

INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES
(448, 1, 'exerci', 1, 'de'),
(2, 2, 'reglement', 1, 'de'),
(3, 3, 'landesmeisterschaft', 1, 'de'),
(447, 1, 'nostrud', 1, 'de'),
(446, 1, 'quis', 1, 'de'),
(445, 1, 'veniam', 1, 'de'),
(444, 1, 'minim', 1, 'de'),
(443, 1, 'ad', 1, 'de'),
(442, 1, 'enim', 1, 'de'),
(441, 1, 'wisi', 1, 'de'),
(440, 1, 'volutpat', 1, 'de'),
(439, 1, 'aliquam', 1, 'de'),
(438, 1, 'laoreet', 1, 'de'),
(437, 1, 'tincidunt', 1, 'de'),
(436, 1, 'euismod', 1, 'de'),
(435, 1, 'nibh', 1, 'de'),
(434, 1, 'nonummy', 1, 'de'),
(433, 1, 'elit', 1, 'de'),
(432, 1, 'adipiscing', 1, 'de'),
(431, 1, 'consectetuer', 1, 'de'),
(430, 1, 'facilisi', 2, 'de'),
(429, 1, 'feugait', 2, 'de'),
(428, 1, 'te', 2, 'de'),
(427, 1, 'augue', 2, 'de'),
(426, 1, 'delenit', 2, 'de'),
(425, 1, 'zzril', 2, 'de'),
(424, 1, 'luptatum', 2, 'de'),
(423, 1, 'praesent', 2, 'de'),
(422, 1, 'blandit', 2, 'de'),
(421, 1, 'qui', 2, 'de'),
(420, 1, 'dignissim', 2, 'de'),
(419, 1, 'odio', 2, 'de'),
(418, 1, 'iusto', 2, 'de'),
(417, 1, 'accumsan', 2, 'de'),
(416, 1, 'eros', 2, 'de'),
(415, 1, 'facilisis', 2, 'de'),
(414, 1, 'nulla', 4, 'de'),
(413, 1, 'feugiat', 2, 'de'),
(412, 1, 'eu', 2, 'de'),
(411, 1, 'illum', 2, 'de'),
(410, 1, 'consequat', 3, 'de'),
(409, 1, 'molestie', 2, 'de'),
(408, 1, 'esse', 2, 'de'),
(407, 1, 'velit', 2, 'de'),
(406, 1, 'vulputate', 2, 'de'),
(405, 1, 'hendrerit', 2, 'de'),
(404, 1, 'in', 4, 'de'),
(403, 1, 'iriure', 2, 'de'),
(402, 1, 'eum', 2, 'de'),
(401, 1, 'vel', 4, 'de'),
(400, 1, 'autem', 2, 'de'),
(399, 1, 'duis', 4, 'de'),
(398, 1, 'est', 6, 'de'),
(397, 1, 'sanctus', 6, 'de'),
(396, 1, 'takimata', 6, 'de'),
(395, 1, 'sea', 6, 'de'),
(394, 1, 'no', 6, 'de'),
(393, 1, 'gubergren', 6, 'de'),
(392, 1, 'kasd', 6, 'de'),
(391, 1, 'clita', 6, 'de'),
(390, 1, 'stet', 6, 'de'),
(389, 1, 'rebum', 6, 'de'),
(388, 1, 'ea', 7, 'de'),
(387, 1, 'dolores', 6, 'de'),
(386, 1, 'duo', 6, 'de'),
(385, 1, 'justo', 6, 'de'),
(384, 1, 'accusam', 6, 'de'),
(383, 1, 'eos', 6, 'de'),
(382, 1, 'vero', 8, 'de'),
(381, 1, 'at', 8, 'de'),
(380, 1, 'voluptua', 6, 'de'),
(379, 1, 'erat', 7, 'de'),
(378, 1, 'aliquyam', 6, 'de'),
(377, 1, 'magna', 7, 'de'),
(376, 1, 'dolore', 11, 'de'),
(375, 1, 'et', 28, 'de'),
(374, 1, 'labore', 6, 'de'),
(373, 1, 'ut', 9, 'de'),
(372, 1, 'invidunt', 6, 'de'),
(371, 1, 'tempor', 7, 'de'),
(370, 1, 'eirmod', 6, 'de'),
(369, 1, 'nonumy', 6, 'de'),
(368, 1, 'diam', 13, 'de'),
(367, 1, 'sed', 13, 'de'),
(366, 1, 'elitr', 6, 'de'),
(365, 1, 'sadipscing', 6, 'de'),
(364, 1, 'consetetur', 6, 'de'),
(363, 1, 'amet', 13, 'de'),
(362, 1, 'sit', 13, 'de'),
(361, 1, 'dolor', 15, 'de'),
(360, 1, 'ipsum', 13, 'de'),
(359, 1, 'lorem', 13, 'de'),
(358, 1, 'beachcup', 1, 'de'),
(357, 1, 'home', 1, 'de'),
(329, 4, 'exerci', 1, 'de'),
(328, 4, 'nostrud', 1, 'de'),
(327, 4, 'quis', 1, 'de'),
(326, 4, 'veniam', 1, 'de'),
(325, 4, 'minim', 1, 'de'),
(324, 4, 'ad', 1, 'de'),
(323, 4, 'enim', 1, 'de'),
(322, 4, 'wisi', 1, 'de'),
(321, 4, 'volutpat', 1, 'de'),
(320, 4, 'aliquam', 1, 'de'),
(319, 4, 'laoreet', 1, 'de'),
(318, 4, 'tincidunt', 1, 'de'),
(317, 4, 'euismod', 1, 'de'),
(316, 4, 'nibh', 1, 'de'),
(315, 4, 'nonummy', 1, 'de'),
(314, 4, 'elit', 1, 'de'),
(313, 4, 'adipiscing', 1, 'de'),
(312, 4, 'consectetuer', 1, 'de'),
(311, 4, 'facilisi', 2, 'de'),
(310, 4, 'feugait', 2, 'de'),
(309, 4, 'te', 2, 'de'),
(308, 4, 'augue', 2, 'de'),
(307, 4, 'delenit', 2, 'de'),
(306, 4, 'zzril', 2, 'de'),
(305, 4, 'luptatum', 2, 'de'),
(304, 4, 'praesent', 2, 'de'),
(303, 4, 'blandit', 2, 'de'),
(302, 4, 'qui', 2, 'de'),
(301, 4, 'dignissim', 2, 'de'),
(300, 4, 'odio', 2, 'de'),
(299, 4, 'iusto', 2, 'de'),
(298, 4, 'accumsan', 2, 'de'),
(297, 4, 'eros', 2, 'de'),
(296, 4, 'facilisis', 2, 'de'),
(295, 4, 'nulla', 4, 'de'),
(294, 4, 'feugiat', 2, 'de'),
(293, 4, 'eu', 2, 'de'),
(292, 4, 'illum', 2, 'de'),
(291, 4, 'consequat', 3, 'de'),
(290, 4, 'molestie', 2, 'de'),
(289, 4, 'esse', 2, 'de'),
(288, 4, 'velit', 2, 'de'),
(287, 4, 'vulputate', 2, 'de'),
(286, 4, 'hendrerit', 2, 'de'),
(285, 4, 'in', 4, 'de'),
(284, 4, 'iriure', 2, 'de'),
(283, 4, 'eum', 2, 'de'),
(282, 4, 'vel', 4, 'de'),
(281, 4, 'autem', 2, 'de'),
(280, 4, 'duis', 4, 'de'),
(279, 4, 'est', 6, 'de'),
(278, 4, 'sanctus', 6, 'de'),
(277, 4, 'takimata', 6, 'de'),
(276, 4, 'sea', 6, 'de'),
(275, 4, 'no', 6, 'de'),
(274, 4, 'gubergren', 6, 'de'),
(273, 4, 'kasd', 6, 'de'),
(272, 4, 'clita', 6, 'de'),
(271, 4, 'stet', 6, 'de'),
(270, 4, 'rebum', 6, 'de'),
(269, 4, 'ea', 7, 'de'),
(268, 4, 'dolores', 6, 'de'),
(267, 4, 'duo', 6, 'de'),
(266, 4, 'justo', 6, 'de'),
(265, 4, 'accusam', 6, 'de'),
(264, 4, 'eos', 6, 'de'),
(263, 4, 'vero', 8, 'de'),
(262, 4, 'at', 8, 'de'),
(261, 4, 'voluptua', 6, 'de'),
(260, 4, 'erat', 7, 'de'),
(259, 4, 'aliquyam', 6, 'de'),
(258, 4, 'magna', 7, 'de'),
(257, 4, 'dolore', 11, 'de'),
(256, 4, 'et', 28, 'de'),
(255, 4, 'labore', 6, 'de'),
(254, 4, 'ut', 9, 'de'),
(253, 4, 'invidunt', 6, 'de'),
(252, 4, 'tempor', 7, 'de'),
(251, 4, 'eirmod', 6, 'de'),
(250, 4, 'nonumy', 6, 'de'),
(249, 4, 'diam', 13, 'de'),
(248, 4, 'sed', 13, 'de'),
(247, 4, 'elitr', 6, 'de'),
(246, 4, 'sadipscing', 6, 'de'),
(245, 4, 'consetetur', 6, 'de'),
(244, 4, 'amet', 13, 'de'),
(243, 4, 'sit', 13, 'de'),
(242, 4, 'dolor', 15, 'de'),
(241, 4, 'ipsum', 13, 'de'),
(240, 4, 'lorem', 13, 'de'),
(239, 4, 'beachcup', 1, 'de'),
(238, 4, 'home', 1, 'de'),
(330, 4, 'tation', 1, 'de'),
(331, 4, 'ullamcorper', 1, 'de'),
(332, 4, 'suscipit', 1, 'de'),
(333, 4, 'lobortis', 1, 'de'),
(334, 4, 'nisl', 1, 'de'),
(335, 4, 'aliquip', 1, 'de'),
(336, 4, 'ex', 1, 'de'),
(337, 4, 'commodo', 1, 'de'),
(338, 4, 'nam', 1, 'de'),
(339, 4, 'liber', 1, 'de'),
(340, 4, 'cum', 1, 'de'),
(341, 4, 'soluta', 1, 'de'),
(342, 4, 'nobis', 1, 'de'),
(343, 4, 'eleifend', 1, 'de'),
(344, 4, 'option', 1, 'de'),
(345, 4, 'congue', 1, 'de'),
(346, 4, 'nihil', 1, 'de'),
(347, 4, 'imperdiet', 1, 'de'),
(348, 4, 'doming', 1, 'de'),
(349, 4, 'id', 1, 'de'),
(350, 4, 'quod', 1, 'de'),
(351, 4, 'mazim', 1, 'de'),
(352, 4, 'placerat', 1, 'de'),
(353, 4, 'facer', 1, 'de'),
(354, 4, 'infos', 1, 'de'),
(355, 4, 'sponsoren', 1, 'de'),
(356, 5, 'kontakt', 1, 'de'),
(449, 1, 'tation', 1, 'de'),
(450, 1, 'ullamcorper', 1, 'de'),
(451, 1, 'suscipit', 1, 'de'),
(452, 1, 'lobortis', 1, 'de'),
(453, 1, 'nisl', 1, 'de'),
(454, 1, 'aliquip', 1, 'de'),
(455, 1, 'ex', 1, 'de'),
(456, 1, 'commodo', 1, 'de'),
(457, 1, 'nam', 1, 'de'),
(458, 1, 'liber', 1, 'de'),
(459, 1, 'cum', 1, 'de'),
(460, 1, 'soluta', 1, 'de'),
(461, 1, 'nobis', 1, 'de'),
(462, 1, 'eleifend', 1, 'de'),
(463, 1, 'option', 1, 'de'),
(464, 1, 'congue', 1, 'de'),
(465, 1, 'nihil', 1, 'de'),
(466, 1, 'imperdiet', 1, 'de'),
(467, 1, 'doming', 1, 'de'),
(468, 1, 'id', 1, 'de'),
(469, 1, 'quod', 1, 'de'),
(470, 1, 'mazim', 1, 'de'),
(471, 1, 'placerat', 1, 'de'),
(472, 1, 'facer', 1, 'de'),
(473, 1, 'infos', 1, 'de'),
(474, 1, 'sponsoren', 1, 'de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_session`
--

CREATE TABLE `tl_session` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `sessionID` varchar(128) NOT NULL DEFAULT '',
  `hash` varchar(40) DEFAULT NULL,
  `ip` varchar(64) NOT NULL DEFAULT '',
  `su` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_session`
--

INSERT INTO `tl_session` (`id`, `pid`, `tstamp`, `name`, `sessionID`, `hash`, `ip`, `su`) VALUES
(31, 1, 1452882099, 'BE_USER_AUTH', 'g9h6upqs3enneo4cbnad1enle5', '0b2b213f0990d5fa9ba388976b6e9336df8cd1d6', '::1', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_style`
--

CREATE TABLE `tl_style` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `selector` varchar(1022) NOT NULL DEFAULT '',
  `category` varchar(32) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `size` char(1) NOT NULL DEFAULT '',
  `width` varchar(64) NOT NULL DEFAULT '',
  `height` varchar(64) NOT NULL DEFAULT '',
  `minwidth` varchar(64) NOT NULL DEFAULT '',
  `minheight` varchar(64) NOT NULL DEFAULT '',
  `maxwidth` varchar(64) NOT NULL DEFAULT '',
  `maxheight` varchar(64) NOT NULL DEFAULT '',
  `positioning` char(1) NOT NULL DEFAULT '',
  `trbl` varchar(128) NOT NULL DEFAULT '',
  `position` varchar(32) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `clear` varchar(32) NOT NULL DEFAULT '',
  `overflow` varchar(32) NOT NULL DEFAULT '',
  `display` varchar(32) NOT NULL DEFAULT '',
  `alignment` char(1) NOT NULL DEFAULT '',
  `margin` varchar(128) NOT NULL DEFAULT '',
  `padding` varchar(128) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT '',
  `verticalalign` varchar(32) NOT NULL DEFAULT '',
  `textalign` varchar(32) NOT NULL DEFAULT '',
  `whitespace` varchar(8) NOT NULL DEFAULT '',
  `background` char(1) NOT NULL DEFAULT '',
  `bgcolor` varchar(64) NOT NULL DEFAULT '',
  `bgimage` varchar(255) NOT NULL DEFAULT '',
  `bgposition` varchar(32) NOT NULL DEFAULT '',
  `bgrepeat` varchar(32) NOT NULL DEFAULT '',
  `shadowsize` varchar(128) NOT NULL DEFAULT '',
  `shadowcolor` varchar(64) NOT NULL DEFAULT '',
  `gradientAngle` varchar(32) NOT NULL DEFAULT '',
  `gradientColors` varchar(128) NOT NULL DEFAULT '',
  `border` char(1) NOT NULL DEFAULT '',
  `borderwidth` varchar(128) NOT NULL DEFAULT '',
  `borderstyle` varchar(32) NOT NULL DEFAULT '',
  `bordercolor` varchar(64) NOT NULL DEFAULT '',
  `borderradius` varchar(128) NOT NULL DEFAULT '',
  `bordercollapse` varchar(32) NOT NULL DEFAULT '',
  `borderspacing` varchar(64) NOT NULL DEFAULT '',
  `font` char(1) NOT NULL DEFAULT '',
  `fontfamily` varchar(255) NOT NULL DEFAULT '',
  `fontsize` varchar(64) NOT NULL DEFAULT '',
  `fontcolor` varchar(64) NOT NULL DEFAULT '',
  `lineheight` varchar(64) NOT NULL DEFAULT '',
  `fontstyle` varchar(255) NOT NULL DEFAULT '',
  `texttransform` varchar(32) NOT NULL DEFAULT '',
  `textindent` varchar(64) NOT NULL DEFAULT '',
  `letterspacing` varchar(64) NOT NULL DEFAULT '',
  `wordspacing` varchar(64) NOT NULL DEFAULT '',
  `list` char(1) NOT NULL DEFAULT '',
  `liststyletype` varchar(32) NOT NULL DEFAULT '',
  `liststyleimage` varchar(255) NOT NULL DEFAULT '',
  `own` text,
  `invisible` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_style_sheet`
--

CREATE TABLE `tl_style_sheet` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `disablePie` char(1) NOT NULL DEFAULT '',
  `embedImages` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cc` varchar(32) NOT NULL DEFAULT '',
  `media` varchar(255) NOT NULL DEFAULT '',
  `mediaQuery` text,
  `vars` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_theme`
--

CREATE TABLE `tl_theme` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `author` varchar(128) NOT NULL DEFAULT '',
  `folders` blob,
  `screenshot` binary(16) DEFAULT NULL,
  `templates` varchar(255) NOT NULL DEFAULT '',
  `vars` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_theme`
--

INSERT INTO `tl_theme` (`id`, `tstamp`, `name`, `author`, `folders`, `screenshot`, `templates`, `vars`) VALUES
(1, 1446137306, 'Beachcup Theme', 'Jakob Pallhuber', NULL, NULL, '', 'a:0:{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_undo`
--

CREATE TABLE `tl_undo` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `query` text,
  `affectedRows` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `data` mediumblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_undo`
--

INSERT INTO `tl_undo` (`id`, `pid`, `tstamp`, `fromTable`, `query`, `affectedRows`, `data`) VALUES
(1, 1, 1446140027, 'tl_article', 'DELETE FROM tl_article WHERE id=6', 1, 0x613a313a7b733a31303a22746c5f61727469636c65223b613a313a7b693a303b613a32323a7b733a323a226964223b733a313a2236223b733a333a22706964223b733a313a2232223b733a373a22736f7274696e67223b733a333a22323536223b733a363a22747374616d70223b733a31303a2231343436313430303033223b733a353a227469746c65223b733a31323a22486f6d6520284b6f70696529223b733a353a22616c696173223b733a31303a22686f6d652d6b6f706965223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a343a226c656674223b733a383a226b6579776f726473223b733a303a22223b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a393a227075626c6973686564223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d7d7d),
(2, 1, 1446230529, 'tl_module', 'DELETE FROM tl_module WHERE id=4', 1, 0x613a313a7b733a393a22746c5f6d6f64756c65223b613a313a7b693a303b613a3133333a7b733a323a226964223b733a313a2234223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436323239383436223b733a343a226e616d65223b733a31323a22526567697374726174696f6e223b733a383a22686561646c696e65223b733a34353a22613a323a7b733a343a22756e6974223b733a323a226831223b733a353a2276616c7565223b733a303a22223b7d223b733a343a2274797065223b733a31323a22726567697374726174696f6e223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a31343a226d656d6265725f64656661756c74223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31323a22636f6c756d6e7365745f6964223b733a313a2230223b733a31383a22626f6f7473747261705f6e6176436c617373223b733a303a22223b733a32323a22626f6f7473747261705f6973526573706f6e73697665223b733a313a2231223b733a31393a22626f6f7473747261705f616464486561646572223b733a303a22223b733a32333a22626f6f7473747261705f6e61766261724d6f64756c6573223b4e3b733a32343a22626f6f7473747261705f6e617662617254656d706c617465223b733a31303a226d6f645f6e6176626172223b733a32393a22626f6f7473747261705f6e61766261724272616e6454656d706c617465223b733a31303a226d6f645f6e6176626172223b733a31373a22626f6f7473747261705f627574746f6e73223b733a3139333a22613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d223b733a32343a22626f6f7473747261705f6164644d6f64616c466f6f746572223b733a313a2231223b733a32343a22626f6f7473747261705f6164644d6f64616c427574746f6e223b733a313a2231223b733a32363a22626f6f7473747261705f6d6f64616c436f6e74656e7454797065223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c53697a65223b733a303a22223b733a31363a22626f6f7473747261705f6d6f64756c65223b733a313a2230223b733a31373a22626f6f7473747261705f61727469636c65223b733a313a2230223b733a31343a22626f6f7473747261705f74657874223b4e3b733a32333a22626f6f7473747261705f6d6f64616c54656d706c617465223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c416a6178223b733a313a2231223b7d7d7d),
(3, 1, 1448992981, 'tl_beachcup_team', 'DELETE FROM tl_beachcup_team WHERE id=8', 1, 0x613a313a7b733a31363a22746c5f62656163686375705f7465616d223b613a313a7b693a303b613a343a7b733a323a226964223b733a313a2238223b733a363a22747374616d70223b733a31303a2231343438393932333132223b733a383a22706c617965725f31223b733a323a223138223b733a383a22706c617965725f32223b733a323a223137223b7d7d7d),
(4, 1, 1450976140, 'tl_beachcup_team', 'DELETE FROM tl_beachcup_team WHERE id=14', 1, 0x613a313a7b733a31363a22746c5f62656163686375705f7465616d223b613a313a7b693a303b613a343a7b733a323a226964223b733a323a223134223b733a363a22747374616d70223b733a31303a2231343530393736313234223b733a383a22706c617965725f31223b733a323a223138223b733a383a22706c617965725f32223b733a323a223137223b7d7d7d),
(5, 1, 1450976375, 'tl_beachcup_team', 'DELETE FROM tl_beachcup_team WHERE id=15', 1, 0x613a313a7b733a31363a22746c5f62656163686375705f7465616d223b613a313a7b693a303b613a343a7b733a323a226964223b733a323a223135223b733a363a22747374616d70223b733a31303a2231343530393736333639223b733a383a22706c617965725f31223b733a323a223138223b733a383a22706c617965725f32223b733a323a223137223b7d7d7d);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_user`
--

CREATE TABLE `tl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `backendTheme` varchar(32) NOT NULL DEFAULT '',
  `uploader` varchar(32) NOT NULL DEFAULT '',
  `showHelp` char(1) NOT NULL DEFAULT '',
  `thumbnails` char(1) NOT NULL DEFAULT '',
  `useRTE` char(1) NOT NULL DEFAULT '',
  `useCE` char(1) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `pwChange` char(1) NOT NULL DEFAULT '',
  `admin` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `inherit` varchar(12) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `session` blob,
  `dateAdded` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `currentLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `loginCount` smallint(5) UNSIGNED NOT NULL DEFAULT '3',
  `locked` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_user`
--

INSERT INTO `tl_user` (`id`, `tstamp`, `username`, `name`, `email`, `language`, `backendTheme`, `uploader`, `showHelp`, `thumbnails`, `useRTE`, `useCE`, `password`, `pwChange`, `admin`, `groups`, `inherit`, `modules`, `themes`, `pagemounts`, `alpty`, `filemounts`, `fop`, `forms`, `formp`, `disable`, `start`, `stop`, `session`, `dateAdded`, `lastLogin`, `currentLogin`, `loginCount`, `locked`, `calendars`, `calendarp`, `calendarfeeds`, `calendarfeedp`, `faqs`, `faqp`, `news`, `newp`, `newsfeeds`, `newsfeedp`, `newsletters`, `newsletterp`) VALUES
(1, 1447169790, 'beach-admin', 'Jakob Pallhuber', 'joge@application-studios.com', 'de', 'flexible', 'DropZone', '1', '1', '1', '1', '$2y$10$RG78.lGM1rT/FBVBCFUal.06hFA/X8nycJsjP/oT/qfGvGrgKFLtW', '', '1', NULL, '', NULL, NULL, 0x613a303a7b7d, NULL, 0x613a303a7b7d, NULL, NULL, NULL, '', '', '', 0x613a32303a7b733a373a2272656665726572223b613a32343a7b733a383a223764626431653433223b613a353a7b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a343a226c617374223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d6332353131626139223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a37353a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c652672743d3139663661356161323065643732326436646433356433643934353138373135267265663d3634623333326436223b7d733a383a223566343834383063223b613a353a7b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a343a226c617374223b733a37353a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c652672743d3139663661356161323065643732326436646433356433643934353138373135267265663d3634623333326436223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a38333a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267074673d616c6c2672743d3139663661356161323065643732326436646433356433643934353138373135267265663d3764626431653433223b7d733a383a223630656433356133223b613a353a7b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a343a226c617374223b733a37353a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c652672743d3139663661356161323065643732326436646433356433643934353138373135267265663d3634623333326436223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a37353a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c652672743d3139663661356161323065643732326436646433356433643934353138373135267265663d3764626431653433223b7d733a383a226265373430323435223b613a353a7b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a343a226c617374223b733a37353a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c652672743d3139663661356161323065643732326436646433356433643934353138373135267265663d3764626431653433223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d3630656433356133223b7d733a383a226262373732343166223b613a353a7b733a343a226c617374223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d3630656433356133223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a34323a22636f6e74616f2f6d61696e2e7068703f646f3d74706c5f656469746f72267265663d6265373430323435223b7d733a383a226334653539353638223b613a353a7b733a343a226c617374223b733a34323a22636f6e74616f2f6d61696e2e7068703f646f3d74706c5f656469746f72267265663d6265373430323435223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d706c61796572267265663d6262373732343166223b7d733a383a226466356536323937223b613a353a7b733a343a226c617374223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d706c61796572267265663d6262373732343166223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d6334653539353638223b7d733a383a223666363865623631223b613a353a7b733a343a226c617374223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d706c61796572267265663d6262373732343166223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d6334653539353638223b7d733a383a226139626432643032223b613a353a7b733a343a226c617374223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d6334653539353638223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267265663d3666363865623631223b7d733a383a226531646463376637223b613a353a7b733a343a226c617374223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267265663d3666363865623631223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d6263353265363763223b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3735626163336439223b733a31353a22746c5f6e6577735f61726368697665223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d6e657773267265663d6266343537613666223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d736561736f6e267265663d6139626432643032223b7d733a383a223535653066373833223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267265663d3833633536666130223b7d733a383a223234353038326232223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a34333a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267570646174653d6461746162617365223b7d733a383a223465343539316561223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a34333a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267570646174653d6461746162617365223b7d733a383a223935353238656262223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a34333a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267570646174653d6461746162617365223b7d733a383a226631623863656531223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a34333a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267570646174653d6461746162617365223b7d733a383a223032326463343238223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a34333a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267570646174653d6461746162617365223b7d733a383a226438623830373330223b613a323a7b733a343a226c617374223b733a34333a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267570646174653d6461746162617365223b733a373a2263757272656e74223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d3032326463343238223b7d733a383a223563336331613132223b613a323a7b733a343a226c617374223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d3032326463343238223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d736561736f6e267265663d6438623830373330223b7d733a383a223962643661336339223b613a323a7b733a343a226c617374223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d3032326463343238223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d736561736f6e267265663d6438623830373330223b7d733a383a223033663830356231223b613a323a7b733a343a226c617374223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d3032326463343238223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d736561736f6e267265663d6438623830373330223b7d733a383a223662313635643935223b613a323a7b733a343a226c617374223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d3032326463343238223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d736561736f6e267265663d6438623830373330223b7d733a383a223835666539353965223b613a323a7b733a343a226c617374223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d3032326463343238223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d736561736f6e267265663d6438623830373330223b7d733a383a223239336238316632223b613a323a7b733a343a226c617374223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d7465616d267265663d3032326463343238223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d736561736f6e267265663d6438623830373330223b7d733a383a223831633566383766223b613a333a7b733a31303a22746c5f61727469636c65223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3239336238316632223b733a343a226c617374223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d736561736f6e267265663d6438623830373330223b733a373a2263757272656e74223b733a33393a22636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267265663d3239336238316632223b7d7d733a373a2243555252454e54223b613a323a7b733a333a22494453223b613a373a7b693a303b733a313a2231223b693a313b733a313a2237223b693a323b733a313a2238223b693a333b733a313a2232223b693a343b733a313a2233223b693a353b733a313a2234223b693a363b733a313a2235223b7d733a31383a22746c5f62656163686375705f706c61796572223b613a313a7b693a303b733a31313a226861735f70726976616379223b7d7d733a32323a227374796c655f73686565745f7570646174655f616c6c223b4e3b733a393a22434c4950424f415244223b613a32323a7b733a383a22746c5f7468656d65223b613a303a7b7d733a393a22746c5f6d6f64756c65223b613a303a7b7d733a393a22746c5f6c61796f7574223b613a303a7b7d733a373a22746c5f70616765223b613a303a7b7d733a31303a22746c5f61727469636c65223b613a303a7b7d733a31303a22746c5f636f6e74656e74223b613a303a7b7d733a31323a22746c5f657874656e73696f6e223b613a303a7b7d733a373a22746c5f666f726d223b613a303a7b7d733a32343a22746c5f62656163686375705f706c617965725f6c6576656c223b613a303a7b7d733a31383a22746c5f62656163686375705f706c61796572223b613a303a7b7d733a31353a22746c5f6e6577735f61726368697665223b613a303a7b7d733a31363a22746c5f62656163686375705f7465616d223b613a303a7b7d733a33303a22746c5f62656163686375705f726567697374726174696f6e5f7374617465223b613a303a7b7d733a32343a22746c5f62656163686375705f726567697374726174696f6e223b613a303a7b7d733a32373a22746c5f62656163686375705f746f75726e616d656e745f74797065223b613a303a7b7d733a32323a22746c5f62656163686375705f746f75726e616d656e74223b613a303a7b7d733a31373a22746c5f62656163686375705f7374616765223b613a303a7b7d733a32313a22746c5f62656163686375705f6f7267616e697a6572223b613a303a7b7d733a31373a22746c5f62656163686375705f76656e7565223b613a303a7b7d733a31383a22746c5f62656163686375705f736561736f6e223b613a303a7b7d733a383a22746c5f66696c6573223b613a303a7b7d733a393a22746c5f6d656d626572223b613a303a7b7d7d733a31313a226e65775f7265636f726473223b613a32313a7b733a383a22746c5f7468656d65223b613a313a7b693a303b693a313b7d733a393a22746c5f6d6f64756c65223b613a343a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b7d733a393a22746c5f6c61796f7574223b613a313a7b693a303b693a313b7d733a373a22746c5f70616765223b613a363a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b7d733a31303a22746c5f61727469636c65223b613a333a7b693a303b693a363b693a313b693a373b693a323b693a383b7d733a31303a22746c5f636f6e74656e74223b613a333a7b693a303b693a313b693a313b693a323b693a323b693a333b7d733a31323a22746c5f657874656e73696f6e223b613a323a7b693a303b693a313b693a313b693a323b7d733a373a22746c5f666f726d223b613a313a7b693a303b693a313b7d733a32343a22746c5f62656163686375705f706c617965725f6c6576656c223b613a31323a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b693a363b693a373b693a373b693a383b693a383b693a393b693a393b693a31303b693a31303b693a31313b693a31313b693a31323b7d733a31383a22746c5f62656163686375705f706c61796572223b613a32343a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b693a363b693a373b693a373b693a383b693a383b693a393b693a393b693a31303b693a31303b693a31313b693a31313b693a31323b693a31323b693a31333b693a31333b693a31343b693a31343b693a31353b693a31353b693a31363b693a31363b693a31373b693a31373b693a31383b693a31383b693a31393b693a31393b693a32303b693a32303b693a32313b693a32313b693a32323b693a32323b693a32333b693a32333b693a32343b7d733a31353a22746c5f6e6577735f61726368697665223b613a313a7b693a303b693a313b7d733a31363a22746c5f62656163686375705f7465616d223b613a31363a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b693a363b693a373b693a373b693a383b693a383b693a393b693a393b693a31303b693a31303b693a31313b693a31313b693a31323b693a31323b693a31333b693a31333b693a31343b693a31343b693a31353b693a31353b693a31363b7d733a33303a22746c5f62656163686375705f726567697374726174696f6e5f7374617465223b613a373a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b693a363b693a373b7d733a32343a22746c5f62656163686375705f726567697374726174696f6e223b613a32303a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b693a363b693a373b693a373b693a383b693a383b693a393b693a393b693a31303b693a31303b693a31313b693a31313b693a31323b693a31323b693a31333b693a31333b693a31343b693a31343b693a31353b693a31353b693a31363b693a31363b693a31373b693a31373b693a31383b693a31383b693a31393b693a31393b693a32303b7d733a32373a22746c5f62656163686375705f746f75726e616d656e745f74797065223b613a363a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b7d733a32323a22746c5f62656163686375705f746f75726e616d656e74223b613a383a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b693a363b693a373b693a373b693a383b7d733a31373a22746c5f62656163686375705f7374616765223b613a31323a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b693a363b693a373b693a373b693a383b693a383b693a393b693a393b693a31303b693a31303b693a31313b693a31313b693a31323b7d733a32313a22746c5f62656163686375705f6f7267616e697a6572223b613a333a7b693a303b693a313b693a313b693a323b693a323b693a333b7d733a31373a22746c5f62656163686375705f76656e7565223b613a353a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b7d733a31383a22746c5f62656163686375705f736561736f6e223b613a333a7b693a303b693a313b693a313b693a323b693a323b693a333b7d733a393a22746c5f6d656d626572223b613a323a7b693a303b693a313b693a313b693a323b7d7d733a31303a2243555252454e545f4944223b733a313a2231223b733a31353a226669656c647365745f737461746573223b613a383a7b733a393a22746c5f6d6f64756c65223b613a343a7b733a31353a2274656d706c6174655f6c6567656e64223b693a313b733a31323a22656d61696c5f6c6567656e64223b693a303b733a31363a2270726f7465637465645f6c6567656e64223b693a303b733a31333a226578706572745f6c6567656e64223b693a303b7d733a393a22746c5f6c61796f7574223b613a313a7b733a31333a226578706572745f6c6567656e64223b693a313b7d733a373a22746c5f666f726d223b613a323a7b733a31323a2273746f72655f6c6567656e64223b693a303b733a31333a226578706572745f6c6567656e64223b693a303b7d733a373a22746c5f75736572223b613a333a7b733a31343a226261636b656e645f6c6567656e64223b693a303b733a31323a227468656d655f6c6567656e64223b693a303b733a31353a2270617373776f72645f6c6567656e64223b693a313b7d733a31313a22746c5f73657474696e6773223b613a383a7b733a31333a22676c6f62616c5f6c6567656e64223b693a313b733a31363a22626f6f7473747261705f6c6567656e64223b693a303b733a31353a22636f6d706f7365725f6c6567656e64223b693a303b733a31333a227570646174655f6c6567656e64223b693a303b733a31323a2263686d6f645f6c6567656e64223b693a303b733a31333a227365617263685f6c6567656e64223b693a303b733a31343a2275706c6f6164735f6c6567656e64223b693a303b733a31323a2266696c65735f6c6567656e64223b693a303b7d733a31383a22746c5f62656163686375705f706c61796572223b613a393a7b733a32343a22757365725f696e666f726d6174696f6e735f6c6567656e64223b693a303b733a33303a226164646974696f6e616c5f696e666f726d6174696f6e735f6c6567656e64223b693a303b733a32373a2267656e6572616c5f696e666f726d6174696f6e735f6c6567656e64223b693a303b733a31313a22757365725f6c6567656e64223b693a313b733a32313a2261646d696e697374726174696f6e5f6c6567656e64223b693a313b733a31313a22626f64795f6c6567656e64223b693a313b733a31343a22636f6e746163745f6c6567656e64223b693a313b733a31343a22616464726573735f6c6567656e64223b693a313b733a31343a2267656e6572616c5f6c6567656e64223b693a313b7d733a31353a22746c5f6e6577735f61726368697665223b613a323a7b733a31363a2270726f7465637465645f6c6567656e64223b693a313b733a31353a22636f6d6d656e74735f6c6567656e64223b693a313b7d733a393a22746c5f6d656d626572223b613a333a7b733a31343a22686f6d656469725f6c6567656e64223b693a303b733a31373a226e6577736c65747465725f6c6567656e64223b693a303b733a31343a22616464726573735f6c6567656e64223b693a303b7d7d733a31323a22746c5f706167655f74726565223b613a363a7b693a313b693a313b693a323b693a303b693a333b693a303b693a343b693a303b693a353b693a313b693a363b693a303b7d733a32333a22746c5f61727469636c655f746c5f706167655f74726565223b613a323a7b693a313b693a313b693a353b693a313b7d733a32363a22746c5f61727469636c655f746c5f61727469636c655f74726565223b613a383a7b693a313b693a303b693a323b693a303b693a333b693a303b693a343b693a303b693a363b693a303b693a373b693a303b693a383b693a303b693a353b693a303b7d733a31323a22746c5f706167655f6e6f6465223b733a313a2231223b733a31353a226261636b656e645f6d6f64756c6573223b613a323a7b733a383a226265616368637570223b693a313b733a373a22636f6e74656e74223b693a313b7d733a363a2266696c746572223b613a333a7b733a32343a22746c5f62656163686375705f706c617965725f6c6576656c223b613a313a7b733a353a226c696d6974223b733a343a22302c3330223b7d733a31383a22746c5f62656163686375705f706c61796572223b613a303a7b7d733a32343a22746c5f62656163686375705f726567697374726174696f6e223b613a313a7b733a353a226c696d6974223b733a343a22302c3330223b7d7d733a373a22736f7274696e67223b613a323a7b733a31383a22746c5f62656163686375705f706c61796572223b733a343a226e616d65223b733a32343a22746c5f62656163686375705f726567697374726174696f6e223b733a31333a22746f75726e616d656e745f6964223b7d733a363a22736561726368223b613a323a7b733a31383a22746c5f62656163686375705f706c61796572223b613a323a7b733a353a2276616c7565223b733a303a22223b733a353a226669656c64223b733a373a2261646472657373223b7d733a32343a22746c5f62656163686375705f726567697374726174696f6e223b613a323a7b733a353a2276616c7565223b733a303a22223b733a353a226669656c64223b733a363a22706f696e7473223b7d7d733a31373a22494e56414c49445f544f4b454e5f55524c223b733a38373a22636f6e74616f2f6d61696e2e7068703f646f3d76656e75652672743d6665616239393634336136343230633065623333373361313631306365613538267265663d6338396336353034266163743d656469742669643d32223b733a383a2266696c6574726565223b613a313a7b733a383a226332646431643535223b693a313b7d733a31333a2266696c655069636b6572526566223b733a3131393a22636f6e74616f2f66696c652e7068703f646f3d76656e7565267461626c653d746c5f62656163686375705f76656e7565266669656c643d70696374757265266163743d73686f772669643d352676616c75653d2672743d3730366534663962323966316638346666663965663731616235653663396638223b733a32353a22747265655f746c5f636f6e74656e745f73696e676c65535243223b613a313a7b733a33323a226332646431643535623133663336333035636638613161363365386132326663223b693a313b7d733a33303a22747265655f746c5f62656163686375705f76656e75655f70696374757265223b613a323a7b733a33323a223837333664356131646633366264346430326435333163356130663561636635223b693a303b733a33323a226332646431643535623133663336333035636638613161363365386132326663223b693a313b7d7d, 1445967560, 1452098585, 1452872549, 3, 1448711057, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_user_group`
--

CREATE TABLE `tl_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `alexf` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_version`
--

CREATE TABLE `tl_version` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `editUrl` varchar(255) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `data` mediumblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tl_version`
--

INSERT INTO `tl_version` (`id`, `pid`, `tstamp`, `version`, `fromTable`, `userid`, `username`, `description`, `editUrl`, `active`, `data`) VALUES
(1, 1, 1445967560, 1, 'tl_user', 1, 'beach-admin', 'Jakob Pallhuber', 'contao/main.php?do=user&ref=5c17b838&amp;act=edit&amp;id=1&amp;rt=c5d659f717058033abb6d99e970d3364', '', 0x613a34363a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343435393637353630223b733a383a22757365726e616d65223b733a31313a2262656163682d61646d696e223b733a343a226e616d65223b733a31353a224a616b6f622050616c6c6875626572223b733a353a22656d61696c223b733a32383a226a6f6765406170706c69636174696f6e2d73747564696f732e636f6d223b733a383a226c616e6775616765223b733a323a226465223b733a31323a226261636b656e645468656d65223b733a383a22666c657869626c65223b733a383a2275706c6f61646572223b733a303a22223b733a383a2273686f7748656c70223b733a313a2231223b733a31303a227468756d626e61696c73223b733a313a2231223b733a363a22757365525445223b733a313a2231223b733a353a227573654345223b733a313a2231223b733a383a2270617373776f7264223b733a36303a22243279243130245a313678737137456b6a4563384c594547386157794f727a78742f30524f376d6f61516b6368426f4b31473755712e6d5868366932223b733a383a2270774368616e6765223b733a303a22223b733a353a2261646d696e223b733a313a2231223b733a363a2267726f757073223b4e3b733a373a22696e6865726974223b733a303a22223b733a373a226d6f64756c6573223b4e3b733a363a227468656d6573223b4e3b733a31303a22706167656d6f756e7473223b733a363a22613a303a7b7d223b733a353a22616c707479223b4e3b733a31303a2266696c656d6f756e7473223b733a363a22613a303a7b7d223b733a333a22666f70223b4e3b733a353a22666f726d73223b4e3b733a353a22666f726d70223b4e3b733a373a2264697361626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a373a2273657373696f6e223b733a313533343a22613a313a7b733a373a2272656665726572223b613a31353a7b733a383a223366343332313435223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a35313a22636f6e74616f2f6d61696e2e7068703f646f3d7265706f7369746f72795f636174616c6f6726766965773d636f6d706f736572223b7d733a383a223261363464626236223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a35313a22636f6e74616f2f6d61696e2e7068703f646f3d7265706f7369746f72795f636174616c6f6726766965773d636f6d706f736572223b7d733a383a223561643538373637223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a35313a22636f6e74616f2f6d61696e2e7068703f646f3d7265706f7369746f72795f636174616c6f6726766965773d636f6d706f736572223b7d733a383a226538643464626437223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a36313a22636f6e74616f2f6d61696e2e7068703f646f3d7265706f7369746f72795f6d616e6167657226696e7374616c6c3d636f6d706f7365722e313530303239223b7d733a383a223939636265653066223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a36313a22636f6e74616f2f6d61696e2e7068703f646f3d7265706f7369746f72795f6d616e6167657226696e7374616c6c3d636f6d706f7365722e313530303239223b7d733a383a226639333862363032223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a32373a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572223b7d733a383a223938346139653439223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a32373a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572223b7d733a383a226233323863626235223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a32373a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572223b7d693a39363632383231353b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a32373a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572223b7d733a383a226230626538373563223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a223963353632646639223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267265663d6230626538373563223b7d733a383a223634633530313739223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a223733636232313163223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267265663d3634633530313739223b7d733a383a223563313762383338223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a226237343634313162223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d636f6d706f736572267265663d3563313762383338223b7d7d7d223b733a393a22646174654164646564223b733a31303a2231343435393637353630223b733a393a226c6173744c6f67696e223b733a31303a2231343435393637373934223b733a31323a2263757272656e744c6f67696e223b733a31303a2231343435393638363731223b733a31303a226c6f67696e436f756e74223b733a313a2233223b733a363a226c6f636b6564223b733a313a2230223b733a393a2263616c656e64617273223b4e3b733a393a2263616c656e64617270223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a31333a2263616c656e6461726665656470223b4e3b733a343a2266617173223b4e3b733a343a2266617170223b4e3b733a343a226e657773223b4e3b733a343a226e657770223b4e3b733a393a226e6577736665656473223b4e3b733a393a226e6577736665656470223b4e3b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6577736c657474657270223b4e3b7d),
(2, 1, 1446137363, 1, 'tl_module', 1, 'beach-admin', 'Navigation', 'contao/main.php?do=themes&table=tl_module&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=b60a049f', '', 0x613a3133333a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313337333633223b733a343a226e616d65223b733a31303a224e617669676174696f6e223b733a383a22686561646c696e65223b733a34353a22613a323a7b733a343a22756e6974223b733a323a226831223b733a353a2276616c7565223b733a303a22223b7d223b733a343a2274797065223b733a31303a226e617669676174696f6e223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a32323a226e61765f626f6f7473747261705f64726f70646f776e223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31323a22636f6c756d6e7365745f6964223b733a313a2230223b733a31383a22626f6f7473747261705f6e6176436c617373223b733a303a22223b733a32323a22626f6f7473747261705f6973526573706f6e73697665223b733a313a2231223b733a31393a22626f6f7473747261705f616464486561646572223b733a303a22223b733a32333a22626f6f7473747261705f6e61766261724d6f64756c6573223b4e3b733a32343a22626f6f7473747261705f6e617662617254656d706c617465223b733a31303a226d6f645f6e6176626172223b733a32393a22626f6f7473747261705f6e61766261724272616e6454656d706c617465223b733a31303a226d6f645f6e6176626172223b733a31373a22626f6f7473747261705f627574746f6e73223b733a3139333a22613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d223b733a32343a22626f6f7473747261705f6164644d6f64616c466f6f746572223b733a313a2231223b733a32343a22626f6f7473747261705f6164644d6f64616c427574746f6e223b733a313a2231223b733a32363a22626f6f7473747261705f6d6f64616c436f6e74656e7454797065223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c53697a65223b733a303a22223b733a31363a22626f6f7473747261705f6d6f64756c65223b733a313a2230223b733a31373a22626f6f7473747261705f61727469636c65223b733a313a2230223b733a31343a22626f6f7473747261705f74657874223b4e3b733a32333a22626f6f7473747261705f6d6f64616c54656d706c617465223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c416a6178223b733a313a2231223b7d),
(3, 1, 1446137398, 2, 'tl_module', 1, 'beach-admin', 'Hauptnavigation - Navigation', 'contao/main.php?do=themes&table=tl_module&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=b60a049f', '1', 0x613a3133333a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313337333633223b733a343a226e616d65223b733a32383a2248617570746e617669676174696f6e202d204e617669676174696f6e223b733a383a22686561646c696e65223b733a34353a22613a323a7b733a343a22756e6974223b733a323a226831223b733a353a2276616c7565223b733a303a22223b7d223b733a343a2274797065223b733a31303a226e617669676174696f6e223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a32323a226e61765f626f6f7473747261705f64726f70646f776e223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31323a22636f6c756d6e7365745f6964223b733a313a2230223b733a31383a22626f6f7473747261705f6e6176436c617373223b733a303a22223b733a32323a22626f6f7473747261705f6973526573706f6e73697665223b733a313a2231223b733a31393a22626f6f7473747261705f616464486561646572223b733a303a22223b733a32333a22626f6f7473747261705f6e61766261724d6f64756c6573223b4e3b733a32343a22626f6f7473747261705f6e617662617254656d706c617465223b733a31303a226d6f645f6e6176626172223b733a32393a22626f6f7473747261705f6e61766261724272616e6454656d706c617465223b733a31303a226d6f645f6e6176626172223b733a31373a22626f6f7473747261705f627574746f6e73223b733a3139333a22613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d223b733a32343a22626f6f7473747261705f6164644d6f64616c466f6f746572223b733a313a2231223b733a32343a22626f6f7473747261705f6164644d6f64616c427574746f6e223b733a313a2231223b733a32363a22626f6f7473747261705f6d6f64616c436f6e74656e7454797065223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c53697a65223b733a303a22223b733a31363a22626f6f7473747261705f6d6f64756c65223b733a313a2230223b733a31373a22626f6f7473747261705f61727469636c65223b733a313a2230223b733a31343a22626f6f7473747261705f74657874223b4e3b733a32333a22626f6f7473747261705f6d6f64616c54656d706c617465223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c416a6178223b733a313a2231223b7d),
(4, 2, 1446137428, 1, 'tl_module', 1, 'beach-admin', 'Hauptnavigation - Navbar', 'contao/main.php?do=themes&mode=2&pid=1&rt=cee90ad915351212c782c0b0c566870d&ref=a5155f99&table=tl_module&act=edit&id=2', '', 0x613a3133333a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313337343238223b733a343a226e616d65223b733a32343a2248617570746e617669676174696f6e202d204e6176626172223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a31363a22626f6f7473747261705f6e6176626172223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31323a22636f6c756d6e7365745f6964223b733a313a2230223b733a31383a22626f6f7473747261705f6e6176436c617373223b733a303a22223b733a32323a22626f6f7473747261705f6973526573706f6e73697665223b733a313a2231223b733a31393a22626f6f7473747261705f616464486561646572223b733a303a22223b733a32333a22626f6f7473747261705f6e61766261724d6f64756c6573223b4e3b733a32343a22626f6f7473747261705f6e617662617254656d706c617465223b733a31303a226d6f645f6e6176626172223b733a32393a22626f6f7473747261705f6e61766261724272616e6454656d706c617465223b733a31303a226d6f645f6e6176626172223b733a31373a22626f6f7473747261705f627574746f6e73223b733a3139333a22613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d223b733a32343a22626f6f7473747261705f6164644d6f64616c466f6f746572223b733a313a2231223b733a32343a22626f6f7473747261705f6164644d6f64616c427574746f6e223b733a313a2231223b733a32363a22626f6f7473747261705f6d6f64616c436f6e74656e7454797065223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c53697a65223b733a303a22223b733a31363a22626f6f7473747261705f6d6f64756c65223b733a313a2230223b733a31373a22626f6f7473747261705f61727469636c65223b733a313a2230223b733a31343a22626f6f7473747261705f74657874223b4e3b733a32333a22626f6f7473747261705f6d6f64616c54656d706c617465223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c416a6178223b733a313a2231223b7d),
(5, 2, 1446137482, 2, 'tl_module', 1, 'beach-admin', 'Hauptnavigation - Navbar', 'contao/main.php?do=themes&mode=2&pid=1&rt=cee90ad915351212c782c0b0c566870d&ref=a5155f99&table=tl_module&act=edit&id=2', '', 0x613a3133333a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313337343238223b733a343a226e616d65223b733a32343a2248617570746e617669676174696f6e202d204e6176626172223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a31363a22626f6f7473747261705f6e6176626172223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31323a22636f6c756d6e7365745f6964223b733a313a2230223b733a31383a22626f6f7473747261705f6e6176436c617373223b733a303a22223b733a32323a22626f6f7473747261705f6973526573706f6e73697665223b733a313a2231223b733a31393a22626f6f7473747261705f616464486561646572223b733a313a2231223b733a32333a22626f6f7473747261705f6e61766261724d6f64756c6573223b733a3130383a22613a313a7b693a303b613a343a7b733a363a226d6f64756c65223b733a313a2231223b733a383a22666c6f6174696e67223b733a353a227269676874223b733a383a22637373436c617373223b733a303a22223b733a383a22696e616374697665223b733a303a22223b7d7d223b733a32343a22626f6f7473747261705f6e617662617254656d706c617465223b733a31303a226d6f645f6e6176626172223b733a32393a22626f6f7473747261705f6e61766261724272616e6454656d706c617465223b733a31323a226e61766261725f6272616e64223b733a31373a22626f6f7473747261705f627574746f6e73223b733a3139333a22613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d223b733a32343a22626f6f7473747261705f6164644d6f64616c466f6f746572223b733a313a2231223b733a32343a22626f6f7473747261705f6164644d6f64616c427574746f6e223b733a313a2231223b733a32363a22626f6f7473747261705f6d6f64616c436f6e74656e7454797065223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c53697a65223b733a303a22223b733a31363a22626f6f7473747261705f6d6f64756c65223b733a313a2230223b733a31373a22626f6f7473747261705f61727469636c65223b733a313a2230223b733a31343a22626f6f7473747261705f74657874223b4e3b733a32333a22626f6f7473747261705f6d6f64616c54656d706c617465223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c416a6178223b733a313a2231223b7d),
(6, 1, 1446137569, 1, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&mode=2&pid=1&rt=cee90ad915351212c782c0b0c566870d&ref=bdea0685&table=tl_layout&act=edit&id=1', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313337353639223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a343a2232636c6c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a37363a22613a313a7b693a303b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31323a2266655f626f6f747374726170223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a303a22223b733a393a226164644a5175657279223b733a303a22223b733a373a226a536f75726365223b733a303a22223b733a363a226a7175657279223b4e3b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a303a22223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a303a22223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a393a22636f6e7461696e6572223b7d),
(7, 1, 1446138218, 2, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&mode=2&pid=1&rt=cee90ad915351212c782c0b0c566870d&ref=bdea0685&table=tl_layout&act=edit&id=1', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313338323138223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a37363a22613a313a7b693a303b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31323a2266655f626f6f747374726170223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a303a22223b733a393a226164644a5175657279223b733a303a22223b733a373a226a536f75726365223b733a303a22223b733a363a226a7175657279223b4e3b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3620636f6c2d6d642d707573682d36223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3420636f6c2d6d642d70756c6c2d36223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a303a22223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a393a22636f6e7461696e6572223b7d),
(8, 1, 1446138363, 3, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&mode=2&pid=1&rt=cee90ad915351212c782c0b0c566870d&ref=bdea0685&table=tl_layout&act=edit&id=1', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313338333633223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a303a22223b733a393a226164644a5175657279223b733a303a22223b733a373a226a536f75726365223b733a303a22223b733a363a226a7175657279223b4e3b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3620636f6c2d6d642d707573682d36223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3420636f6c2d6d642d70756c6c2d36223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a393a22636f6e7461696e6572223b7d);
INSERT INTO `tl_version` (`id`, `pid`, `tstamp`, `version`, `fromTable`, `userid`, `username`, `description`, `editUrl`, `active`, `data`) VALUES
(9, 1, 1446138460, 1, 'tl_page', 1, 'beach-admin', 'Beachcup', 'contao/main.php?do=page&ref=b9c3cafa&id=1&act=edit&rt=cee90ad915351212c782c0b0c566870d', '', 0x613a34383a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2230223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231343436313338343630223b733a353a227469746c65223b733a383a224265616368637570223b733a353a22616c696173223b733a383a226265616368637570223b733a343a2274797065223b733a343a22726f6f74223b733a393a22706167655469746c65223b733a383a224265616368637570223b733a383a226c616e6775616765223b733a323a226465223b733a363a22726f626f7473223b733a303a22223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a313a2231223b733a363a226c61796f7574223b733a313a2231223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a303a22223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d),
(10, 1, 1446138465, 2, 'tl_page', 1, 'beach-admin', 'Beachcup', 'contao/main.php?do=page&ref=b9c3cafa&id=1&act=edit&rt=cee90ad915351212c782c0b0c566870d', '', 0x613a34383a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2230223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231343436313338343635223b733a353a227469746c65223b733a383a224265616368637570223b733a353a22616c696173223b733a383a226265616368637570223b733a343a2274797065223b733a343a22726f6f74223b733a393a22706167655469746c65223b733a383a224265616368637570223b733a383a226c616e6775616765223b733a323a226465223b733a363a22726f626f7473223b733a303a22223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a313a2231223b733a363a226c61796f7574223b733a313a2231223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a303a22223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d),
(11, 1, 1446138595, 3, 'tl_page', 1, 'beach-admin', 'Beachcup', 'contao/main.php?do=page&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=05b3f7b9', '1', 0x613a34383a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2230223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231343436313338343635223b733a353a227469746c65223b733a383a224265616368637570223b733a353a22616c696173223b733a383a226265616368637570223b733a343a2274797065223b733a343a22726f6f74223b733a393a22706167655469746c65223b733a383a224265616368637570223b733a383a226c616e6775616765223b733a323a226465223b733a363a22726f626f7473223b733a303a22223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a313a2231223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a313a2231223b733a363a226c61796f7574223b733a313a2231223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a303a22223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d),
(12, 1, 1446139756, 4, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=5636b0b0', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313339373536223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3620636f6c2d6d642d707573682d36223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3420636f6c2d6d642d70756c6c2d36223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a393a22636f6e7461696e6572223b7d),
(13, 2, 1446139888, 3, 'tl_module', 1, 'beach-admin', 'Hauptnavigation - Navbar', 'contao/main.php?do=themes&table=tl_module&act=edit&id=2&rt=cee90ad915351212c782c0b0c566870d&ref=67357674', '', 0x613a3133333a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313337343832223b733a343a226e616d65223b733a32343a2248617570746e617669676174696f6e202d204e6176626172223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a31363a22626f6f7473747261705f6e6176626172223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31323a22636f6c756d6e7365745f6964223b733a313a2230223b733a31383a22626f6f7473747261705f6e6176436c617373223b733a303a22223b733a32323a22626f6f7473747261705f6973526573706f6e73697665223b733a313a2231223b733a31393a22626f6f7473747261705f616464486561646572223b733a313a2231223b733a32333a22626f6f7473747261705f6e61766261724d6f64756c6573223b733a3130383a22613a313a7b693a303b613a343a7b733a363a226d6f64756c65223b733a313a2231223b733a383a22666c6f6174696e67223b733a353a227269676874223b733a383a22637373436c617373223b733a303a22223b733a383a22696e616374697665223b733a303a22223b7d7d223b733a32343a22626f6f7473747261705f6e617662617254656d706c617465223b733a32303a226d6f645f6e61766261725f636f6e7461696e6572223b733a32393a22626f6f7473747261705f6e61766261724272616e6454656d706c617465223b733a31323a226e61766261725f6272616e64223b733a31373a22626f6f7473747261705f627574746f6e73223b733a3139333a22613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d223b733a32343a22626f6f7473747261705f6164644d6f64616c466f6f746572223b733a313a2231223b733a32343a22626f6f7473747261705f6164644d6f64616c427574746f6e223b733a313a2231223b733a32363a22626f6f7473747261705f6d6f64616c436f6e74656e7454797065223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c53697a65223b733a303a22223b733a31363a22626f6f7473747261705f6d6f64756c65223b733a313a2230223b733a31373a22626f6f7473747261705f61727469636c65223b733a313a2230223b733a31343a22626f6f7473747261705f74657874223b4e3b733a32333a22626f6f7473747261705f6d6f64616c54656d706c617465223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c416a6178223b733a313a2231223b7d),
(14, 2, 1446139900, 4, 'tl_module', 1, 'beach-admin', 'Hauptnavigation - Navbar', 'contao/main.php?do=themes&table=tl_module&act=edit&id=2&rt=cee90ad915351212c782c0b0c566870d&ref=23fcec93', '1', 0x613a3133333a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313339383838223b733a343a226e616d65223b733a32343a2248617570746e617669676174696f6e202d204e6176626172223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a31363a22626f6f7473747261705f6e6176626172223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31323a22636f6c756d6e7365745f6964223b733a313a2230223b733a31383a22626f6f7473747261705f6e6176436c617373223b733a303a22223b733a32323a22626f6f7473747261705f6973526573706f6e73697665223b733a313a2231223b733a31393a22626f6f7473747261705f616464486561646572223b733a313a2231223b733a32333a22626f6f7473747261705f6e61766261724d6f64756c6573223b733a3130383a22613a313a7b693a303b613a343a7b733a363a226d6f64756c65223b733a313a2231223b733a383a22666c6f6174696e67223b733a353a227269676874223b733a383a22637373436c617373223b733a303a22223b733a383a22696e616374697665223b733a303a22223b7d7d223b733a32343a22626f6f7473747261705f6e617662617254656d706c617465223b733a31303a226d6f645f6e6176626172223b733a32393a22626f6f7473747261705f6e61766261724272616e6454656d706c617465223b733a31323a226e61766261725f6272616e64223b733a31373a22626f6f7473747261705f627574746f6e73223b733a3139333a22613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d223b733a32343a22626f6f7473747261705f6164644d6f64616c466f6f746572223b733a313a2231223b733a32343a22626f6f7473747261705f6164644d6f64616c427574746f6e223b733a313a2231223b733a32363a22626f6f7473747261705f6d6f64616c436f6e74656e7454797065223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c53697a65223b733a303a22223b733a31363a22626f6f7473747261705f6d6f64756c65223b733a313a2230223b733a31373a22626f6f7473747261705f61727469636c65223b733a313a2230223b733a31343a22626f6f7473747261705f74657874223b4e3b733a32333a22626f6f7473747261705f6d6f64616c54656d706c617465223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c416a6178223b733a313a2231223b7d),
(15, 7, 1446140075, 1, 'tl_article', 1, 'beach-admin', 'Informationen', 'contao/main.php?do=article&ref=b819fd32&id=7&act=edit&rt=cee90ad915351212c782c0b0c566870d', '', 0x613a32323a7b733a323a226964223b733a313a2237223b733a333a22706964223b733a313a2232223b733a373a22736f7274696e67223b733a333a22323536223b733a363a22747374616d70223b733a31303a2231343436313430303735223b733a353a227469746c65223b733a31333a22496e666f726d6174696f6e656e223b733a353a22616c696173223b733a31333a22696e666f726d6174696f6e656e223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a343a226c656674223b733a383a226b6579776f726473223b733a303a22223b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a393a227075626c6973686564223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d),
(16, 7, 1446140101, 2, 'tl_article', 1, 'beach-admin', 'Informationen', 'contao/main.php?do=article&ref=b819fd32&id=7&act=edit&rt=cee90ad915351212c782c0b0c566870d', '1', 0x613a32323a7b733a323a226964223b733a313a2237223b733a333a22706964223b733a313a2232223b733a373a22736f7274696e67223b733a333a22323536223b733a363a22747374616d70223b733a31303a2231343436313430313031223b733a353a227469746c65223b733a31333a22496e666f726d6174696f6e656e223b733a353a22616c696173223b733a31333a22696e666f726d6174696f6e656e223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a343a226c656674223b733a383a226b6579776f726473223b733a303a22223b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d),
(17, 8, 1446140099, 1, 'tl_article', 1, 'beach-admin', 'Sponsoren', 'contao/main.php?do=article&ref=b819fd32&id=8&act=edit&rt=cee90ad915351212c782c0b0c566870d', '', 0x613a32323a7b733a323a226964223b733a313a2238223b733a333a22706964223b733a313a2232223b733a373a22736f7274696e67223b733a333a22333834223b733a363a22747374616d70223b733a31303a2231343436313430303939223b733a353a227469746c65223b733a393a2253706f6e736f72656e223b733a353a22616c696173223b733a393a2273706f6e736f72656e223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a353a227269676874223b733a383a226b6579776f726473223b733a303a22223b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a393a227075626c6973686564223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d),
(18, 8, 1446140101, 2, 'tl_article', 1, 'beach-admin', 'Sponsoren', 'contao/main.php?do=article&ref=b819fd32&id=8&act=edit&rt=cee90ad915351212c782c0b0c566870d', '1', 0x613a32323a7b733a323a226964223b733a313a2238223b733a333a22706964223b733a313a2232223b733a373a22736f7274696e67223b733a333a22333834223b733a363a22747374616d70223b733a31303a2231343436313430313031223b733a353a227469746c65223b733a393a2253706f6e736f72656e223b733a353a22616c696173223b733a393a2273706f6e736f72656e223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a353a227269676874223b733a383a226b6579776f726473223b733a303a22223b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d),
(19, 1, 1446140536, 5, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=937a2832', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313430353336223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3820636f6c2d6d642d707573682d32223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a393a22636f6e7461696e6572223b7d),
(20, 1, 1446140604, 6, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=697a5872', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313430363034223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3820636f6c2d6d642d707573682d32223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a373a2277726170706572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a393a22636f6e7461696e6572223b7d),
(21, 1, 1446140610, 7, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=697a5872', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313430363130223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3820636f6c2d6d642d707573682d32223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a373a2277726170706572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a393a22636f6e7461696e6572223b7d);
INSERT INTO `tl_version` (`id`, `pid`, `tstamp`, `version`, `fromTable`, `userid`, `username`, `description`, `editUrl`, `active`, `data`) VALUES
(22, 1, 1446140631, 8, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=eeef5254', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313430363331223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3820636f6c2d6d642d707573682d32223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a393a22636f6e7461696e6572223b7d),
(23, 1, 1446140641, 9, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=eeef5254', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313430363431223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3820636f6c2d6d642d707573682d32223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a31353a22636f6e7461696e65722d666c756964223b7d),
(24, 1, 1446140699, 10, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=85d89d85', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313430363939223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3820636f6c2d6d642d707573682d34223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a31353a22636f6e7461696e65722d666c756964223b7d),
(25, 1, 1446141268, 11, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=6462bf26', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313431323638223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3820636f6c2d6d642d707573682d34223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a31353a22636f6e7461696e65722d666c756964223b7d),
(26, 1, 1446142870, 12, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=4900dc9d', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313432383730223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3820636f6c2d6d642d707573682d32223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a31353a22636f6e7461696e65722d666c756964223b7d),
(27, 1, 1446142966, 13, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=a16e68bc', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313432393636223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a33323a22636f6c2d6d642d3820636f6c2d736d2d313220636f6c2d6d642d707573682d32223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a33323a22636f6c2d6d642d3220636f6c2d736d2d313220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a31383a22636f6c2d6d642d3220636f6c2d736d2d3132223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a31353a22636f6e7461696e65722d666c756964223b7d),
(28, 1, 1446143024, 14, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=a16e68bc', '', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313433303234223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6c672d3820636f6c2d6c672d707573682d32223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6c672d3220636f6c2d6c672d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6c672d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a31353a22636f6e7461696e65722d666c756964223b7d),
(29, 1, 1446143082, 15, 'tl_layout', 1, 'beach-admin', 'Beachcup Theme Standard', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cee90ad915351212c782c0b0c566870d&ref=a16e68bc', '1', 0x613a34393a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313433303832223b733a343a226e616d65223b733a32333a224265616368637570205468656d65205374616e64617264223b733a343a22726f7773223b733a343a2232727768223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a303a22223b733a343a22636f6c73223b733a333a2233636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a303a22223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b733a31373a22613a313a7b693a303b733a303a22223b7d223b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a393a226e6577736665656473223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a373a226d6f64756c6573223b733a3238393a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31353a2266655f626f6f7473747261705f3334223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a303a22223b733a31313a227069637475726566696c6c223b733a303a22223b733a383a2276696577706f7274223b733a33373a2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a3137303a223c6c696e6b2072656c3d227374796c6573686565742220687265663d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6373732f626f6f7473747261702e6d696e2e637373223e0a3c736372697074207372633d22636f6d706f7365722f76656e646f722f636f6d706f6e656e74732f626f6f7473747261702f6a732f626f6f7473747261702e6d696e2e6a73223e3c2f7363726970743e223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b733a31373a22666c657869626c655f73656374696f6e73223b733a363a22613a303a7b7d223b733a31303a226c61796f757454797065223b733a393a22626f6f747374726170223b733a32313a22626f6f7473747261705f686561646572436c617373223b733a303a22223b733a32313a22626f6f7473747261705f666f6f746572436c617373223b733a303a22223b733a31393a22626f6f7473747261705f6d61696e436c617373223b733a32323a22636f6c2d6d642d3820636f6c2d6d642d707573682d32223b733a31393a22626f6f7473747261705f6c656674436c617373223b733a32323a22636f6c2d6d642d3220636f6c2d6d642d70756c6c2d38223b733a32303a22626f6f7473747261705f7269676874436c617373223b733a383a22636f6c2d6d642d32223b733a32363a22626f6f7473747261705f636f6e7461696e6572456c656d656e74223b733a393a22636f6e7461696e6572223b733a32343a22626f6f7473747261705f636f6e7461696e6572436c617373223b733a31353a22636f6e7461696e65722d666c756964223b7d),
(30, 2, 1446140286, 1, 'tl_content', 1, 'beach-admin', '', 'contao/main.php?do=article&table=tl_content&act=edit&id=2&rt=cee90ad915351212c782c0b0c566870d&ref=ea5a4a3b', '', 0x613a39373a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2237223b733a363a22707461626c65223b733a31303a22746c5f61727469636c65223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231343436313430323836223b733a343a2274797065223b733a343a2274657874223b733a383a22686561646c696e65223b733a35393a22613a323a7b733a343a22756e6974223b733a323a226831223b733a353a2276616c7565223b733a31333a22496e666f726d6174696f6e656e223b7d223b733a343a2274657874223b733a3539383a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e3c2f703e223b733a383a22616464496d616765223b733a303a22223b733a393a2273696e676c65535243223b4e3b733a333a22616c74223b733a303a22223b733a353a227469746c65223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a22696d6167656d617267696e223b733a303a22223b733a383a22696d61676555726c223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b733a383a22666c6f6174696e67223b733a353a2261626f7665223b733a343a2268746d6c223b4e3b733a383a226c69737474797065223b733a303a22223b733a393a226c6973746974656d73223b4e3b733a31303a227461626c656974656d73223b4e3b733a373a2273756d6d617279223b733a303a22223b733a353a227468656164223b733a303a22223b733a353a2274666f6f74223b733a303a22223b733a353a22746c656674223b733a303a22223b733a383a22736f727461626c65223b733a303a22223b733a393a22736f7274496e646578223b733a313a2230223b733a393a22736f72744f72646572223b733a393a22617363656e64696e67223b733a31313a226d6f6f486561646c696e65223b733a303a22223b733a383a226d6f6f5374796c65223b733a303a22223b733a31303a226d6f6f436c6173736573223b733a303a22223b733a393a22686967686c69676874223b733a303a22223b733a373a227368436c617373223b733a303a22223b733a343a22636f6465223b4e3b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a393a227469746c6554657874223b733a303a22223b733a393a226c696e6b5469746c65223b733a303a22223b733a353a22656d626564223b733a303a22223b733a333a2272656c223b733a303a22223b733a383a22757365496d616765223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a31303a22757365486f6d65446972223b733a303a22223b733a363a22706572526f77223b733a313a2234223b733a373a2270657250616765223b733a313a2230223b733a31333a226e756d6265724f664974656d73223b733a313a2230223b733a363a22736f72744279223b733a303a22223b733a31303a226d65746149676e6f7265223b733a303a22223b733a31303a2267616c6c65727954706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a22706c61796572535243223b4e3b733a373a22796f7574756265223b733a303a22223b733a393a22706f73746572535243223b4e3b733a31303a22706c6179657253697a65223b733a303a22223b733a383a226175746f706c6179223b733a303a22223b733a31313a22736c6964657244656c6179223b733a313a2230223b733a31313a22736c696465725370656564223b733a333a22333030223b733a31363a22736c696465725374617274536c696465223b733a313a2230223b733a31363a22736c69646572436f6e74696e756f7573223b733a303a22223b733a383a22637465416c696173223b733a313a2230223b733a31323a2261727469636c65416c696173223b733a313a2230223b733a373a2261727469636c65223b733a313a2230223b733a343a22666f726d223b733a313a2230223b733a363a226d6f64756c65223b733a313a2230223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a393a22696e76697369626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31313a22636f6d5f70657250616765223b733a313a2230223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31383a22626f6f7473747261705f706172656e744964223b4e3b733a31343a22626f6f7473747261705f69636f6e223b733a303a22223b733a32343a22626f6f7473747261705f6461746141747472696275746573223b4e3b733a31343a22626f6f7473747261705f67726964223b733a313a2230223b733a31373a22626f6f7473747261705f67726964526f77223b733a313a2230223b733a32333a22626f6f7473747261705f697347726964456c656d656e74223b733a303a22223b733a32323a22626f6f7473747261705f697347726964436f6c756d6e223b733a303a22223b733a32303a22626f6f7473747261705f636f6c6c61707365496e223b733a313a2230223b733a31343a22626f6f7473747261705f74616273223b4e3b733a31343a22626f6f7473747261705f66616465223b733a303a22223b733a32313a22626f6f7473747261705f627574746f6e5374796c65223b733a303a22223b733a31373a22626f6f7473747261705f627574746f6e73223b4e3b733a32343a22626f6f7473747261705f73686f77496e64696361746f7273223b733a303a22223b733a32323a22626f6f7473747261705f73686f77436f6e74726f6c73223b733a303a22223b733a31393a22626f6f7473747261705f6175746f7374617274223b733a303a22223b733a31383a22626f6f7473747261705f696e74657276616c223b733a313a2230223b7d),
(31, 2, 1446143098, 2, 'tl_content', 1, 'beach-admin', '', 'contao/main.php?do=article&table=tl_content&act=edit&id=2&rt=cee90ad915351212c782c0b0c566870d&ref=ea5a4a3b', '1', 0x613a39373a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2237223b733a363a22707461626c65223b733a31303a22746c5f61727469636c65223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231343436313430323836223b733a343a2274797065223b733a343a2274657874223b733a383a22686561646c696e65223b733a35303a22613a323a7b733a343a22756e6974223b733a323a226831223b733a353a2276616c7565223b733a353a22496e666f73223b7d223b733a343a2274657874223b733a3539383a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e3c2f703e223b733a383a22616464496d616765223b733a303a22223b733a393a2273696e676c65535243223b4e3b733a333a22616c74223b733a303a22223b733a353a227469746c65223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a22696d6167656d617267696e223b733a303a22223b733a383a22696d61676555726c223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b733a383a22666c6f6174696e67223b733a353a2261626f7665223b733a343a2268746d6c223b4e3b733a383a226c69737474797065223b733a303a22223b733a393a226c6973746974656d73223b4e3b733a31303a227461626c656974656d73223b4e3b733a373a2273756d6d617279223b733a303a22223b733a353a227468656164223b733a303a22223b733a353a2274666f6f74223b733a303a22223b733a353a22746c656674223b733a303a22223b733a383a22736f727461626c65223b733a303a22223b733a393a22736f7274496e646578223b733a313a2230223b733a393a22736f72744f72646572223b733a393a22617363656e64696e67223b733a31313a226d6f6f486561646c696e65223b733a303a22223b733a383a226d6f6f5374796c65223b733a303a22223b733a31303a226d6f6f436c6173736573223b733a303a22223b733a393a22686967686c69676874223b733a303a22223b733a373a227368436c617373223b733a303a22223b733a343a22636f6465223b4e3b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a393a227469746c6554657874223b733a303a22223b733a393a226c696e6b5469746c65223b733a303a22223b733a353a22656d626564223b733a303a22223b733a333a2272656c223b733a303a22223b733a383a22757365496d616765223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a31303a22757365486f6d65446972223b733a303a22223b733a363a22706572526f77223b733a313a2234223b733a373a2270657250616765223b733a313a2230223b733a31333a226e756d6265724f664974656d73223b733a313a2230223b733a363a22736f72744279223b733a303a22223b733a31303a226d65746149676e6f7265223b733a303a22223b733a31303a2267616c6c65727954706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a22706c61796572535243223b4e3b733a373a22796f7574756265223b733a303a22223b733a393a22706f73746572535243223b4e3b733a31303a22706c6179657253697a65223b733a303a22223b733a383a226175746f706c6179223b733a303a22223b733a31313a22736c6964657244656c6179223b733a313a2230223b733a31313a22736c696465725370656564223b733a333a22333030223b733a31363a22736c696465725374617274536c696465223b733a313a2230223b733a31363a22736c69646572436f6e74696e756f7573223b733a303a22223b733a383a22637465416c696173223b733a313a2230223b733a31323a2261727469636c65416c696173223b733a313a2230223b733a373a2261727469636c65223b733a313a2230223b733a343a22666f726d223b733a313a2230223b733a363a226d6f64756c65223b733a313a2230223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a393a22696e76697369626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31313a22636f6d5f70657250616765223b733a313a2230223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31383a22626f6f7473747261705f706172656e744964223b4e3b733a31343a22626f6f7473747261705f69636f6e223b733a303a22223b733a32343a22626f6f7473747261705f6461746141747472696275746573223b4e3b733a31343a22626f6f7473747261705f67726964223b733a313a2230223b733a31373a22626f6f7473747261705f67726964526f77223b733a313a2230223b733a32333a22626f6f7473747261705f697347726964456c656d656e74223b733a303a22223b733a32323a22626f6f7473747261705f697347726964436f6c756d6e223b733a303a22223b733a32303a22626f6f7473747261705f636f6c6c61707365496e223b733a313a2230223b733a31343a22626f6f7473747261705f74616273223b4e3b733a31343a22626f6f7473747261705f66616465223b733a303a22223b733a32313a22626f6f7473747261705f627574746f6e5374796c65223b733a303a22223b733a31373a22626f6f7473747261705f627574746f6e73223b4e3b733a32343a22626f6f7473747261705f73686f77496e64696361746f7273223b733a303a22223b733a32323a22626f6f7473747261705f73686f77436f6e74726f6c73223b733a303a22223b733a31393a22626f6f7473747261705f6175746f7374617274223b733a303a22223b733a31383a22626f6f7473747261705f696e74657276616c223b733a313a2230223b7d),
(32, 2, 1446138545, 1, 'tl_page', 1, 'beach-admin', 'Home', 'contao/main.php?do=page&act=edit&id=2&rt=9142e16d3359dee837c84d7f3e5787fa&ref=d70ccc42', '1', 0x613a34383a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231343436313338353435223b733a353a227469746c65223b733a343a22486f6d65223b733a353a22616c696173223b733a343a22686f6d65223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a303a22223b733a363a226c61796f7574223b733a313a2230223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d),
(33, 1, 1446137306, 1, 'tl_theme', 1, 'beach-admin', 'Beachcup Theme', 'contao/main.php?do=themes&act=edit&id=1&rt=9142e16d3359dee837c84d7f3e5787fa&ref=51afc85e', '1', 0x613a383a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436313337333036223b733a343a226e616d65223b733a31343a224265616368637570205468656d65223b733a363a22617574686f72223b733a31353a224a616b6f622050616c6c6875626572223b733a373a22666f6c64657273223b4e3b733a31303a2273637265656e73686f74223b4e3b733a393a2274656d706c61746573223b733a303a22223b733a343a2276617273223b733a363a22613a303a7b7d223b7d);
INSERT INTO `tl_version` (`id`, `pid`, `tstamp`, `version`, `fromTable`, `userid`, `username`, `description`, `editUrl`, `active`, `data`) VALUES
(34, 4, 1446229733, 1, 'tl_module', 1, 'beach-admin', 'Registration', 'contao/main.php?do=themes&mode=2&pid=1&rt=9142e16d3359dee837c84d7f3e5787fa&ref=68e78d5f&table=tl_module&act=edit&id=4', '', 0x613a3133333a7b733a323a226964223b733a313a2234223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436323239373333223b733a343a226e616d65223b733a31323a22526567697374726174696f6e223b733a383a22686561646c696e65223b733a34353a22613a323a7b733a343a22756e6974223b733a323a226831223b733a353a2276616c7565223b733a303a22223b7d223b733a343a2274797065223b733a31323a22726567697374726174696f6e223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31323a22636f6c756d6e7365745f6964223b733a313a2230223b733a31383a22626f6f7473747261705f6e6176436c617373223b733a303a22223b733a32323a22626f6f7473747261705f6973526573706f6e73697665223b733a313a2231223b733a31393a22626f6f7473747261705f616464486561646572223b733a303a22223b733a32333a22626f6f7473747261705f6e61766261724d6f64756c6573223b4e3b733a32343a22626f6f7473747261705f6e617662617254656d706c617465223b733a31303a226d6f645f6e6176626172223b733a32393a22626f6f7473747261705f6e61766261724272616e6454656d706c617465223b733a31303a226d6f645f6e6176626172223b733a31373a22626f6f7473747261705f627574746f6e73223b733a3139333a22613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d223b733a32343a22626f6f7473747261705f6164644d6f64616c466f6f746572223b733a313a2231223b733a32343a22626f6f7473747261705f6164644d6f64616c427574746f6e223b733a313a2231223b733a32363a22626f6f7473747261705f6d6f64616c436f6e74656e7454797065223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c53697a65223b733a303a22223b733a31363a22626f6f7473747261705f6d6f64756c65223b733a313a2230223b733a31373a22626f6f7473747261705f61727469636c65223b733a313a2230223b733a31343a22626f6f7473747261705f74657874223b4e3b733a32333a22626f6f7473747261705f6d6f64616c54656d706c617465223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c416a6178223b733a313a2231223b7d),
(35, 4, 1446229846, 2, 'tl_module', 1, 'beach-admin', 'Registration', 'contao/main.php?do=themes&mode=2&pid=1&rt=9142e16d3359dee837c84d7f3e5787fa&ref=68e78d5f&table=tl_module&act=edit&id=4', '1', 0x613a3133333a7b733a323a226964223b733a313a2234223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343436323239373333223b733a343a226e616d65223b733a31323a22526567697374726174696f6e223b733a383a22686561646c696e65223b733a34353a22613a323a7b733a343a22756e6974223b733a323a226831223b733a353a2276616c7565223b733a303a22223b7d223b733a343a2274797065223b733a31323a22726567697374726174696f6e223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a31343a226d656d6265725f64656661756c74223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31323a22636f6c756d6e7365745f6964223b733a313a2230223b733a31383a22626f6f7473747261705f6e6176436c617373223b733a303a22223b733a32323a22626f6f7473747261705f6973526573706f6e73697665223b733a313a2231223b733a31393a22626f6f7473747261705f616464486561646572223b733a303a22223b733a32333a22626f6f7473747261705f6e61766261724d6f64756c6573223b4e3b733a32343a22626f6f7473747261705f6e617662617254656d706c617465223b733a31303a226d6f645f6e6176626172223b733a32393a22626f6f7473747261705f6e61766261724272616e6454656d706c617465223b733a31303a226d6f645f6e6176626172223b733a31373a22626f6f7473747261705f627574746f6e73223b733a3139333a22613a323a7b693a303b613a333a7b733a343a2274797065223b733a363a22627574746f6e223b733a353a226c6162656c223b733a31303a225363686c6965c39f656e223b733a31303a2261747472696275746573223b613a313a7b693a303b613a323a7b733a343a226e616d65223b733a31323a22646174612d6469736d697373223b733a353a2276616c7565223b733a353a226d6f64616c223b7d7d7d693a313b613a313a7b733a343a2274797065223b733a363a22627574746f6e223b7d7d223b733a32343a22626f6f7473747261705f6164644d6f64616c466f6f746572223b733a313a2231223b733a32343a22626f6f7473747261705f6164644d6f64616c427574746f6e223b733a313a2231223b733a32363a22626f6f7473747261705f6d6f64616c436f6e74656e7454797065223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c53697a65223b733a303a22223b733a31363a22626f6f7473747261705f6d6f64756c65223b733a313a2230223b733a31373a22626f6f7473747261705f61727469636c65223b733a313a2230223b733a31343a22626f6f7473747261705f74657874223b4e3b733a32333a22626f6f7473747261705f6d6f64616c54656d706c617465223b733a303a22223b733a31393a22626f6f7473747261705f6d6f64616c416a6178223b733a313a2231223b7d),
(36, 1, 1447169790, 2, 'tl_user', 1, 'beach-admin', 'Jakob Pallhuber', 'contao/main.php?do=user&act=edit&id=1&rt=d06aaf3f2017b7d95d9d233eb52bee76&ref=52a03498', '1', 0x613a34363a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343435393637353630223b733a383a22757365726e616d65223b733a31313a2262656163682d61646d696e223b733a343a226e616d65223b733a31353a224a616b6f622050616c6c6875626572223b733a353a22656d61696c223b733a32383a226a6f6765406170706c69636174696f6e2d73747564696f732e636f6d223b733a383a226c616e6775616765223b733a323a226465223b733a31323a226261636b656e645468656d65223b733a383a22666c657869626c65223b733a383a2275706c6f61646572223b733a383a2244726f705a6f6e65223b733a383a2273686f7748656c70223b733a313a2231223b733a31303a227468756d626e61696c73223b733a313a2231223b733a363a22757365525445223b733a313a2231223b733a353a227573654345223b733a313a2231223b733a383a2270617373776f7264223b733a36303a2224327924313024524737382e6c474d3172542f46425642434655616c2e30366846412f58386e79634a736a502f6f542f716647764772674b464c7457223b733a383a2270774368616e6765223b733a303a22223b733a353a2261646d696e223b733a313a2231223b733a363a2267726f757073223b4e3b733a373a22696e6865726974223b733a303a22223b733a373a226d6f64756c6573223b4e3b733a363a227468656d6573223b4e3b733a31303a22706167656d6f756e7473223b733a363a22613a303a7b7d223b733a353a22616c707479223b4e3b733a31303a2266696c656d6f756e7473223b733a363a22613a303a7b7d223b733a333a22666f70223b4e3b733a353a22666f726d73223b4e3b733a353a22666f726d70223b4e3b733a373a2264697361626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a373a2273657373696f6e223b733a343134323a22613a31313a7b733a373a2272656665726572223b613a32343a7b733a383a226433656462316466223b613a343a7b733a343a226c617374223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d75736572267265663d3362396364646331223b733a383a22746c5f7468656d65223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573267265663d3437623262396263223b733a373a22746c5f70616765223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d70616765267265663d3436343433373634223b733a373a2263757272656e74223b733a33383a22636f6e74616f2f6d61696e2e7068703f646f3d6d656d626572267265663d3134346335346430223b7d733a383a223338623762616339223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a223235366539653234223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34313a22636f6e74616f2f6d61696e2e7068703f646f3d657874656e73696f6e267265663d3338623762616339223b7d733a383a223639623262393366223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34313a22636f6e74616f2f6d61696e2e7068703f646f3d657874656e73696f6e267265663d3338623762616339223b7d733a383a223539323733336262223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34313a22636f6e74616f2f6d61696e2e7068703f646f3d657874656e73696f6e267265663d3338623762616339223b7d733a383a226666623865373134223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a223162393037316166223b613a333a7b733a373a22746c5f666f726d223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d666f726d267265663d6666623865373134223b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d666f726d267265663d6666623865373134223b7d733a383a226134643761313435223b613a333a7b733a373a22746c5f666f726d223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d666f726d267265663d6666623865373134223b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d666f726d267265663d6666623865373134223b7d733a383a226333666137343134223b613a333a7b733a373a22746c5f666f726d223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d666f726d267265663d6666623865373134223b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d666f726d267265663d6666623865373134223b7d733a383a226362333732396262223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a223738353966343761223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d73657474696e6773267265663d6362333732396262223b7d733a383a223761636137343764223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d73657474696e6773267265663d6362333732396262223b7d733a383a226565653931636634223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d73657474696e6773267265663d6362333732396262223b7d733a383a223837303232623661223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a223866633032663838223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34313a22636f6e74616f2f6d61696e2e7068703f646f3d657874656e73696f6e267265663d3837303232623661223b7d733a383a226239336465343361223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34313a22636f6e74616f2f6d61696e2e7068703f646f3d657874656e73696f6e267265663d3837303232623661223b7d733a383a226638333565373930223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a34313a22636f6e74616f2f6d61696e2e7068703f646f3d657874656e73696f6e267265663d6463623535346337223b7d733a383a223837623033656364223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a226461336366313364223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d73657474696e6773267265663d3837623033656364223b7d733a383a223831663863346363223b613a323a7b733a343a226c617374223b733a34303a22636f6e74616f2f6d61696e2e7068703f646f3d73657474696e6773267265663d3837623033656364223b733a373a2263757272656e74223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d75736572267265663d6461336366313364223b7d733a383a223863306162396231223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a226461373331633866223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d75736572267265663d3863306162396231223b7d733a383a223335336538333565223b613a323a7b733a343a226c617374223b733a303a22223b733a373a2263757272656e74223b733a31353a22636f6e74616f2f6d61696e2e706870223b7d733a383a223532613033343938223b613a323a7b733a343a226c617374223b733a31353a22636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a33363a22636f6e74616f2f6d61696e2e7068703f646f3d75736572267265663d3335336538333565223b7d7d733a373a2243555252454e54223b613a313a7b733a333a22494453223b613a313a7b693a303b733a313a2231223b7d7d733a32323a227374796c655f73686565745f7570646174655f616c6c223b4e3b733a393a22434c4950424f415244223b613a383a7b733a383a22746c5f7468656d65223b613a303a7b7d733a393a22746c5f6d6f64756c65223b613a303a7b7d733a393a22746c5f6c61796f7574223b613a303a7b7d733a373a22746c5f70616765223b613a303a7b7d733a31303a22746c5f61727469636c65223b613a303a7b7d733a31303a22746c5f636f6e74656e74223b613a303a7b7d733a31323a22746c5f657874656e73696f6e223b613a303a7b7d733a373a22746c5f666f726d223b613a303a7b7d7d733a31313a226e65775f7265636f726473223b613a383a7b733a383a22746c5f7468656d65223b613a313a7b693a303b693a313b7d733a393a22746c5f6d6f64756c65223b613a343a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b7d733a393a22746c5f6c61796f7574223b613a313a7b693a303b693a313b7d733a373a22746c5f70616765223b613a363a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b7d733a31303a22746c5f61727469636c65223b613a333a7b693a303b693a363b693a313b693a373b693a323b693a383b7d733a31303a22746c5f636f6e74656e74223b613a333a7b693a303b693a313b693a313b693a323b693a323b693a333b7d733a31323a22746c5f657874656e73696f6e223b613a323a7b693a303b693a313b693a313b693a323b7d733a373a22746c5f666f726d223b613a313a7b693a303b693a313b7d7d733a31303a2243555252454e545f4944223b733a313a2232223b733a31353a226669656c647365745f737461746573223b613a343a7b733a393a22746c5f6d6f64756c65223b613a343a7b733a31353a2274656d706c6174655f6c6567656e64223b693a313b733a31323a22656d61696c5f6c6567656e64223b693a303b733a31363a2270726f7465637465645f6c6567656e64223b693a303b733a31333a226578706572745f6c6567656e64223b693a303b7d733a393a22746c5f6c61796f7574223b613a313a7b733a31333a226578706572745f6c6567656e64223b693a313b7d733a373a22746c5f666f726d223b613a323a7b733a31323a2273746f72655f6c6567656e64223b693a303b733a31333a226578706572745f6c6567656e64223b693a303b7d733a373a22746c5f75736572223b613a333a7b733a31343a226261636b656e645f6c6567656e64223b693a303b733a31323a227468656d655f6c6567656e64223b693a303b733a31353a2270617373776f72645f6c6567656e64223b693a313b7d7d733a31323a22746c5f706167655f74726565223b613a363a7b693a313b693a313b693a323b693a303b693a333b693a303b693a343b693a303b693a353b693a313b693a363b693a303b7d733a32333a22746c5f61727469636c655f746c5f706167655f74726565223b613a313a7b693a313b693a313b7d733a32363a22746c5f61727469636c655f746c5f61727469636c655f74726565223b613a373a7b693a313b693a303b693a323b693a303b693a333b693a303b693a343b693a303b693a363b693a303b693a373b693a303b693a383b693a303b7d733a31323a22746c5f706167655f6e6f6465223b733a313a2231223b7d223b733a393a22646174654164646564223b733a31303a2231343435393637353630223b733a393a226c6173744c6f67696e223b733a31303a2231343437313639373434223b733a31323a2263757272656e744c6f67696e223b733a31303a2231343437313639373735223b733a31303a226c6f67696e436f756e74223b733a313a2233223b733a363a226c6f636b6564223b733a313a2230223b733a393a2263616c656e64617273223b4e3b733a393a2263616c656e64617270223b4e3b733a31333a2263616c656e6461726665656473223b4e3b733a31333a2263616c656e6461726665656470223b4e3b733a343a2266617173223b4e3b733a343a2266617170223b4e3b733a343a226e657773223b4e3b733a343a226e657770223b4e3b733a393a226e6577736665656473223b4e3b733a393a226e6577736665656470223b4e3b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6577736c657474657270223b4e3b7d),
(37, 1, 1446140202, 1, 'tl_content', 1, 'beach-admin', '', 'contao/main.php?do=article&table=tl_content&act=edit&id=1&rt=96012180dacfbb5ac9c895f39eb38880&ref=b77632af', '1', 0x613a39373a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22707461626c65223b733a31303a22746c5f61727469636c65223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231343436313430323032223b733a343a2274797065223b733a343a2274657874223b733a383a22686561646c696e65223b733a35333a22613a323a7b733a343a22756e6974223b733a323a226831223b733a353a2276616c7565223b733a383a224265616368637570223b7d223b733a343a2274657874223b733a313833393a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e3c2f703e0a3c703e4475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c69736973206174207665726f2065726f7320657420616363756d73616e20657420697573746f206f64696f206469676e697373696d2071756920626c616e646974207072616573656e74206c7570746174756d207a7a72696c2064656c656e6974206175677565206475697320646f6c6f72652074652066657567616974206e756c6c6120666163696c6973692e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e3c2f703e0a3c703e5574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e204475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c69736973206174207665726f2065726f7320657420616363756d73616e20657420697573746f206f64696f206469676e697373696d2071756920626c616e646974207072616573656e74206c7570746174756d207a7a72696c2064656c656e6974206175677565206475697320646f6c6f72652074652066657567616974206e756c6c6120666163696c6973692e3c2f703e0a3c703e4e616d206c696265722074656d706f722063756d20736f6c757461206e6f62697320656c656966656e64206f7074696f6e20636f6e677565206e6968696c20696d7065726469657420646f6d696e672069642071756f64206d617a696d20706c6163657261742066616365723c2f703e223b733a383a22616464496d616765223b733a303a22223b733a393a2273696e676c65535243223b4e3b733a333a22616c74223b733a303a22223b733a353a227469746c65223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a22696d6167656d617267696e223b733a303a22223b733a383a22696d61676555726c223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b733a383a22666c6f6174696e67223b733a353a2261626f7665223b733a343a2268746d6c223b4e3b733a383a226c69737474797065223b733a303a22223b733a393a226c6973746974656d73223b4e3b733a31303a227461626c656974656d73223b4e3b733a373a2273756d6d617279223b733a303a22223b733a353a227468656164223b733a303a22223b733a353a2274666f6f74223b733a303a22223b733a353a22746c656674223b733a303a22223b733a383a22736f727461626c65223b733a303a22223b733a393a22736f7274496e646578223b733a313a2230223b733a393a22736f72744f72646572223b733a393a22617363656e64696e67223b733a31313a226d6f6f486561646c696e65223b733a303a22223b733a383a226d6f6f5374796c65223b733a303a22223b733a31303a226d6f6f436c6173736573223b733a303a22223b733a393a22686967686c69676874223b733a303a22223b733a373a227368436c617373223b733a303a22223b733a343a22636f6465223b4e3b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a393a227469746c6554657874223b733a303a22223b733a393a226c696e6b5469746c65223b733a303a22223b733a353a22656d626564223b733a303a22223b733a333a2272656c223b733a303a22223b733a383a22757365496d616765223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a31303a22757365486f6d65446972223b733a303a22223b733a363a22706572526f77223b733a313a2234223b733a373a2270657250616765223b733a313a2230223b733a31333a226e756d6265724f664974656d73223b733a313a2230223b733a363a22736f72744279223b733a303a22223b733a31303a226d65746149676e6f7265223b733a303a22223b733a31303a2267616c6c65727954706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a22706c61796572535243223b4e3b733a373a22796f7574756265223b733a303a22223b733a393a22706f73746572535243223b4e3b733a31303a22706c6179657253697a65223b733a303a22223b733a383a226175746f706c6179223b733a303a22223b733a31313a22736c6964657244656c6179223b733a313a2230223b733a31313a22736c696465725370656564223b733a333a22333030223b733a31363a22736c696465725374617274536c696465223b733a313a2230223b733a31363a22736c69646572436f6e74696e756f7573223b733a303a22223b733a383a22637465416c696173223b733a313a2230223b733a31323a2261727469636c65416c696173223b733a313a2230223b733a373a2261727469636c65223b733a313a2230223b733a343a22666f726d223b733a313a2230223b733a363a226d6f64756c65223b733a313a2230223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a393a22696e76697369626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31313a22636f6d5f70657250616765223b733a313a2230223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31383a22626f6f7473747261705f706172656e744964223b4e3b733a31343a22626f6f7473747261705f69636f6e223b733a303a22223b733a32343a22626f6f7473747261705f6461746141747472696275746573223b4e3b733a31343a22626f6f7473747261705f67726964223b733a313a2230223b733a31373a22626f6f7473747261705f67726964526f77223b733a313a2230223b733a32333a22626f6f7473747261705f697347726964456c656d656e74223b733a303a22223b733a32323a22626f6f7473747261705f697347726964436f6c756d6e223b733a303a22223b733a32303a22626f6f7473747261705f636f6c6c61707365496e223b733a313a2230223b733a31343a22626f6f7473747261705f74616273223b4e3b733a31343a22626f6f7473747261705f66616465223b733a303a22223b733a32313a22626f6f7473747261705f627574746f6e5374796c65223b733a303a22223b733a31373a22626f6f7473747261705f627574746f6e73223b4e3b733a32343a22626f6f7473747261705f73686f77496e64696361746f7273223b733a303a22223b733a32323a22626f6f7473747261705f73686f77436f6e74726f6c73223b733a303a22223b733a31393a22626f6f7473747261705f6175746f7374617274223b733a303a22223b733a31383a22626f6f7473747261705f696e74657276616c223b733a313a2230223b7d),
(38, 2, 1447436583, 1, 'tl_beachcup_player_level', 1, 'beach-admin', '', 'contao/main.php?do=player_level&act=edit&id=2&rt=89dd1a38bff04e4a6dbd8a96cc979ff2&ref=a2a21519', '1', 0x613a343a7b733a323a226964223b733a313a2232223b733a343a22636f6465223b733a373a2253455249455f41223b733a31313a226465736372697074696f6e223b733a32343a22446173206973742064696520426573636872656962756e67223b733a363a22747374616d70223b733a31303a2231343437343336353833223b7d),
(39, 8, 1448636769, 1, 'tl_beachcup_player_level', 1, 'beach-admin', '', 'contao/main.php?do=player_level&act=edit&id=8&rt=b1548ab23f6335e66a8da560ba07758e&ref=51a81704', '', 0x613a343a7b733a323a226964223b733a313a2238223b733a343a22636f6465223b733a353a224449565f31223b733a31313a226465736372697074696f6e223b733a32343a22446173206973742064696520426573636872656962756e67223b733a363a22747374616d70223b733a31303a2231343438363336373639223b7d),
(40, 17, 1448712318, 1, 'tl_beachcup_player', 1, 'beach-admin', 'Jakob', 'contao/main.php?do=player&act=edit&id=17&rt=760ecb55f65a5b2af91d09c8f62b5920&ref=a6c51a8d', '', 0x613a32333a7b733a323a226964223b733a323a223137223b733a343a226e616d65223b733a353a224a616b6f62223b733a373a227375726e616d65223b733a393a2250616c6c6875626572223b733a31303a2262697274685f64617465223b733a31303a22303030302d30302d3030223b733a31313a2262697274685f706c616365223b733a383a22496e6e696368656e223b733a363a2267656e646572223b733a343a226d616c65223b733a373a2261646472657373223b733a31373a224d697474657266656c6477656720372f41223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a373a22636f756e747279223b733a373a224974616c69656e223b733a353a22656d61696c223b733a32353a226a616b6f622e70616c6c687562657240676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31313a223033343835333138323531223b733a31303a227461785f6e756d626572223b733a31363a22504c4c4a4b4239375030314837383645223b733a31303a2273686972745f73697a65223b733a313a224d223b733a31323a2269735f636f6e6669726d6564223b733a313a2231223b733a383a2269735f6669706176223b733a313a2231223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2231223b733a31313a226861735f70726976616379223b733a313a2231223b733a393a226861735f7368697274223b733a313a2231223b733a383a22757365726e616d65223b733a343a224a6f6765223b733a383a2270617373776f7264223b733a36303a2224327924313024333554317043504961795751514e6774617733636c757645586f6d62434e4b35416c34426d5262513555345a747176744158333865223b733a363a22747374616d70223b733a31303a2231343438373132333138223b733a31323a22706c617965725f6c6576656c223b733a323a223131223b7d),
(41, 17, 1448712483, 2, 'tl_beachcup_player', 1, 'beach-admin', 'Jakob', 'contao/main.php?do=player&act=edit&id=17&rt=760ecb55f65a5b2af91d09c8f62b5920&ref=440f8e8c', '', 0x613a32333a7b733a323a226964223b733a323a223137223b733a343a226e616d65223b733a353a224a616b6f62223b733a373a227375726e616d65223b733a393a2250616c6c6875626572223b733a31303a2262697274685f64617465223b733a31303a22303030302d30302d3030223b733a31313a2262697274685f706c616365223b733a383a22496e6e696368656e223b733a363a2267656e646572223b733a343a226d616c65223b733a373a2261646472657373223b733a31373a224d697474657266656c6477656720372f41223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a373a22636f756e747279223b733a373a224974616c69656e223b733a353a22656d61696c223b733a32353a226a616b6f622e70616c6c687562657240676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31313a223033343835333138323531223b733a31303a227461785f6e756d626572223b733a31363a22504c4c4a4b4239375030314837383645223b733a31303a2273686972745f73697a65223b733a313a224d223b733a31323a2269735f636f6e6669726d6564223b733a313a2231223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2231223b733a31313a226861735f70726976616379223b733a313a2231223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a343a224a6f6765223b733a383a2270617373776f7264223b733a36303a2224327924313024333554317043504961795751514e6774617733636c757645586f6d62434e4b35416c34426d5262513555345a747176744158333865223b733a363a22747374616d70223b733a31303a2231343438373132333138223b733a31323a22706c617965725f6c6576656c223b733a323a223131223b7d),
(42, 17, 1448712671, 3, 'tl_beachcup_player', 1, 'beach-admin', 'Jakob', 'contao/main.php?do=player&act=edit&id=17&rt=760ecb55f65a5b2af91d09c8f62b5920&ref=c23fdd8b', '', 0x613a32333a7b733a323a226964223b733a323a223137223b733a343a226e616d65223b733a353a224a616b6f62223b733a373a227375726e616d65223b733a393a2250616c6c6875626572223b733a31303a2262697274685f64617465223b733a31303a22303030302d30302d3030223b733a31313a2262697274685f706c616365223b733a383a22496e6e696368656e223b733a363a2267656e646572223b733a343a226d616c65223b733a373a2261646472657373223b733a31373a224d697474657266656c6477656720372f41223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a373a22636f756e747279223b733a373a224974616c69656e223b733a353a22656d61696c223b733a32353a226a616b6f622e70616c6c687562657240676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31313a223033343835333138323531223b733a31303a227461785f6e756d626572223b733a31363a22504c4c4a4b4239375030314837383645223b733a31303a2273686972745f73697a65223b733a313a224d223b733a31323a2269735f636f6e6669726d6564223b733a313a2231223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2231223b733a31313a226861735f70726976616379223b733a313a2231223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a343a224a6f6765223b733a383a2270617373776f7264223b733a36303a2224327924313024333554317043504961795751514e6774617733636c757645586f6d62434e4b35416c34426d5262513555345a747176744158333865223b733a363a22747374616d70223b733a31303a2231343438373132343833223b733a31323a22706c617965725f6c6576656c223b733a323a223131223b7d),
(43, 17, 1448715691, 4, 'tl_beachcup_player', 1, 'beach-admin', 'Jakob', 'contao/main.php?do=player&act=edit&id=17&rt=760ecb55f65a5b2af91d09c8f62b5920&ref=454f8655', '', 0x613a32333a7b733a323a226964223b733a323a223137223b733a343a226e616d65223b733a353a224a616b6f62223b733a373a227375726e616d65223b733a393a2250616c6c6875626572223b733a31303a2262697274685f64617465223b733a31303a22303030302d30302d3030223b733a31313a2262697274685f706c616365223b733a383a22496e6e696368656e223b733a363a2267656e646572223b733a343a226d616c65223b733a373a2261646472657373223b733a31373a224d697474657266656c6477656720372f41223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a373a22636f756e747279223b733a373a224974616c69656e223b733a353a22656d61696c223b733a32353a226a616b6f622e70616c6c687562657240676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31313a223033343835333138323531223b733a31303a227461785f6e756d626572223b733a31363a22504c4c4a4b4239375030314837383645223b733a31303a2273686972745f73697a65223b733a313a224d223b733a31323a2269735f636f6e6669726d6564223b733a313a2231223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2231223b733a31313a226861735f70726976616379223b733a313a2231223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a343a224a6f6765223b733a383a2270617373776f7264223b733a36303a2224327924313024333554317043504961795751514e6774617733636c757645586f6d62434e4b35416c34426d5262513555345a747176744158333865223b733a363a22747374616d70223b733a31303a2231343438373132363731223b733a31323a22706c617965725f6c6576656c223b733a323a223131223b7d),
(44, 17, 1448718492, 5, 'tl_beachcup_player', 1, 'beach-admin', 'Jakob', 'contao/main.php?do=player&act=edit&id=17&rt=760ecb55f65a5b2af91d09c8f62b5920&ref=cc7505a3', '', 0x613a32333a7b733a323a226964223b733a323a223137223b733a343a226e616d65223b733a353a224a616b6f62223b733a373a227375726e616d65223b733a393a2250616c6c6875626572223b733a31303a2262697274685f64617465223b733a31303a22303030302d30302d3030223b733a31313a2262697274685f706c616365223b733a383a22496e6e696368656e223b733a363a2267656e646572223b733a343a226d616c65223b733a373a2261646472657373223b733a31373a224d697474657266656c6477656720372f41223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a373a22636f756e747279223b733a373a224974616c69656e223b733a353a22656d61696c223b733a32353a226a616b6f622e70616c6c687562657240676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31313a223033343835333138323531223b733a31303a227461785f6e756d626572223b733a31363a22504c4c4a4b4239375030314837383645223b733a31303a2273686972745f73697a65223b733a313a224d223b733a31323a2269735f636f6e6669726d6564223b733a313a2231223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2231223b733a31313a226861735f70726976616379223b733a313a2231223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a343a224a6f6765223b733a383a2270617373776f7264223b733a36303a2224327924313024333554317043504961795751514e6774617733636c757645586f6d62434e4b35416c34426d5262513555345a747176744158333865223b733a363a22747374616d70223b733a31303a2231343438373135363931223b733a31323a22706c617965725f6c6576656c223b733a323a223131223b7d),
(45, 17, 1448718810, 6, 'tl_beachcup_player', 1, 'beach-admin', 'Jakob', 'contao/main.php?do=player&act=edit&id=17&rt=760ecb55f65a5b2af91d09c8f62b5920&ref=a3a5ef9f', '', 0x613a32333a7b733a323a226964223b733a323a223137223b733a343a226e616d65223b733a353a224a616b6f62223b733a373a227375726e616d65223b733a393a2250616c6c6875626572223b733a31303a2262697274685f64617465223b733a393a22383733303634383030223b733a31313a2262697274685f706c616365223b733a383a22496e6e696368656e223b733a363a2267656e646572223b733a343a226d616c65223b733a373a2261646472657373223b733a31373a224d697474657266656c6477656720372f41223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a373a22636f756e747279223b733a373a224974616c69656e223b733a353a22656d61696c223b733a32353a226a616b6f622e70616c6c687562657240676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31313a223033343835333138323531223b733a31303a227461785f6e756d626572223b733a31363a22504c4c4a4b4239375030314837383645223b733a31303a2273686972745f73697a65223b733a313a224d223b733a31323a2269735f636f6e6669726d6564223b733a313a2231223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2231223b733a31313a226861735f70726976616379223b733a313a2231223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a343a224a6f6765223b733a383a2270617373776f7264223b733a36303a2224327924313024333554317043504961795751514e6774617733636c757645586f6d62434e4b35416c34426d5262513555345a747176744158333865223b733a363a22747374616d70223b733a31303a2231343438373138343932223b733a31323a22706c617965725f6c6576656c223b733a323a223131223b7d),
(46, 18, 1448721037, 1, 'tl_beachcup_player', 1, 'beach-admin', 'Greta', 'contao/main.php?do=player&act=edit&id=18&rt=760ecb55f65a5b2af91d09c8f62b5920&ref=7995b4d7', '', 0x613a32333a7b733a323a226964223b733a323a223138223b733a343a226e616d65223b733a353a224772657461223b733a373a227375726e616d65223b733a393a2250616c6c6875626572223b733a31303a2262697274685f64617465223b733a393a22393738393934383030223b733a31313a2262697274685f706c616365223b733a383a22496e6e696368656e223b733a363a2267656e646572223b733a363a2266656d616c65223b733a373a2261646472657373223b733a31373a224d697474657266656c6477656720372f41223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a373a22636f756e747279223b733a373a224974616c69656e223b733a353a22656d61696c223b733a32353a2267726574612e70616c6c687562657240676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31303a2233343734393334343835223b733a31303a227461785f6e756d626572223b733a31363a2273616466617373616466617364666173223b733a31303a2273686972745f73697a65223b733a313a2253223b733a31323a2269735f636f6e6669726d6564223b733a313a2231223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2231223b733a31313a226861735f70726976616379223b733a313a2231223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a353a226772657461223b733a383a2270617373776f7264223b733a36303a22243279243130244b434446677748526a655263434b62586c43434c394f56546c79656b576545305a695864574643787479546430706c6c336c375643223b733a363a22747374616d70223b733a31303a2231343438373231303337223b733a31323a22706c617965725f6c6576656c223b733a323a223131223b7d),
(47, 8, 1448994833, 2, 'tl_beachcup_player_level', 1, 'beach-admin', '', 'contao/main.php?do=player_level&act=edit&id=8&rt=7f7326b1ffda76a2f826eac704e8ed3f&ref=969373e9', '1', 0x613a343a7b733a323a226964223b733a313a2238223b733a343a22636f6465223b733a353a224449565f31223b733a31313a226465736372697074696f6e223b733a303a22223b733a363a22747374616d70223b733a31303a2231343438363336373639223b7d),
(48, 9, 1448636775, 1, 'tl_beachcup_player_level', 1, 'beach-admin', '', 'contao/main.php?do=player_level&act=edit&id=9&rt=7f7326b1ffda76a2f826eac704e8ed3f&ref=e3613149', '', 0x613a343a7b733a323a226964223b733a313a2239223b733a343a22636f6465223b733a353a224449565f32223b733a31313a226465736372697074696f6e223b733a32343a22446173206973742064696520426573636872656962756e67223b733a363a22747374616d70223b733a31303a2231343438363336373735223b7d),
(49, 9, 1448994839, 2, 'tl_beachcup_player_level', 1, 'beach-admin', '', 'contao/main.php?do=player_level&act=edit&id=9&rt=7f7326b1ffda76a2f826eac704e8ed3f&ref=e3613149', '1', 0x613a343a7b733a323a226964223b733a313a2239223b733a343a22636f6465223b733a353a224449565f32223b733a31313a226465736372697074696f6e223b733a303a22223b733a363a22747374616d70223b733a31303a2231343438363336373735223b7d);
INSERT INTO `tl_version` (`id`, `pid`, `tstamp`, `version`, `fromTable`, `userid`, `username`, `description`, `editUrl`, `active`, `data`) VALUES
(50, 10, 1448636782, 1, 'tl_beachcup_player_level', 1, 'beach-admin', '', 'contao/main.php?do=player_level&act=edit&id=10&rt=7f7326b1ffda76a2f826eac704e8ed3f&ref=c89710cf', '', 0x613a343a7b733a323a226964223b733a323a223130223b733a343a22636f6465223b733a353a224449565f33223b733a31313a226465736372697074696f6e223b733a32343a22446173206973742064696520426573636872656962756e67223b733a363a22747374616d70223b733a31303a2231343438363336373832223b7d),
(51, 10, 1448994844, 2, 'tl_beachcup_player_level', 1, 'beach-admin', '', 'contao/main.php?do=player_level&act=edit&id=10&rt=7f7326b1ffda76a2f826eac704e8ed3f&ref=c89710cf', '1', 0x613a343a7b733a323a226964223b733a323a223130223b733a343a22636f6465223b733a353a224449565f33223b733a31313a226465736372697074696f6e223b733a303a22223b733a363a22747374616d70223b733a31303a2231343438363336373832223b7d),
(52, 1, 1448994823, 1, 'tl_beachcup_registration_state', 1, 'beach-admin', '', 'contao/main.php?do=registration_state&act=edit&id=1&rt=7f7326b1ffda76a2f826eac704e8ed3f&ref=4c44b976', '', 0x613a343a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343438393934383233223b733a343a22636f6465223b733a31303a2250726f63657373696e67223b733a31313a226465736372697074696f6e223b733a303a22223b7d),
(53, 1, 1448994917, 2, 'tl_beachcup_registration_state', 1, 'beach-admin', '', 'contao/main.php?do=registration_state&act=edit&id=1&rt=7f7326b1ffda76a2f826eac704e8ed3f&ref=4c44b976', '1', 0x613a343a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343438393934383233223b733a343a22636f6465223b733a31303a2250524f43455353494e47223b733a31313a226465736372697074696f6e223b733a303a22223b7d),
(54, 2, 1449251493, 1, 'tl_beachcup_organizer', 1, 'beach-admin', 'Test Organisator', 'contao/main.php?do=organizer&act=edit&id=2&rt=dea3bfdc0891938580ce100d9e7d5b51&ref=63676dbc', '', 0x613a393a7b733a323a226964223b733a313a2232223b733a363a22747374616d70223b733a31303a2231343439323531343933223b733a343a226e616d65223b733a31363a2254657374204f7267616e697361746f72223b733a31313a226465736372697074696f6e223b733a303a22223b733a31343a22636f6e746163745f706572736f6e223b733a303a22223b733a353a22656d61696c223b733a303a22223b733a353a2270686f6e65223b733a303a22223b733a333a22666178223b733a303a22223b733a31323a226d6f62696c655f70686f6e65223b733a303a22223b7d),
(55, 2, 1449251767, 2, 'tl_beachcup_organizer', 1, 'beach-admin', 'Gemeinde Olang', 'contao/main.php?do=organizer&act=edit&id=2&rt=dea3bfdc0891938580ce100d9e7d5b51&ref=63676dbc', '1', 0x613a393a7b733a323a226964223b733a313a2232223b733a363a22747374616d70223b733a31303a2231343439323531343933223b733a343a226e616d65223b733a31343a2247656d65696e6465204f6c616e67223b733a31313a226465736372697074696f6e223b733a303a22223b733a31343a22636f6e746163745f706572736f6e223b733a303a22223b733a353a22656d61696c223b733a303a22223b733a353a2270686f6e65223b733a303a22223b733a333a22666178223b733a303a22223b733a31323a226d6f62696c655f70686f6e65223b733a303a22223b7d),
(56, 6, 1449251932, 1, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&rt=dea3bfdc0891938580ce100d9e7d5b51&ref=d367fa59&act=edit&id=6', '', 0x613a353a7b733a323a226964223b733a313a2236223b733a363a22747374616d70223b733a31303a2231343439323531393332223b733a31333a22746f75726e616d656e745f6964223b733a313a2235223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(57, 6, 1449251911, 1, 'tl_beachcup_tournament', 1, 'beach-admin', 'Amateur Turnier', 'contao/main.php?do=tournament&act=edit&id=6&rt=4fb24f4c64759e6b35d222925f50a373&ref=90ff840e', '1', 0x613a363a7b733a323a226964223b733a313a2236223b733a363a22747374616d70223b733a31303a2231343439323531393131223b733a343a226e616d65223b733a31353a22416d6174657572205475726e696572223b733a373a22747970655f6964223b733a313a2233223b733a383a2273746167655f6964223b733a313a2234223b733a393a226d61785f7465616d73223b733a323a223332223b7d),
(58, 4, 1449251864, 1, 'tl_beachcup_stage', 1, 'beach-admin', 'Olanger Etappe', 'contao/main.php?do=stage&act=edit&id=4&rt=4fb24f4c64759e6b35d222925f50a373&ref=2535d8f3', '1', 0x613a393a7b733a323a226964223b733a313a2234223b733a363a22747374616d70223b733a31303a2231343439323531383634223b733a343a226e616d65223b733a31343a224f6c616e67657220457461707065223b733a31303a2273746172745f64617465223b733a31303a2231343634393931323030223b733a383a22656e645f64617465223b733a31303a2231343635303737363030223b733a31323a226f7267616e697a65725f6964223b733a313a2232223b733a383a2276656e75655f6964223b733a313a2233223b733a393a22736561736f6e5f6964223b733a313a2231223b733a31303a2269735f656e61626c6564223b733a313a2231223b7d),
(59, 5, 1449251892, 1, 'tl_beachcup_tournament', 1, 'beach-admin', 'Jugend Turnier', 'contao/main.php?do=tournament&act=edit&id=5&rt=4fb24f4c64759e6b35d222925f50a373&ref=26e26cd7', '1', 0x613a363a7b733a323a226964223b733a313a2235223b733a363a22747374616d70223b733a31303a2231343439323531383932223b733a343a226e616d65223b733a31343a224a7567656e64205475726e696572223b733a373a22747970655f6964223b733a313a2232223b733a383a2273746167655f6964223b733a313a2234223b733a393a226d61785f7465616d73223b733a313a2238223b7d),
(60, 17, 1449325836, 1, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=17&rt=4fb24f4c64759e6b35d222925f50a373&ref=0803ca73', '', 0x613a353a7b733a323a226964223b733a323a223137223b733a363a22747374616d70223b733a31303a2231343439333235383336223b733a31333a22746f75726e616d656e745f6964223b733a313a2230223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(61, 17, 1449327586, 2, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=17&rt=4fb24f4c64759e6b35d222925f50a373&ref=0803ca73', '', 0x613a353a7b733a323a226964223b733a323a223137223b733a363a22747374616d70223b733a31303a2231343439333235383336223b733a31333a22746f75726e616d656e745f6964223b733a313a2236223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(62, 17, 1449327634, 3, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=17&rt=4fb24f4c64759e6b35d222925f50a373&ref=ccc20508', '', 0x613a353a7b733a323a226964223b733a323a223137223b733a363a22747374616d70223b733a31303a2231343439333237353836223b733a31333a22746f75726e616d656e745f6964223b733a313a2235223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(63, 6, 1449327665, 2, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=6&rt=4fb24f4c64759e6b35d222925f50a373&ref=fe0686cc', '', 0x613a353a7b733a323a226964223b733a313a2236223b733a363a22747374616d70223b733a31303a2231343439323531393332223b733a31333a22746f75726e616d656e745f6964223b733a313a2236223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(64, 6, 1449327712, 3, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=6&rt=4fb24f4c64759e6b35d222925f50a373&ref=edacc618', '', 0x613a353a7b733a323a226964223b733a313a2236223b733a363a22747374616d70223b733a31303a2231343439333237363635223b733a31333a22746f75726e616d656e745f6964223b733a313a2230223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(65, 6, 1449327735, 4, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=6&rt=4fb24f4c64759e6b35d222925f50a373&ref=6c2fd617', '', 0x613a353a7b733a323a226964223b733a313a2236223b733a363a22747374616d70223b733a31303a2231343439333237373132223b733a31333a22746f75726e616d656e745f6964223b733a313a2236223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(66, 6, 1449328121, 5, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=6&rt=4fb24f4c64759e6b35d222925f50a373&ref=8904c4d4', '', 0x613a353a7b733a323a226964223b733a313a2236223b733a363a22747374616d70223b733a31303a2231343439333237393431223b733a31333a22746f75726e616d656e745f6964223b733a313a2235223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(67, 6, 1449329478, 6, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=6&rt=4fb24f4c64759e6b35d222925f50a373&ref=1dae99b3', '', 0x613a353a7b733a323a226964223b733a313a2236223b733a363a22747374616d70223b733a31303a2231343439333238313231223b733a31333a22746f75726e616d656e745f6964223b733a313a2236223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(68, 7, 1448721647, 1, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=4fb24f4c64759e6b35d222925f50a373&ref=81c9d439', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343438373231363437223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(69, 17, 1449330541, 4, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=17&rt=4fb24f4c64759e6b35d222925f50a373&ref=d2f69607', '1', 0x613a353a7b733a323a226964223b733a323a223137223b733a363a22747374616d70223b733a31303a2231343439333237393336223b733a31333a22746f75726e616d656e745f6964223b733a313a2235223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a323a223136223b7d),
(70, 6, 1449330549, 7, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=6&rt=4fb24f4c64759e6b35d222925f50a373&ref=424f91e8', '1', 0x613a353a7b733a323a226964223b733a313a2236223b733a363a22747374616d70223b733a31303a2231343439333239343738223b733a31333a22746f75726e616d656e745f6964223b733a313a2236223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a323a223131223b7d),
(71, 1, 1449251781, 1, 'tl_beachcup_season', 1, 'beach-admin', 'Saison 2015', 'contao/main.php?do=season&act=edit&id=1&rt=4fb24f4c64759e6b35d222925f50a373&ref=9f6edf6a', '', 0x613a353a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343439323531373831223b733a343a226e616d65223b733a31313a22536169736f6e2032303135223b733a31313a226465736372697074696f6e223b733a303a22223b733a343a2279656172223b733a343a2232303135223b7d),
(72, 1, 1449332331, 2, 'tl_beachcup_season', 1, 'beach-admin', 'Saison Nummer 1', 'contao/main.php?do=season&act=edit&id=1&rt=4fb24f4c64759e6b35d222925f50a373&ref=9f6edf6a', '', 0x613a353a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343439323531373831223b733a343a226e616d65223b733a31353a22536169736f6e204e756d6d65722031223b733a31313a226465736372697074696f6e223b733a303a22223b733a343a2279656172223b733a343a2232303135223b7d),
(73, 7, 1449937190, 2, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=08964f0385f4ff96d83f85d8039c7fb2&ref=a3def4f4', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343438373231363437223b733a383a22706c617965725f31223b733a323a223138223b733a383a22706c617965725f32223b733a323a223137223b7d),
(74, 7, 1449937216, 3, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=08964f0385f4ff96d83f85d8039c7fb2&ref=cd19129e', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343439393337313930223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(75, 20, 1449936784, 1, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=20&rt=08964f0385f4ff96d83f85d8039c7fb2&ref=b7e6bb69', '', 0x613a353a7b733a323a226964223b733a323a223230223b733a363a22747374616d70223b733a31303a2231343439393336373834223b733a31333a22746f75726e616d656e745f6964223b733a313a2235223b733a373a227465616d5f6964223b733a323a223133223b733a363a22706f696e7473223b733a313a2230223b7d),
(76, 2, 1448994942, 1, 'tl_beachcup_registration_state', 1, 'beach-admin', '', 'contao/main.php?do=registration_state&act=edit&id=2&rt=2ac95152f81d106e6526a0a731b484b2&ref=068d041b', '1', 0x613a343a7b733a323a226964223b733a313a2232223b733a363a22747374616d70223b733a31303a2231343438393934393432223b733a343a22636f6465223b733a383a22434f4d504c455445223b733a31313a226465736372697074696f6e223b733a303a22223b7d),
(77, 3, 1449244673, 1, 'tl_beachcup_tournament_type', 1, 'beach-admin', '', 'contao/main.php?do=tournament_type&act=edit&id=3&rt=2ac95152f81d106e6526a0a731b484b2&ref=b999320b', '1', 0x613a343a7b733a323a226964223b733a313a2233223b733a363a22747374616d70223b733a31303a2231343439323434363733223b733a343a22636f6465223b733a373a22414d4154455552223b733a31313a226465736372697074696f6e223b733a303a22223b7d),
(78, 3, 1449251757, 1, 'tl_beachcup_venue', 1, 'beach-admin', 'Olang', 'contao/main.php?do=venue&act=edit&id=3&rt=2ac95152f81d106e6526a0a731b484b2&ref=1d011533', '', 0x613a31303a7b733a323a226964223b733a313a2233223b733a363a22747374616d70223b733a31303a2231343439323531373537223b733a343a226e616d65223b733a353a224f6c616e67223b733a31313a226465736372697074696f6e223b733a303a22223b733a373a2270696374757265223b733a303a22223b733a373a2261646472657373223b733a393a2253706f72747a6f6e65223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a393a226c6f6e676974756465223b733a393a2231322e303234373532223b733a383a226c61746974756465223b733a393a2234362e373638353232223b7d),
(79, 23, 1449936752, 1, 'tl_beachcup_player', 1, 'beach-admin', 'Isolde', 'contao/main.php?do=player&act=edit&id=23&rt=2ac95152f81d106e6526a0a731b484b2&ref=1f407621', '', 0x613a32333a7b733a323a226964223b733a323a223233223b733a343a226e616d65223b733a363a2249736f6c6465223b733a373a227375726e616d65223b733a363a225761676e6572223b733a31303a2262697274685f64617465223b733a31303a2231343530333933323030223b733a31313a2262697274685f706c616365223b733a383a22537465727a696e67223b733a363a2267656e646572223b733a363a2266656d616c65223b733a373a2261646472657373223b733a373a224261686e686f66223b733a383a227a69705f636f6465223b733a353a223430303430223b733a343a2263697479223b733a383a22537465727a696e67223b733a373a22636f756e747279223b733a373a224974616c69656e223b733a353a22656d61696c223b733a31333a2269736940676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31303a2238343538333636323734223b733a31303a227461785f6e756d626572223b733a31363a2273616466617373616466617364666166223b733a31303a2273686972745f73697a65223b733a313a2253223b733a31323a2269735f636f6e6669726d6564223b733a313a2230223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2230223b733a31313a226861735f70726976616379223b733a313a2230223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a333a22697369223b733a383a2270617373776f7264223b733a36303a22243279243130246348615539654f54345146776233355a43636a6e65656743336957726d38732e7950674370326672396354437741334753467a7769223b733a363a22747374616d70223b733a31303a2231343439393336373532223b733a31323a22706c617965725f6c6576656c223b733a313a2238223b7d),
(80, 23, 1450005946, 2, 'tl_beachcup_player', 1, 'beach-admin', 'Isolde', 'contao/main.php?do=player&act=edit&id=23&rt=2ac95152f81d106e6526a0a731b484b2&ref=1f407621', '', 0x613a32333a7b733a323a226964223b733a323a223233223b733a343a226e616d65223b733a363a2249736f6c6465223b733a373a227375726e616d65223b733a363a225761676e6572223b733a31303a2262697274685f64617465223b733a31303a2231343530333933323030223b733a31313a2262697274685f706c616365223b733a383a22537465727a696e67223b733a363a2267656e646572223b733a363a2266656d616c65223b733a373a2261646472657373223b733a373a224261686e686f66223b733a383a227a69705f636f6465223b733a353a223430303430223b733a343a2263697479223b733a383a22537465727a696e67223b733a373a22636f756e747279223b733a373a224974616c69656e223b733a353a22656d61696c223b733a31333a2269736940676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31303a2238343538333636323734223b733a31303a227461785f6e756d626572223b733a31363a2273616466617373616466617364736464223b733a31303a2273686972745f73697a65223b733a313a2253223b733a31323a2269735f636f6e6669726d6564223b733a313a2230223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2230223b733a31313a226861735f70726976616379223b733a313a2230223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a333a22697369223b733a383a2270617373776f7264223b733a36303a22243279243130246348615539654f54345146776233355a43636a6e65656743336957726d38732e7950674370326672396354437741334753467a7769223b733a363a22747374616d70223b733a31303a2231343439393336373532223b733a31323a22706c617965725f6c6576656c223b733a313a2238223b7d),
(81, 20, 1450006477, 2, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=20&rt=2ac95152f81d106e6526a0a731b484b2&ref=a3c8257c', '', 0x613a353a7b733a323a226964223b733a323a223230223b733a363a22747374616d70223b733a31303a2231343439393336373834223b733a31333a22746f75726e616d656e745f6964223b733a313a2235223b733a373a227465616d5f6964223b733a313a2237223b733a363a22706f696e7473223b733a313a2230223b7d),
(82, 20, 1450006484, 3, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=20&rt=2ac95152f81d106e6526a0a731b484b2&ref=dba29b1e', '', 0x613a353a7b733a323a226964223b733a323a223230223b733a363a22747374616d70223b733a31303a2231343530303036343737223b733a31333a22746f75726e616d656e745f6964223b733a313a2235223b733a373a227465616d5f6964223b733a323a223133223b733a363a22706f696e7473223b733a313a2230223b7d),
(83, 3, 1450013545, 2, 'tl_beachcup_venue', 1, 'beach-admin', 'Olang', 'contao/main.php?do=venue&act=edit&id=3&rt=2ac95152f81d106e6526a0a731b484b2&ref=d497c889', '1', 0x613a31303a7b733a323a226964223b733a313a2233223b733a363a22747374616d70223b733a31303a2231343530303132343935223b733a343a226e616d65223b733a353a224f6c616e67223b733a31313a226465736372697074696f6e223b733a303a22223b733a373a2270696374757265223b733a31363a22f7cd9751a19611e58304448a5b243f5c223b733a373a2261646472657373223b733a393a2253706f72747a6f6e65223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a393a226c6f6e676974756465223b733a393a2231322e303234373532223b733a383a226c61746974756465223b733a393a2234362e373638353232223b7d),
(84, 18, 1450015407, 2, 'tl_beachcup_player', 1, 'beach-admin', 'Greta', 'contao/main.php?do=player&act=edit&id=18&rt=2ac95152f81d106e6526a0a731b484b2&ref=68231679', '1', 0x613a32333a7b733a323a226964223b733a323a223138223b733a343a226e616d65223b733a353a224772657461223b733a373a227375726e616d65223b733a393a2250616c6c6875626572223b733a31303a2262697274685f64617465223b733a393a22393738393934383030223b733a31313a2262697274685f706c616365223b733a383a22496e6e696368656e223b733a363a2267656e646572223b733a363a2266656d616c65223b733a373a2261646472657373223b733a31373a224d697474657266656c6477656720372f41223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a373a22636f756e747279223b733a323a226974223b733a353a22656d61696c223b733a32353a2267726574612e70616c6c687562657240676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31303a2233343734393334343835223b733a31303a227461785f6e756d626572223b733a31363a2273616466617373616466617364666173223b733a31303a2273686972745f73697a65223b733a313a2253223b733a31323a2269735f636f6e6669726d6564223b733a313a2231223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2231223b733a31313a226861735f70726976616379223b733a313a2231223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a353a226772657461223b733a383a2270617373776f7264223b733a36303a22243279243130244b434446677748526a655263434b62586c43434c394f56546c79656b576545305a695864574643787479546430706c6c336c375643223b733a363a22747374616d70223b733a31303a2231343438373231303337223b733a31323a22706c617965725f6c6576656c223b733a323a223131223b7d),
(85, 23, 1450015417, 3, 'tl_beachcup_player', 1, 'beach-admin', 'Isolde', 'contao/main.php?do=player&act=edit&id=23&rt=2ac95152f81d106e6526a0a731b484b2&ref=1cfadb2e', '1', 0x613a32333a7b733a323a226964223b733a323a223233223b733a343a226e616d65223b733a363a2249736f6c6465223b733a373a227375726e616d65223b733a363a225761676e6572223b733a31303a2262697274685f64617465223b733a31303a2231343530333933323030223b733a31313a2262697274685f706c616365223b733a383a22537465727a696e67223b733a363a2267656e646572223b733a363a2266656d616c65223b733a373a2261646472657373223b733a373a224261686e686f66223b733a383a227a69705f636f6465223b733a353a223430303430223b733a343a2263697479223b733a383a22537465727a696e67223b733a373a22636f756e747279223b733a323a226974223b733a353a22656d61696c223b733a31333a2269736940676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31303a2238343538333636323734223b733a31303a227461785f6e756d626572223b733a31363a2273616466617373616466617364736464223b733a31303a2273686972745f73697a65223b733a313a2253223b733a31323a2269735f636f6e6669726d6564223b733a313a2230223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2230223b733a31313a226861735f70726976616379223b733a313a2230223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a333a22697369223b733a383a2270617373776f7264223b733a36303a22243279243130246348615539654f54345146776233355a43636a6e65656743336957726d38732e7950674370326672396354437741334753467a7769223b733a363a22747374616d70223b733a31303a2231343530303035393436223b733a31323a22706c617965725f6c6576656c223b733a313a2238223b7d),
(86, 17, 1450015436, 7, 'tl_beachcup_player', 1, 'beach-admin', 'Jakob', 'contao/main.php?do=player&act=edit&id=17&rt=2ac95152f81d106e6526a0a731b484b2&ref=9353c639', '1', 0x613a32333a7b733a323a226964223b733a323a223137223b733a343a226e616d65223b733a353a224a616b6f62223b733a373a227375726e616d65223b733a393a2250616c6c6875626572223b733a31303a2262697274685f64617465223b733a393a22383733303634383030223b733a31313a2262697274685f706c616365223b733a383a22496e6e696368656e223b733a363a2267656e646572223b733a343a226d616c65223b733a373a2261646472657373223b733a31373a224d697474657266656c6477656720372f41223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a353a224f6c616e67223b733a373a22636f756e747279223b733a323a226974223b733a353a22656d61696c223b733a32353a226a616b6f622e70616c6c687562657240676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31313a223033343835333138323531223b733a31303a227461785f6e756d626572223b733a31363a22504c4c4a4b4239375030314837383645223b733a31303a2273686972745f73697a65223b733a313a224d223b733a31323a2269735f636f6e6669726d6564223b733a313a2231223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2231223b733a31313a226861735f70726976616379223b733a313a2231223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a343a224a6f6765223b733a383a2270617373776f7264223b733a36303a2224327924313024333554317043504961795751514e6774617733636c757645586f6d62434e4b35416c34426d5262513555345a747176744158333865223b733a363a22747374616d70223b733a31303a2231343438373138383130223b733a31323a22706c617965725f6c6576656c223b733a323a223131223b7d),
(87, 22, 1449936678, 1, 'tl_beachcup_player', 1, 'beach-admin', 'Peter', 'contao/main.php?do=player&act=edit&id=22&rt=2ac95152f81d106e6526a0a731b484b2&ref=5c318392', '', 0x613a32333a7b733a323a226964223b733a323a223232223b733a343a226e616d65223b733a353a225065746572223b733a373a227375726e616d65223b733a363a224e6f6e616d65223b733a31303a2262697274685f64617465223b733a31303a2231343531303834343030223b733a31313a2262697274685f706c616365223b733a373a224272756e65636b223b733a363a2267656e646572223b733a343a226d616c65223b733a373a2261646472657373223b733a373a2253746172c39f65223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a373a224272756e65636b223b733a373a22636f756e747279223b733a323a224974223b733a353a22656d61696c223b733a31363a226e6f6e616d6540676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31303a2233363936323736333834223b733a31303a227461785f6e756d626572223b733a31363a2273616466617373616466617364666165223b733a31303a2273686972745f73697a65223b733a313a224d223b733a31323a2269735f636f6e6669726d6564223b733a313a2230223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2230223b733a31313a226861735f70726976616379223b733a313a2230223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a363a226e6f6e616d65223b733a383a2270617373776f7264223b733a36303a22243279243130244e5a50527648575a36693146596b5072636f7561566542564352344d614970526475693133654468737270765347446d555a576e65223b733a363a22747374616d70223b733a31303a2231343439393336363738223b733a31323a22706c617965725f6c6576656c223b733a313a2238223b7d),
(88, 22, 1450015446, 2, 'tl_beachcup_player', 1, 'beach-admin', 'Peter', 'contao/main.php?do=player&act=edit&id=22&rt=2ac95152f81d106e6526a0a731b484b2&ref=5c318392', '1', 0x613a32333a7b733a323a226964223b733a323a223232223b733a343a226e616d65223b733a353a225065746572223b733a373a227375726e616d65223b733a363a224e6f6e616d65223b733a31303a2262697274685f64617465223b733a31303a2231343531303834343030223b733a31313a2262697274685f706c616365223b733a373a224272756e65636b223b733a363a2267656e646572223b733a343a226d616c65223b733a373a2261646472657373223b733a373a2253746172c39f65223b733a383a227a69705f636f6465223b733a353a223339303330223b733a343a2263697479223b733a373a224272756e65636b223b733a373a22636f756e747279223b733a323a226974223b733a353a22656d61696c223b733a31363a226e6f6e616d6540676d61696c2e636f6d223b733a31323a2270686f6e655f6e756d626572223b733a31303a2233363936323736333834223b733a31303a227461785f6e756d626572223b733a31363a2273616466617373616466617364666165223b733a31303a2273686972745f73697a65223b733a313a224d223b733a31323a2269735f636f6e6669726d6564223b733a313a2230223b733a383a2269735f6669706176223b733a313a2230223b733a32333a226861735f6d65646963616c5f6365727469666963617465223b733a313a2230223b733a31313a226861735f70726976616379223b733a313a2230223b733a393a226861735f7368697274223b733a313a2230223b733a383a22757365726e616d65223b733a363a226e6f6e616d65223b733a383a2270617373776f7264223b733a36303a22243279243130244e5a50527648575a36693146596b5072636f7561566542564352344d614970526475693133654468737270765347446d555a576e65223b733a363a22747374616d70223b733a31303a2231343439393336363738223b733a31323a22706c617965725f6c6576656c223b733a313a2238223b7d),
(89, 7, 1450971971, 4, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=c8c2bcd5', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393731373336223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223137223b7d),
(90, 7, 1450971993, 5, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=d4b2c31d', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393731393832223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(91, 7, 1450972035, 6, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=9ee23166', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732303232223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223137223b7d),
(92, 7, 1450972086, 7, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=52d7b24f', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732303539223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(93, 7, 1450972111, 8, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=463abf43', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732303936223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223137223b7d),
(94, 7, 1450972137, 9, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=a44284d3', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732313231223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(95, 7, 1450972505, 10, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=9bdb1176', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732343135223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223137223b7d),
(96, 7, 1450972544, 11, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=52fd8781', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732353035223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(97, 7, 1450972576, 12, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=d8e0411e', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732353633223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223137223b7d),
(98, 7, 1450972647, 13, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=9a60db4a', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732363336223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(99, 7, 1450972918, 14, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=53541dbc', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732383935223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223137223b7d),
(100, 7, 1450973172, 15, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=1c3a00bf', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393732393138223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(101, 7, 1450973186, 16, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=25c0ee66', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393733313732223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223137223b7d),
(102, 7, 1450973683, 17, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=99318bc3', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393733363731223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(103, 7, 1450973694, 18, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=d6d255a7', '', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393733363833223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223137223b7d),
(104, 7, 1450973706, 19, 'tl_beachcup_team', 1, 'beach-admin', '', 'contao/main.php?do=team&act=edit&id=7&rt=40e4033f4973778cb9de134ad38f4e04&ref=d6d255a7', '1', 0x613a343a7b733a323a226964223b733a313a2237223b733a363a22747374616d70223b733a31303a2231343530393733363934223b733a383a22706c617965725f31223b733a323a223137223b733a383a22706c617965725f32223b733a323a223138223b7d),
(105, 20, 1452874404, 4, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=20&rt=19f6a5aa20ed722d6dd35d3d94518715&ref=0ece59b1', '', 0x613a353a7b733a323a226964223b733a323a223230223b733a363a22747374616d70223b733a31303a2231343530303036343834223b733a31333a22746f75726e616d656e745f6964223b733a313a2236223b733a373a227465616d5f6964223b733a323a223133223b733a363a22706f696e7473223b733a313a2230223b7d),
(106, 20, 1452874413, 5, 'tl_beachcup_registration', 1, 'beach-admin', '', 'contao/main.php?do=registration&act=edit&id=20&rt=19f6a5aa20ed722d6dd35d3d94518715&ref=f01ba56f', '1', 0x613a353a7b733a323a226964223b733a323a223230223b733a363a22747374616d70223b733a31303a2231343532383734343034223b733a31333a22746f75726e616d656e745f6964223b733a313a2235223b733a373a227465616d5f6964223b733a323a223133223b733a363a22706f696e7473223b733a313a2230223b7d),
(107, 1, 1452880181, 3, 'tl_beachcup_season', 1, 'beach-admin', 'Saison Nummer 1', 'contao/main.php?do=season&act=edit&id=1&rt=19f6a5aa20ed722d6dd35d3d94518715&ref=5c3c1a12', '1', 0x613a363a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231343439333332333331223b733a343a226e616d65223b733a31353a22536169736f6e204e756d6d65722031223b733a31313a226465736372697074696f6e223b733a303a22223b733a343a2279656172223b733a343a2232303135223b733a363a22616374697665223b733a313a2231223b7d);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tl_article`
--
ALTER TABLE `tl_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_start_stop_published_sorting` (`pid`,`start`,`stop`,`published`,`sorting`);

--
-- Indizes für die Tabelle `tl_beachcup_organizer`
--
ALTER TABLE `tl_beachcup_organizer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `fax` (`fax`),
  ADD UNIQUE KEY `mobile_phone` (`mobile_phone`);

--
-- Indizes für die Tabelle `tl_beachcup_player`
--
ALTER TABLE `tl_beachcup_player`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `tax_number` (`tax_number`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indizes für die Tabelle `tl_beachcup_player_level`
--
ALTER TABLE `tl_beachcup_player_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indizes für die Tabelle `tl_beachcup_registration`
--
ALTER TABLE `tl_beachcup_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_beachcup_registration_state`
--
ALTER TABLE `tl_beachcup_registration_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indizes für die Tabelle `tl_beachcup_season`
--
ALTER TABLE `tl_beachcup_season`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_beachcup_stage`
--
ALTER TABLE `tl_beachcup_stage`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_beachcup_team`
--
ALTER TABLE `tl_beachcup_team`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_beachcup_tournament`
--
ALTER TABLE `tl_beachcup_tournament`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_beachcup_tournament_type`
--
ALTER TABLE `tl_beachcup_tournament_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indizes für die Tabelle `tl_beachcup_venue`
--
ALTER TABLE `tl_beachcup_venue`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_bootstrap_config`
--
ALTER TABLE `tl_bootstrap_config`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_calendar`
--
ALTER TABLE `tl_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_calendar_events`
--
ALTER TABLE `tl_calendar_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_start_stop_published` (`pid`,`start`,`stop`,`published`);

--
-- Indizes für die Tabelle `tl_calendar_feed`
--
ALTER TABLE `tl_calendar_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indizes für die Tabelle `tl_columnset`
--
ALTER TABLE `tl_columnset`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_comments`
--
ALTER TABLE `tl_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`),
  ADD KEY `source_parent_published` (`source`,`parent`,`published`);

--
-- Indizes für die Tabelle `tl_comments_notify`
--
ALTER TABLE `tl_comments_notify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tokenRemove` (`tokenRemove`),
  ADD KEY `source_parent_tokenConfirm` (`source`,`parent`,`tokenConfirm`);

--
-- Indizes für die Tabelle `tl_content`
--
ALTER TABLE `tl_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_ptable_invisible_sorting` (`pid`,`ptable`,`invisible`,`sorting`);

--
-- Indizes für die Tabelle `tl_cron`
--
ALTER TABLE `tl_cron`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `tl_extension`
--
ALTER TABLE `tl_extension`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_faq`
--
ALTER TABLE `tl_faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_published_sorting` (`pid`,`published`,`sorting`);

--
-- Indizes für die Tabelle `tl_faq_category`
--
ALTER TABLE `tl_faq_category`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_files`
--
ALTER TABLE `tl_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `path` (`path`(333)),
  ADD KEY `extension` (`extension`);

--
-- Indizes für die Tabelle `tl_form`
--
ALTER TABLE `tl_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indizes für die Tabelle `tl_form_field`
--
ALTER TABLE `tl_form_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indizes für die Tabelle `tl_image_size`
--
ALTER TABLE `tl_image_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indizes für die Tabelle `tl_image_size_item`
--
ALTER TABLE `tl_image_size_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indizes für die Tabelle `tl_layout`
--
ALTER TABLE `tl_layout`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_log`
--
ALTER TABLE `tl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_member`
--
ALTER TABLE `tl_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `autologin` (`autologin`),
  ADD KEY `email` (`email`),
  ADD KEY `activation` (`activation`);

--
-- Indizes für die Tabelle `tl_member_group`
--
ALTER TABLE `tl_member_group`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_module`
--
ALTER TABLE `tl_module`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_news`
--
ALTER TABLE `tl_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_start_stop_published` (`pid`,`start`,`stop`,`published`);

--
-- Indizes für die Tabelle `tl_newsletter`
--
ALTER TABLE `tl_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indizes für die Tabelle `tl_newsletter_channel`
--
ALTER TABLE `tl_newsletter_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_newsletter_recipients`
--
ALTER TABLE `tl_newsletter_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `email` (`email`);

--
-- Indizes für die Tabelle `tl_news_archive`
--
ALTER TABLE `tl_news_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_news_feed`
--
ALTER TABLE `tl_news_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indizes für die Tabelle `tl_page`
--
ALTER TABLE `tl_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_type_start_stop_published` (`pid`,`type`,`start`,`stop`,`published`);

--
-- Indizes für die Tabelle `tl_repository_installs`
--
ALTER TABLE `tl_repository_installs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_repository_instfiles`
--
ALTER TABLE `tl_repository_instfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indizes für die Tabelle `tl_search`
--
ALTER TABLE `tl_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `url` (`url`);
ALTER TABLE `tl_search` ADD FULLTEXT KEY `text` (`text`);

--
-- Indizes für die Tabelle `tl_search_index`
--
ALTER TABLE `tl_search_index`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `word` (`word`);

--
-- Indizes für die Tabelle `tl_session`
--
ALTER TABLE `tl_session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`),
  ADD KEY `pid` (`pid`);

--
-- Indizes für die Tabelle `tl_style`
--
ALTER TABLE `tl_style`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indizes für die Tabelle `tl_style_sheet`
--
ALTER TABLE `tl_style_sheet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `tl_theme`
--
ALTER TABLE `tl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_undo`
--
ALTER TABLE `tl_undo`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_user`
--
ALTER TABLE `tl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indizes für die Tabelle `tl_user_group`
--
ALTER TABLE `tl_user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tl_version`
--
ALTER TABLE `tl_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `fromTable` (`fromTable`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `tl_article`
--
ALTER TABLE `tl_article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_organizer`
--
ALTER TABLE `tl_beachcup_organizer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_player`
--
ALTER TABLE `tl_beachcup_player`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_player_level`
--
ALTER TABLE `tl_beachcup_player_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_registration`
--
ALTER TABLE `tl_beachcup_registration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_registration_state`
--
ALTER TABLE `tl_beachcup_registration_state`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_season`
--
ALTER TABLE `tl_beachcup_season`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_stage`
--
ALTER TABLE `tl_beachcup_stage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_team`
--
ALTER TABLE `tl_beachcup_team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_tournament`
--
ALTER TABLE `tl_beachcup_tournament`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_tournament_type`
--
ALTER TABLE `tl_beachcup_tournament_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `tl_beachcup_venue`
--
ALTER TABLE `tl_beachcup_venue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `tl_bootstrap_config`
--
ALTER TABLE `tl_bootstrap_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_calendar`
--
ALTER TABLE `tl_calendar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_calendar_events`
--
ALTER TABLE `tl_calendar_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_calendar_feed`
--
ALTER TABLE `tl_calendar_feed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_columnset`
--
ALTER TABLE `tl_columnset`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_comments`
--
ALTER TABLE `tl_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_comments_notify`
--
ALTER TABLE `tl_comments_notify`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_content`
--
ALTER TABLE `tl_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `tl_cron`
--
ALTER TABLE `tl_cron`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `tl_extension`
--
ALTER TABLE `tl_extension`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `tl_faq`
--
ALTER TABLE `tl_faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_faq_category`
--
ALTER TABLE `tl_faq_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_files`
--
ALTER TABLE `tl_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `tl_form`
--
ALTER TABLE `tl_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `tl_form_field`
--
ALTER TABLE `tl_form_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_image_size`
--
ALTER TABLE `tl_image_size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_image_size_item`
--
ALTER TABLE `tl_image_size_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_layout`
--
ALTER TABLE `tl_layout`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `tl_log`
--
ALTER TABLE `tl_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;
--
-- AUTO_INCREMENT für Tabelle `tl_member`
--
ALTER TABLE `tl_member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `tl_member_group`
--
ALTER TABLE `tl_member_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_module`
--
ALTER TABLE `tl_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `tl_news`
--
ALTER TABLE `tl_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_newsletter`
--
ALTER TABLE `tl_newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_newsletter_channel`
--
ALTER TABLE `tl_newsletter_channel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_newsletter_recipients`
--
ALTER TABLE `tl_newsletter_recipients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_news_archive`
--
ALTER TABLE `tl_news_archive`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `tl_news_feed`
--
ALTER TABLE `tl_news_feed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_page`
--
ALTER TABLE `tl_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `tl_repository_installs`
--
ALTER TABLE `tl_repository_installs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `tl_repository_instfiles`
--
ALTER TABLE `tl_repository_instfiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT für Tabelle `tl_search`
--
ALTER TABLE `tl_search`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `tl_search_index`
--
ALTER TABLE `tl_search_index`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;
--
-- AUTO_INCREMENT für Tabelle `tl_session`
--
ALTER TABLE `tl_session`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT für Tabelle `tl_style`
--
ALTER TABLE `tl_style`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_style_sheet`
--
ALTER TABLE `tl_style_sheet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_theme`
--
ALTER TABLE `tl_theme`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `tl_undo`
--
ALTER TABLE `tl_undo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `tl_user`
--
ALTER TABLE `tl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `tl_user_group`
--
ALTER TABLE `tl_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tl_version`
--
ALTER TABLE `tl_version`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
