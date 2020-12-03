<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelLigne_cdes extends JModelList
{
	public function __construct($config = array())
	{
		// précise les colonnes activant le tri
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'l.id',
				'qteCde', 'l.qteCde',
				'qteLivr', 'l.qteLivr',
				'commandes_id', 'l.commandes_id',
				'produits_id', 'l.produits_id',
				'alias', 'l.alias',
				'published', 'l.published',
				'hits', 'l.hits',
				'modified', 'l.modified'
			);
		}
		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null)
	{
		// récupère les informations de la session utilisateur nécessaires au paramétrage de l'écran
		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);

		// parent::populateState('modified', 'desc');
		parent::populateState('l.qteCde', 'ASC');
	}
	
	protected function getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query = $this->_db->getQuery(true);
		$query->select('l.id, l.qteCde, l.qteLivr, l.commandes_id, l.produits_id, l.alias, l.published, l.hits, l.modified');
		$query->from('#__ac19_ligne_cdes l');

		$query->select('c.numCde AS commandes')->join('LEFT', '#__ac19_commandes AS c ON c.id=l.commandes_id');
		// joint la table _users de Joomla
		// $query->select('ul.name AS linked_user')->join('LEFT', '#__users AS ul ON ul.id=a.affected_to');

		// filtre de recherche rapide textuelle
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			// recherche prefixée par 'id:'
			if (stripos($search, 'id:') === 0) {
				$query->where('l.id = '.(int) substr($search, 3));
			}
			else {
				// recherche textuelle classique (sans préfixe)
				$search = $this->_db->Quote('%'.$this->_db->escape($search, true).'%');
				// Compile les clauses de recherche
				$searches	= array();
				$searches[]	= 'l.qteCde LIKE '.$search;
				$searches[]	= 'l.qteLivr LIKE '.$search;
				$searches[]	= 'l.commandes_id LIKE '.$search;
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}

		// tri des colonnes
		$orderCol = $this->state->get('list.ordering', 'l.qteCde');
		$orderDirn = $this->state->get('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		// echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
		return $query;
	}
}