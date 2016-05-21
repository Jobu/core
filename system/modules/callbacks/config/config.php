<?php
//$GLOBALS['TL_HOOKS']['processEfgFormData']['setStateCallback'] = array('EfgCallbacks', 'setState');
$GLOBALS['TL_HOOKS']['validateFormField']['validateRegistrationFormFieldsCallback'] = array('EfgCallbacks', 'validateRegistrationFormFields');
?>