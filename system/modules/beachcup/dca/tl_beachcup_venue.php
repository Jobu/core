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
			'fields'                  => array('name'),
			'flag'                    => 2,
            'panelLayout'             => 'filter,sort,search,limit'
		),
		'label' => array
		(
			'fields'                  => array('name'),
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
        'default'                     => '{general_legend},name,description,picture;{address_legend},address,zip_code,city,latitude,longitude;'
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
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['name'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'w50'),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'description' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['description'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
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
        'address' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['address'],
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
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'w50', 'rgxp'=>'digit'),
            'sql'                     => "int"
        ),
        'city' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_venue']['city'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
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
