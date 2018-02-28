<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2017 Leo Feyer
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
	// Classes
	'beachcup\RegistrationExport'     => 'system/modules/beachcup/classes/RegistrationExport.php',

	// Modules
	'beachcup\ModuleFormerResults'    => 'system/modules/beachcup/modules/ModuleFormerResults.php',
	'beachcup\ModuleGameResults'      => 'system/modules/beachcup/modules/ModuleGameResults.php',
	'beachcup\ModuleTeamList'         => 'system/modules/beachcup/modules/ModuleTeamList.php',
	'beachcup\ModuleTotalResults'     => 'system/modules/beachcup/modules/ModuleTotalResults.php',
	'beachcup\ModuleStageMap'         => 'system/modules/beachcup/modules/ModuleStageMap.php',
	'beachcup\ModuleRegistrationList' => 'system/modules/beachcup/modules/ModuleRegistrationList.php',
	'beachcup\ModulePlayerList'       => 'system/modules/beachcup/modules/ModulePlayerList.php',
	'beachcup\ModuleStageList'        => 'system/modules/beachcup/modules/ModuleStageList.php',
	'beachcup\ModuleEditPlayer'       => 'system/modules/beachcup/modules/ModuleEditPlayer.php',

	// Forms
	'beachcup\BeachcupEditForm'       => 'system/modules/beachcup/forms/BeachcupEditForm.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'mod_team_list'         => 'system/modules/beachcup/templates',
	'mod_game_results'      => 'system/modules/beachcup/templates',
	'mod_registration_list' => 'system/modules/beachcup/templates',
	'mod_stage_list'        => 'system/modules/beachcup/templates',
	'mod_edit_player'       => 'system/modules/beachcup/templates',
	'mod_stage_map'         => 'system/modules/beachcup/templates',
	'mod_player_list'       => 'system/modules/beachcup/templates',
	'mod_news_slider'       => 'system/modules/beachcup/templates',
	'mod_total_results'     => 'system/modules/beachcup/templates',
	'mod_former_results'    => 'system/modules/beachcup/templates',
));
