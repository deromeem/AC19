<?php
defined('_JEXEC') or die('Restricted access');

JHtml::_('behavior.framework'); 				// javascript Joomla object for grid.sort !

$user = JFactory::getUser();               		// gets current user object
$isParticulier = (in_array('13', $user->groups));		// sets flag when user group is '13' that is 'Enregistré' 
//$isCoordinateur = (in_array('10', $user->groups));		// sets flag when user group is '10' that is 'Enregistré' 
//$isPartenaire = (in_array('12', $user->groups));		// sets flag when user group is '12' that is 'Enregistré' 
//$isBenevoles = (in_array('11', $user->groups));		// sets flag when user group is '13' that is 'Enregistré' 
?>

<?php if (!$isParticulier) : ?>
	<?php echo JError::raiseWarning( 100, JText::_('COM_AC19_RESTRICTED_ACCESS') ); ?>
<?php else : ?>

	<h2><?php echo JText::_('COM_AC19_OPTIONS')." : ".JText::_('COM_AC19_MESSAGES')." - "; ?>
		<a href="<?php echo JRoute::_('index.php?option=com_ac19&view=messages'); ?>">
			<?php echo JText::_('COM_AC19_MESSAGES'); ?>
		</a>
	</h2>

	<?php echo $this->loadTemplate('items'); ?>

	<?php echo $this->pagination->getListFooter(); ?>

<?php endif; ?>
