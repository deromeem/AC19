<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerCatalogue extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'catalogue'));

		parent::display($cachable, $urlparams);
	}
}
