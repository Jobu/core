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
        $teams = $database->query("SELECT tl_beachcup_tournament.name_de AS tournament_name_de, tl_beachcup_tournament.name_it AS tournament_name_it, team.team_name, sum(tl_beachcup_registration.points) AS total_points 
                                    FROM tl_beachcup_registration 
                                    JOIN tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id 
                                    JOIN tl_beachcup_tournament ON tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id 
                                    JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament_type.id = tl_beachcup_tournament.type_id
                                    JOIN tl_beachcup_stage ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id 
                                    JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                    JOIN (SELECT tl_beachcup_team.id AS id, GROUP_CONCAT(CONCAT(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) SEPARATOR $separator) AS team_name FROM tl_beachcup_team JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id OR tl_beachcup_team.player_2 = tl_beachcup_player.id GROUP BY tl_beachcup_team.id) AS team ON team.id = tl_beachcup_registration.team_id 
                                    WHERE tl_beachcup_season.active = true and tl_beachcup_tournament_type.code in ('OPEN','AMATEUR') and DATE(NOW()) > DATE(from_unixtime(tl_beachcup_stage.end_date)) and  tl_beachcup_registration_state.code in ('COMPLETE','INCOMPLETE') 
                                    GROUP BY tl_beachcup_tournament.name_de, team.id 
                                    ORDER BY tl_beachcup_tournament.name_de, total_points DESC")->fetchAllAssoc();
        
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