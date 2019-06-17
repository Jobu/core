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
        $row = $database->query("SELECT s.id FROM tl_beachcup_stage AS s WHERE (s.start_date <= UNIX_TIMESTAMP() and s.end_date + (3 * 86400) >= UNIX_TIMESTAMP()) or s.start_date >= UNIX_TIMESTAMP() ORDER BY s.start_date ASC LIMIT 1;")->fetchAssoc();
        $stage_id = $row["id"];

        if(!empty($stage_id))
        {
            $data = $database->query("select tl_beachcup_registration.id as ANMELDUNG_ID, tl_beachcup_tournament.name_de AS TURNIER, DATE_FORMAT(from_unixtime(tl_beachcup_registration.tstamp), '%d.%m.%Y') as DATUM_ANMELDUNG,
                                    p1.surname as NACHNAME_1, p1.name as VORNAME_1, p1.tax_number as STEUER_NR_1, DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), INTERVAL p1.birth_date SECOND), '%d.%m.%Y') as GEB_DATUM_1, p1.birth_place as GEB_ORT_1, p1.gender as GESCHLECHT_1, p1.address as ADRESSE_1, p1.zip_code as PLZ_1, p1.city as ORT_1, p1.country as LAND_1, p1.email as EMAIL_1, p1.phone_number as TEL_1, p1.shirt_top as SHIRT_TOP_1, p1.shirt_size as SIZE_1, p1.has_shirt as SHIRT_TOP_ERHALTEN_1, p1.is_fipav as FIPAV_1, p1level.description_de as SPIELER_LEVEL_1, p1.has_medical_certificate as AERZTL_ZEUGNIS_1, p1.is_confirmed as EIGENERKLAERUNG_1, ifnull(p1_lastyear .points, 0) PUNKTE_VORJAHR_1, ifnull(p1_curryear .points, 0) PUNKTE_1,
                                    p2.surname as NACHNAME_2, p2.name as VORNAME_2, p2.tax_number as STEUER_NR_2, DATE_FORMAT(DATE_ADD(FROM_UNIXTIME(0), INTERVAL p2.birth_date SECOND), '%d.%m.%Y') as GEB_DATUM_2, p2.birth_place as GEB_ORT_2, p2.gender as GESCHLECHT_2, p2.address as ADRESSE_2, p2.zip_code as PLZ_2, p2.city as ORT_2, p2.country as LAND_2, p2.email as EMAIL_2, p2.phone_number as TEL_2, p2.shirt_top as SHIRT_TOP_2, p2.shirt_size as SIZE_2, p2.has_shirt as SHIRT_TOP_ERHALTEN_2, p2.is_fipav as FIPAV_2, p2level.description_de as SPIELER_LEVEL_2, p2.has_medical_certificate as AERZTL_ZEUGNIS_2, p2.is_confirmed as EIGENERKLAERUNG_2, ifnull(p2_lastyear .points, 0) PUNKTE_VORJAHR_2, ifnull(p2_curryear .points, 0) PUNKTE_2,
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
                                    left outer join (
                                      SELECT p.id player_id, sum(r.points) points
                                      FROM tl_beachcup_registration AS r
                                      JOIN tl_beachcup_tournament tm on tm.id = r.tournament_id
                                      JOIN tl_beachcup_tournament_type tt on tt.id = tm.type_id
                                      JOIN tl_beachcup_stage st on st.id = tm.stage_id
                                      JOIN tl_beachcup_season s on s.id = st.season_id
                                      JOIN tl_beachcup_team AS t ON r.team_id = t.id 
                                      JOIN tl_beachcup_player AS p ON t.player_1 = p.id or t.player_2 = p.id 
                                      WHERE r.state_id != 4 and s.year = (select max(year) - 1 from tl_beachcup_season) and (tt.code = 'OPEN' or tt.code = 'AMATEUR' or tt.code = 'MIXED' or tt.code = 'CHAMPIONSHIP' or tt.code = 'ADULT' or tt.code = 'KING')
                                      GROUP BY p.id
                                    ) p1_lastyear on p1_lastyear.player_id = p1.id
                                    left outer join (
                                      SELECT p.id player_id, sum(r.points) points
                                      FROM tl_beachcup_registration AS r
                                      JOIN tl_beachcup_tournament tm on tm.id = r.tournament_id
                                      JOIN tl_beachcup_tournament_type tt on tt.id = tm.type_id
                                      JOIN tl_beachcup_stage st on st.id = tm.stage_id
                                      JOIN tl_beachcup_season s on s.id = st.season_id
                                      JOIN tl_beachcup_team AS t ON r.team_id = t.id 
                                      JOIN tl_beachcup_player AS p ON t.player_1 = p.id or t.player_2 = p.id 
                                      WHERE r.state_id != 4 and s.year = (select max(year) from tl_beachcup_season) and (tt.code = 'OPEN' or tt.code = 'AMATEUR' or tt.code = 'MIXED' or tt.code = 'CHAMPIONSHIP' or tt.code = 'ADULT' or tt.code = 'KING')
                                      GROUP BY p.id
                                    ) p1_curryear on p1_curryear.player_id = p1.id
                                    left outer join (
                                      SELECT p.id player_id, sum(r.points) points
                                      FROM tl_beachcup_registration AS r
                                      JOIN tl_beachcup_tournament tm on tm.id = r.tournament_id
                                      JOIN tl_beachcup_tournament_type tt on tt.id = tm.type_id
                                      JOIN tl_beachcup_stage st on st.id = tm.stage_id
                                      JOIN tl_beachcup_season s on s.id = st.season_id
                                      JOIN tl_beachcup_team AS t ON r.team_id = t.id 
                                      JOIN tl_beachcup_player AS p ON t.player_1 = p.id or t.player_2 = p.id 
                                      WHERE r.state_id != 4 and s.year = (select max(year) - 1 from tl_beachcup_season) and (tt.code = 'OPEN' or tt.code = 'AMATEUR' or tt.code = 'MIXED' or tt.code = 'CHAMPIONSHIP' or tt.code = 'ADULT' or tt.code = 'KING')
                                      GROUP BY p.id
                                    ) p2_lastyear on p2_lastyear.player_id = p2.id
                                    left outer join (
                                      SELECT p.id player_id, sum(r.points) points
                                      FROM tl_beachcup_registration AS r
                                      JOIN tl_beachcup_tournament tm on tm.id = r.tournament_id
                                      JOIN tl_beachcup_tournament_type tt on tt.id = tm.type_id
                                      JOIN tl_beachcup_stage st on st.id = tm.stage_id
                                      JOIN tl_beachcup_season s on s.id = st.season_id
                                      JOIN tl_beachcup_team AS t ON r.team_id = t.id 
                                      JOIN tl_beachcup_player AS p ON t.player_1 = p.id or t.player_2 = p.id 
                                      WHERE r.state_id != 4 and s.year = (select max(year) from tl_beachcup_season) and (tt.code = 'OPEN' or tt.code = 'AMATEUR' or tt.code = 'MIXED' or tt.code = 'CHAMPIONSHIP' or tt.code = 'ADULT' or tt.code = 'KING')
                                      GROUP BY p.id
                                    ) p2_curryear on p2_curryear.player_id = p2.id
                                    where tl_beachcup_stage.id = " . $stage_id . " and tl_beachcup_registration_state.code != 'REJECTED'
                                    order by tl_beachcup_tournament.date, tl_beachcup_tournament.name_de, tl_beachcup_registration.tstamp;")->fetchAllAssoc();

            if (count($data) > 0)
            {
                $xls = new \xlsexport();
                $xls->addworksheet("Anmeldungen");
                $headers = array();

                foreach($data[0] as $key => $value)
                {
                    $headers[] = $key;
                }

                for($i = 0; $i < count($headers); $i++)
                {
                    $xls->setcell(array("sheetname" => "Anmeldungen", "row" => 0, "col" => $i, "data" => $headers[$i]));
                }

                @mb_substitute_character("none");

                for($i = 1; $i < count($data) + 1; $i++)
                {
                    for($j = 0; $j < count($headers); $j++)
                    {
                        $xls->setcell(array("sheetname" => "Anmeldungen", "row" => $i, "col" => $j, "data" => @mb_convert_encoding($data[$i-1][$headers[$j]], "CP1252",  $GLOBALS["TL_CONFIG"]["characterSet"])));
                    }
                }

                $xls->sendfile("Anmeldungen.xls");
            }
        }

        \Contao\Controller::redirect('contao/main.php?do=registration');
    }
}