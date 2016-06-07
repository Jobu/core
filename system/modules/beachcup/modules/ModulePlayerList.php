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
        //$language = "de";
        $translations = array("player" => "Spieler");
        $user = !empty($this->replaceInsertTags("{{user::id}}")) ? $this->replaceInsertTags("{{user::id}}") : 0;
        
        if($objPage->language == "it")
        {
            //$language = "it";
            $translations = array("player" => "Giocatore");
        }
        
        $players = $database->prepare("SELECT CONCAT(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) as `name`
                                        FROM tl_beachcup_player
                                        WHERE tl_beachcup_player.user = ?")->execute(array($user))->fetchAllAssoc();
        
        $this->Template->translations = $translations;
        $this->Template->players = $players;
    }
}