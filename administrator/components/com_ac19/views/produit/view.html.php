<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19ViewProduit extends JViewLegacy
{
	protected $form;
	protected $item;
	protected $state;
	
	public function display($tpl = null) 
	{
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		$this->state	= $this->get('State');

		if (count($errors = $this->get('Errors'))) 
		{
			JError::raiseError(500, implode('<br />', $errors));
			return false;
		}

		$this->addToolBar();
		parent::display($tpl);
	}

	protected function addToolBar() 
	{			
		$input = JFactory::getApplication()->input;
		$input->set('hidemainmenu', true);

		$user		= JFactory::getUser();
		$userId		= $user->get('id');
		// $checkedOut	= !($this->item->checked_out == 0 || $this->item->checked_out == $userId);
	
		// affiche le titre de la page
		$isNew = ($this->item->id == 0);
		JToolBarHelper::title(JText::_('COM_AC19_PRODUIT')." : ".($isNew ? JText::_('COM_AC19_NEW'): JText::_('COM_AC19_MODIF')), 'address');

		if ($isNew)
		{
			JToolbarHelper::apply('produit.apply');
			JToolbarHelper::save('produit.save');
			JToolbarHelper::save2new('produit.save2new');
		}
		else
		{
			// if (!$checkedOut)
			// {
				JToolbarHelper::apply('produit.apply');
				JToolbarHelper::save('produit.save');
			// }
		}
		JToolBarHelper::cancel('produit.cancel', $isNew ? 'JTOOLBAR_CANCEL' : 'JTOOLBAR_CLOSE');
	}
}
