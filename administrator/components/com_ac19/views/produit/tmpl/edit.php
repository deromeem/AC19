<?php
defined('_JEXEC') or die('Restricted access');

JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'produit.cancel' || document.formvalidator.isValid(document.id('ac19-form')))
		{
			Joomla.submitform(task, document.getElementById('ac19-form'));
		}
	}
</script>

<form action="<?php echo JRoute::_('index.php?option=com_ac19&layout=edit&id='.(int) $this->item->id); ?>"
      method="post" name="adminForm" id="ac19-form" class="form-validate">

	<div class="form-inline form-inline-header">
		<div class="control-group">
			<div class="control-label"><?php echo $this->form->getLabel('titre'); ?></div>
			<div class="controls"><?php echo $this->form->getInput('titre'); ?></div>
		</div>						
		<div class="control-group">
			<div class="control-label"><?php echo $this->form->getLabel('alias'); ?></div>
			<div class="controls"><?php echo $this->form->getInput('alias'); ?></div>
		</div>					
	</div>					

	<div class="form-horizontal">
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>
		
		<div class="span9">
			<div class="form-vertical">
				<div class="control-group">
					<div class="span2">
						<div class="control-label"><?php echo $this->form->getLabel('prix'); ?></div>
					</div>					
					<div class="span7">
						<div class="controls"><?php echo $this->form->getInput('prix'); ?></div>
					</div>					
				</div>					
				<div class="control-group">
					<div class="span2">
						<div class="control-label"><?php echo $this->form->getLabel('categorie_id'); ?></div>
					</div>					
					<div class="span7">
						<div class="controls"><?php echo $this->form->getInput('categorie_id'); ?></div>
					</div>					
				</div>					
			</div>
			<div class="form-vertical">
				<?php echo $this->form->getControlGroup('description'); ?>
			</div>
		</div>

		<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'details', JText::_('COM_AC19_DETAIL')); ?>
		<div class="row-fluid ">
			<div class="span3">
				<?php echo "<img src='" . "../" . $this->item->codeBarre . "' border='0' />"; ?>
				<div class="form-vertical">
					<?php echo $this->form->getControlGroup('codeBarre'); ?>
				</div>
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