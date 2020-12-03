<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerPartenaire extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'partenaire'));

		parent::display($cachable, $urlparams);
	}
}
