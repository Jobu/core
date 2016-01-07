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
 * Table tl_beachcup_registration_state
 */
$GLOBALS['TL_DCA']['tl_beachcup_registration_state'] = array
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
            'fields'                  => array('code'),
            'flag'                    => 1,
            'panelLayout'             => 'filter,sort,search,limit'
		),
		'label' => array
		(
			'fields'                  => array('code'),
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
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_registration_state']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif'
			),
            'copy' => array
            (
                'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_registration_state']['copy'],
                'href'                => 'act=copy',
                'icon'                => 'copy.gif'
            ),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_registration_state']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_registration_state']['show'],
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
		'default'                     => '{general_legend},code,description;'
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
        'code' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_registration_state']['code'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'w50', 'unique'=>true),
            'sql'                     => "varchar(255) NOT NULL UNIQUE default ''"
        ),
        'description' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_registration_state']['description'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
        )
	)
);
