<?php
class LoginCallbacks extends Frontend 
{ 
    public function importWithEmail($strUsername, $strPassword, $strTable)  
    { 
        if(strpos($strUsername, "@") !== false) 
        { 
            $this->Import("Database"); 
            $objUser = $this->Database->prepare("SELECT username FROM " . $strTable . " WHERE email = ?")->execute($strUsername); 
            
            if($objUser->numRows) 
            { 
                $this->Input->setPost("username", $objUser->username); 
                
                return true;
            } 
        } 
    }   
}  
?>