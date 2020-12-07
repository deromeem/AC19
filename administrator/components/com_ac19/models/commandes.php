<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelCommandes extends JModelList
{
	public function __construct($config = array())
	{
		// précise les colonnes activant le tri
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'c.id',
				'numCde', 'c.numCde',
				'dateHeureCde', 'c.dateHeureCde',
				'dateHeureLivr', 'c.dateHeureLivr',
				'prixTotal', 'c.prixTotal',
				'refPaiement', 'c.refPaiement',
				'particuliers_id', 'c.particuliers_id',
				'magasins_id', 'c.magasins_id',
				'etat_cdes_id', 'c.etat_cdes_id',
				'published', 'c.published',
				'hits', 'c.hits',
				'modified', 'c.modified'
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
		parent::populateState('c.numCde', 'ASC');
	}
	
	protected function getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query = $this->_db->getQuery(true);
		$query->select('c.id, c.numCde, c.dateHeureCde, c.dateHeureLivr, c.prixTotal, c.refPaiement, particuliers_id, magasins_id, etat_cdes_id, c.published, c.hits, c.modified');
		$query->from('#__ac19_commandes c');

		$query->select('p.email AS particuliers')->join('LEFT', '#__ac19_particuliers AS p ON p.id=c.particuliers_id');
		$query->select('m.enseigne AS magasins')->join('LEFT', '#__ac19_magasins AS m ON m.id=c.magasins_id');
		$query->select('e.etatCde AS etatCde')->join('LEFT', '#__ac19_etat_cdes AS e ON e.id=c.etat_cdes_id');
		// joint la table _users de Joomla
		// $query->select('ul.name AS linked_user')->join('LEFT', '#__users AS ul ON ul.id=a.affected_to');

		// filtre de recherche rapide textuelle
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			// recherche prefixée par 'id:'
			if (stripos($search, 'id:') === 0) {
				$query->where('c.id = '.(int) substr($search, 3));
			}
			else {
				// recherche textuelle classique (sans préfixe)
				$search = $this->_db->Quote('%'.$this->_db->escape($search, true).'%');
				// Compile les clauses de recherche
				$searches	= array();
				$searches[]	= 'c.numCde LIKE '.$search;
				$searches[]	= 'c.dateHeureCde LIKE '.$search;
				$searches[]	= 'c.dateHeureLivr LIKE '.$search;
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}

		// tri des colonnes
		$orderCol = $this->state->get('list.ordering', 'c.numCde');
		$orderDirn = $this->state->get('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		// echo nl2br(str_replace('#__','egs_',$query));			// TEST/DEBUG
		return $query;
	}
}