<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ViewPrise_en_charges extends JViewLegacy
{
	function display($tpl = null) 
	{
		// récupère la liste des items à afficher
		$this->items = $this->get('Items');
		// récupère l'objet jPagination correspondant à la liste
		$this->pagination = $this->get('Pagination');

		// récupère l'état des information de tri des colonnes
		$this->state = $this->get('State');
		$this->listOrder = $this->escape($this->state->get('list.ordering'));
		$this->listDirn	= $this->escape($this->state->get('list.direction'));			

		// récupère les paramêtres du fichier de configuration config.xml
		$params = JComponentHelper::getParams('com_annuaire');
		$this->paramDescShow = $params->get('jannuaire_show_desc', 0);
		$this->paramDescSize = $params->get('jannuaire_size_desc', 70);
		$this->paramDateFmt = $params->get('jannuaire_date_fmt', "d F Y");

		// affiche les erreurs éventuellement retournées
		if (count($errors = $this->get('Errors'))) 
		{
			JError::raiseError(500, implode('<br />', $errors));
			return false;
		}

		// ajoute la toolbar contenant les boutons d'actions
		$this->addToolBar();
		// invoque la méthode addSubmenu du fichier de soutien (helper)
		UtilisateurHelper::addSubmenu('prise_en_charges');
		// prépare et affiche la sidebar à gauche de la liste
		$this->prepareSideBar();
		$this->sidebar = JHtmlSidebar::render();

		// affiche les calques par appel de la méthode display() de la classe parente
		parent::display($tpl);
	}
 
	protected function addToolBar() 
	{
		// affiche le titre de la page
		JToolBarHelper::title(JText::_('COM_AC19_PRISE_EN_CHARGES')." : ".JText::_('COM_AC19_UTILISATEURS'));
		
		// affiche les boutons d'action
		JToolBarHelper::addNew('prise_en_charge.add');
		JToolBarHelper::editList('prise_en_charge.edit');
		JToolBarHelper::deleteList('Êtes vous sur ?', 'prise_en_charges.delete');		
		JToolbarHelper::publish('prise_en_charges.publish', 'JTOOLBAR_PUBLISH', true);
		JToolbarHelper::unpublish('prise_en_charges.unpublish', 'JTOOLBAR_UNPUBLISH', true);
		JToolbarHelper::archiveList('prise_en_charges.archive');
		JToolbarHelper::checkin('prise_en_charges.checkin');
		JToolbarHelper::trash('prise_en_charges.trash');
		JToolbarHelper::preferences('com_ac19');
	}

	protected function prepareSideBar()
	{
		// definit l'action du formulaire sidebar
		JHtmlSidebar::setAction('index.php?option=com_ac19');
		
		// ajoute le filtre standard des statuts dans le bloc des sous-menus
		JHtmlSidebar::addFilter( JText::_('JOPTION_SELECT_PUBLISHED'), 'filter_published',
			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'),
			'value', 'text', $this->state->get('filter.published'),true)
		);

	}

 	protected function getSortFields()
	{
		// prépare l'affichage des colonnes de tri du calque
		return array(
			'p.dateHeureDebut' => JText::_('COM_AC19_DATE_HEURE_DEBUT'),
			'p.dateHeureFin' => JText::_('COM_AC19_DATE_HEURE_FIN'),
			'numCde' => JText::_('COM_AC19_PRISE_EN_CHARGES_COMMANDE'),
			'email' => JText::_('COM_AC19_PRISE_EN_CHARGES_BENEVOLE'),
			'p.id' => "Id"
		);
	}  
	
}
