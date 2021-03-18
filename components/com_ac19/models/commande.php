<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelCommande extends JModelItem
{
	protected $_item = null;
	protected $_context = 'com_ac19.commande';

	protected function populateState()
	{
		$app = JFactory::getApplication('site');

		// Charge et mémorise l'état (state) de l'id depuis le contexte
		$pk = $app->input->getInt('id');
		$this->setState($this->_context.'.id', $pk);
		// $this->setState('utilisateur.id', $pk);
	}

	public function getItem($pk = null)
	{
		// Initialise l'id
		$pk = (!empty($pk)) ? $pk : (int) $this->getState($this->_context.'.id');
		
		if (empty($pk)) {
			// Si pas de id donné : recherche si un utilisateur Joomla est connecté :
			$user = JFactory::getUser();
			if (isset($user)) {
				// Un utilisateur est connecté : recherche de ses données
				$email = $user->email;
				$db = $this->getDbo();
				$query = $db->getQuery(true);
				$query->select('c.id as id, c.numCde, c.dateHeureCde, c.dateHeureLivr, c.prixTotal, c.refPaiement, c.hits, c.modified');
				$query->from('#__ac19_commandes AS c');
				$query->where('c.email = ' . $email);
				$db->setQuery($query);
				$data = $db->loadObject();
				$pk = $data->id;
				$this->_item[$pk] = $data;	
			}
		} elseif (!isset($this->_item[$pk])) {
			// Si pas de données chargées pour cet id
			$db = $this->getDbo();
			$query = $db->getQuery(true);
			$query->select('c.id, c.numCde, c.dateHeureCde, c.dateHeureLivr, c.prixTotal, c.refPaiement, c.hits, c.modified');
			$query->from('#__ac19_commandes AS c');
			$query->where('c.id = ' . (int) $pk);
			$db->setQuery($query);
			$data = $db->loadObject();
			$this->_item[$pk] = $data;
		}
		// echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
  		return $this->_item[$pk];
	}
}