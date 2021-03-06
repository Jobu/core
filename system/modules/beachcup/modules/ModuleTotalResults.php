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
 * Class ModuleTotalResults
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class ModuleTotalResults extends \Module
{

    /**
	 * Template
	 * @var string
	 */
    protected $strTemplate = "mod_total_results";


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
        $teams = $database->query("SELECT *
                                    FROM
                                    (
                                        select q.tournament_name_de, q.tournament_name_it, q.player_name, q.birth_date, sum(q.points) AS total_points
                                        from
                                        (
                                            select @row_num := IF(@prev_value=sq.player_name,@row_num+1,1) AS RowNumber,
                                                sq.player_name as player_name, sq.birth_date, sq.tournament_name_de as tournament_name_de, sq.tournament_name_it as tournament_name_it, sq.points as points, @prev_value := sq.player_name
                                            from (
                                                select concat(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) as player_name, DATE_ADD(FROM_UNIXTIME(0), INTERVAL tl_beachcup_player.birth_date SECOND) as birth_date, IF(tl_beachcup_player.gender='female','U18 weiblich','U18 männlich') AS tournament_name_de, IF(tl_beachcup_player.gender='female','U18 femminile','U18 maschile') AS tournament_name_it, tl_beachcup_registration.points AS points
                                                FROM tl_beachcup_registration 
                                                JOIN tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id 
                                                JOIN tl_beachcup_tournament ON tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id 
                                                JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament_type.id = tl_beachcup_tournament.type_id
                                                JOIN tl_beachcup_stage ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id 
                                                JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                                JOIN tl_beachcup_team ON tl_beachcup_registration.team_id = tl_beachcup_team.id
                                                JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id OR tl_beachcup_team.player_2 = tl_beachcup_player.id
                                                WHERE tl_beachcup_season.active = true
                                                    and (tl_beachcup_tournament_type.code = 'OPEN' or tl_beachcup_tournament_type.code = 'AMATEUR' or tl_beachcup_tournament_type.code = 'MIXED' or tl_beachcup_tournament_type.code = 'CHAMPIONSHIP' or tl_beachcup_tournament_type.code = 'ADULT' or tl_beachcup_tournament_type.code = 'KING')
                                                    and tl_beachcup_tournament.date < UNIX_TIMESTAMP() 
                                                    and  tl_beachcup_registration_state.code in ('COMPLETE','INCOMPLETE')                                                    
                                                    and DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), INTERVAL tl_beachcup_player.birth_date SECOND), '%Y-%m-%d') >= '2002-01-01'
                                                order by player_name, points desc, birth_date DESC 
                                            ) sq,
                                            (SELECT @row_num := 1) x,
                                            (SELECT @prev_value := '') y
                                        ) q
                                        where q.RowNumber < 6
                                        group by q.tournament_name_de, q.tournament_name_it, q.player_name, q.birth_date
                                        UNION
                                        select q.tournament_name_de, q.tournament_name_it, q.player_name, q.birth_date, sum(q.points) AS total_points
                                        from
                                        (
                                            select @row_num := IF(@prev_value=sq.player_name,@row_num+1,1) AS RowNumber,
                                                sq.player_name as player_name, sq.birth_date, sq.tournament_name_de as tournament_name_de, sq.tournament_name_it as tournament_name_it, sq.points as points, @prev_value := sq.player_name
                                            from (
                                                select concat(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) as player_name, DATE_ADD(FROM_UNIXTIME(0), INTERVAL tl_beachcup_player.birth_date SECOND) as birth_date, IF(tl_beachcup_player.gender='female','Damen','Herren') AS tournament_name_de, IF(tl_beachcup_player.gender='female','Donne','Uomini') AS tournament_name_it, tl_beachcup_registration.points AS points
                                                FROM tl_beachcup_registration 
                                                JOIN tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id 
                                                JOIN tl_beachcup_tournament ON tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id 
                                                JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament_type.id = tl_beachcup_tournament.type_id
                                                JOIN tl_beachcup_stage ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id 
                                                JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                                JOIN tl_beachcup_team ON tl_beachcup_registration.team_id = tl_beachcup_team.id
                                                JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id OR tl_beachcup_team.player_2 = tl_beachcup_player.id
                                                WHERE tl_beachcup_season.active = true
                                                    and (tl_beachcup_tournament_type.code = 'OPEN' or tl_beachcup_tournament_type.code = 'AMATEUR' or tl_beachcup_tournament_type.code = 'MIXED' or tl_beachcup_tournament_type.code = 'CHAMPIONSHIP' or tl_beachcup_tournament_type.code = 'ADULT' or tl_beachcup_tournament_type.code = 'KING')
                                                    and tl_beachcup_tournament.date < UNIX_TIMESTAMP() 
                                                    and  tl_beachcup_registration_state.code in ('COMPLETE','INCOMPLETE')
                                                    and DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), INTERVAL tl_beachcup_player.birth_date SECOND), '%Y-%m-%d') < '2002-01-01'
                                                order by player_name, points desc, birth_date DESC
                                            ) sq,
                                            (SELECT @row_num := 1) x,
                                            (SELECT @prev_value := '') y
                                        ) q
                                        where q.RowNumber < 6
                                        group by q.tournament_name_de, q.tournament_name_it, q.player_name, q.birth_date
                                    ) totalteamlist
                                    ORDER BY tournament_name_de, total_points DESC, birth_date desc")->fetchAllAssoc();

        foreach($teams as &$team)
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
        $this->Template->teams = $teams;
    }
}