<?php
defined('_JEXEC') or die;

class Ac19ControllerCatalogue extends JControllerForm
{
	// précise la vue (formulaire de saisie) à afficher
	protected $view_item = 'form_ca';
	
	// précise la variable d'édition URL
	protected $urlVar = 'ca.id';
	
	public function add()
	{
		if (!parent::add())
		{
			// redirige à la page de retour
			$this->setRedirect($this->getReturnPage());
		}
	}

	public function edit($key = null, $urlVar = 'ca_id')
	{
		$result = parent::edit($key, $urlVar);
		if (!$result)
		{
			$this->setRedirect($this->getReturnPage());
		}
		return $result;
	}

	public function save($key = null, $urlVar = 'ca_id')
	{
		$result = parent::save($key, $urlVar);
		if ($result)
		{
			$this->setRedirect($this->getReturnPage());
		}
		return $result;
	}

	public function cancel($key = 'ca_id')
	{
		parent::cancel($key);
		$this->setRedirect($this->getReturnPage());
	}

	protected function getReturnPage()
	{
		// $return = $this->input->get('return', null, 'base64');

		// if (empty($return) || !JUri::isInternal(base64_decode($return)))
		// {
			// return JUri::base();
		// }
		// else
		// {
			// return base64_decode($return);
		// }
		return JURI::base()."/index.php?option=com_ac19&view=catalogues";		
	}

	public function getModel($titre = 'form_ca', $prefix = '', $config = array('ignore_request' => true))
	{
		$model = parent::getModel($titre, $prefix, $config);
		return $model;
	}
}