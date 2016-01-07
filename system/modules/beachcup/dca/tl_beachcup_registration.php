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
 * Table tl_beachcup_registration
 */
$GLOBALS['TL_DCA']['tl_beachcup_registration'] = array
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
            'fields'                  => array('tournament_id'),
			'flag'                    => 1,
            'panelLayout'             => 'filter,sort,search,limit'
		),
		'label' => array
		(
            'fields'                  => array('id'),
            'format'                  => '%s',
            'label_callback'          => array('tl_beachcup_registration', 'setLabel'),
            'group_callback'          => array('tl_beachcup_registration', 'setGroupLabel')
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
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_registration']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif'
			),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_registration']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_registration']['show'],
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
        'default'                     => '{general_legend},team_id,tournament_id,points;'
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
        'team_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_registration']['team_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_team.CONCAT((SELECT CONCAT(tl_beachcup_player.name, " ", tl_beachcup_player.surname, " (", tl_beachcup_player.tax_number, ")") FROM tl_beachcup_player WHERE tl_beachcup_player.id = tl_beachcup_team.player_1), " und ", (SELECT CONCAT(tl_beachcup_player.name, " ", tl_beachcup_player.surname, " (", tl_beachcup_player.tax_number, ")") FROM tl_beachcup_player WHERE tl_beachcup_player.id = tl_beachcup_team.player_2))',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'tournament_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_registration']['tournament_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'options_callback'        => array('tl_beachcup_registration', 'setTournamentIdOptions'),
            //'save_callback'           => array('tl_beachcup_registration', 'saveTournamentId'),
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'points' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_registration']['points'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('tl_class'=>'w50', 'rgxp'=>'digit'),
            'sql'                     => "int(10) unsigned NOT NULL default 0"
        )
	)
);

class tl_beachcup_registration extends Backend
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
        return $this -> Database -> prepare("SELECT GROUP_CONCAT(CONCAT(tl_beachcup_player.name, ' ', tl_beachcup_player.surname, ' (', tl_beachcup_player.tax_number, ')') SEPARATOR ' und ') as `label` FROM tl_beachcup_registration JOIN tl_beachcup_team ON tl_beachcup_registration.team_id = tl_beachcup_team.id JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id or tl_beachcup_team.player_2 = tl_beachcup_player.id WHERE tl_beachcup_registration.id = ?") -> execute($row["id"]) -> label;
    }
    
    public function setGroupLabel($group, $sortingMode, $firstOrderBy)
    {
        switch($firstOrderBy)
        {
            case "tournament_id":
                return $this -> Database -> prepare("SELECT CONCAT(tl_beachcup_season.name, ' [', tl_beachcup_season.year, '] - ', tl_beachcup_stage.name, ' - ', tl_beachcup_tournament.name) as `group` FROM tl_beachcup_season JOIN tl_beachcup_stage ON tl_beachcup_season.id = tl_beachcup_stage.season_id JOIN tl_beachcup_tournament ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id WHERE tl_beachcup_tournament.id = ?") -> execute($group) -> group;
                break;
                
            default:
                return $group;
                break;
        }
    }
    
    public function setTournamentIdOptions()
    {
        $options = $this -> Database -> prepare("SELECT CONCAT(tl_beachcup_tournament.id, ': ',  tl_beachcup_season.name, ' [', tl_beachcup_season.year, '] - ', tl_beachcup_stage.name, ' - ', tl_beachcup_tournament.name) as `option` FROM tl_beachcup_season JOIN tl_beachcup_stage ON tl_beachcup_season.id = tl_beachcup_stage.season_id JOIN tl_beachcup_tournament ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id") -> execute() -> fetchEach("option");
        $selected = $this -> Database -> prepare("SELECT tournament_id FROM tl_beachcup_registration WHERE id = ?") -> execute($_GET["id"]) -> tournament_id;
        
        return $this -> bringToFrontbyFirstCharacter($options, $selected);
    }
    
    private function bringToFrontbyFirstCharacter($array, $character)
    {
        $index = 0;
        
        foreach($array as $key => $item)
        {
            if($this -> startsWith($item, $character)) $index = $key;
        }
        
        $array = $this -> swapItems($array, 0, $index);
        
        return $array;
    }
    
    private function swapItems($array, $a, $b)
    {
        $temp = $array[$a];
        $array[$a] = $array[$b];
        $array[$b] = $temp;
        
        return $array;
    }
    
    private function startsWith($haystack, $needle)
    {
        return $needle === "" || strrpos($haystack, $needle, -strlen($haystack)) !== FALSE;
    }
}