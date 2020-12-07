<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerPartenaires extends JControllerAdmin
{
	// surcharge pour gérer la suppression du partenaires par le modèle adéquat
	public function getModel($name = 'Partenaire', $prefix = 'Ac19Model') 
	{
		// récupère le modèle de détail ($name au sigulier) pour la suppression assistée d'un (des) enregistrement(s)
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
}
