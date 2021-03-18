<?php
defined('_JEXEC') or die;

class Ac19ControllerCommande extends JControllerForm
{
	// précise la vue (formulaire de saisie) à afficher
<<<<<<< HEAD
	protected $view_item = 'form_u';
	
	// précise la variable d'édition URL
	protected $urlVar = 'u.id';
=======
	protected $view_item = 'form_c';
	
	// précise la variable d'édition URL
	protected $urlVar = 'c.id';
>>>>>>> ec59fccc2022bd34750b354f341f815d70dc02b6
	
	public function add()
	{
		if (!parent::add())
		{
			// redirige à la page de retour
			$this->setRedirect($this->getReturnPage());
		}
	}

<<<<<<< HEAD
	public function edit($key = null, $urlVar = 'u_id')
=======
	public function edit($key = null, $urlVar = 'c_id')
>>>>>>> ec59fccc2022bd34750b354f341f815d70dc02b6
	{
		$result = parent::edit($key, $urlVar);
		if (!$result)
		{
			$this->setRedirect($this->getReturnPage());
		}
		return $result;
	}

<<<<<<< HEAD
	public function save($key = null, $urlVar = 'u_id')
=======
	public function save($key = null, $urlVar = 'c_id')
>>>>>>> ec59fccc2022bd34750b354f341f815d70dc02b6
	{
		$result = parent::save($key, $urlVar);
		if ($result)
		{
			$this->setRedirect($this->getReturnPage());
		}
		return $result;
	}

<<<<<<< HEAD
	public function cancel($key = 'u_id')
=======
	public function cancel($key = 'c_id')
>>>>>>> ec59fccc2022bd34750b354f341f815d70dc02b6
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
		return JURI::base()."index.php/mon-profil";		
	}

<<<<<<< HEAD
	public function getModel($name = 'form_u', $prefix = '', $config = array('ignore_request' => true))
=======
	public function getModel($name = 'form_c', $prefix = '', $config = array('ignore_request' => true))
>>>>>>> ec59fccc2022bd34750b354f341f815d70dc02b6
	{
		$model = parent::getModel($name, $prefix, $config);
		return $model;
	}
}