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
        //$language = "de";
        $conjunction = " und ";
        $translations = array("team" => "Team");
        $user = !empty($this->replaceInsertTags("{{user::id}}")) ? $this->replaceInsertTags("{{user::id}}") : 0;
        
        if($objPage->language == "it")
        {
            //$language = "it";
            $conjunction = " e ";
            $translations = array("team" => "Squadra");
        }
        
        $teams = $database->prepare("SELECT tl_beachcup_team.id, GROUP_CONCAT(CONCAT(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) SEPARATOR ' $conjunction ') as `name`
                                        FROM tl_beachcup_team
                                        JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id or tl_beachcup_team.player_2 = tl_beachcup_player.id
                                        WHERE tl_beachcup_player.user = ?
                                        GROUP BY tl_beachcup_team.id")->execute(array($user))->fetchAllAssoc();
        
        $this->Template->translations = $translations;
        $this->Template->teams = $teams;
    }
}