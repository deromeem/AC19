<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerPrise_en_charge extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'prise_en_charge'));

		parent::display($cachable, $urlparams);
	}
}
