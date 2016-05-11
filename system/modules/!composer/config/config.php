<?php

/**
 * Composer integration for Contao.
 *
 * PHP version 5
 *
 * @copyright  ContaoCommunityAlliance 2013
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author     Tristan Lins <tristan.lins@bit3.de>
 * @author     Dominik Zogg <dominik.zogg@gmail.com>
 * @author     Oliver Hoff <oliver@hofff.com>
 * @package    Composer
 * @license    LGPLv3
 * @filesource
 */

if (version_compare(PHP_VERSION, '5.3', '<')) {
    trigger_error('Composer client requires PHP 5.3, even with Contao 2.11', E_USER_ERROR);
    return;
}

define('COMPOSER_MIN_PHPVERSION', '5.3.4');
define('COMPOSER_DIR_RELATIVE', 'composer');
define('COMPOSER_DIR_ABSOULTE', TL_ROOT . '/' . COMPOSER_DIR_RELATIVE);


/**
 * Initialize the composer runtime.
 */
\ContaoCommunityAlliance\Contao\Composer\Runtime::initialize();


/**
 * Default configuration
 */
$GLOBALS['TL_CONFIG']['composerAutoUpdateLibrary']      = true;
$GLOBALS['TL_CONFIG']['composerExecutionMode']          = 'inline';
$GLOBALS['TL_CONFIG']['composerPhpPath']                =
    '/usr/bin/env php -d memory_limit=1G -d max_execution_time=900';
$GLOBALS['TL_CONFIG']['composerRemoveRepositoryTables'] = false;
$GLOBALS['TL_CONFIG']['composerVerbosity']              = 'VERBOSITY_NORMAL';


/**
 * Add backend module
 */
$GLOBALS['BE_MOD']['system']['composer'] = array(
    'callback'   => 'ContaoCommunityAlliance\Contao\Composer\ClientBackend',
    'icon'       => 'system/modules/!composer/assets/images/icon.png',
    'stylesheet' => 'system/modules/!composer/assets/css/backend.css',
);


/**
 * Hooks
 */
$GLOBALS['TL_HOOKS']['sqlCompileCommands'][] = array(
    'ContaoCommunityAlliance\Contao\Composer\DatabaseInstaller',
    'sqlCompileCommands'
);