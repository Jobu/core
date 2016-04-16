<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2016 Leo Feyer
 *
 * @license LGPL-3.0+
 */


/**
 * Register the namespaces
 */
ClassLoader::addNamespaces(array
(
	'beachcup',
));


/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	// Modules
	'beachcup\ModuleGameResults'  => 'system/modules/beachcup/modules/ModuleGameResults.php',
	'beachcup\ModuleStageList'    => 'system/modules/beachcup/modules/ModuleStageList.php',
	'beachcup\ModuleStageMap'     => 'system/modules/beachcup/modules/ModuleStageMap.php',
	'beachcup\ModuleTotalResults' => 'system/modules/beachcup/modules/ModuleTotalResults.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'mod_game_results'  => 'system/modules/beachcup/templates',
	'mod_news_slider'   => 'system/modules/beachcup/templates',
	'mod_stage_list'    => 'system/modules/beachcup/templates',
	'mod_stage_map'     => 'system/modules/beachcup/templates',
	'mod_total_results' => 'system/modules/beachcup/templates',
));
