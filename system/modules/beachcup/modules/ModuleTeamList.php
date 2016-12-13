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

        $teams = $database->prepare("SELECT
                                          CONCAT(player_1.name, ' $conjunction ', player_2.name) AS name
                                        FROM tl_beachcup_member_team AS map
                                          JOIN tl_member AS member ON member.id = map.member_id
                                          JOIN tl_beachcup_team AS team ON team.id = map.team_id
                                          JOIN (SELECT
                                                  player.id,
                                                  concat(player.name, ' ', player.surname) AS name
                                                FROM tl_beachcup_player AS player) AS player_1 ON player_1.id = team.player_1
                                          JOIN (SELECT
                                                  player.id,
                                                  concat(player.name, ' ', player.surname) AS name
                                                FROM tl_beachcup_player AS player) AS player_2 ON player_2.id = team.player_2
                                        WHERE member.id = ?")->execute(array($user))->fetchAllAssoc();
        
        $this->Template->translations = $translations;
        $this->Template->teams = $teams;
    }
}