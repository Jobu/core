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
 * Class ModuleRegistrationList
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class ModuleRegistrationList extends \Module
{

    /**
	 * Template
	 * @var string
	 */
    protected $strTemplate = "mod_registration_list";

    /**
	 * Generate the module
	 */
    protected function compile()
    {
        global $objPage;
        $database = \Database::getInstance();
        $language = "de";
        $conjunction = " und ";
        $translations = array("team" => "Team", "tournament" => "Turnier", "state" => "Status");
        $user = !empty($this->replaceInsertTags("{{user::id}}")) ? $this->replaceInsertTags("{{user::id}}") : 0;
        
        if($objPage->language == "it")
        {
            $language = "it";
            $conjunction = " e ";
            $translations = array("team" => "Squadra", "tournament" => "Torneo",  "state" => "Stato");
        }
        
        $registrations = $database->prepare("SELECT team.team, tl_beachcup_tournament.name_$language as `tournament`, tl_beachcup_registration_state.description_$language as `state`
                                            FROM tl_beachcup_registration
                                            JOIN tl_beachcup_registration_state ON tl_beachcup_registration.state_id = tl_beachcup_registration_state.id
                                            JOIN tl_beachcup_tournament ON tl_beachcup_registration.tournament_id = tl_beachcup_tournament.id
                                            JOIN (SELECT tl_beachcup_team.id, GROUP_CONCAT(CONCAT(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) SEPARATOR ' $conjunction ') as `team`
                                                  FROM tl_beachcup_team
                                                  JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id or tl_beachcup_team.player_2 = tl_beachcup_player.id
                                                  WHERE tl_beachcup_player.user = ?
                                                  GROUP BY tl_beachcup_team.id) as team ON tl_beachcup_registration.team_id = team.id")->execute(array($user))->fetchAllAssoc();
        
        $this->Template->translations = $translations;
        $this->Template->registrations = $registrations;
    }
}