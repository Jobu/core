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
     * Details key
     * @var string
     */
    private $detailsKey = "stage";

	/**
	 * Generate the module
	 */
	protected function compile()
	{
        global $objPage;
        $database = \Database::getInstance();
        $language = "de";
        $conjunction = " bis ";
        $stagesAlias = "etappen";
        $translations = array("details" => "Details", "register" => "Anmeldung");
        
        if($objPage->language == "it")
        {
            $language = "it";
            $conjunction = " a ";
            $stagesAlias = "tappe";
            $translations = array("details" => "Dettagli", "register" => "Registrazione");
        }
        
        $stages = $database->query("SELECT tl_beachcup_stage.id, tl_beachcup_stage.is_enabled, tl_beachcup_stage.name_$language AS name, tl_beachcup_stage.start_date, tl_beachcup_stage.end_date, tl_beachcup_venue.picture, tl_beachcup_venue.latitude, tl_beachcup_venue.longitude FROM tl_beachcup_stage JOIN tl_beachcup_venue ON tl_beachcup_stage.venue_id = tl_beachcup_venue.id JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id WHERE tl_beachcup_season.active = true")->fetchAllAssoc();
        
        
        foreach($stages as &$stage)
        {
            $src = deserialize($stage["picture"]);
            $file = \FilesModel::findByUuid($src);
            $path = $file->path;
            $stage["src"] = $path;
            
            if($stage["start_date"] == $stage["end_date"])
            {
                $stage["date"] = \Date::parse("j. F Y", $stage["start_date"]);
            }
            else
            {
                $stage["date"] = \Date::parse("j.", $stage["start_date"]) . $conjunction . \Date::parse("j. F Y", $stage["end_date"]);
            }
            
            if(($alias = $database->prepare("SELECT id, alias FROM tl_page WHERE alias = ?")->execute($objPage->alias)->fetchAssoc()) != null)
            {
                $stage["link"] = $this->generateFrontendUrl($alias, "/../$stagesAlias/$this->detailsKey/" . $stage["id"]);
            }
            
            $stage["tournaments"] = $database->prepare("SELECT DISTINCT tl_beachcup_tournament_type.description_$language AS description FROM tl_beachcup_tournament JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament.type_id = tl_beachcup_tournament_type.id WHERE tl_beachcup_tournament.stage_id = ?")->execute($stage["id"])->fetchAllAssoc();
            
        }
        
        $this->Template->translations = $translations;
        $this->Template->stages = $stages;
	}
}