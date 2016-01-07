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
 * Table tl_beachcup_stage
 */
$GLOBALS['TL_DCA']['tl_beachcup_stage'] = array
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
            'fields'                  => array('season_id'),
			'flag'                    => 1,
            'panelLayout'             => 'filter,sort,search,limit'
		),
		'label' => array
		(
			'fields'                  => array('name'),
			'format'                  => '%s',
            'label_callback'          => array('tl_beachcup_stage', 'setLabel'),
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
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif'
			),
            'copy' => array
            (
                'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['copy'],
                'href'                => 'act=copy',
                'icon'                => 'copy.gif'
            ),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['show'],
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
        'default'                     => '{general_legend},name,description,start_date,end_date,organizer_id,venue_id,season_id;{administration_legend},is_enabled;'
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
        'name' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['name'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'start_date' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['start_date'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50 wizard', 'datepicker'=>true, 'rgxp'=>'date'),
            'sql'                     => "varchar(11) NOT NULL default ''"
        ),
        'end_date' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['end_date'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50 wizard', 'datepicker'=>true, 'rgxp'=>'date'),
            'sql'                     => "varchar(11) NOT NULL default ''"
        ),
        'organizer_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['organizer_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_organizer.name',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'venue_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['venue_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_venue.name',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'season_id' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['season_id'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_season.CONCAT(tl_beachcup_season.name, " [", tl_beachcup_season.year, "]")',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'is_enabled' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_stage']['is_enabled'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'checkbox',
            'eval'                    => array('tl_class'=>'w50'),
            'sql'                     => "boolean NOT NULL default false"
        )
	)
);

class tl_beachcup_stage extends Backend
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
        return $this -> Database -> prepare("SELECT CONCAT(tl_beachcup_season.name, ' [', tl_beachcup_season.year, '] - ', tl_beachcup_stage.name) as `label` FROM tl_beachcup_season JOIN tl_beachcup_stage ON tl_beachcup_season.id = tl_beachcup_stage.season_id WHERE tl_beachcup_stage.id = ?") -> execute($row["id"]) -> label;
    }
}