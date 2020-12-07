<?php
defined('_JEXEC') or die('Restricted Access');

$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));

$saveOrder	= $listOrder == 'ordering';
if ($saveOrder)
{
	$saveOrderingUrl = 'index.php?option=com_annuaire&task=entreprises.saveOrderAjax&tmpl=component';
	JHtml::_('sortablelist.sortable', 'articleList', 'adminForm', strtolower($listDirn), $saveOrderingUrl);
}
?>

<?php foreach($this->items as $i => $item): ?>
	<tr class="row<?php echo $i % 2; ?>">
		<td class="center hidden-phone">
			<?php echo JHtml::_('grid.id', $i, $item->id); ?>
		</td>
		<td class="wrap center hidden-tablet hidden-phone has-context">
			<div class="pull-left">
				<a href="<?php echo JRoute::_('index.php?option=com_ac19&view=prise_en_charges'.(int) $item->id); ?>">
					<?php echo $this->escape($item->commandes_id); ?>
				</a>
			</div>
		</td>
		<td class="nowrap center hidden-tablet hidden-phone">
			<?php echo $item->email; ?>
		</td>
		<td class="nowrap center hidden-tablet hidden-phone">
			<?php echo $item->dateHeureDebut; ?>
		</td>
		<td class="nowrap center hidden-tablet hidden-phone">
			<?php echo $item->dateHeureFin; ?>
		</td>
		<td class="center hidden-phone">
			<?php echo JHtml::_('jgrid.published', $item->published, $i, 'entreprises.', true); ?>
		</td>
		<td class="center hidden-tablet hidden-phone">
			<?php echo JHtml::_('date', $item->modified, $this->paramDateFmt); ?>
		</td>
		<td class="center hidden-tablet hidden-phone">
			<?php echo (int) $item->hits; ?>
		</td>
	</tr>
<?php endforeach; ?>
