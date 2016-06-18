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
 * Class ModuleTeamList
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class ModuleTeamList extends \Module
{

    /**
	 * Template
	 * @var string
	 */
    protected $strTemplate = "mod_team_list";

    /**
	 * Generate the module
	 */
    protected function compile()
    {
        global $objPage;
        $database = \Database::getInstance();
        $conjunction = " und ";
        $translations = array("team" => "Team");
        $user = !empty($this->replaceInsertTags("{{user::id}}")) ? $this->replaceInsertTags("{{user::id}}") : 0;
        
        if($objPage->language == "it")
        {
            $conjunction = " e ";
            $translations = array("team" => "Squadra");
        }
        
        $teams = $database->prepare("SELECT player_1.team_id, CONCAT(player_1.name, ' $conjunction ', player_2.name) AS name
                                        FROM (SELECT map.member_id AS member_id, team.id AS team_id, CONCAT(player.name, ' ', player.surname) AS name
                                                FROM tl_beachcup_member_player AS map
                                                JOIN tl_beachcup_player AS player ON player.id = map.player_id
                                                JOIN tl_beachcup_team AS team ON team.player_1 = player.id)
                                              AS player_1
                                        JOIN (SELECT map.member_id AS member_id, team.id AS team_id, CONCAT(player.name, ' ', player.surname) AS name
                                                FROM tl_beachcup_member_player AS map
                                                JOIN tl_beachcup_player AS player ON player.id = map.player_id
                                                JOIN tl_beachcup_team AS team ON team.player_2 = player.id)
                                              AS player_2 ON player_1.team_id = player_2.team_id AND player_1.member_id = player_2.member_id
                                        WHERE player_1.member_id = ?
                                        GROUP BY player_1.team_id;")->execute(array($user))->fetchAllAssoc();
        
        $this->Template->translations = $translations;
        $this->Template->teams = $teams;
    }
}