<?php
defined('_JEXEC') or die('Restricted access');

JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');
?>

<script type="text/javascript">
	 Joomla.submitbutton = function(task)
	 {
 	    if (task == 'particulier.cancel' || document.formvalidator.isValid(document.id('ac19-form')))
	 	{
	 		Joomla.submitform(task, document.getElementById('ac19-form'));
	 	}
	 }
</script>

<form action="<?php echo JRoute::_('index.php?option=com_ac19&view=commande&layout=edit&id='.(int) $this->item->id); ?>"
      method="post" name="adminForm" id="ac19-form" class="form-validate">

	<div class="form-inline form-inline-header">
		<div class="control-group">
			<div class="control-label"><?php echo $this->form->getLabel('numCde'); ?></div>
			<div class="controls"><?php echo $this->form->getInput('numCde'); ?></div>
		</div>					
	</div>					

	<div class="form-horizontal">
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>

		<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'details', JText::_('COM_AC19_DETAIL')); ?>
		<div class="row-fluid ">
			<div class="span9">
				<div class="form-vertical">
					<div class="control-group">
						<div class="span2">
							<div class="control-label"><?php echo $this->form->getLabel('dateHeureCde'); ?></div>
						</div>					
						<div class="span7">
							<div class="controls"><?php echo $this->form->getInput('dateHeureCde'); ?></div>
						</div>					
					</div>					
					<div class="control-group">
						<div class="span2">
							<div class="control-label"><?php echo $this->form->getLabel('dateHeureLivr'); ?></div>
						</div>					
						<div class="span7">
							<div class="controls"><?php echo $this->form->getInput('dateHeureLivr'); ?></div>
						</div>					
					</div>					
					<div class="control-group">
						<div class="span2">
							<div class="control-label"><?php echo $this->form->getLabel('prixTotal'); ?></div>
						</div>					
						<div class="span7">
							<div class="controls"><?php echo $this->form->getInput('prixTotal'); ?></div>
						</div>					
					</div>					
					<div class="control-group">
						<div class="span2">
							<div class="control-label"><?php echo $this->form->getLabel('refPaiement'); ?></div>
						</div>					
						<div class="span7">
							<div class="controls"><?php echo $this->form->getInput('refPaiement'); ?></div>
						</div>
					</div>	
					<div class="control-group">
						<div class="span2">
							<div class="control-label"><?php echo $this->form->getLabel('particuliers_id'); ?></div>
						</div>					
						<div class="span7">
							<div class="controls"><?php echo $this->form->getInput('particuliers_id'); ?></div>
						</div>
															
					</div>	
					<div class="control-group">
						<div class="span2">
							<div class="control-label"><?php echo $this->form->getLabel('magasins_id'); ?></div>
						</div>					
						<div class="span7">
							<div class="controls"><?php echo $this->form->getInput('magasins_id'); ?></div>
						</div>
															
					</div>	
					<div class="control-group">
						<div class="span2">
							<div class="control-label"><?php echo $this->form->getLabel('etat_cdes_id'); ?></div>
						</div>					
						<div class="span7">
							<div class="controls"><?php echo $this->form->getInput('etat_cdes_id'); ?></div>
						</div>
															
					</div>					
				</div>
			</div>
		    <div class="span3">
				<?php echo JLayoutHelper::render('joomla.edit.global', $this); ?>
			</div>
		</div>
		<?php echo JHtml::_('bootstrap.endTab'); ?>

		<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'publishing', JText::_('JGLOBAL_FIELDSET_PUBLISHING', true)); ?>
		<div class="row-fluid form-horizontal-desktop">
			<div class="span6">
				<?php echo JLayoutHelper::render('joomla.edit.publishingdata', $this); ?>
			</div>
			<div class="span6">
				<?php echo JLayoutHelper::render('joomla.edit.metadata', $this); ?>
			</div>
		</div>	
		<?php echo JHtml::_('bootstrap.endTab'); ?>

		<?php echo JLayoutHelper::render('joomla.edit.params', $this); ?>

		<?php echo JHtml::_('bootstrap.endTabSet'); ?>
	</div>
	<input type="hidden" name="task" value="" />
	<?php echo JHtml::_('form.token'); ?>
		
</form>