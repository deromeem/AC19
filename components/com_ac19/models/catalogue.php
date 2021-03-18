<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelCatalogue extends JModelItem
{
	protected $_item = null;
	protected $_context = 'com_ac19.catalogue';

	protected function populateState()
	{
		$app = JFactory::getApplication('site');

		// Charge et mémorise l'état (state) de l'id depuis le contexte
		$pk = $app->input->getInt('id');
		$this->setState($this->_context.'.id', $pk);
		// $this->setState('catalogue.id', $pk);
	}

	public function getItem($pk = null)
	{
		// Initialise l'id
		$pk = (!empty($pk)) ? $pk : (int) $this->getState($this->_context.'.id');
		
		if (empty($pk)) {
			// Si pas de id donné : recherche si un catalogue Joomla est connecté :
			$user = JFactory::getUser();
			if (isset($user)) {
				// Un catalogue est connecté : recherche de ses données
				$id = $user->id;
				$db = $this->getDbo();
				$query = $db->getQuery(true);
				$query->select('ca.id as id, ca.titre, ca.description, ca.partenaires_id, ca.hits, ca.modified');
				$query->from('#__ac19_catalogues AS ca');
				$query->where('ca.id = ' . $id);
				$db->setQuery($query);
				$data = $db->loadObject();
				$pk = $data->id;
				$this->_item[$pk] = $data;	
			}
		} elseif (!isset($this->_item[$pk])) {
			// Si pas de données chargées pour cet id
			$db = $this->getDbo();
			$query = $db->getQuery(true);
			$query->select('ca.id, ca.titre, ca.description, ca.partenaires_id, ca.hits, ca.modified');
			$query->from('#__ac19_catalogues AS ca');
			$query->where('ca.id = ' . (int) $pk);
			$db->setQuery($query);
			$data = $db->loadObject();
			$this->_item[$pk] = $data;
		}
		// echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
  		return $this->_item[$pk];
	}
}