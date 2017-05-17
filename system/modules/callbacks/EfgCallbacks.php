<?php
class EfgCallbacks extends Backend
{    
    public function customStoreFormData($arrSet, $objForm)
    {
        global $objPage;
        $property = (new ReflectionClass($objForm))->getProperty("objModel");
        $property->setAccessible(true);
        $formId = $property->getValue($objForm)->id;

        //Check if form is player form and save the player and/or member-player relation
        if($formId == 4 || $formId == 8)
        {
            if($arrSet["birth_date"] != "")
            {
                $objDate = new \Date($arrSet["birth_date"]);
                $arrSet["birth_date"] = $objDate->tstamp;
            }

            $player = $this->Database->prepare("SELECT tl_beachcup_player.id FROM tl_beachcup_player WHERE LOWER(tl_beachcup_player.tax_number) = LOWER(?)")->execute($arrSet["tax_number"])->fetchAssoc();

            if(empty($player))
            {
                $this->Database->prepare("INSERT INTO tl_beachcup_player (tl_beachcup_player.tstamp, tl_beachcup_player.name, tl_beachcup_player.surname, tl_beachcup_player.birth_date, tl_beachcup_player.birth_place, tl_beachcup_player.gender, tl_beachcup_player.address, tl_beachcup_player.zip_code, tl_beachcup_player.city, tl_beachcup_player.country, tl_beachcup_player.tax_number, tl_beachcup_player.email, tl_beachcup_player.phone_number, tl_beachcup_player.shirt_size, tl_beachcup_player.player_level, tl_beachcup_player.has_privacy) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")->execute($arrSet);
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

        //Check if form is team form and save the team and/or member-team relation
        if($formId == 5)
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
        if($formId == 6 || $formId == 7)
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
        if($objWidget->id == 33 || $objWidget->id == 43)
        {
            //Check if tax number is valid
            if($_REQUEST["country"] == "it")
            {
                $cf = $_REQUEST["tax_number"];
                $valid = true;
                
                if($cf == "") $valid = false;
                if(strlen($cf) != 16) $valid = false;

                $cf = strtoupper($cf);
                
                if(!preg_match("/[A-Z0-9]+$/", $cf)) $valid = false;
                
                $s = 0;
                
                for($i=1; $i<=13; $i+=2)
                {
                    $c = $cf[$i];
                    
                    if("0" <= $c and $c <= "9")
                    {
                        $s += ord($c) - ord("0");
                    }
                    else
                    {
                        $s += ord($c) - ord("A");
                    }
                }

                for($i=0; $i<=14; $i+=2)
                {
                    $c = $cf[$i];
                    
                    switch($c)
                    {
                        case "0":  $s += 1;  break;
                        case "1":  $s += 0;  break;
                        case "2":  $s += 5;  break;
                        case "3":  $s += 7;  break;
                        case "4":  $s += 9;  break;
                        case "5":  $s += 13;  break;
                        case "6":  $s += 15;  break;
                        case "7":  $s += 17;  break;
                        case "8":  $s += 19;  break;
                        case "9":  $s += 21;  break;
                        case "A":  $s += 1;  break;
                        case "B":  $s += 0;  break;
                        case "C":  $s += 5;  break;
                        case "D":  $s += 7;  break;
                        case "E":  $s += 9;  break;
                        case "F":  $s += 13;  break;
                        case "G":  $s += 15;  break;
                        case "H":  $s += 17;  break;
                        case "I":  $s += 19;  break;
                        case "J":  $s += 21;  break;
                        case "K":  $s += 2;  break;
                        case "L":  $s += 4;  break;
                        case "M":  $s += 18;  break;
                        case "N":  $s += 20;  break;
                        case "O":  $s += 11;  break;
                        case "P":  $s += 3;  break;
                        case "Q":  $s += 6;  break;
                        case "R":  $s += 8;  break;
                        case "S":  $s += 12;  break;
                        case "T":  $s += 14;  break;
                        case "U":  $s += 16;  break;
                        case "V":  $s += 10;  break;
                        case "W":  $s += 22;  break;
                        case "X":  $s += 25;  break;
                        case "Y":  $s += 24;  break;
                        case "Z":  $s += 23;  break;
                    }
                }

                if(chr($s % 26 + ord("A")) != $cf[15]) $valid = false;

                if(!$valid)
                {
                    $objWidget->addError("{{ifnlng::it}}Die Steuernummer ist ungültig.{{ifnlng}}{{iflng::it}}Il codice fiscale non è valido.{{iflng}}");
                }
            }

            //Check if member player link already exists
            $links = $this->Database->prepare("SELECT * FROM tl_beachcup_member_player AS mp JOIN tl_beachcup_player AS p ON mp.player_id = p.id WHERE LOWER(p.tax_number) = LOWER(?) AND mp.member_id = ?;")->execute(array($_REQUEST["tax_number"], $_REQUEST["user"]));
            
            if($links->numRows)
            {
                $objWidget->addError("{{ifnlng::it}}Dieser Spieler wurde bereits angelegt.{{ifnlng}}{{iflng::it}}Questo atleta è già stato creato.{{iflng}}");
            }
        }
        
        //Check player_1 or player_2 select
        if($objWidget->id == 23 || $objWidget->id == 24)
        {
            //Check for double teams
            $teams = $this->Database->prepare("SELECT * FROM tl_beachcup_team as team WHERE (team.player_1 = ? and team.player_2 = ?) or (team.player_2 = ? and team.player_1 = ?)")->execute(array($_REQUEST["player_1"], $_REQUEST["player_2"], $_REQUEST["player_1"], $_REQUEST["player_2"]));
            
            if($teams->numRows)
            {
                $objWidget->addError("{{ifnlng::it}}Ein Team mit den gleichen Spielern existiert bereits im System.{{ifnlng}}{{iflng::it}}Esiste già una squadra nel sistema che è composta dagli stessi atleti.{{iflng}}");
            }
            
            //Check for same player
            if($_REQUEST["player_1"] == $_REQUEST["player_2"])
            {
                $objWidget->addError("{{ifnlng::it}}Teamzusammensetzung ungültig.{{ifnlng}}{{iflng::it}}Composizione squadra non valida.{{iflng}}");
            }
        }
        
        //Check team_id select
        if($objWidget->id == 27 || $objWidget->id == 30)
        {
            //Check age
            $max_age = $this->Database->prepare("select max_age from tl_beachcup_tournament where tl_beachcup_tournament.id = ?")->execute(array($_REQUEST["tournament_id"]))->max_age;
            
            if($max_age > 0)
            {
                foreach($this->Database->prepare("SELECT YEAR(DATE_ADD(FROM_UNIXTIME(0), INTERVAL tl_beachcup_player.birth_date SECOND)) AS birthYear FROM tl_beachcup_team JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id or tl_beachcup_team.player_2 = tl_beachcup_player.id WHERE tl_beachcup_team.id = ?")->execute(array($_REQUEST["team_id"]))->fetchAllAssoc() as $row)
                {
                    if($row["birthYear"] < $max_age)
                    {
                        $error = "Mindestens ein Spieler im Team ist zu alt für das ausgewählte Turnier.";

                        if($objWidget->id == 29)
                        {
                            $error = "Almeno un atleta della squadra supera l'età massima definita per il torneo.";
                        }

                        $objWidget->addError($error);
                        break;
                    }
                }
            }
            
            //Check double registration
            if(!empty($this->Database->prepare("SELECT * from tl_beachcup_registration join tl_beachcup_tournament on tl_beachcup_registration.tournament_id = tl_beachcup_tournament.id join tl_beachcup_team on tl_beachcup_registration.team_id = tl_beachcup_team.id where tl_beachcup_tournament.id = ? and tl_beachcup_team.id = ?")->execute(array($_REQUEST["tournament_id"], $_REQUEST["team_id"]))->fetchAllAssoc()))
            {
                $error = "Das Team ist für dieses Turnier bereits angemeldet.";

                if($objWidget->id == 29)
                {
                    $error = "La squadra si è già iscritta a questo torneo.";
                }

                $objWidget->addError($error);
            }

            //Check for double player registration in one day
            if(!empty(($player = $this->Database->prepare("SELECT p.id FROM tl_beachcup_registration AS r JOIN tl_beachcup_team AS t ON r.team_id = t.id JOIN tl_beachcup_player AS p ON t.player_1 = p.id or t.player_2 = p.id WHERE r.tournament_id = ? GROUP BY p.id HAVING count(*) > 0")->execute(array($_REQUEST["tournament_id"]))->fetchAssoc())))
            {
                $player = $this->Database->prepare("SELECT CONCAT(p.name, ' ', p.surname) as name FROM tl_beachcup_player AS p WHERE p.id = ?")->execute($player)->fetchAssoc();
                $player = $player["name"];
                $objWidget->addError("{{ifnlng::it}}Der Spieler $player nimmt an diesem Turnier bereits teil.{{ifnlng}}{{iflng::it}}L'atleta $player partecipa già a questo torneo.{{iflng}}");
            }
        }
        
        //Check state_id hidden field
        if($objWidget->id == 52 || $objWidget->id == 53)
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