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
 * Namespace
 */
namespace beachcup;


/**
 * Class ModuleEditPlayer
 *
 * @copyright  Copyright © Jakob Pallhuber All Rights Reserved
 * @author     Jakob Pallhuber
 * @package    Devtools
 */
class ModuleEditPlayer extends \Module
{

    /**
	 * Template
	 * @var string
	 */
    protected $strTemplate = "mod_edit_player";


    /**
	 * Generate the module
	 */
    protected function compile()
    {
        global $objPage;

        $playerIdParam = \Input::get('player');
        $playerId = intval($playerIdParam);
        if ($playerId === 0)
        {
            return;
        }
        
        //$editFields = array_keys($GLOBALS['TL_DCA']['tl_beachcup_player']['fields']);
        $editFields = array('name','surname','birth_date','birth_place','gender','address','zip_code','city','country','email','phone_number','tax_number','shirt_top','shirt_size','player_level');
        /*$arrFields = array_keys($GLOBALS['TL_DCA']['tl_beachcup_player']['fields']);
        foreach ($arrFields as $strField)
        {
            if ($GLOBALS['TL_DCA']['tl_beachcup_player']['fields'][$strField]['exclude'] == true)
            {
                $editFields[] = $strField;
            }
        }*/

        $strQuery = "SELECT ";
        $strSep = '';

        foreach ($editFields as $editField)
        {
                $strQuery .= $strSep . $editField;
                $strSep = ', ';
        }

        $strQuery .= " FROM tl_beachcup_player WHERE id=?";        

        $objRecord = \Database::getInstance()->prepare($strQuery)
            ->limit(1)
            ->execute($playerId);
        if ($objRecord->numRows < 1)
        {
            return;
        }
                
        $objForm = \FormModel::findOneBy('alias', 'spieler-editieren-' . $objPage->language);

        if ($objForm !== null)
        {
            $objFormElement = \ContentModel::findOneBy('form', $objForm->id);
        }
        if ($objFormElement !== null)
        {
            $this->Template->editform = $this->generateEditForm($objFormElement, $objRecord);        
        }
    }

    /**
     * Generate frontend editing form
     * @return string
     */
    public function generateEditForm($objFormElement, $objRecord)
    {

        if (TL_MODE == 'BE')
        {
            return '';
        }

        $objFormElement->typePrefix = 'ce_';

        $this->EditForm = new BeachcupEditForm($objFormElement);
        $this->EditForm->objEditRecord = $objRecord;

        return $this->EditForm->generate();

    }
}