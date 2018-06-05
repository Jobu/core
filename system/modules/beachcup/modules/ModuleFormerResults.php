<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2015 Leo Feyer
 *
 * @package   beachcup
 * @author    Jakob Pallhuber
 * @license   LGPL
 * @copyright Copyright © Jakob Pallhuber All Rights Reserved
 */


/**
 * Namespace
 */
namespace beachcup;


/**
 * Class ModuleFormerResults
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class ModuleFormerResults extends \Module
{

    /**
	 * Template
	 * @var string
	 */
    protected $strTemplate = "mod_former_results";


    /**
	 * Generate the module
	 */
    protected function compile()
    {
        global $objPage;
        $separator = "' und '";
        $translations = array("noResults" => "Es sind noch keine Ergebnisse vorhanden!");
        
        if($objPage->language == "it")
        {
            $separator = "' e '";
            $translations = array("noResults" => "Non sono ancora disponibili risultati!");
        }        
        
        $database = \Database::getInstance();

        // 2016 results
        $teams2016 = $database->query("SELECT *
                                    FROM
                                    (
                                        SELECT tl_beachcup_tournament.name_de AS tournament_name_de, tl_beachcup_tournament.name_it AS tournament_name_it, team.team_name, sum(tl_beachcup_registration.points) AS total_points 
                                        FROM tl_beachcup_registration 
                                        JOIN tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id 
                                        JOIN tl_beachcup_tournament ON tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id 
                                        JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament_type.id = tl_beachcup_tournament.type_id
                                        JOIN tl_beachcup_stage ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id 
                                        JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                        JOIN (
                                            SELECT tl_beachcup_team.id AS id, GROUP_CONCAT(CONCAT(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) SEPARATOR $separator) AS team_name 
                                            FROM tl_beachcup_team 
                                            JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id OR tl_beachcup_team.player_2 = tl_beachcup_player.id 
                                            GROUP BY tl_beachcup_team.id
                                        ) AS team ON team.id = tl_beachcup_registration.team_id 
                                        WHERE tl_beachcup_season.year = 2016 
                                            and tl_beachcup_tournament_type.code = 'OPEN' 
                                            and DATE(NOW()) >= DATE(from_unixtime(tl_beachcup_stage.start_date)) 
                                            and  tl_beachcup_registration_state.code in ('COMPLETE','INCOMPLETE') 
                                        GROUP BY tl_beachcup_tournament.name_de, team.id
                                        UNION
                                        select q.tournament_name_de, q.tournament_name_it, q.team_name, sum(q.points) AS total_points
                                        from
                                        (
                                            select @row_num := IF(@prev_value=sq.team_name,@row_num+1,1) AS RowNumber,
                                                sq.team_name as team_name, sq.tournament_name_de as tournament_name_de, sq.tournament_name_it as tournament_name_it, sq.points as points, @prev_value := sq.team_name
                                            from (
                                                select team.team_name as team_name, 'Freizeit Herren' AS tournament_name_de, 'Amatoriale maschile' AS tournament_name_it, tl_beachcup_registration.points AS points
                                                FROM tl_beachcup_registration 
                                                JOIN tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id 
                                                JOIN tl_beachcup_tournament ON tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id 
                                                JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament_type.id = tl_beachcup_tournament.type_id
                                                JOIN tl_beachcup_stage ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id 
                                                JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                                JOIN (
                                                    select tl_beachcup_team.id AS id, concat(p1.name, ' ', p1.surname, $separator, p2.name, ' ', p2.surname) team_name
                                                    from tl_beachcup_team
                                                    join tl_beachcup_player p1 on p1.id = tl_beachcup_team.player_1
                                                    join tl_beachcup_player_level pl1 on pl1.id = p1.player_level
                                                    join tl_beachcup_player p2 on p2.id = tl_beachcup_team.player_2
                                                    join tl_beachcup_player_level pl2 on pl2.id = p2.player_level
                                                    where pl1.code in ('SERIE_D','DIV_1','DIV_2','DIV_3','OTHER') and pl2.code in ('SERIE_D','DIV_1','DIV_2','DIV_3','OTHER')
                                                    UNION
                                                    select tl_beachcup_team.id AS id, concat(p1.name, ' ', p1.surname, $separator, p2.name, ' ', p2.surname) team_name 
                                                    from tl_beachcup_team
                                                    join tl_beachcup_player p1 on p1.id = tl_beachcup_team.player_1
                                                    join tl_beachcup_player p2 on p2.id = tl_beachcup_team.player_2
                                                    where TIMESTAMPDIFF(YEAR,DATE_ADD(FROM_UNIXTIME(0), INTERVAL p1.birth_date SECOND),CURDATE()) > 40
                                                    and TIMESTAMPDIFF(YEAR,DATE_ADD(FROM_UNIXTIME(0), INTERVAL p2.birth_date SECOND),CURDATE()) > 40
                                                    UNION
                                                    select tl_beachcup_team.id AS id, concat(p1.name, ' ', p1.surname, $separator, p2.name, ' ', p2.surname) team_name 
                                                    from tl_beachcup_team
                                                    join tl_beachcup_player p1 on p1.id = tl_beachcup_team.player_1
                                                    join tl_beachcup_player p2 on p2.id = tl_beachcup_team.player_2
                                                    where TIMESTAMPDIFF(YEAR,DATE_ADD(FROM_UNIXTIME(0), INTERVAL p1.birth_date SECOND),CURDATE()) < 16
                                                    or TIMESTAMPDIFF(YEAR,DATE_ADD(FROM_UNIXTIME(0), INTERVAL p2.birth_date SECOND),CURDATE()) < 16

                                                ) AS team ON team.id = tl_beachcup_registration.team_id
                                                WHERE tl_beachcup_season.year = 2016 
                                                    and (tl_beachcup_tournament_type.code = 'OPEN' and tl_beachcup_tournament.name_de = 'Open Herren' or tl_beachcup_tournament_type.code = 'AMATEUR') 
                                                    and DATE(NOW()) >= DATE(from_unixtime(tl_beachcup_stage.start_date)) 
                                                    and  tl_beachcup_registration_state.code in ('COMPLETE','INCOMPLETE')
                                                order by team_name, points desc
                                            ) sq,
                                            (SELECT @row_num := 1) x,
                                            (SELECT @prev_value := '') y
                                        ) q
                                        where q.RowNumber < 5
                                        group by q.tournament_name_de, q.tournament_name_it, q.team_name
                                    ) totalteamlist
                                    ORDER BY tournament_name_de, total_points DESC")->fetchAllAssoc();

        foreach($teams2016 as &$team)
        {
            if($objPage->language == "it")
            {
                $team["tournament_name"] = $team["tournament_name_it"];
                $team["total_points"] = "Punti: " . $team["total_points"];
            }
            else
            {
                $team["tournament_name"] = $team["tournament_name_de"];
                $team["total_points"] = "Punkte: " . $team["total_points"];
            }
        }

        // 2017 results
        $teams2017 = $database->query("SELECT *
                                    FROM
                                    (
                                        select q.tournament_name_de, q.tournament_name_it, q.player_name, sum(q.points) AS total_points
                                        from
                                        (
                                            select @row_num := IF(@prev_value=sq.player_name,@row_num+1,1) AS RowNumber,
                                                sq.player_name as player_name, sq.tournament_name_de as tournament_name_de, sq.tournament_name_it as tournament_name_it, sq.points as points, @prev_value := sq.player_name
                                            from (
                                                select concat(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) as player_name, IF(tl_beachcup_player.gender='female','U18 weiblich','U18 männlich') AS tournament_name_de, IF(tl_beachcup_player.gender='female','U18 femminile','U18 maschile') AS tournament_name_it, tl_beachcup_registration.points AS points
                                                FROM tl_beachcup_registration 
                                                JOIN tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id 
                                                JOIN tl_beachcup_tournament ON tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id 
                                                JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament_type.id = tl_beachcup_tournament.type_id
                                                JOIN tl_beachcup_stage ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id 
                                                JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                                JOIN tl_beachcup_team ON tl_beachcup_registration.team_id = tl_beachcup_team.id
                                                JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id OR tl_beachcup_team.player_2 = tl_beachcup_player.id
                                                WHERE tl_beachcup_season.year = 2017
                                                    and (tl_beachcup_tournament_type.code = 'OPEN' or tl_beachcup_tournament_type.code = 'AMATEUR' or tl_beachcup_tournament_type.code = 'MIXED')
                                                    and tl_beachcup_tournament.date < UNIX_TIMESTAMP() 
                                                    and  tl_beachcup_registration_state.code in ('COMPLETE','INCOMPLETE')                                                    
                                                    and DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), INTERVAL tl_beachcup_player.birth_date SECOND), '%Y-%m-%d') >= '2000-01-01'
                                                order by player_name, points desc
                                            ) sq,
                                            (SELECT @row_num := 1) x,
                                            (SELECT @prev_value := '') y
                                        ) q
                                        where q.RowNumber < 5
                                        group by q.tournament_name_de, q.tournament_name_it, q.player_name
                                        UNION
                                        select q.tournament_name_de, q.tournament_name_it, q.player_name, sum(q.points) AS total_points
                                        from
                                        (
                                            select @row_num := IF(@prev_value=sq.player_name,@row_num+1,1) AS RowNumber,
                                                sq.player_name as player_name, sq.tournament_name_de as tournament_name_de, sq.tournament_name_it as tournament_name_it, sq.points as points, @prev_value := sq.player_name
                                            from (
                                                select concat(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) as player_name, IF(tl_beachcup_player.gender='female','Damen','Herren') AS tournament_name_de, IF(tl_beachcup_player.gender='female','Donne','Uomini') AS tournament_name_it, tl_beachcup_registration.points AS points
                                                FROM tl_beachcup_registration 
                                                JOIN tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id 
                                                JOIN tl_beachcup_tournament ON tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id 
                                                JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament_type.id = tl_beachcup_tournament.type_id
                                                JOIN tl_beachcup_stage ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id 
                                                JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                                JOIN tl_beachcup_team ON tl_beachcup_registration.team_id = tl_beachcup_team.id
                                                JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id OR tl_beachcup_team.player_2 = tl_beachcup_player.id
                                                WHERE tl_beachcup_season.year = 2017
                                                    and (tl_beachcup_tournament_type.code = 'OPEN' or tl_beachcup_tournament_type.code = 'AMATEUR' or tl_beachcup_tournament_type.code = 'MIXED')
                                                    and tl_beachcup_tournament.date < UNIX_TIMESTAMP() 
                                                    and  tl_beachcup_registration_state.code in ('COMPLETE','INCOMPLETE')
                                                    and DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), INTERVAL tl_beachcup_player.birth_date SECOND), '%Y-%m-%d') < '2000-01-01'
                                                order by player_name, points desc
                                            ) sq,
                                            (SELECT @row_num := 1) x,
                                            (SELECT @prev_value := '') y
                                        ) q
                                        where q.RowNumber < 5
                                        group by q.tournament_name_de, q.tournament_name_it, q.player_name
                                    ) totalteamlist
                                    ORDER BY tournament_name_de, total_points DESC")->fetchAllAssoc();

        foreach($teams2017 as &$team)
        {
            if($objPage->language == "it")
            {
                $team["tournament_name"] = $team["tournament_name_it"];
                $team["total_points"] = "Punti: " . $team["total_points"];
            }
            else
            {
                $team["tournament_name"] = $team["tournament_name_de"];
                $team["total_points"] = "Punkte: " . $team["total_points"];
            }
        }

        $this->Template->translations = $translations;
        $this->Template->teams2016 = $teams2016;
        $this->Template->teams2017 = $teams2017;
    }
}