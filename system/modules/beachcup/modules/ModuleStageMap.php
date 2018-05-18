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
        $registerAlias = "meine-spieler";
        $resultsAlias = "etappenstaende";
        $translations = array("details" => "Details", "register" => "Anmeldung", "results" => "Ergebnisse");
        
        if($objPage->language == "it")
        {
            $language = "it";
            $conjunction = " a ";
            $stagesAlias = "tappe";
            $registerAlias = "i-miei-giocatori";
            $resultsAlias = "risultati-tappe";
            $translations = array("details" => "Dettagli", "register" => "Iscrizione", "results" => "Risultati");
        }
        
        if(($registerPage = $database->prepare("SELECT id, alias FROM tl_page WHERE alias = ?")->execute($registerAlias)->fetchAssoc()) != null)
        {
            $registerLink = $this->generateFrontendUrl($registerPage);
        }
        if(($resultsPage = $database->prepare("SELECT id, alias FROM tl_page WHERE alias = ?")->execute($resultsAlias)->fetchAssoc()) != null)
        {
            $resultsLink = $this->generateFrontendUrl($resultsPage);
        }

        $stages = $database->query("SELECT tl_beachcup_stage.id, tl_beachcup_stage.is_enabled, tl_beachcup_stage.ext_registration_url, tl_beachcup_stage.name_$language AS name, tl_beachcup_stage.start_date, tl_beachcup_stage.end_date, tl_beachcup_venue.picture, tl_beachcup_venue.latitude, tl_beachcup_venue.longitude, tl_beachcup_venue.address_$language AS address 
                                    FROM tl_beachcup_stage 
                                    JOIN tl_beachcup_venue ON tl_beachcup_stage.venue_id = tl_beachcup_venue.id 
                                    JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                    WHERE tl_beachcup_season.active = true 
                                    ORDER BY tl_beachcup_stage.start_date")->fetchAllAssoc();
        
        
        foreach($stages as &$stage)
        {
            $src = deserialize($stage["picture"]);
            $file = \FilesModel::findByUuid($src);
            $path = $file->path;
            $stage["src"] = \Environment::get('base').$path;
            $stage["start_date_iso8601"] = \Date::parse(\DateTime::ATOM, $stage["start_date"]);
            $stage["end_date_iso8601"] = \Date::parse(\DateTime::ATOM, $stage["end_date"]);
            
            if($stage["start_date"] == $stage["end_date"])
            {
                $stage["date"] = \Date::parse("j. F Y", $stage["start_date"]);
            }
            else
            {
                $stage["date"] = \Date::parse("j.", $stage["start_date"]) . $conjunction . \Date::parse("j. F Y", $stage["end_date"]);
            }
            
            //if(($alias = $database->prepare("SELECT id, alias FROM tl_page WHERE alias = ?")->execute($objPage->alias)->fetchAssoc()) != null)
            //{
                //$stage["link"] = $this->generateFrontendUrl(array($objPage->alias), "/../$stagesAlias/$this->detailsKey/" . $stage["id"]);
                $stage["link"] = \Environment::get('base').$objPage->language.'/'.$stagesAlias.'/'.$this->detailsKey.'/'. $stage["id"].'.html';
            //}
            
            if(empty($stage["ext_registration_url"]))
            {
                $stage["registerLink"] = $registerLink;
                $stage["is_external_registration"] = false;
            }
            else
            {
                $stage["registerLink"] = $stage["ext_registration_url"];
                $stage["is_external_registration"] = true;
            }            

            $stage["tournaments"] = $database->prepare("SELECT DISTINCT tl_beachcup_tournament_type.description_$language AS description 
                                                        FROM tl_beachcup_tournament JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament.type_id = tl_beachcup_tournament_type.id 
                                                        WHERE tl_beachcup_tournament.stage_id = ?
                                                        ORDER BY tl_beachcup_tournament_type.description_$language")->execute($stage["id"])->fetchAllAssoc();
            
        }
        
        $this->Template->translations = $translations;
        $this->Template->stages = $stages;        
        $this->Template->resultsLink = $resultsLink;
	}
}