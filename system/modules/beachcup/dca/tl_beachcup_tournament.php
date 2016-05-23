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
 * Table tl_beachcup_tournament
 */
$GLOBALS['TL_DCA']['tl_beachcup_tournament'] = array
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
			'fields'                  => array('stage_id'),
			'flag'                    => 1,
            'panelLayout'             => 'filter;sort,search,limit'
		),
		'label' => array
		(
			'fields'                  => array('name_de'),
			'format'                  => '%s',
            'label_callback'          => array('tl_beachcup_tournament', 'setLabel'),
            'group_callback'          => array('tl_beachcup_tournament', 'setGroupLabel')
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
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif'
			),
			'copy' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['copy'],
				'href'                => 'act=copy',
				'icon'                => 'copy.gif'
			),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['show'],
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
        'default'                     => '{general_legend},name_de,name_it,type_id,stage_id,date;{administration_legend},max_age,max_teams;'
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
		'name_de' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['name_de'],
			'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
			'inputType'               => 'text',
            'eval'                    => array('tl_class'=>'w50', 'mandatory'=>true, 'maxlength'=>255),
			'sql'                     => "varchar(255) NOT NULL default ''"
		),
        'name_it' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['name_it'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('tl_class'=>'w50', 'mandatory'=>true, 'maxlength'=>255),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'type_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['type_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_tournament_type.code',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'stage_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['stage_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'filter'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_stage.CONCAT((SELECT CONCAT(tl_beachcup_season.name_de, " [", tl_beachcup_season.year, "]") FROM tl_beachcup_season WHERE tl_beachcup_season.id = tl_beachcup_stage.season_id), " - ", tl_beachcup_stage.name_de)',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'date' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['date'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50 wizard', 'datepicker'=>true, 'rgxp'=>'date'),
            'sql'                     => "varchar(11) NOT NULL default ''"
        ),
        'max_age' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['max_age'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('tl_class'=>'w50', 'rgxp'=>'digit'),
            'sql'                     => "int(10) unsigned NOT NULL default 0"
        ),
        'max_teams' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_tournament']['max_teams'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50', 'rgxp'=>'digit'),
            'sql'                     => "int(10) unsigned NOT NULL default 0"
        )
	)
);

class tl_beachcup_tournament extends Backend
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
        return $this -> Database -> prepare("SELECT CONCAT(tl_beachcup_season.name_de, ' [', tl_beachcup_season.year, '] - ', tl_beachcup_stage.name_de, ' - ', tl_beachcup_tournament.name_de) as `label` FROM tl_beachcup_season JOIN tl_beachcup_stage ON tl_beachcup_season.id = tl_beachcup_stage.season_id JOIN tl_beachcup_tournament ON tl_beachcup_stage.id = tl_beachcup_tournament.stage_id WHERE tl_beachcup_tournament.id = ?") -> execute($row["id"]) -> label;
    }
    
    public function setGroupLabel($group, $sortingMode, $firstOrderBy, $row)
    {
        switch($firstOrderBy)
        {
            case "stage_id":
                return $this -> Database -> prepare("SELECT CONCAT(tl_beachcup_season.name_de, ' [', tl_beachcup_season.year, '] - ', tl_beachcup_stage.name_de) as `group` FROM tl_beachcup_season JOIN tl_beachcup_stage ON tl_beachcup_season.id = tl_beachcup_stage.season_id WHERE tl_beachcup_stage.id = ?") -> execute($row["stage_id"]) -> group;
                break;

            default:
                return $group;
                break;
        }
    }
}