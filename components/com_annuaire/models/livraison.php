<?php
defined('_JEXEC') or die('Restricted access');
 
class AnnuaireModelLivraison extends JModelItem
{
	protected $_item = null;
	protected $_context = 'com_annuaire.livraison';

	protected function populateState()
	{
		$app = JFactory::getApplication('site');
		
		// Charge et mémorise l'état (state) de l'id depuis le contexte
		$pk = $app->input->getInt('id');
		$this->setState($this->_context.'.id', $pk);
		// $this->setState('livraison.id', $pk);
	}

	public function getItem($pk = null)
	{
		// Initialise l'id
		$pk = (!empty($pk)) ? $pk : (int) $this->getState($this->_context.'.id');

		// Si pas de données chargées pour cet id
		if (!isset($this->_item[$pk])) {
			$db = $this->getDbo();
			$query = $db->getQuery(true);
			$query->select('l.id, l.nom, l.alias, l.logo, l.activite, l.codeAPE_NAF, l.numSIREN, l.numTVAintra, l.pays_id, l.siteWeb, l.adrRue, l.adrVille, l.adrCP, l.commentaire');
			$query->from('#__annuaire_livraisons l');

			// joint la table pays
			$query->select('p.pays AS pays')->join('LEFT', '#__annuaire_pays AS p ON p.id=l.pays_id');
		
			$query->where('l.id = ' . (int) $pk);
			$db->setQuery($query);
			$data = $db->loadObject();
			$this->_item[$pk] = $data;
		}
  		return $this->_item[$pk];
	}
}
