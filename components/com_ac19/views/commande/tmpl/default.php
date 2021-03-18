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
			<h2><?php echo JText::_('COM_AC19_COMMANDE'); ?></h2>
		</div>
		<div class="btn-group pull-right">
			<a href="<?php echo JRoute::_('index.php?option=com_ac19&view=form_c&layout=edit&id='.$this->item->id); ?>" class="btn" role="button"><span class="icon-edit"></span></a>
		</div>	
	</div>
	<div>
		<table class="table">
			<tbody>
				<tr>
					<td width="20%" class="nowrap right">
						<span class="label"><?php echo JText::_('COM_AC19_COMMANDES_NUM_CDE'); ?></span>
					</td>
					<td width="80%">
						<h4><?php echo $this->item->numCde ?></h4>
					</td>
				</tr>
				<tr>
					<td width="20%" class="nowrap right">
						<span class="label"><?php echo JText::_('COM_AC19_COMMANDES_DATE_HEURE_CDE'); ?></span>
					</td>
					<td width="80%">
						<h4><?php echo $this->item->dateHeureCde ?></h4>
					</td>
				</tr>
				<tr>
					<td width="20%" class="nowrap right">
						<span class="label"><?php echo JText::_('COM_AC19_COMMANDES_DATE_HEURE_LIVR'); ?></span>
					</td>
					<td width="80%">
						<?php echo $this->item->dateHeureLivr ?>
					</td>
				</tr>
				<tr>
					<td width="20%" class="nowrap right">
						<span class="label"><?php echo JText::_('COM_AC19_COMMANDES_PRIX_TOTAL'); ?></span>
					</td>
					<td width="80%">
						<?php echo $this->item->prixTotal ?>
					</td>
				</tr>
				<tr>
					<td width="20%" class="nowrap right">
						<span class="label"><?php echo JText::_('COM_AC19_COMMANDES_REF_PAIEMENT'); ?></span>
					</td>
					<td width="80%">
						<h4><?php echo $this->item->refPaiement ?></h4>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
<?php endif; ?>