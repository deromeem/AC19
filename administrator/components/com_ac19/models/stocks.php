<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelStocks extends JModelList
{
	public function __construct($config = array())
	{
		// précise les colonnes activant le tri
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 's.id',
				'qte', 's.qte',
				'magasin', 's.magasins_id',
				'produit', 's.produits_id',
				'published', 's.published',
				'hits', 's.hits',
				'modified', 's.modified',
			);
		}
		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null)
	{
		// récupère les informations de la session utilisateur nécessaires au paramétrage de l'écran
		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);

		$magasin = $this->getUserStateFromRequest($this->context.'.filter.magasin', 'filter_magasin', '');
		$this->setState('filter.magasin', $magasin);

		$published = $this->getUserStateFromRequest($this->context.'.filter.published', 'filter_published', '');
		$this->setState('filter.published', $published);

		

		// parent::populateState('modified', 'desc');
		parent::populateState('s.id', 'ASC');
	}
	
	protected function getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query = $this->_db->getQuery(true);
		$query->select('s.id, s.qte, s.magasins_id, s.produits_id, s.published, s.hits, s.modified' );
		$query->from('#__ac19_stocks s');

		// joint la table _users de Joomla
		// $query->select('ul.name AS linked_user')->join('LEFT', '#__users AS ul ON ul.id=a.affected_to');
		$query->select('p.titre AS produit')->join('LEFT', '#__ac19_produits AS p ON p.id=s.produits_id');
		$query->select('m.enseigne AS magasin')->join('LEFT', '#__ac19_magasins AS m ON m.id=s.magasins_id');

		// filtre de recherche rapide textuelle
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			// recherche prefixée par 'id:'
			if (stripos($search, 'id:') === 0) {
				$query->where('s.id = '.(int) substr($search, 3));
			}
			else {
				// recherche textuelle classique (sans préfixe)
				$search = $this->_db->Quote('%'.$this->_db->escape($search, true).'%');
				// Compile les clauses de recherche
				$searches	= array();
				$searches[]	= 's.id LIKE '.$search;
				$searches[]	= 'p.titre LIKE '.$search;
				$searches[]	= 'm.enseigne LIKE '.$search;
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}
		// filtre selon l'état du filtre 'filter_magasin'
		$magasin = $this->getState('filter.magasin');
		if (is_numeric($magasin)) {
			$query->where('s.magasins_id=' . (int) $magasin);
		}
		// filtre selon l'état du filtre 'filter_published'
		$published = $this->getState('filter.published');
		if (is_numeric($published)) {
			$query->where('s.published=' . (int) $published);
		}
		elseif ($published === '') {
			// si aucune sélection, on n'affiche que les publiés et dépubliés
			$query->where('(s.published=0 OR s.published=1)');
		}

		// tri des colonnes
		$orderCol = $this->state->get('list.ordering', 's.id');
		$orderDirn = $this->state->get('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
		return $query;
	}
}