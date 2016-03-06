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
 * Class ModuleStageMap
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class ModuleStageMap extends \Module
{

	/**
	 * Template
	 * @var string
	 */
    protected $strTemplate = "mod_stage_map";


	/**
	 * Generate the module
	 */
	protected function compile()
	{
        global $objPage;
        
        $database = \Database::getInstance();
        $stages = $database->query("SELECT tl_beachcup_stage.id, tl_beachcup_stage.is_enabled, tl_beachcup_stage.name_de, tl_beachcup_stage.name_it, tl_beachcup_stage.start_date, tl_beachcup_stage.end_date, tl_beachcup_venue.picture, tl_beachcup_venue.latitude, tl_beachcup_venue.longitude FROM tl_beachcup_stage JOIN tl_beachcup_venue ON tl_beachcup_stage.venue_id = tl_beachcup_venue.id")->fetchAllAssoc();
        
        foreach($stages as &$stage)
        {
            //Name
            if($objPage->language == "it")
            {
                $stage["name"] = $stage["name_it"];
            }
            else
            {
                $stage["name"] = $stage["name_de"];
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
            $tournaments = $database->query("SELECT tl_beachcup_tournament_type.description_de, tl_beachcup_tournament_type.description_it FROM tl_beachcup_tournament JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament.type_id = tl_beachcup_tournament_type.id WHERE tl_beachcup_tournament.stage_id = " . $stage["id"])->fetchAllAssoc();
            
            foreach($tournaments as &$tournament)
            {
                if($objPage->language == "it")
                {
                    $tournament["description"] = $stage["description_it"];
                }
                else
                {
                    $tournament["description"] = $stage["description_de"];
                }
            }
            
            $stage["tournaments"] = $tournaments;
            
            //Details
            if($objPage->language == "it")
            {
                $stage["details"] = "Details";
            }
            else
            {
                $stage["details"] = "Dettagli";
            }
            
            //Link
            $stage["href"] = "";
        }
        
        $this->Template->stages = $stages;
	}
}