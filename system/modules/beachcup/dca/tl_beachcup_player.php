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
 * Table tl_beachcup_player
 */
$GLOBALS['TL_DCA']['tl_beachcup_player'] = array
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
			'flag'                    => 1,
            'panelLayout'             => 'filter,sort,search,limit'
		),
		'label' => array
		(
			'fields'                  => array('name', 'surname', 'tax_number'),
			'format'                  => '%s %s (%s)'
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
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_player']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif'
			),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_player']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_beachcup_player']['show'],
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
        'default'                     => '{general_legend},name,surname,birth_date,birth_place,gender,tax_number;{address_legend},address,zip_code,city,country;{contact_legend},email,phone_number;{body_legend},shirt_size,player_level;{administration_legend},is_confirmed,is_fipav,has_medical_certificate,has_privacy,has_shirt;{user_legend},user;'
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
			'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['name'],
			'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
			'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'w50'),
			'sql'                     => "varchar(255) NOT NULL default ''"
		),
        'surname' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['surname'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'w50'),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'birth_date' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['birth_date'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50 wizard', 'datepicker'=>true, 'rgxp'=>'date'),
            'sql'                     => "varchar(11) NOT NULL default ''"
        ),
        'birth_place' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['birth_place'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
        ),
        'gender' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['gender'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'options'                 => array('male', 'female', 'other'),
            'reference'               => &$GLOBALS['TL_LANG']['MSC'],
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'address' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['address'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
        ),
        'zip_code' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['zip_code'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'w50', 'rgxp'=>'digit'),
            'sql'                     => "int"
        ),
        'city' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['city'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "text NOT NULL default ''"
        ),
        'country' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['country'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'options'                 => System::getCountries(),
            'eval'                    => array('includeBlankOption'=>true, 'chosen'=>true, 'mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "varchar(2) NOT NULL default ''"
        ),
        'email' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['email'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50', 'rgxp'=>'email', 'unique'=>true),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'phone_number' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['phone_number'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('maxlength'=>255, 'tl_class'=>'w50', 'rgxp'=>'phone'),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'tax_number' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['tax_number'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'text',
            'eval'                    => array('mandatory'=>true, 'minlength'=>16, 'maxlength'=>16, 'tl_class'=>'w50', 'unique'=>true),
            'sql'                     => "varchar(16) NOT NULL default ''"
        ),
        'shirt_size' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['shirt_size'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'options'                 => array('XXS', 'XS', 'S', 'M', 'L', 'XL', 'XXL'),
            'reference'               => &$GLOBALS['TL_LANG']['MSC'],
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "varchar(255) NOT NULL default ''"
        ),
        'player_level' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['player_level'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_beachcup_player_level.code',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        ),
        'is_confirmed' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['is_confirmed'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'checkbox',
            'eval'                    => array('tl_class'=>'w50'),
            'sql'                     => "boolean NOT NULL default false",
        ),
        'is_fipav' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['is_fipav'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'checkbox',
            'eval'                    => array('tl_class'=>'w50'),
            'sql'                     => "boolean NOT NULL default false"
        ),
        'has_medical_certificate' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['has_medical_certificate'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'checkbox',
            'eval'                    => array('tl_class'=>'w50'),
            'sql'                     => "boolean NOT NULL default false"
        ),
        'has_privacy' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['has_privacy'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'checkbox',
            'eval'                    => array('tl_class'=>'w50'),
            'sql'                     => "boolean NOT NULL default false"
        ),
        'has_shirt' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['has_shirt'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'checkbox',
            'eval'                    => array('tl_class'=>'w50'),
            'sql'                     => "boolean NOT NULL default false"
        ),
        'user' => array
        (
            'label'                   => &$GLOBALS['TL_LANG']['tl_beachcup_player']['user'],
            'exclude'                 => true,
            'sorting'                 => true,
            'search'                  => true,
            'inputType'               => 'select',
            'foreignKey'              => 'tl_member.CONCAT(username, " (", firstname, " ", lastname, ")")',
            'eval'                    => array('mandatory'=>true, 'tl_class'=>'w50'),
            'sql'                     => "int(10) unsigned NOT NULL"
        )
	)
);
