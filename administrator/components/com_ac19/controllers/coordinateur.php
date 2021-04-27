<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerCoordinateur extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'coordinateur'));

		parent::display($cachable, $urlparams);
	}
}
