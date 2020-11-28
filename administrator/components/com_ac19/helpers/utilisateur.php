<?php
defined('_JEXEC') or die;

class UtilisateurHelper extends JHelperContent
{
	public static function addSubmenu($vName)
	{
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_BENEVOLES'),
			'index.php?option=com_ac19&view=benevoles',
			$vName == 'benevoles'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_CATALOGUES'),
			'index.php?option=com_ac19&view=catalogues',
			$vName == 'catalogues'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_CATAL_CATEGS'),
			'index.php?option=com_ac19&view=catal_categs',
			$vName == 'catal_categs'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_CATEGORIES'),
			'index.php?option=com_ac19&view=categories',
			$vName == 'categories'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_COMMANDES'),
			'index.php?option=com_ac19&view=commandes',
			$vName == 'commandes'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_COORDINATEURS'),
			'index.php?option=com_ac19&view=coordinateurs',
			$vName == 'coordinateurs'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_ETAT_CDES'),
			'index.php?option=com_ac19&view=etat_cdes',
			$vName == 'etat_cdes'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_LIGNE_CDES'),
			'index.php?option=com_ac19&view=ligne_cdes',
			$vName == 'ligne_cdes'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_MAGASINS'),
			'index.php?option=com_ac19&view=magasins',
			$vName == 'magasins'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_MESSAGES'),
			'index.php?option=com_ac19&view=messages',
			$vName == 'messages'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_PARTENAIRES'),
			'index.php?option=com_ac19&view=partenaires',
			$vName == 'partenaires'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_PARTICULIERS'),
			'index.php?option=com_ac19&view=particuliers',
			$vName == 'particuliers'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_PRISE_EN_CHARGES'),
			'index.php?option=com_ac19&view=prise_en_charges',
			$vName == 'prise_en_charges'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_PRODUITS'),
			'index.php?option=com_ac19&view=produits',
			$vName == 'produits'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_STOCKS'),
			'index.php?option=com_ac19&view=stocks',
			$vName == 'stocks'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_TYPE_MAGS'),
			'index.php?option=com_ac19&view=type_mags',
			$vName == 'type_mags'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_AC19_UTILISATEURS'),
			'index.php?option=com_ac19&view=utilisateurs',
			$vName == 'utilisateurs'
		);
	}
}
