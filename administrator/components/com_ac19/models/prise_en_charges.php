<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelPrise_en_charges extends JModelList
{
	public function __construct($config = array())
	{
		// précise les colonnes activant le tri
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'p.id',
				'dateHeureDebut', 'p.dateHeureDebut',
				'dateHeureFin', 'p.dateHeureFin',
				'numCde', 'p.commandes_id',
				'email', 'p.benevoles_id',
				'published', 'p.published',
				'hits', 'p.hits',
				'modified', 'p.modified'
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
		parent::populateState('p.dateHeureDebut', 'ASC');
	}
	
	protected function getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query = $this->_db->getQuery(true);
		$query->select('p.id, p.dateHeureDebut, p.dateHeureFin, p.commandes_id, p.benevoles_id, p.published, p.hits, p.modified');
		$query->from('#__ac19_prise_en_charges p');

		// joint la table benevoles
		$query->select('b.email AS email')->join('LEFT', '#__AC19_benevoles AS b ON p.benevoles_id=b.id');

		// joint la table commandes
		$query->select('c.numCde AS numCde')->join('LEFT', '#__AC19_commandes AS c ON p.commandes_id=c.id');

		// filtre de recherche rapide textuelle
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			// recherche prefixée par 'id:'
			if (stripos($search, 'id:') === 0) {
				$query->where('p.id = '.(int) substr($search, 3));
			}
			else {
				// recherche textuelle classique (sans préfixe)
				$search = $this->_db->Quote('%'.$this->_db->escape($search, true).'%');
				// Compile les clauses de recherche
				$searches	= array();
				$searches[]	= 'p.dateHeureDebut LIKE '.$search;
				$searches[]	= 'p.dateHeureFin '.$search;
				$searches[]	= 'numCde LIKE '.$search;
				$searches[]	= 'email LIKE '.$search;
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}

		// tri des colonnes
		$orderCol = $this->state->get('list.ordering', 'p.dateHeureDebut');
		$orderDirn = $this->state->get('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		// echo nl2br(str_replace('#__','egs_',$query));			// TEST/DEBUG
		return $query;
	}
}
