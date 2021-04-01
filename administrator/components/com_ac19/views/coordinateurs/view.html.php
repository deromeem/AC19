<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ViewCoordinateurs extends JViewLegacy
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
		$params = JComponentHelper::getParams('com_ac19');
		$this->paramDescShow = $params->get('jac19_show_desc', 0);
		$this->paramDescSize = $params->get('jac19_size_desc', 70);
		$this->paramDateFmt = $params->get('jac19_date_fmt', "d F Y");

		// affiche les erreurs éventuellement retournées
		if (count($errors = $this->get('Errors'))) 
		{
			JError::raiseError(500, implode('<br />', $errors));
			return false;
		}

		// ajoute la toolbar contenant les boutons d'actions
		$this->addToolBar();
		// invoque la méthode addSubmenu du fichier de soutien (helper)
		utilisateurHelper::addSubmenu('coordinateurs');
		// prépare et affiche la sidebar à gauche de la liste
		$this->prepareSideBar();
		$this->sidebar = JHtmlSidebar::render();

		// affiche les calques par appel de la méthode display() de la classe parente
		parent::display($tpl);
	}
 
	protected function addToolBar() 
	{
		// affiche le titre de la page
		JToolBarHelper::title(JText::_('COM_AC19_OPTIONS')." : ".JText::_('COM_AC19_COORDINATEURS'));
		
		// affiche les boutons d'action
		JToolBarHelper::addNew('coordinateur.add');
		JToolBarHelper::editList('coordinateur.edit');
		JToolBarHelper::deleteList('COM_AC19_DELETE_CONFIRM', 'coordinateurs.delete');		
		JToolbarHelper::publish('coordinateurs.publish', 'JTOOLBAR_PUBLISH', true);
		JToolbarHelper::unpublish('coordinateurs.unpublish', 'JTOOLBAR_UNPUBLISH', true);
		JToolbarHelper::archiveList('coordinateurs.archive');
		JToolbarHelper::checkin('coordinateurs.checkin');
		JToolbarHelper::trash('coordinateurs.trash');
		JToolbarHelper::preferences('com_ac19');
	}

	protected function prepareSideBar()
	{
		// definit l'action du formulaire sidebar
		JHtmlSidebar::setAction('index.php?option=com_ac19');
		
		//ajoute le filtre standard des statuts dans le bloc des sous-menus
		JHtmlSidebar::addFilter( JText::_('JOPTION_SELECT_PUBLISHED'), 'filter_published',
			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'),
			'value', 'text', $this->state->get('filter.published'),true)
		);
	}

 	protected function getSortFields()
	{
		// prépare l'affichage des colonnes de tri du calque
		return array(
			'mail' => JText::_('COM_AC19_COORDINATEURS_EMAIL'),
			'c.published' => JText::_('JSTATUS'),
			'c.modified' => JText::_('JDATE'),
			'c.id' => "Id"
		);
	}  
	
}