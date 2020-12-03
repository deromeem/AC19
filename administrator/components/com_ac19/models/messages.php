<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelMessages extends JModelList
{
	public function __construct($config = array())
	{
		// précise les colonnes activant le tri
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'm.id',
				'date', 'm.date',
				'objet', 'm.objet',
				'contenu', 'm.contenu',
				'auteur', 'auteur',
				'destinataire', 'destinataire',
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

		// parent::populateState('modified', 'desc');
		parent::populateState('m.objet', 'ASC');
	}
	
	protected function getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query = $this->_db->getQuery(true);
		$query->select('m.id, m.date, m.objet, m.contenu, m.published, m.hits, m.modified');
		$query->from('#__ac19_messages m');

		// joint la table utilisateurs de Joomla
		$query->select('ua.nom AS auteur')->join('LEFT', '#__ac19_utilisateurs AS ua ON ua.id=m.utilisateurs_aut_id');
		$query->select('ud.nom AS destinataire')->join('LEFT', '#__ac19_utilisateurs AS ud ON ud.id=m.utilisateurs_dest_id');

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
				$searches[]	= 'm.objet LIKE '.$search;
				$searches[]	= 'm.contenu LIKE '.$search;
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}

		// tri des colonnes
		$orderCol = $this->state->get('list.ordering', 'm.objet');
		$orderDirn = $this->state->get('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		echo nl2br(str_replace('#__','egs_',$query));			// TEST/DEBUG
		return $query;
	}
}