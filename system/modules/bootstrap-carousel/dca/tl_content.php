<?php

/**
 * @package    contao-bootstrap
 * @author     David Molineus <david.molineus@netzmacht.de>
 * @copyright  2014-2015 netzmacht creative David Molineus
 * @license    LGPL 3.0
 * @filesource
 *
 */

/*
 * Palettes
 */

// carousel palettes
$GLOBALS['TL_DCA']['tl_content']['metapalettes']['bootstrap_carouselPart extends _bootstrap_empty_']  = array();
$GLOBALS['TL_DCA']['tl_content']['metapalettes']['bootstrap_carouselEnd extends _bootstrap_empty_']   = array();
$GLOBALS['TL_DCA']['tl_content']['metapalettes']['bootstrap_carouselStart extends _bootstrap_empty_'] = array
(
    'config'    => array(
        'bootstrap_showIndicators',
        'bootstrap_showControls',
        'bootstrap_autostart',
        'bootstrap_interval',
    ),
    'expert'    => array(':hide', 'guests', 'cssID', 'space'),
    'invisible' => array(':hide', 'invisible', 'start', 'stop'),
);

$GLOBALS['TL_DCA']['tl_content']['fields']['bootstrap_showIndicators'] = array
(
    'label'     => &$GLOBALS['TL_LANG']['tl_content']['bootstrap_showIndicators'],
    'exclude'   => true,
    'inputType' => 'checkbox',
    'eval'      => array('tl_class' => 'm12 w50'),
    'sql'       => "char(1) NOT NULL default ''"
);

$GLOBALS['TL_DCA']['tl_content']['fields']['bootstrap_showControls'] = array
(
    'label'     => &$GLOBALS['TL_LANG']['tl_content']['bootstrap_showControls'],
    'exclude'   => true,
    'inputType' => 'checkbox',
    'eval'      => array('tl_class' => 'w50 m12'),
    'sql'       => "char(1) NOT NULL default ''"
);

$GLOBALS['TL_DCA']['tl_content']['fields']['bootstrap_autostart'] = array
(
    'label'     => &$GLOBALS['TL_LANG']['tl_content']['bootstrap_autostart'],
    'exclude'   => true,
    'inputType' => 'checkbox',
    'eval'      => array('tl_class' => 'w50'),
    'sql'       => "char(1) NOT NULL default ''"
);

$GLOBALS['TL_DCA']['tl_content']['fields']['bootstrap_interval'] = array
(
    'label'     => &$GLOBALS['TL_LANG']['tl_content']['bootstrap_interval'],
    'exclude'   => true,
    'inputType' => 'text',
    'eval'      => array('tl_class' => 'clr'),
    'sql'       => "int(10) unsigned NOT NULL default '0'"
);
