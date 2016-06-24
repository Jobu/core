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
 * Class RegistrationExport
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class RegistrationExport
{
    public function export(\Contao\DC_Table $dc)
    {
        $database = \Contao\Database::getInstance();
        $data = $database->query("select tl_beachcup_registration.id as ANMELDUNG_ID, tl_beachcup_tournament.name_de AS TURNIER, DATE_FORMAT(from_unixtime(tl_beachcup_registration.tstamp), '%d.%m.%Y') as DATUM_ANMELDUNG,
                                    p1.surname as NACHNAME_1, p1.name as VORNAME_1, p1.tax_number as STEUER_NR_1, DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), INTERVAL p1.birth_date SECOND), '%d.%m.%Y') as GEB_DATUM_1, p1.birth_place as GEB_ORT_1, p1.gender as GESCHLECHT_1, p1.address as ADRESSE_1, p1.zip_code as PLZ_1, p1.city as ORT_1, p1.country as LAND_1, p1.email as EMAIL_1, p1.phone_number as TEL_1, p1.shirt_size as SHIRT_1, p1.has_shirt as SHIRT_ERHALTEN_1, p1.is_fipav as FIPAV_1, p1level.description_de as SPIELER_LEVEL_1, p1.has_medical_certificate as AERZTL_ZEUGNIS_1, p1.is_confirmed as EIGENERKLAERUNG_1,
                                    p2.surname as NACHNAME_2, p2.name as VORNAME_2, p2.tax_number as STEUER_NR_2, DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), INTERVAL p2.birth_date SECOND), '%d.%m.%Y') as GEB_DATUM_2, p2.birth_place as GEB_ORT_2, p2.gender as GESCHLECHT_2, p2.address as ADRESSE_2, p2.zip_code as PLZ_2, p2.city as ORT_2, p2.country as LAND_2, p2.email as EMAIL_2, p2.phone_number as TEL_2, p2.shirt_size as SHIRT_2, p2.has_shirt as SHIRT_ERHALTEN_2, p2.is_fipav as FIPAV_2, p2level.description_de as SPIELER_LEVEL_2, p2.has_medical_certificate as AERZTL_ZEUGNIS_2, p2.is_confirmed as EIGENERKLAERUNG_2,
                                    tl_beachcup_registration_state.code as STATUS_ANMELDUNG
                                    from tl_beachcup_registration
                                    join tl_beachcup_team on tl_beachcup_team.id = tl_beachcup_registration.team_id
                                    join tl_beachcup_player p1 on p1.id =  tl_beachcup_team.player_1
                                    join tl_beachcup_player_level p1level on p1level.id = p1.player_level
                                    join tl_beachcup_player p2 on p2.id =  tl_beachcup_team.player_2
                                    join tl_beachcup_player_level p2level on p2level.id = p2.player_level
                                    join tl_beachcup_tournament on tl_beachcup_tournament.id = tl_beachcup_registration.tournament_id
                                    join tl_beachcup_registration_state on tl_beachcup_registration_state.id = tl_beachcup_registration.state_id
                                    join tl_beachcup_stage on tl_beachcup_stage.id = tl_beachcup_tournament.stage_id
                                    where tl_beachcup_stage.id = 15 and tl_beachcup_registration_state.code != 'REJECTED'
                                    order by tl_beachcup_tournament.date, tl_beachcup_tournament.name_de, tl_beachcup_registration.tstamp;")->fetchAllAssoc();
        
        if(count($data) > 0)
        {
            $headers = array();
            
            foreach($data[0] as $key => $value)
            {
                $headers[] = $key;
            }
            
            $file = fopen("php://memory", "w");
            fputcsv($file, $headers, ";");
            
            foreach ($data as $record)
            {
                fputcsv($file, $record, ";");
            }
            
            fseek($file, 0);
            header("Content-Type: application/csv");
            header("Content-Disposition: attachement; filename='Anmeldungen.csv';");
            fpassthru($file);
            exit();
        }
        
        \Contao\Controller::redirect('contao/main.php?do=registration');
    }
}