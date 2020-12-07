<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelParticuliers extends JModelList
{
	public function __construct($config = array())
	{
		// précise les colonnes activant le tri
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'p.id',
				'email', 'p.email',
				'adrRue', 'p.adrRue',
				'adrVille', 'p.adrVille',
				'adrCP', 'p.adrCP',
				'latitude', 'p.latitude',
				'longitude', 'p.longitude',
				'alias', 'p.alias',
				'published', 'p.published',
				'hits', 'p.hits',
				'modified', 'p.modified'
			);
		}
		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null)
	{
		// récupère les informations de la session particulier nécessaires au paramétrage de l'écran
		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);

		// parent::populateState('modified', 'desc');
		parent::populateState('nom', 'prenom','ASC');
	}
	
	protected function getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query = $this->_db->getQuery(true);
		$query->select('p.id, p.email, p.adrRue, p.adrVille, p.adrCP, p.latitude, p.longitude, p.alias, p.published, p.hits, p.modified');
		$query->from('#__ac19_particuliers p');

		// joint la table utilisateurs de Joomla
		$query->select('u.nom AS nom, u.prenom AS prenom')->join('LEFT', '#__ac19_utilisateurs AS u ON u.email =p.email');

		// $query->select('p.pays AS pays')->join('LEFT', '#__annuaire_pays AS p ON p.id=p.');

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
				$searches	= array();
				$searches[]	= 'nom LIKE '.$search;
				$searches[]	= 'prenom LIKE '.$search;
				$searches[]	= 'p.adrRue LIKE '.$search;
				$searches[]	= 'p.adrVille LIKE '.$search;
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}

		// tri des colonnes
		$orderCol = $this->state->get('list.ordering', 'nom');
		$orderCol = $this->state->get('list.ordering', 'prenom');
		$orderDirn = $this->state->get('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
		return $query;
	}
}