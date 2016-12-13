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
 * Table tl_beachcup_member_team
 */
$GLOBALS['TL_DCA']['tl_beachcup_member_team'] = array
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
            'fields'                  => array('team_id'),
            'flag'                    => 1,
            'panelLayout'             => 'filter,sort,search,limit'
        ),
        'label' => array
        (
            'fields'                  => array('id'),
            'format'                  => '%s',
            'label_callback'          => array('tl_beachcup_member_team', 'setLabel'),
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
                'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_member_team']['edit'],
                'href'                => 'act=edit',
                'icon'                => 'edit.gif'
            ),
            'delete' => array
            (
                'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_member_team']['delete'],
                'href'                => 'act=delete',
                'icon'                => 'delete.gif',
                'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
            ),
            'show' => array
            (
                'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_member_team']['show'],
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
        'default'                     => '{general_legend},team_id,member_id'
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
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_member_team']['member_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_member.username',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'team_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_member_team']['team_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_team.CONCAT((SELECT CONCAT(tl_beachcup_player.name, " ", tl_beachcup_player.surname, " (", tl_beachcup_player.tax_number, ")") FROM tl_beachcup_player WHERE tl_beachcup_player.id = tl_beachcup_team.player_1), " und ", (SELECT CONCAT(tl_beachcup_player.name, " ", tl_beachcup_player.surname, " (", tl_beachcup_player.tax_number, ")") FROM tl_beachcup_player WHERE tl_beachcup_player.id = tl_beachcup_team.player_2))',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        )
    )
);

class tl_beachcup_member_team extends Backend
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
        return $this->Database->prepare("SELECT CONCAT(member.username, ' - ', player_1.name, ' und ', player_2.name) AS `label`
                                            FROM tl_beachcup_member_team AS map
                                              JOIN tl_member AS member ON member.id = map.member_id
                                              JOIN tl_beachcup_team AS team ON team.id = map.team_id
                                              JOIN (SELECT
                                                      player.id,
                                                      concat(player.name, ' ', player.surname) AS name
                                                    FROM tl_beachcup_player AS player) AS player_1 ON player_1.id = team.player_1
                                              JOIN (SELECT
                                                      player.id,
                                                      concat(player.name, ' ', player.surname) AS name
                                                    FROM tl_beachcup_player AS player) AS player_2 ON player_2.id = team.player_2
                                            WHERE map.id = ?") -> execute($row["id"]) -> label;
    }
}