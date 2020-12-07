<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelMagasins extends JModelList
{
	public function __construct($config = array())
	{
		// précise les colonnes activant le tri
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'm.id',
				'enseigne', 'm.enseigne',
				'adrRue', 'm.adrRue',
				'adrVille', 'm.adrVille',
				'adrCP', 'm.adrCP',
				'tel', 'm.tel',
				'latitude', 'm.latitude',
				'longitude', 'm.longitude',
				'type_mags_id', 'm.type_mags_id',
				'partenaires_id', 'm.partenaires_id',
				'alias', 'm.alias',
				'published', 'm.published',
				'hits', 'm.hits',
				'modified', 'm.modified'
			);
		}
		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null)
	{
		// récupère les informations de la session utilisateur nécessaires au paramétrage de l'écran
		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);

		$type_mags_id = $this->getUserStateFromRequest($this->context.'.filter.type_mags_id', 'filter_type_mags_id', '');
		$this->setState('filter.type_mags_id', $type_mags_id);

		$pay = $this->getUserStateFromRequest($this->context.'.filter.pay', 'filter_pay', '');
		$this->setState('filter.pay', $pay);

		$partenaires_id = $this->getUserStateFromRequest($this->context.'.filter.partenaires_id', 'filter_partenaires_id', '');
		$this->setState('filter.partenaires_id', $partenaires_id);

		// parent::populateState('modified', 'desc');
		parent::populateState('m.enseigne', 'ASC');
	}
	
	protected function getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query = $this->_db->getQuery(true);
		$query->select('m.id, m.enseigne, m.adrRue, m.adrVille, m.adrCP, m.tel, m.latitude, m.longitude, m.type_mags_id, m.partenaires_id, m.alias, m.published, m.hits, m.modified');
		$query->from('#__ac19_magasins m');

		// joint la table type_mags
		$query->select('tm.typeMag AS typeMag ')->join('LEFT', '#__ac19_type_mags AS tm ON tm.id=m.type_mags_id');

		// //joint la table _users de Joomla
		// $query->select('ul.name AS linked_user')->join('LEFT', '#__users AS ul ON ul.id=a.affected_to');

		// filtre de recherche rapide textuelle
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			// recherche prefixée par 'id:'
			if (stripos($search, 'id:') === 0) {
				$query->where('m.id = '.(int) substr($search, 3));
			}
			else {
				// recherche textuelle classique (sans préfixe)
				$search = $this->_db->Quote('%'.$this->_db->escape($search, true).'%');
				// Compile les clauses de recherche
				$searches	= array();
				$searches[]	= 'm.enseigne LIKE '.$search;
				$searches[]	= 'm.adrRue LIKE '.$search;
				$searches[]	= 'm.adrVille LIKE '.$search;
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}

		// filtre selon l'état du filtre 'filter_codeAPE_NAF'
		$codeAPE_NAF = $this->getState('filter.codeAPE_NAF');
		if (is_numeric($codeAPE_NAF)) {
			$query->where('m.codeAPE_NAF=' . (int) $codeAPE_NAF);
		}
		// filtre selon l'état du filtre 'filter_pay'
		$pay = $this->getState('filter.pay');
		if (is_numeric($pay)) {
			$query->where('m.pays_id=' . (int) $pay);
		}
		// filtre selon l'état du filtre 'filter_published'
		$published = $this->getState('filter.published');
		if (is_numeric($published)) {
			$query->where('m.published=' . (int) $published);
		}
		elseif ($published === '') {
			// si aucune sélection, on n'affiche que les publiés et dépubliés
			$query->where('(m.published=0 OR m.published=1)');
		}

		// tri des colonnes
		$orderCol = $this->state->get('list.ordering', 'm.enseigne');
		$orderDirn = $this->state->get('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		// echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
		return $query;
	}

	// public function getPays()
	// {
	// 	$query = $this->_db->getQuery(true);
	// 	$query->select('id, pays');
	// 	$query->from('#__annuaire_pays');
	// 	$query->where('published=1');
	// 	$query->order('pays ASC');
	// 	$this->_db->setQuery($query);
	// 	$pays = $this->_db->loadObjectList();
	// 	return $pays;
	// }	
}
