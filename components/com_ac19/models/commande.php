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
	public function getProduct($pk = null)
	{
		$pk = (!empty($pk)) ? $pk : (int) $this->getState($this->_context.'.id');
		
		$db = $this->getDbo();
		$query = $db->getQuery(true);
		$query->select('C.numCde, LCDES.qteCde, P.description, P.prix, P.titre');
		$query->from('#__ac19_commandes AS C JOIN #__ac19_ligne_cdes AS LCDES ON C.id = LCDES.commandes_id JOIN #__ac19_produits AS P ON P.id = LCDES.produits_id');
		$query->where('c.id = '. (int) $pk);
		$db->setQuery($query);
		$data = $db->loadObject();
		$this->_pages[$pk] = $data;
		return $this->_pages[$pk];
		// echo nl2br(str_replace('#__','ac19_',$query));
	}
	public function insertProduct($numCde)
	{
		$db = $this->getDbo();
		$query = $db->getQuery(true);
		$query->insert('C.numCde, LCDES.qteCde, P.description, P.titre, P.prix');
		$query->from('#__abdc_produits AS P JOIN ');
		$query->where('#__abdc_episodes AS ep');
		$db->setQuery($query);
		$data = $db->loadObjectList();
		$this->_pages = $data;
		return $this->_pages;

	}
	public function deleteProduct($numCde)
	{
		$db = $this->getDbo();
		$query = $db->getQuery(true);
		$query->select('qte, , titre, prix');
		$query->from('#__abdc_episodes AS ep');
		$query->where('#__abdc_episodes AS ep');
		$db->setQuery($query);
		$data = $db->loadObjectList();
		$this->_pages = $data;
		return $this->_pages;

	}
}