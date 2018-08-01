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
        global $objPage;
        $database = \Database::getInstance();

        $registerAlias = "meine-spieler";
        $resultsAlias = "etappenstaende";
        if($objPage->language == "it") {
            $registerAlias = "i-miei-giocatori";
            $resultsAlias = "risultati-tappe";
        }
        if(($registerPage = $database->prepare("SELECT id, alias FROM tl_page WHERE alias = ?")->execute($registerAlias)->fetchAssoc()) != null)
        {
            $registerLink = $this->generateFrontendUrl($registerPage);
        }
        if(($resultsPage = $database->prepare("SELECT id, alias FROM tl_page WHERE alias = ?")->execute($resultsAlias)->fetchAssoc()) != null)
        {
            $resultsLink = $this->generateFrontendUrl($resultsPage);
        }

        if(!empty($this->Input->get($this->detailsKey)))
        {
            $this->compileDetailsView($this->Input->get($this->detailsKey), $registerLink);
            $this->Template->details = true;
        }
        else
        {
            $this->compileListView($registerLink);
            $this->Template->list = true;
        }
                
        $this->Template->resultsLink = $resultsLink;
    }
    
    private function compileListView($registerLink)
    {
        global $objPage;
        $database = \Database::getInstance();
        $language = "de";
        $conjunction = " bis ";
        $translations = array("register" => "Anmeldung", "results" => "Ergebnisse");
        
        if($objPage->language == "it")
        {
            $language = "it";
            $conjunction = " a ";
            $translations = array("register" => "Iscrizione", "results" => "Risultati");
        }
        
        $stages = $database->query("SELECT tl_beachcup_stage.id, tl_beachcup_stage.is_enabled, tl_beachcup_stage.ext_registration_url, tl_beachcup_stage.name_$language AS name, tl_beachcup_stage.start_date, tl_beachcup_stage.end_date, tl_beachcup_venue.picture 
                                    FROM tl_beachcup_stage JOIN tl_beachcup_venue ON tl_beachcup_stage.venue_id = tl_beachcup_venue.id 
                                    JOIN tl_beachcup_season ON tl_beachcup_stage.season_id = tl_beachcup_season.id 
                                    WHERE tl_beachcup_season.active = true
                                    ORDER BY tl_beachcup_stage.start_date")->fetchAllAssoc();

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
            
            $stage["tournaments"] = $database->prepare("SELECT tl_beachcup_tournament.name_$language AS name 
                                                        FROM tl_beachcup_tournament 
                                                        JOIN tl_beachcup_tournament_type ON tl_beachcup_tournament.type_id = tl_beachcup_tournament_type.id 
                                                        WHERE tl_beachcup_tournament.stage_id = ?
                                                        ORDER BY tl_beachcup_tournament.date, tl_beachcup_tournament.name_$language")->execute($stage["id"])->fetchAllAssoc();
        }
        
        $this->Template->translations = $translations;
        $this->Template->stages = $stages;
    }
    
    private function compileDetailsView($id, $registerLink)
    {
        global $objPage;
        $database = \Database::getInstance();
        $language = "de";
        $conjunction = " bis ";
        $separator = "' und '";
        $translations = array("tournaments" => array("title" => "Turniere und angemeldete Teams", "name" => "Name", "date" => "Datum"), "venue" => array("title" => "Veranstaltungsort", "address" => "Adresse"), "organizer" => array("title" => "Organisator"), "register" => "Anmeldung", "results" => "Ergebnisse", "waitingList" => "Warteliste");

        if($objPage->language == "it")
        {
            $language = "it";
            $conjunction = " a ";
            $separator = "' e '";
            $translations = array("tournaments" => array("title" => "Tornei e squadre partecipanti", "name" => "Nome", "date" => "Data"), "venue" => array("title" => "Luogo di manifestazione", "address" => "Indirizzo"), "organizer" => array("title" => "Organizzatore"), "register" => "Iscrizione", "results" => "Risultati", "waitingList" => "Lista d'attesa");
        }
        
        $stage = $database->prepare("SELECT tl_beachcup_stage.name_$language AS name, tl_beachcup_stage.description_$language AS description, tl_beachcup_stage.start_date, tl_beachcup_stage.end_date, tl_beachcup_stage.is_enabled, tl_beachcup_stage.ext_registration_url, tl_beachcup_venue.picture, 
            tl_beachcup_venue.name_$language AS venue_name, tl_beachcup_venue.description_$language AS venue_description, tl_beachcup_venue.address_$language AS venue_address, tl_beachcup_venue.zip_code AS venue_zip_code, 
            tl_beachcup_venue.city_$language AS venue_city, tl_beachcup_organizer.name_$language AS organizer_name, tl_beachcup_organizer.description_$language AS organizer_description, tl_beachcup_organizer.contact_person, 
            tl_beachcup_organizer.email, tl_beachcup_organizer.phone, tl_beachcup_organizer.fax, tl_beachcup_organizer.mobile_phone 
                                    FROM tl_beachcup_stage 
                                    JOIN tl_beachcup_venue ON tl_beachcup_stage.venue_id = tl_beachcup_venue.id 
                                    JOIN tl_beachcup_organizer ON tl_beachcup_stage.organizer_id = tl_beachcup_organizer.id 
                                    WHERE tl_beachcup_stage.id = ?")->execute($id)->fetchAssoc();
        
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

        if(empty($stage["ext_registration_url"]))
        {
            $stage["registerLink"] = $registerLink;
            $stage["is_external_registration"] = false;            
        }
        else
        {
            $stage["registerLink"] = $stage["ext_registration_url"];
            $stage["is_external_registration"] = true;
            if($objPage->language == "it")
            {
                $translations["tournaments"]["title"] = "Tornei";
            }
            else
            {
                $translations["tournaments"]["title"] = "Turniere";
            }
        }
                
        $teams = $database->prepare("SELECT tl_beachcup_stage.id AS stage_id, tl_beachcup_tournament.id AS tournament_id, tl_beachcup_tournament.date AS tournament_date, tl_beachcup_tournament.name_de AS tournament_name_de, tl_beachcup_tournament.name_it AS tournament_name_it, team.team_name, tl_beachcup_registration_state.code  registration_state
                                    FROM tl_beachcup_tournament
                                    JOIN tl_beachcup_stage ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id
                                    LEFT OUTER JOIN tl_beachcup_registration ON tl_beachcup_registration.tournament_id = tl_beachcup_tournament.id
                                    LEFT OUTER JOIN tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id AND tl_beachcup_registration_state.code != 'REJECTED'
                                    LEFT OUTER JOIN (SELECT tl_beachcup_team.id AS id, GROUP_CONCAT(CONCAT(tl_beachcup_player.name, ' ', tl_beachcup_player.surname) SEPARATOR $separator) AS team_name FROM tl_beachcup_team JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id OR tl_beachcup_team.player_2 = tl_beachcup_player.id GROUP BY tl_beachcup_team.id) AS team ON team.id = tl_beachcup_registration.team_id 
                                    WHERE tl_beachcup_tournament.stage_id = ? and not (team.team_name is not null and tl_beachcup_registration_state.code is null)
                                    ORDER BY tl_beachcup_tournament.date, tl_beachcup_tournament.name_".$language.", tl_beachcup_registration.id")->execute($id)->fetchAllAssoc();

        foreach($teams as &$team)
        {
            if($objPage->language == "it")
            {
                $team["tournament_name"] = $team["tournament_name_it"];
            }
            else
            {
                $team["tournament_name"] = $team["tournament_name_de"];
            }
        }
        $stage["participanting_teams"] = $teams;

        $this->Template->translations = $translations;
        $this->Template->stage = $stage;
    }
}