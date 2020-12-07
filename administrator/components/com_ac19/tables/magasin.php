<?php
defined('_JEXEC') or die('Restricted access');
 
class Ac19TableMagasin extends JTable
{
	function __construct(&$db) 
	{
		parent::__construct('#__ac19_magasins', 'id', $db);
	}

	public function store($updateNulls = false)
	{
		$date	= JFactory::getDate();
		$user	= JFactory::getUser();

		if ($this->id)
		{
			$this->modified		= $date->toSql();
			$this->modified_by	= $user->get('id');
		}
		else
		{
			if (!(int) $this->created)
			{
				$this->created = $date->toSql();
			}
			if (empty($this->created_by))
			{
				$this->created_by = $user->get('id');
			}
		}
		
		return parent::store($updateNulls);
	}
}
