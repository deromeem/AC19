<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerType_mag extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'type_mag'));

		parent::display($cachable, $urlparams);
	}
}