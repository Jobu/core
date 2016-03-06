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
 * Table tl_beachcup_venue
 */
$GLOBALS['TL_DCA']['tl_beachcup_venue'] = array
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
			'fields'                  => array('name_de'),
			'flag'                    => 2,
            'panelLayout'             => 'filter,sort,search,limit'
		),
		'label' => array
		(
			'fields'                  => array('name_de'),
			'format'                  => '%s'
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
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif'
			),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['show'],
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
        'default'                     => '{general_legend},name_de,description_de,name_it,description_it,picture;{address_legend},address_de,address_it,city_de,city_it,zip_code,latitude,longitude;'
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
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['name_de'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'description_de' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['description_de'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'textarea',
            'eval'                    => array('rte'=>'tinyMCE'),
            'sql'                     => "mediumtext NOT NULL default ''"
        ),
        'name_it' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['name_it'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'description_it' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['description_it'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'textarea',
            'eval'                    => array('rte'=>'tinyMCE'),
            'sql'                     => "mediumtext NOT NULL default ''"
        ),
        'picture' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['picture'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'fileTree',
            'eval'                    => array('tl_class'=>'clr', 'filesOnly'=>true, 'fieldType'=>'radio'),
            'sql'                     => "binary(16) NULL"
        ),
        'address_de' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['address_de'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
        ),
        'address_it' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['address_it'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
        ),
        'city_de' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['city_de'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
        ),
        'city_it' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['city_it'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
        ),
        'zip_code' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['zip_code'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'rgxp'=>'digit'),
            'sql'                     => "int"
        ),
        'latitude' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['latitude'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "double NOT NULL default 0"
        ),
        'longitude' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['longitude'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "double NOT NULL default 0"
        )
	)
);
