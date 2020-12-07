<?php
defined('_JEXEC') or die('Restricted Access');

$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));

$saveOrder	= $listOrder == 'ordering';
if ($saveOrder)
{
	$saveOrderingUrl = 'index.php?option=com_ac19&task=magasins.saveOrderAjax&tmpl=component';
	JHtml::_('sortablelist.sortable', 'articleList', 'adminForm', strtolower($listDirn), $saveOrderingUrl);
}
?>

<?php foreach($this->items as $i => $item): ?>
	<tr class="row<?php echo $i % 2; ?>">
		<td class="center hidden-phone">
			<?php echo JHtml::_('grid.id', $i, $item->id); ?>
		</td>
		<td class="wrap has-context">
			<div class="pull-left">
				<a href="<?php echo JRoute::_('index.php?option=com_ac19&task=magasin.edit&id='.(int) $item->id); ?>">
					<?php echo $this->escape($item->enseigne); ?>
				</a>
			</div>
		</td>
		<td>
			<?php echo $item->typeMag; ?>
		</td>
		<td>
			<?php echo $item->raisonSociale; ?>
		</td>
		<td>
			<?php echo $item->adrRue; ?>
		</td>
		<td>
			<?php echo $item->adrVille; ?>
		</td><td>
			<?php echo $item->adrCP; ?>
		</td><td>
			<?php echo $item->tel; ?>
		</td><td>
			<?php echo $item->latitude; ?>
		</td>
		</td><td>
			<?php echo $item->longitude; ?>
		</td>
		<td class="center hidden-phone">
			<?php echo JHtml::_('jgrid.published', $item->published, $i, 'magasins.', true); ?>
		</td>
		<td class="center hidden-tablet hidden-phone">
			<?php echo JHtml::_('date', $item->modified, $this->paramDateFmt); ?>
		</td>
		<td class="center hidden-tablet hidden-phone">
			<?php echo (int) $item->hits; ?>
		</td>
		<td class="center hidden-phone">
			<?php echo (int) $item->id; ?>
		</td>
	</tr>
<?php endforeach; ?>
