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
 * Class ModuleGameResults
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class ModuleGameResults extends \Module
{

    /**
	 * Template
	 * @var string
	 */
    protected $strTemplate = "mod_game_results";


    /**
	 * Generate the module
	 */
    protected function compile()
    {
        global $objPage;
        
        if($objPage->language == "it")
        {
            $separator = "' e '";
            $lang = "it";
        }
        else
        {
            $separator = "' und '";
            $lang = "de";
        }
        
        $database = \Database::getInstance();
        $teams = $database->query("SELECT tl_beachcup_stage.id AS stage_id, tl_beachcup_stage.name_de AS stage_name_de, tl_beachcup_stage.name_it AS stage_name_it, tl_beachcup_tournament.id AS tournament_id, tl_beachcup_tournament.date AS tournament_date, tl_beachcup_tournament.name_de AS tournament_name_de, tl_beachcup_tournament.name_it AS tournament_name_it, team.team_name, tl_beachcup_registration.points FROM tl_beachcup_registration JOIN tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id JOIN tl_beachcup_tournament ON tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id JOIN tl_beachcup_stage ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id JOIN (SELECT tl_beachcup_team.id AS id, GROUP_CONCAT(CONCAT(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) SEPARATOR $separator) AS team_name FROM tl_beachcup_team JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id OR tl_beachcup_team.player_2 = tl_beachcup_player.id GROUP BY tl_beachcup_team.id) AS team ON team.id = tl_beachcup_registration.team_id WHERE DATE(NOW()) > DATE(from_unixtime(tl_beachcup_stage.end_date)) and  tl_beachcup_registration_state.code = 'COMPLETE' ORDER BY tl_beachcup_stage.start_date, tl_beachcup_stage.id, tl_beachcup_tournament.date, tl_beachcup_tournament.name_".$lang.", tl_beachcup_registration.points DESC")->fetchAllAssoc();

        foreach($teams as &$team)
        {
            if($objPage->language == "it")
            {
                $team["stage_name"] = $team["stage_name_it"];
                $team["tournament_name"] = $team["tournament_name_it"];
                $team["points"] = "Punti: " . $team["points"];
            }
            else
            {
                $team["stage_name"] = $team["stage_name_de"];
                $team["tournament_name"] = $team["tournament_name_de"];
                $team["points"] = "Punkte: " . $team["points"];
            }
        }
        
        $this->Template->teams = $teams;
    }
}