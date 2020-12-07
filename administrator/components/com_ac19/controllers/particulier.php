<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerParticulier extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'particulier'));

		parent::display($cachable, $urlparams);
	}
}
