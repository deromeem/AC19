<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelMessage extends JModelItem
{
	protected $_item = null;
	protected $_context = 'com_ac19.message';

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
				$query->select('m.id as id, m.date, m.objet, m.contenu, m.hits, m.modified');
				$query->from('#__ac19_messages AS m');
				$query->where('u.email = ' . $email);
				$db->setQuery($query);
				$data = $db->loadObject();
				$pk = $data->id;
				$this->_item[$pk] = $data;	
			}
		} elseif (!isset($this->_item[$pk])) {
			// Si pas de données chargées pour cet id
			$db = $this->getDbo();
			$query = $db->getQuery(true);
			$query->select('m.id, m.date, m.objet, m.contenu, m.hits, m.modified');
			$query->from('#__ac19_messages AS m');
			$query->where('m.id = ' . (int) $pk);
			$db->setQuery($query);
			$data = $db->loadObject();
			$this->_item[$pk] = $data;
		}
		 //echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
  		return $this->_item[$pk];
	}
}