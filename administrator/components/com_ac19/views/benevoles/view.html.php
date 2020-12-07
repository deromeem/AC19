<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ViewBenevoles extends JViewLegacy
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
		UtilisateurHelper::addSubmenu('benevoles');
		// prépare et affiche la sidebar à gauche de la liste
		$this->prepareSideBar();
		$this->sidebar = JHtmlSidebar::render();

		// affiche les calques par appel de la méthode display() de la classe parente
		parent::display($tpl);
	}
 
	protected function addToolBar() 
	{
		// affiche le titre de la page
		JToolBarHelper::title(JText::_('COM_AC19_BENEVOLES')." : ".JText::_('COM_AC19_UTILISATEURS'));
		
		// affiche les boutons d'action
		JToolBarHelper::addNew('benevole.add');
		JToolBarHelper::editList('benevole.edit');
		JToolBarHelper::deleteList('Êtes vous sur ?', 'benevoles.delete');		
		JToolbarHelper::publish('benevoles.publish', 'JTOOLBAR_PUBLISH', true);
		JToolbarHelper::unpublish('benevoles.unpublish', 'JTOOLBAR_UNPUBLISH', true);
		JToolbarHelper::archiveList('benevoles.archive');
		JToolbarHelper::checkin('benevoles.checkin');
		JToolbarHelper::trash('benevoles.trash');
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

		// ajoute le filtre spécifique pour les pays
		// $this->pays = $this->get('Pays');
		// $options3	= array();
		// foreach ($this->pays as $pay) {
		// 	$options3[]	= JHtml::_('select.option', $pay->id,  $pay->pays);
		// }
		// $this->pay = $options3;
		// JHtmlSidebar::addFilter("- ".JText::_('COM_ANNUAIRE_PAYS_SELECT')." -", 'filter_pay',
		// 	JHtml::_('select.options', $this->pay,
		// 	'value', 'text', $this->state->get('filter.pay'))
		// );
	}

 	protected function getSortFields()
	{
		// prépare l'affichage des colonnes de tri du calque
		return array(
			'b.benevoles' => JText::_('COM_AC19_BENEVOLES'),
			'b.email' => JText::_('COM_AC19_EMAIL'),
			'b.latitude' => JText::_('COM_AC19_LATITUDE'),
			'b.longitude' => JText::_('COM_AC19_LONGITUDE'),
			'b.id' => "Id"
		);
	}  
	
}
