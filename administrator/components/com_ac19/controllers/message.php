<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerMessage extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'message'));

		parent::display($cachable, $urlparams);
	}
}
