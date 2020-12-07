<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerMagasin extends JControllerForm
{
	function display($cachable = false, $urlparams = false) 
	{
		$input = JFactory::getApplication()->input;
		$input->set('view', $input->getCmd('view', 'magasin'));

		parent::display($cachable, $urlparams);
	}
}
