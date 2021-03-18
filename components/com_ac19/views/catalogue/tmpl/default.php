<?php
defined('_JEXEC') or die('Restricted access');


$user = JFactory::getUser();               		// gets current user object
// $isAc19 = (in_array('10', $user->groups));		// sets flag when user group is '10' that is 'Etudiant' 
function in_array_any($needles, $haystack) {
	return (bool)array_intersect($needles, $haystack);
	}
$isAc19 = (in_array_any(array('12', '13', '14', '15'), $user->groups));
?>


<?php if (!$isAc19) : ?>
	<?php echo JError::raiseWarning( 100, JText::_('COM_AC19_RESTRICTED_ACCESS') ); ?>
<?php else : ?>
	<div class="form-inline form-inline-header">
		<div class="btn-group pull-left">
			<h2><?php echo JText::_('COM_AC19_CATALOGUE'); ?></h2>
		</div>
		<div class="btn-group pull-right">
			<a href="<?php echo JRoute::_('index.php?option=com_ac19&view=form_u&layout=edit&id='.$this->item->id); ?>" class="btn" role="button"><span class="icon-edit"></span></a>
		</div>	
	</div>
	<div>
		<table class="table">
			<tbody>
				<tr>
					<td width="20%" class="nowrap right">
						<span class="label"><?php echo JText::_('COM_AC19_CATALOGUES_TITRE'); ?></span>
					</td>
					<td width="80%">
						<h4><?php echo $this->item->titre ?></h4>
					</td>
				</tr>
				<tr>
					<td width="20%" class="nowrap right">
						<span class="label"><?php echo JText::_('COM_AC19_CATALOGUES_DESCRIPTION'); ?></span>
					</td>
					<td width="80%">
						<?php echo $this->item->description ?>
					</td>
				</tr>
				<tr>
					<td width="20%" class="nowrap right">
						<span class="label"><?php echo JText::_('COM_AC19_PARTENAIRES_ID'); ?></span>
					</td>
					<td width="80%">
						<?php echo $this->item->id ?>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
<?php endif; ?>