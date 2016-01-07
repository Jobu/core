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
 * Table tl_beachcup_team
 */
$GLOBALS['TL_DCA']['tl_beachcup_team'] = array
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
            'fields'                  => array(),
            'flag'                    => 1,
            'panelLayout'             => 'filter,sort,search,limit'
		),
		'label' => array
		(
            'fields'                  => array(),
			'format'                  => '%%s und %%s',
            'label_callback'          => array('tl_beachcup_team', 'setLabel')
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
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_team']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif'
			),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_team']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_team']['show'],
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
		'default'                     => '{general_legend},player_1,player_2;'
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
        'player_1' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_team']['player_1'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_player.CONCAT(name, " ", surname, " (", tax_number, ")")',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL",
            'save_callback'           => array
            (
                array('tl_beachcup_team', 'test')
            )
        ),
        'player_2' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_team']['player_2'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_player.CONCAT(name, " ", surname, " (", tax_number, ")")',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL",
            'save_callback'           => array
            (
                array('tl_beachcup_team', 'test')
            )
        )
	)
);

class tl_beachcup_team extends Backend
{
    private $player = null;
    
    /**
     * Import the back end user object
     */
    public function __construct()
    {
        parent::__construct();
        $this->import('BackendUser', 'User');
    }
    
    public function setLabel($row, $label)
    {
        return $this -> Database -> prepare("SELECT GROUP_CONCAT(CONCAT(tl_beachcup_player.name, ' ', tl_beachcup_player.surname, ' (', tl_beachcup_player.tax_number, ')') SEPARATOR ' und ') as `label` FROM tl_beachcup_team JOIN tl_beachcup_player ON tl_beachcup_team.player_1 = tl_beachcup_player.id or tl_beachcup_team.player_2 = tl_beachcup_player.id WHERE tl_beachcup_team.id = ?") -> execute($row["id"]) -> label;
    }
    
    public function test($value)
    {
        if(empty($this -> player))
        {
            $this -> player = $value;
        }
        else
        {
            if($this -> player == $value)
            {
                throw new Exception($GLOBALS['TL_LANG']['ERR']['samePlayers']);
                return;
            }
        }
        
        return $value;
    }
}
