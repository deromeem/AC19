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
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MAGASINS_ENSEIGNE', 'm.enseigne', $listDirn, $listOrder) ?>
        </th>
        <th width="30%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MAGASINS_ADR_RUE', 'm.prenom', $listDirn, $listOrder) ?>
        </th>
        <th width="20%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MAGASINS_ADR_VILLE', 'm.email', $listDirn, $listOrder) ?>
        </th>
        <th width="20%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MAGASINS_ADR_CP', 'm.tel', $listDirn, $listOrder) ?>
        </th>
        <th width="30%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MAGASINS_TEL', 'm.prenom', $listDirn, $listOrder) ?>
        </th>
        <th width="20%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MAGASINS_LATITUDE', 'm.email', $listDirn, $listOrder) ?>
        </th>
        <th width="20%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MAGASINS_LONGITUDE', 'm.tel', $listDirn, $listOrder) ?>
        </th>
		<th width="5%" style="min-width:55px" class="nowrap center hidden-phone">
			<?php echo JHtml::_('grid.sort', 'Publié', 'm.published', $listDirn, $listOrder) ?>
        </th>
        <th width="10%" style="min-width:120px" class="nowrap center hidden-tablet hidden-phone">
			<?php echo JHtml::_('grid.sort', 'Date', 'm.modified', $listDirn, $listOrder) ?>
        </th>
		<th width="5%" class="nowrap center hidden-tablet hidden-phone">
			<?php echo JHtml::_('grid.sort', 'JGLOBAL_HITS', 'm.hits', $listDirn, $listOrder); ?>
		</th>
		<th width="5%" class="nowrap center hidden-phone">
			<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'm.id', $listDirn, $listOrder); ?>
		</th>
	</tr>
