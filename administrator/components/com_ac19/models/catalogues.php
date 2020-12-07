<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelCatalogues extends JModelList
{
	public function __construct($config = array())
	{
		// précise les colonnes activant le tri
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'c.id',
				'titre', 'c.titre',
				'description', 'c.description',
				'dateDebut', 'c.dateDebut',
				'dateFin', 'c.dateFin',
				'partenaires_id', 'c.partenaires_id'
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
		parent::populateState('c.titre', 'ASC');
	}
	
	protected function getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query = $this->_db->getQuery(true);
		$query->select('c.id, c.titre, c.description, c.dateDebut, c.dateFin, c.partenaires_id, c.published, c.hits, c.modified');
		$query->from('#__ac19_catalogues c');

		$query->select('p.email AS partenaire')->join('LEFT', '#__ac19_partenaires AS p ON p.id=c.partenairess_id');

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
				$searches[]	= 'c.titre LIKE '.$search;
				$searches[]	= 'c.description LIKE '.$search;
				$searches[]	= 'c.dateDebut LIKE '.$search;
				$searches[]	= 'c.dateFin LIKE '.$search;
				$searches[]	= 'c.partenaire_id LIKE '.$search;
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}

		// tri des colonnes
		$orderCol = $this->state->get('list.ordering', 'c.titre');
		$orderDirn = $this->state->get('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
		return $query;
	}
	public function getPartenaire()
	{
		$query = $this->_db->getQuery(true);
		$query->select('id, email');
		$query->from('#__ac19_partenaires');
		$query->where('published=1');
		$query->order('email ASC');
		$this->_db->setQuery($query);
		$email = $this->_db->loadObjectList();
		return $email;
	}	
}