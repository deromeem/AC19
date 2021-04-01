<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerEtat_cde extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'etat_cde'));

		parent::display($cachable, $urlparams);
	}
}
