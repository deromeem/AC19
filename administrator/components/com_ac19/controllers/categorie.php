<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerCategorie extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'categorie'));

		parent::display($cachable, $urlparams);
	}
}