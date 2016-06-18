<?php
class EfgCallbacks extends Backend
{    
    public function customStoreFormData($arrSet, $objForm)
    {
        $property = (new ReflectionClass($objForm))->getProperty("objModel");
        $property->setAccessible(true);
        $formId = $property->getValue($objForm)->id;
        
        //Check if form is german or italian player form
        if($formId == 4 || $formId == 8)
        {
            if($arrSet["birth_date"] != "")
            {
                $objDate = new \Date($arrSet["birth_date"]);
                $arrSet["birth_date"] = $objDate->tstamp;
            }
            
            $player = $this->Database->prepare("SELECT tl_beachcup_player.id FROM tl_beachcup_player WHERE LOWER(tl_beachcup_player.tax_number) = LOWER(?)")->execute($arrSet["tax_number"])->fetchAssoc();

            if(!empty($player))
            {
                $this->Database->prepare("INSERT INTO tl_beachcup_member_player (tl_beachcup_member_player.tstamp, tl_beachcup_member_player.player_id, tl_beachcup_member_player.member_id) VALUES (now(), ? , ?)")->execute(array($player["id"], $arrSet["user"]));
            }
            else
            {
                $this->Database->prepare("INSERT INTO tl_beachcup_player (tl_beachcup_player.tstamp, tl_beachcup_player.name, tl_beachcup_player.surname, tl_beachcup_player.birth_date, tl_beachcup_player.birth_place, tl_beachcup_player.gender, tl_beachcup_player.address, tl_beachcup_player.zip_code, tl_beachcup_player.city, tl_beachcup_player.country, tl_beachcup_player.tax_number, tl_beachcup_player.email, tl_beachcup_player.phone_number, tl_beachcup_player.shirt_size, tl_beachcup_player.player_level, tl_beachcup_player.has_privacy) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")->execute($arrSet);
                $player = $this->Database->prepare("SELECT tl_beachcup_player.id FROM tl_beachcup_player WHERE LOWER(tl_beachcup_player.tax_number) = LOWER(?)")->execute($arrSet["tax_number"])->fetchAssoc();
                $this->Database->prepare("INSERT INTO tl_beachcup_member_player (tl_beachcup_member_player.tstamp, tl_beachcup_member_player.player_id, tl_beachcup_member_player.member_id) VALUES (now(), ? , ?)")->execute(array($player["id"], $arrSet["user"]));
            }
            
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
        
        //Check team_id select
        if($objWidget->id == 27 || $objWidget->id == 30)
        {
            //Check age
            $max_age = $this->Database->prepare("select max_age from tl_beachcup_tournament where tl_beachcup_tournament.id = ?")->execute(array($_REQUEST["tournament_id"]))->max_age;
            if($max_age > 0) {
                foreach($this->Database->prepare("SELECT YEAR(tl_beachcup_player.birth_date) AS birthYear FROM tl_beachcup_team JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id or tl_beachcup_team.player_2 = tl_beachcup_player.id WHERE tl_beachcup_team.id = ?")->execute(array($_REQUEST["team_id"]))->fetchAllAssoc() as $row)
                {
                    if($row["birthYear"] < $max_age)
                    {
                        $error = "Einer der Spieler ist zu alt für das ausgewählte Turnier.";

                        if($objWidget->id == 29)
                        {
                            $error = "Uno dei giocatori è troppo vecchio per il torneo scelto.";
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
        }
        
        //Check state_id hidden field
        if($objWidget->id == 52 || $objWidget->id == 53)
        {
            //Check for max_teams and set the registration state
            $max_teams = $this->Database->prepare("select max_teams from tl_beachcup_stage join tl_beachcup_tournament on tl_beachcup_stage.id = tl_beachcup_tournament.stage_id where tl_beachcup_tournament.id = ?")->execute(array($_REQUEST["tournament_id"]))->max_teams;
            $current_teams = $this->Database->prepare("select count(*) as current_teams from tl_beachcup_tournament join tl_beachcup_registration on tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id join tl_beachcup_registration_state on tl_beachcup_registration.state_id=tl_beachcup_registration_state.id  where tl_beachcup_tournament.id = ? and tl_beachcup_registration_state.code in ('PROCESSING','COMPLETE','INCOMPLETE')")->execute(array($_REQUEST["tournament_id"]))->current_teams;

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
                $arrSubmitted['state_id'] = 5;
            }
        }

        return $arrSubmitted;
    }
    */
}
?>