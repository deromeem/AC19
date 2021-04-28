<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ViewCommande extends JViewLegacy
{
	protected $item;
	protected $pages;
	
	function display($tpl = null) 
	{
		// initialise les variables
		$this->item = $this->get('Item');
		$this->pages = $this->get('Product');
		// var_dump($this->pages);
		// affiche les erreurs
		if (count($errors = $this->get('Errors'))) {
			JError::raiseWarning(500, implode("\n", $errors));
			return false;
		}

		// affiche la vue
		parent::display($tpl);
	}
}