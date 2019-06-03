<?php
class EfgCallbacks extends Backend
{    
    public function customStoreFormData($arrSet, $objForm)
    {
        global $objPage;
        $property = (new ReflectionClass($objForm))->getProperty("objModel");
        $property->setAccessible(true);
        //$formId = $property->getValue($objForm)->id;
        $formAlias = $property->getValue($objForm)->alias;

        //Check if form is player form and save the player and/or member-player relation
        //if($formId == 4 || $formId == 8)
        if($formAlias == 'spieler-de' || $formAlias == 'spieler-it')
        {
            if($arrSet["birth_date"] != "")
            {
                $objDate = new \Date($arrSet["birth_date"]);
                $arrSet["birth_date"] = $objDate->tstamp;
            }

            $player = $this->Database->prepare("SELECT tl_beachcup_player.id FROM tl_beachcup_player WHERE LOWER(tl_beachcup_player.tax_number) = LOWER(?)")->execute($arrSet["tax_number"])->fetchAssoc();

            if(empty($player))
            {
                $this->Database->prepare("INSERT INTO tl_beachcup_player (tl_beachcup_player.tstamp, tl_beachcup_player.name, tl_beachcup_player.surname, tl_beachcup_player.birth_date, tl_beachcup_player.birth_place, tl_beachcup_player.gender, tl_beachcup_player.address, tl_beachcup_player.zip_code, tl_beachcup_player.city, tl_beachcup_player.country, tl_beachcup_player.tax_number, tl_beachcup_player.email, tl_beachcup_player.phone_number, tl_beachcup_player.shirt_top, tl_beachcup_player.shirt_size, tl_beachcup_player.player_level, tl_beachcup_player.has_privacy) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")->execute($arrSet);
                $player = $this->Database->prepare("SELECT tl_beachcup_player.id FROM tl_beachcup_player WHERE LOWER(tl_beachcup_player.tax_number) = LOWER(?)")->execute($arrSet["tax_number"])->fetchAssoc();
            }

            $this->Database->prepare("INSERT INTO tl_beachcup_member_player (tl_beachcup_member_player.tstamp, tl_beachcup_member_player.player_id, tl_beachcup_member_player.member_id) VALUES (now(), ? , ?)")->execute(array($player["id"], $arrSet["user"]));

            if($arrSet["redirect"])
            {
                $alias = "meine-teams";

                if($objPage->language == "it")
                {
                    $alias = "le-mie-squadre";
                }

                EfgCallbacks::redirectByAlias($alias);
            }

            return array();
        }

        //Check if form is edit player form
        //if($formId == 10)
        if($formAlias == 'spieler-editieren-de' || $formAlias == 'spieler-editieren-it')
        {
            $playerIdParam = \Input::get('player');
            $playerId = intval($playerIdParam);
            if ($playerId > 0)
            {
                $this->Database->prepare("UPDATE tl_beachcup_player set tl_beachcup_player.tstamp = now(), tl_beachcup_player.address = ?, tl_beachcup_player.zip_code = ?, tl_beachcup_player.city = ?, tl_beachcup_player.country = ?, tl_beachcup_player.email = ?, tl_beachcup_player.phone_number = ?, tl_beachcup_player.shirt_top = ?, tl_beachcup_player.shirt_size = ?, tl_beachcup_player.player_level = ? WHERE tl_beachcup_player.id = ?")->execute(array($arrSet["address"], $arrSet["zip_code"], $arrSet["city"], $arrSet["country"], $arrSet["email"], $arrSet["phone_number"], $arrSet["shirt_top"], $arrSet["shirt_size"], $arrSet["player_level"], $playerId));
            }             

            $alias = "meine-spieler";
            if($objPage->language == "it")
            {
                $alias = "i-miei-giocatori";
            }
            EfgCallbacks::redirectByAlias($alias);

            return array();
        }

        //Check if form is team form and save the team and/or member-team relation
        //if($formId == 5)
        if($formAlias == 'teams')
        {
            $team = $this->Database->prepare("SELECT team.id AS id FROM tl_beachcup_team AS team WHERE (team.player_1 = ? AND team.player_2 = ?) OR (team.player_2 = ? AND team.player_1 = ?)")->execute(array($arrSet["player_1"], $arrSet["player_2"], $arrSet["player_1"], $arrSet["player_2"]))->fetchAssoc();

            if(empty($team))
            {
                $this->Database->prepare("INSERT INTO tl_beachcup_team (tl_beachcup_team.tstamp, tl_beachcup_team.player_1, tl_beachcup_team.player_2) VALUES (UNIX_TIMESTAMP(), ?, ?)")->execute(array($arrSet["player_1"], $arrSet["player_2"]));
                $team = $this->Database->prepare("SELECT team.id AS id FROM tl_beachcup_team AS team WHERE (team.player_1 = ? AND team.player_2 = ?) OR (team.player_2 = ? AND team.player_1 = ?)")->execute(array($arrSet["player_1"], $arrSet["player_2"], $arrSet["player_1"], $arrSet["player_2"]))->fetchAssoc();
            }

            $this->Database->prepare("INSERT INTO tl_beachcup_member_team (tl_beachcup_member_team.tstamp, tl_beachcup_member_team.member_id, tl_beachcup_member_team.team_id) VALUES (UNIX_TIMESTAMP(), ?, ?)")->execute(array($arrSet["user"], $team["id"]));

            if($arrSet["redirect"])
            {
                $alias = "meine-anmeldungen";

                if($objPage->language == "it")
                {
                    $alias = "le-mie-iscrizioni";
                }

                EfgCallbacks::redirectByAlias($alias);
            }

            return array();
        }

        //Check if form is registration form and save the registration and/or member-registration relation
        //if($formId == 6 || $formId == 7)
        if($formAlias == 'anmeldungen-deutsch' || $formAlias == 'anmeldungen-italienisch')
        {
            $registration = $this->Database->prepare("SELECT registration.id FROM tl_beachcup_registration AS registration WHERE registration.tournament_id = ? AND registration.team_id = ?")->execute(array($arrSet["tournament_id"], $arrSet["team_id"]))->fetchAssoc();

            if(empty($registration))
            {
                $this->Database->prepare("INSERT INTO tl_beachcup_registration (tl_beachcup_registration.team_id, tl_beachcup_registration.tournament_id, tl_beachcup_registration.state_id) VALUES (?, ?, ?)")->execute(array($arrSet["team_id"], $arrSet["tournament_id"], $arrSet["state_id"]));
                $registration = $this->Database->prepare("SELECT registration.id FROM tl_beachcup_registration AS registration WHERE registration.tournament_id = ? AND registration.team_id = ?")->execute(array($arrSet["tournament_id"], $arrSet["team_id"]))->fetchAssoc();
            }

            $this->Database->prepare("INSERT INTO tl_beachcup_member_registration (tl_beachcup_member_registration.tstamp, tl_beachcup_member_registration.member_id, tl_beachcup_member_registration.registration_id) VALUES (UNIX_TIMESTAMP(), ?, ?)")->execute(array($arrSet["user"], $registration["id"]));

            return array();
        }
        
        return $arrSet;
    }

    public function validateRegistrationFormFields($objWidget, $formId)
    {
        if($objWidget->hasErrors())
        {
            return $objWidget;
        }
        
        //Check for tax_number
        //if($objWidget->id == 33 || $objWidget->id == 43)
        if($objWidget->name == 'tax_number')
        {
            //Check if tax number is valid            
            $cf = $_REQUEST["tax_number"];
            
            $cf = strtoupper($cf);                
            $cfRegex = '/^[a-zA-Z]{6}[0-9]{2}[a-zA-Z][0-9]{2}[a-zA-Z][0-9]{3}[a-zA-Z]$/';
            if (!preg_match($cfRegex, $cf))
            {
                $objWidget->addError("{{ifnlng::it}}Die Steuernummer ist ungültig.{{ifnlng}}{{iflng::it}}Il codice fiscale non è valido.{{iflng}}");
            }

            //Check if member player link already exists
            $links = $this->Database->prepare("SELECT * FROM tl_beachcup_member_player AS mp JOIN tl_beachcup_player AS p ON mp.player_id = p.id WHERE LOWER(p.tax_number) = LOWER(?) AND mp.member_id = ?;")->execute(array($_REQUEST["tax_number"], $_REQUEST["user"]));
            
            if($links->numRows)
            {
                $objWidget->addError("{{ifnlng::it}}Dieser Spieler wurde bereits angelegt.{{ifnlng}}{{iflng::it}}Questo atleta è già stato creato.{{iflng}}");
            }
        }
        
        //Check player_1 or player_2 select
        //if($objWidget->id == 23 || $objWidget->id == 24)
        if($objWidget->name == 'player_1' || $objWidget->name == 'player_2')
        {
            //Check if member team link already exists
            $teams = $this->Database->prepare("SELECT * FROM tl_beachcup_member_team AS mt JOIN tl_beachcup_team as team on team.id = mt.team_id WHERE mt.member_id = ? AND ((team.player_1 = ? and team.player_2 = ?) or (team.player_2 = ? and team.player_1 = ?))")->execute(array($_REQUEST["user"], $_REQUEST["player_1"], $_REQUEST["player_2"], $_REQUEST["player_1"], $_REQUEST["player_2"]));
            
            if($teams->numRows)
            {
                $objWidget->addError("{{ifnlng::it}}Ein Team mit den gleichen Spielern existiert bereits.{{ifnlng}}{{iflng::it}}Esiste giÃ  una squadra che Ã¨ composta dagli stessi atleti.{{iflng}}");
            }
            
            //Check for same player
            if($_REQUEST["player_1"] == $_REQUEST["player_2"])
            {
                $objWidget->addError("{{ifnlng::it}}Teamzusammensetzung ungültig.{{ifnlng}}{{iflng::it}}Composizione squadra non valida.{{iflng}}");
            }
        }
        
        //Check team_id select
        //if($objWidget->id == 27 || $objWidget->id == 30)
        if($objWidget->name == 'team_id')
        {
            //Check age
            $max_age = $this->Database->prepare("select max_age from tl_beachcup_tournament where tl_beachcup_tournament.id = ?")->execute(array($_REQUEST["tournament_id"]))->max_age;
            
            if($max_age > 0)
            {
                foreach($this->Database->prepare("SELECT YEAR(DATE_ADD(FROM_UNIXTIME(0), INTERVAL tl_beachcup_player.birth_date SECOND)) AS birthYear FROM tl_beachcup_team JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id or tl_beachcup_team.player_2 = tl_beachcup_player.id WHERE tl_beachcup_team.id = ?")->execute(array($_REQUEST["team_id"]))->fetchAllAssoc() as $row)
                {
                    if($row["birthYear"] < $max_age)
                    {
                        /*$error = "Mindestens ein Spieler im Team ist zu alt für das ausgewählte Turnier.";

                        if($objWidget->id == 29)
                        {
                            $error = "Almeno un atleta della squadra supera l'età massima definita per il torneo.";
                        }

                        $objWidget->addError($error);*/
                        $objWidget->addError("{{ifnlng::it}}Mindestens ein Spieler im Team ist zu alt für das ausgewählte Turnier.{{ifnlng}}{{iflng::it}}Almeno un atleta della squadra supera l'età massima definita per il torneo.{{iflng}}");
                        break;
                    }
                }
            }
            
            //Check double registration
            if(!empty($this->Database->prepare("SELECT * from tl_beachcup_registration join tl_beachcup_tournament on tl_beachcup_registration.tournament_id = tl_beachcup_tournament.id join tl_beachcup_team on tl_beachcup_registration.team_id = tl_beachcup_team.id where tl_beachcup_tournament.id = ? and tl_beachcup_team.id = ?")->execute(array($_REQUEST["tournament_id"], $_REQUEST["team_id"]))->fetchAllAssoc()))
            {
                /*$error = "Das Team ist für dieses Turnier bereits angemeldet.";

                if($objWidget->id == 29)
                {
                    $error = "La squadra si è già iscritta a questo torneo.";
                }

                $objWidget->addError($error);*/
                $objWidget->addError("{{ifnlng::it}}Das Team ist für dieses Turnier bereits angemeldet.{{ifnlng}}{{iflng::it}}La squadra si è già iscritta a questo torneo.{{iflng}}");
            }

            // Check for double player registration in one tournament
            //if(!empty(($player = $this->Database->prepare("SELECT p.id FROM tl_beachcup_registration AS r JOIN tl_beachcup_team AS t ON r.team_id = t.id JOIN tl_beachcup_player AS p ON t.player_1 = p.id or t.player_2 = p.id WHERE r.tournament_id = ? GROUP BY p.id HAVING count(*) > 0")->execute(array($_REQUEST["tournament_id"]))->fetchAssoc())))
            if(!empty(($player = $this->Database->prepare("SELECT p.id FROM tl_beachcup_registration AS r JOIN tl_beachcup_team AS t ON r.team_id = t.id JOIN tl_beachcup_player AS p ON t.player_1 = p.id or t.player_2 = p.id WHERE r.state_id != 4 and r.tournament_id = ? and p.id in ( SELECT p1.id FROM tl_beachcup_team AS t1 JOIN tl_beachcup_player AS p1 ON t1.player_1 = p1.id OR t1.player_2 = p1.id WHERE t1.id = ? ) GROUP BY p.id HAVING count(*) > 0")->execute(array($_REQUEST["tournament_id"], $_REQUEST["team_id"]))->fetchAssoc())))
            {
                $player = $this->Database->prepare("SELECT CONCAT(p.name, ' ', p.surname) as name FROM tl_beachcup_player AS p WHERE p.id = ?")->execute($player)->fetchAssoc();
                $player = $player["name"];
                $objWidget->addError("{{ifnlng::it}}Der Spieler $player nimmt an diesem Turnier bereits teil.{{ifnlng}}{{iflng::it}}L'atleta $player partecipa già a questo torneo.{{iflng}}");
            }
        }
        
        //Check state_id hidden field
        //if($objWidget->id == 52 || $objWidget->id == 53)
        if($objWidget->name == 'state_id')
        {
            //Check for max_teams and set the registration state
            $max_teams = $this->Database->prepare("select max_teams from tl_beachcup_stage join tl_beachcup_tournament on tl_beachcup_stage.id = tl_beachcup_tournament.stage_id where tl_beachcup_tournament.id = ?")->execute(array($_REQUEST["tournament_id"]))->max_teams;
            $current_teams = $this->Database->prepare("select count(*) as current_teams from tl_beachcup_tournament join tl_beachcup_registration on tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id join tl_beachcup_registration_state on tl_beachcup_registration.state_id=tl_beachcup_registration_state.id  where tl_beachcup_tournament.id = ? and tl_beachcup_registration_state.code in ('PROCESSING', 'COMPLETE', 'INCOMPLETE')")->execute(array($_REQUEST["tournament_id"]))->current_teams;

            if($max_teams <= $current_teams)
            {
                $reflectionProperty = new ReflectionProperty("Contao\FormHidden", "varValue");
                $reflectionProperty->setAccessible(true);
                $reflectionProperty->setValue($objWidget, 5);
            }
        }

        return $objWidget;
    }
    
    //This call back method is never called, beacause in the efg module is a bug
    /*
    public function setState($arrSubmitted, $arrFiles, $intOldId, &$arrForm)
    {
        if($arrSubmitted["FORM_SUBMIT"] == "auto_form_6" || $arrSubmitted["FORM_SUBMIT"] == "auto_form_7")
        {
            $max_teams = $this->Database->prepare("select max_teams from tl_beachcup_stage join tl_beachcup_tournament on tl_beachcup_stage.id = tl_beachcup_tournament.stage_id where tl_beachcup_tournament.id = ?")->execute(array($arrSubmitted["tournament_id"]))->max_teams;
            $current_teams = $this->Database->prepare("select count(*) as current_teams from tl_beachcup_tournament join tl_beachcup_registration on tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id where tl_beachcup_tournament.id = ?")->execute(array($arrSubmitted["tournament_id"]))->current_teams;

            if($max_teams <= $current_teams)
            {
                $arrSubmitted["state_id"] = 5;
            }
        }

        return $arrSubmitted;
    }
    */

    public function redirectByAlias($alias)
    {
        \Controller::redirect(\Controller::generateFrontendUrl($this->Database->prepare("SELECT id, alias FROM tl_page WHERE alias = ?")->execute($alias)->fetchAssoc()));
    }
}
?>