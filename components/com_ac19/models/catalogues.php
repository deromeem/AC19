<?php
defined('_JEXEC') or die('Restricted access');
 
jimport('joomla.application.component.modellist');
 
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
				'partenaire', 'partenaire',
				'published', 'c.published',
				'hits', 'c.hits',
				'modified', 'c.modified'
			);
		}
		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null)
	{
		$app = JFactory::getApplication();

		// informations de pagination de la liste
		$limit = $app->getUserStateFromRequest('global.list.limit', 'limit', $app->getCfg('list_limit'), 'uint');
		$this->setState('list.limit', $limit);

		$limitstart = $app->input->get('limitstart', 0, 'uint');
		$this->setState('list.start', $limitstart);

		// informations du tri de la liste
		$orderCol = $app->input->get('filter_order', $ordering);
		$this->setState('list.ordering', $orderCol);

		$listOrder = $app->input->get('filter_order_Dir', $direction);
		$this->setState('list.direction', $listOrder); 

		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);

		parent::populateState('titre', 'ASC');
	}

	protected function _getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query	= $this->_db->getQuery(true);
		$query->select('c.id, c.titre, c.description, c.dateDebut, c.dateFin, c.partenaires_id, c.published, c.hits, c.modified');
		$query->from('#__ac19_catalogues c');

		// joint la table partenaire
		$query->select('p.raisonSociale AS partenaire')->join('LEFT', '#__ac19_partenaires AS p ON c.partenaires_id=p.id');		
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
				// Ajoute les clauses à la requête
				$query->where('('.implode(' OR ', $searches).')');
			}
		}
		
		// filtre les éléments publiés
		$query->where('c.published=1');
		$query->where('partenaires_id=' . $this->getCurrentPartenaireId());
	
		// tri des colonnes
		$orderCol = $this->getState('list.ordering', 'titre');
		$orderDirn = $this->getState('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		// echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
		return $query;
	}

	protected function getCurrentPartenaireId()
	{
		// La requête utilise l'email de partenaire connecté pour avoir son id
		$currentUserEmail = JFactory::getUser()->email;
		$query	= $this->_db->getQuery(true);
		$query->select('id');
		$query->from('#__ac19_partenaires');
		$query->where('published=1');
		// quote() sert à ajouter des '' à l'email afin d'éviter le conflit avec le mot clé réservé "@". voir : https://docs.joomla.org/Selecting_data_using_JDatabase 
		$query->where('email=' . $this->_db->quote($currentUserEmail));
		$this->_db->setQuery($query);
		// Retourner une seule valeur de la requête 
		// voir : https://docs.joomla.org/Selecting_data_using_JDatabase/fr
		$partenaireId = $this->_db->loadResult();
		// echo nl2br(str_replace('#__','ac19_',$query)); // TEST DEBUG
		return $partenaireId;
	}


}
