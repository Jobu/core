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
 * Table tl_beachcup_member_registration
 */
$GLOBALS['TL_DCA']['tl_beachcup_member_registration'] = array
    (

    // Config
    'config' => array
    (
        'dataContainer'               => 'Table',
        'enableVersioning'            => true,
        'sql' => array
        (
            'keys' => array
            (
                'id' => 'primary'
            )
        )
    ),

    // List
    'list' => array
    (
        'sorting' => array
        (
            'mode'                    => 2,
            'fields'                  => array('registration_id'),
            'flag'                    => 1,
            'panelLayout'             => 'filter,sort,search,limit'
        ),
        'label' => array
        (
            'fields'                  => array('id'),
            'format'                  => '%s',
            'label_callback'          => array('tl_beachcup_member_registration', 'setLabel'),
        ),
        'global_operations' => array
        (
            'all' => array
            (
                'label'               => &$GLOBALS['TL_LANG']['MSC']['all'],
                'href'                => 'act=select',
                'class'               => 'header_edit_all',
                'attributes'          => 'onclick="Backend.getScrollOffset();" accesskey="e"'
            )
        ),
        'operations' => array
        (
            'edit' => array
            (
                'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_member_registration']['edit'],
                'href'                => 'act=edit',
                'icon'                => 'edit.gif'
            ),
            'delete' => array
            (
                'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_member_registration']['delete'],
                'href'                => 'act=delete',
                'icon'                => 'delete.gif',
                'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
            ),
            'show' => array
            (
                'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_member_registration']['show'],
                'href'                => 'act=show',
                'icon'                => 'show.gif'
            )
        )
    ),

    // Select
    'select' => array
    (
        'buttons_callback' => array()
    ),

    // Edit
    'edit' => array
    (
        'buttons_callback' => array()
    ),

    // Palettes
    'palettes' => array
    (
        '__selector__'                => array(''),
        'default'                     => '{general_legend},registration_id,member_id'
    ),

    // Subpalettes
    'subpalettes' => array
    (
        ''                            => ''
    ),

    // Fields
    'fields' => array
    (
        'id' => array
        (
            'sql'                     => "int(10) unsigned NOT NULL auto_increment"
        ),
        'tstamp' => array
        (
            'sql'                     => "int(10) unsigned NOT NULL default '0'"
        ),
        'member_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_member_registration']['member_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_member.username',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'registration_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_member_registration']['registration_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_registration.CONCAT((SELECT CONCAT(player.name, " ", player.surname) FROM tl_beachcup_team AS team JOIN tl_beachcup_player AS player ON player.id = team.player_1 WHERE team.id = tl_beachcup_registration.team_id), " und ", (SELECT CONCAT(player.name, " ", player.surname) FROM tl_beachcup_team AS team JOIN tl_beachcup_player AS player ON player.id = team.player_2 WHERE team.id = tl_beachcup_registration.team_id), " - ", (SELECT CONCAT(stage.name_de, " - ", tournament.name_de) FROM tl_beachcup_tournament AS tournament JOIN tl_beachcup_stage AS stage ON stage.id = tournament.stage_id WHERE tournament.id = tl_beachcup_registration.tournament_id))',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        )
    )
);

class tl_beachcup_member_registration extends Backend
{
    /**
     * Import the back end user object
     */
    public function __construct()
    {
        parent::__construct();
        $this->import('BackendUser', 'User');
    }

    public function setLabel($row)
    {
        return $this->Database->prepare("SELECT
                                              CONCAT(member.username, ' - ', player_1.name, ' und ', player_2.name, ' - ', stage.name_de, ' - ', tournament.name_de) AS `label`
                                            FROM tl_beachcup_member_registration AS map
                                              JOIN tl_member AS member ON member.id = map.member_id
                                              JOIN tl_beachcup_registration AS registration ON registration.id = map.registration_id
                                              JOIN tl_beachcup_team AS team ON team.id = registration.team_id
                                              JOIN (SELECT
                                                      player.id,
                                                      concat(player.name, ' ', player.surname) AS name
                                                    FROM tl_beachcup_player AS player) AS player_1 ON player_1.id = team.player_1
                                              JOIN (SELECT
                                                      player.id,
                                                      concat(player.name, ' ', player.surname) AS name
                                                    FROM tl_beachcup_player AS player) AS player_2 ON player_2.id = team.player_2
                                              JOIN tl_beachcup_tournament AS tournament ON tournament.id = registration.tournament_id
                                              JOIN tl_beachcup_stage AS stage ON stage.id = tournament.stage_id
                                            WHERE map.id = ?;") -> execute($row["id"]) -> label;
    }
}