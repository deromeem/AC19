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
				'commandes_id', 'p.commandes_id',
				'benevoles_id', 'p.benevoles_id',
				'alias', 'p.alias',
				'published', 'p.published',
				'created', 'p.created',
				'created_by', 'p.created_by',
				'modified', 'p.modified',
				'modified_by', 'p.modified_by',
				'hits', 'p.hits',
			);
		}
		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null)
	{
		// récupère les informations de la session utilisateur nécessaires au paramétrage de l'écran
		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);

		// $codeAPE_NAF = $this->getUserStateFromRequest($this->context.'.filter.codeAPE_NAF', 'filter_codeAPE_NAF', '');
		// $this->setState('filter.codeAPE_NAF', $codeAPE_NAF);

		// $pay = $this->getUserStateFromRequest($this->context.'.filter.pay', 'filter_pay', '');
		// $this->setState('filter.pay', $pay);

		// $published = $this->getUserStateFromRequest($this->context.'.filter.published', 'filter_published', '');
		// $this->setState('filter.published', $published);

		// parent::populateState('modified', 'desc');
		parent::populateState('p.prise_en_charges', 'ASC');
	}
	
	protected function getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query = $this->_db->getQuery(true);
		$query->select('p.id, p.dateHeureDebut, p.dateHeureFin, p.commandes_id, p.benevoles_id, p.alias, p.published, p.created, p.created_by, p.modified, p.modified_by, p.hits');
		$query->from('#__ac19_prise_en_charges p');

		// joint la table benevoles
		$query->select('b.email AS email')->join('LEFT', '#__AC19_benevoles AS b ON p.benevoles_id=b.id');

		// joint la table commandes
		$query->select('c.numCde AS numCde')->join('LEFT', '#__AC19_commandes AS c ON p.commandes_id=c.id');

		// joint la table _users de Joomla
		// $query->select('ul.name AS linked_user')->join('LEFT', '#__users AS ul ON ul.id=a.affected_to');

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
				// $searches	= array();
				// $searches[]	= 'e.nom LIKE '.$search;
				// $searches[]	= 'e.codeAPE_NAF LIKE '.$search;
				// $searches[]	= 'e.siteWeb LIKE '.$search;
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}

		// filtre selon l'état du filtre 'filter_codeAPE_NAF'
		//$codeAPE_NAF = $this->getState('filter.codeAPE_NAF');
		// if (is_numeric($codeAPE_NAF)) {
		// 	$query->where('e.codeAPE_NAF=' . (int) $codeAPE_NAF);
		// }
		// // filtre selon l'état du filtre 'filter_pay'
		// $pay = $this->getState('filter.pay');
		// if (is_numeric($pay)) {
		// 	$query->where('e.pays_id=' . (int) $pay);
		// }
		// filtre selon l'état du filtre 'filter_published'
		$published = $this->getState('filter.published');
		if (is_numeric($published)) {
			$query->where('p.published=' . (int) $published);
		}
		elseif ($published === '') {
			// si aucune sélection, on n'affiche que les publiés et dépubliés
			$query->where('(p.published=0 OR p.published=1)');
		}

		// // tri des colonnes
		// $orderCol = $this->state->get('list.ordering', 'e.nom');
		// $orderDirn = $this->state->get('list.direction', 'ASC');
		// $query->order($this->_db->escape($orderCol.' '.$orderDirn));

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
