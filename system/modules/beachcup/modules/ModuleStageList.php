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
     * Details key
     * @var string
     */
    private $detailsKey = "stage";

    /**
	 * Generate the module
	 */
    protected function compile()
    {
        if(!empty($this->Input->get($this->detailsKey)))
        {
            $this->compileDetailsView($this->Input->get($this->detailsKey));
            $this->Template->details = true;
        }
        else
        {
            $this->compileListView();
            $this->Template->list = true;
        }
    }
    
    private function compileListView()
    {
        global $objPage;
        $database = \Database::getInstance();
        $language = "de";
        $conjunction = " bis ";
        
        if($objPage->language == "it")
        {
            $language = "it";
            $conjunction = " a ";
        }
        
        $stages = $database->query("SELECT tl_beachcup_stage.id, tl_beachcup_stage.is_enabled, tl_beachcup_stage.name_$language AS name, tl_beachcup_stage.start_date, tl_beachcup_stage.end_date, tl_beachcup_venue.picture 
                                    FROM tl_beachcup_stage JOIN tl_beachcup_venue ON tl_beachcup_stage.venue_id = tl_beachcup_venue.id JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                    WHERE tl_beachcup_season.active = true")->fetchAllAssoc();

        foreach($stages as &$stage)
        {
            $src = deserialize($stage["picture"]);
            $file = \FilesModel::findByUuid($src);
            $path = $file->path;
            $stage["picture_source"] = $path;

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
                $stage["link"] = $this->generateFrontendUrl($alias, "/$this->detailsKey/" . $stage["id"]);
            }
            
            $stage["tournaments"] = $database->prepare("SELECT DISTINCT tl_beachcup_tournament.name_$language AS name 
                                                        FROM tl_beachcup_tournament JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament.type_id = tl_beachcup_tournament_type.id 
                                                        WHERE tl_beachcup_tournament.stage_id = ?")->execute($stage["id"])->fetchAllAssoc();
        }
        
        $this->Template->stages = $stages;
    }
    
    private function compileDetailsView($id)
    {
        global $objPage;
        $database = \Database::getInstance();
        $language = "de";
        $conjunction = " bis ";
        $translations = array("tournaments" => array("title" => "Turniere", "name" => "Name", "date" => "Datum"), "venue" => array("title" => "Veranstaltungsort", "address" => "Adresse"), "organizer" => array("title" => "Organisator"));

        if($objPage->language == "it")
        {
            $language = "it";
            $conjunction = " a ";
            $translations = array("tournaments" => array("title" => "Tornei", "name" => "Nome", "date" => "Data"), "venue" => array("title" => "Luogo di manifestazione", "address" => "Indirizzo"), "organizer" => array("title" => "Organizzatore"));
        }
        
        $stage = $database->prepare("SELECT tl_beachcup_stage.name_$language AS name, tl_beachcup_stage.description_$language AS description, tl_beachcup_stage.start_date, tl_beachcup_stage.end_date, tl_beachcup_venue.picture, 
            tl_beachcup_venue.name_$language AS venue_name, tl_beachcup_venue.description_$language AS venue_description, tl_beachcup_venue.address_$language AS venue_address, tl_beachcup_venue.zip_code AS venue_zip_code, 
            tl_beachcup_venue.city_$language AS venue_city, tl_beachcup_organizer.name_$language AS organizer_name, tl_beachcup_organizer.description_$language AS organizer_description, tl_beachcup_organizer.contact_person, 
            tl_beachcup_organizer.email, tl_beachcup_organizer.phone, tl_beachcup_organizer.fax, tl_beachcup_organizer.mobile_phone 
            FROM tl_beachcup_stage 
            JOIN tl_beachcup_venue ON tl_beachcup_stage.venue_id = tl_beachcup_venue.id JOIN tl_beachcup_organizer ON tl_beachcup_stage.organizer_id = tl_beachcup_organizer.id JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
            WHERE tl_beachcup_season.active = true AND tl_beachcup_stage.id = ?")->execute($id)->fetchAssoc();
        
        $src = deserialize($stage["picture"]);
        $file = \FilesModel::findByUuid($src);
        $path = $file->path;
        $stage["picture_source"] = $path;

        if($stage["start_date"] == $stage["end_date"])
        {
            $stage["date"] = \Date::parse("j. F Y", $stage["start_date"]);
        }
        else
        {
            $stage["date"] = \Date::parse("j.", $stage["start_date"]) . $conjunction . \Date::parse("j. F Y", $stage["end_date"]);
        }
        
        
        $stage["tournaments"] = $database->prepare("SELECT DISTINCT tl_beachcup_tournament.name_$language AS name, tl_beachcup_tournament.date 
                                                    FROM tl_beachcup_tournament JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament.type_id = tl_beachcup_tournament_type.id 
                                                    WHERE tl_beachcup_tournament.stage_id = ? 
                                                    ORDER BY tl_beachcup_tournament.date, tl_beachcup_tournament.name_$language")->execute($id)->fetchAllAssoc();
        
        $this->Template->translations = $translations;
        $this->Template->stage = $stage;
    }
}