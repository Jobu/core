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
 * Class ModuleStageList
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class ModuleStageList extends \Module
{

    /**
	 * Template
	 * @var string
	 */
    protected $strTemplate = "mod_stage_list";


    /**
	 * Generate the module
	 */
    protected function compile()
    {
        global $objPage;

        $database = \Database::getInstance();
        $stages = $database->query("SELECT tl_beachcup_stage.id, tl_beachcup_stage.is_enabled, tl_beachcup_stage.name_de, tl_beachcup_stage.name_it, tl_beachcup_stage.description_de, tl_beachcup_stage.description_it, tl_beachcup_stage.start_date, tl_beachcup_stage.end_date, tl_beachcup_venue.picture FROM tl_beachcup_stage JOIN tl_beachcup_venue ON tl_beachcup_stage.venue_id = tl_beachcup_venue.id JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id WHERE tl_beachcup_season.active = true")->fetchAllAssoc();

        foreach($stages as &$stage)
        {
            //Name and Description
            if($objPage->language == "it")
            {
                $stage["name"] = $stage["name_it"];
                $stage["description"] = $stage["description_it"];
            }
            else
            {
                $stage["name"] = $stage["name_de"];
                $stage["description"] = $stage["description_de"];
            }

            //Picture
            $src = deserialize($stage["picture"]);
            $file = \FilesModel::findByUuid($src);
            $path = $file->path;
            $stage["src"] = $path;

            //Date
            if($stage["start_date"] == $stage["end_date"])
            {
                $stage["date"] = \Date::parse("j. F Y", $stage["start_date"]);
            }
            else
            {
                if($objPage->language == "it")
                {
                    $stage["date"] = \Date::parse("j.", $stage["start_date"]) . " a " . \Date::parse("j. F Y", $stage["end_date"]);
                }
                else
                {
                    $stage["date"] = \Date::parse("j.", $stage["start_date"]) . " bis " . \Date::parse("j. F Y", $stage["end_date"]);
                }
            }

            //Trounaments
            $tournaments = $database->query("SELECT DISTINCT tl_beachcup_tournament.name_de, tl_beachcup_tournament.name_it, tl_beachcup_tournament_type.description_de, tl_beachcup_tournament_type.description_it FROM tl_beachcup_tournament JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament.type_id = tl_beachcup_tournament_type.id WHERE tl_beachcup_tournament.stage_id = " . $stage["id"])->fetchAllAssoc();

            foreach($tournaments as &$tournament)
            {
                if($objPage->language == "it")
                {
                    $tournament["description"] = $tournament["description_it"];
                    $tournament["description"] = $tournament["name_it"];
                }
                else
                {
                    $tournament["description"] = $tournament["description_de"];
                    $tournament["description"] = $tournament["name_de"];
                }
            }

            $stage["tournaments"] = $tournaments;
        }

        $this->Template->stages = $stages;
    }
}