<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerCatal_Categ extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'catal_categ'));

		parent::display($cachable, $urlparams);
	}
}