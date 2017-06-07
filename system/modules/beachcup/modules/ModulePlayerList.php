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
 * Class ModulePlayerList
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class ModulePlayerList extends \Module
{

    /**
	 * Template
	 * @var string
	 */
    protected $strTemplate = "mod_player_list";

    /**
	 * Generate the module
	 */
    protected function compile()
    {
        global $objPage;
        $database = \Database::getInstance();
        $translations = array("player" => "Spieler");
        $user = !empty($this->replaceInsertTags("{{user::id}}")) ? $this->replaceInsertTags("{{user::id}}") : 0;
        
        if($objPage->language == "it")
        {
            $translations = array("player" => "Giocatore");
        }
        
        $players = $database->prepare("SELECT DISTINCT tl_beachcup_player.id, CONCAT(tl_beachcup_player.surname, ' ', tl_beachcup_player.name) as `name`
                                        FROM tl_beachcup_member_player
                                        JOIN tl_beachcup_player ON tl_beachcup_member_player.player_id = tl_beachcup_player.id
                                        JOIN tl_member ON tl_beachcup_member_player.member_id = tl_member.id
                                        WHERE tl_beachcup_member_player.member_id = ?
                                        ORDER BY tl_beachcup_player.surname, tl_beachcup_player.name;")->execute(array($user))->fetchAllAssoc();
        
        $this->Template->translations = $translations;
        $this->Template->players = $players;
    }
}