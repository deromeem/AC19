<?php
defined('_JEXEC') or die('Restricted access');
 
jimport('joomla.application.component.modellist');
 
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

		parent::populateState('numCde', 'ASC');
	}

	protected function _getListQuery()
	{
		// construit la requête d'affichage de la liste
		$query	= $this->_db->getQuery(true);
		$query->select('c.id, c.numCde, c.dateHeureCde, c.dateHeureLivr, c.prixTotal, c.refPaiement, particuliers_id, magasins_id, etat_cdes_id, c.published, c.hits, c.modified');
		$query->from('#__ac19_commandes c');

		$query->select('p.email AS particuliers')->join('LEFT', '#__ac19_particuliers AS p ON p.id=c.particuliers_id');
		$query->select('m.enseigne AS magasins')->join('LEFT', '#__ac19_magasins AS m ON m.id=c.magasins_id');
		$query->select('e.etatCde AS etatCde')->join('LEFT', '#__ac19_etat_cdes AS e ON e.id=c.etat_cdes_id');

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
		
		// filtre les éléments publiés
		$query->where('c.published=1');
		
		// tri des colonnes
		$orderCol = $this->getState('list.ordering', 'nom');
		$orderDirn = $this->getState('list.direction', 'ASC');
		$query->order($this->_db->escape($orderCol.' '.$orderDirn));

		// echo nl2br(str_replace('#__','ac19_',$query));			// TEST/DEBUG
		return $query;
	}
}
