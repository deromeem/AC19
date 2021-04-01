<?php
defined('_JEXEC') or die('Restricted access');

class Ac19ModelUtilisateur extends JModelAdmin
{
	protected $_compo = 'com_ac19';
	protected $_context = 'utilisateur';
	public $typeAlias = 'com_ac19.utilisateur';
	
	// Surcharges des méthodes de la classe mère pour :
	
	// 1) définir la table de soutien à utiliser
	public function getTable($type = 'Utilisateur', $prefix = 'Ac19Table', $config = array()) 
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	// 2) préciser le chemin du contexte à utiliser pour charger le fichier XML décrivant les champs de saisie
	public function getForm($data = array(), $loadData = true) 
	{
		$form = $this->loadForm($this->typeAlias, $this->_context,
			array('control'=>'jform', 'load_data'=>$loadData));
		if (empty($form)) 
		{
			return false;
		}
		
		$jinput = JFactory::getApplication()->input;

		// le frontend appelle ce modèle et utilise u_id (initialisé à 0 by par défaut) pour éviter la collision avec id
		if ($jinput->get('u_id'))
		{
			$id = $jinput->get('u_id', 0);
		}
		// le backend utilise id (initialisé à 0 by par défaut)
		else
		{
			$id = $jinput->get('id', 0);
		}		
		// echo "Backend : id=".$id;   // TEST/DEBUG
		
		return $form;
	}

	// 3) contrôler qu'un tableau de données n'est pas déjà initialisé dans la session
	protected function loadFormData() 
	{
		$data = JFactory::getApplication()->getUserState($this->_compo.'.edit.'.$this->_context.'.data', array());
		if (empty($data)) 
		{
			$data = $this->getItem();
		}
		return $data;
	}

	// 4) préparer les données avant la sauvegarde en base de données par l'objet JTable
	protected function prepareTable($table)
	{
		$table->alias = JApplication::stringURLSafe($table->alias);
		if (empty($table->alias))
		{
			$table->alias = JApplication::stringURLSafe($table->nom);
		}
	}
}
