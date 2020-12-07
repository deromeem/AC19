<?php
defined('_JEXEC') or die('Restricted Access');

$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
?>

	<tr>
        <th width="5%" class="hidden-phone">
			<?php echo JHtml::_('grid.checkall'); ?>
        </th>                   
        <th width="30%">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_STOCK', 'stock', $listDirn, $listOrder) ?>
        </th>
        <th width="30%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_STOCKS_QTE', 's.qte', $listDirn, $listOrder) ?>
        </th>
        <th width="20%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_STOCKS_MAGASIN', 's.magasin', $listDirn, $listOrder) ?>
        </th>
        <th width="20%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_STOCKS_PRODUIT', 's.produit', $listDirn, $listOrder) ?>
        </th>
		<th width="5%" style="min-width:55px" class="nowrap center hidden-phone">
			<?php echo JHtml::_('grid.sort', 'Publié', 'u.published', $listDirn, $listOrder) ?>
        </th>
        <th width="10%" style="min-width:120px" class="nowrap center hidden-tablet hidden-phone">
			<?php echo JHtml::_('grid.sort', 'Date', 's.modified', $listDirn, $listOrder) ?>
        </th>
		<th width="5%" class="nowrap center hidden-tablet hidden-phone">
			<?php echo JHtml::_('grid.sort', 'JGLOBAL_HITS', 's.hits', $listDirn, $listOrder); ?>
		</th>
		<th width="5%" class="nowrap center hidden-phone">
			<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 's.id', $listDirn, $listOrder); ?>
		</th>
	</tr>
