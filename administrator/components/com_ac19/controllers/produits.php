<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ControllerProduits extends JControllerAdmin
{
	// surcharge pour gérer la suppression de produits par le modèle adéquat
	public function getModel($name = 'Produit', $prefix = 'Ac19Model') 
	{
		// récupère le modèle de détail ($name au sigulier) pour la suppression assistée d'un (des) enregistrement(s)
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
}
