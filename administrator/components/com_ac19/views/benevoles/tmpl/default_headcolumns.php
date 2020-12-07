<?php
defined('_JEXEC') or die('Restricted Access');

$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
?>

	<tr>
        <th width="1%" class="hidden-phone">
			<?php echo JHtml::_('grid.checkall'); ?>
        </th>                   
        <th width="2%" class="nowrap center">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_BENEVOLES_EMAIL', 'b.email', $listDirn, $listOrder) ?>
        </th>
        <th width="5%" class="nowrap center">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_BENEVOLES_LATITUDE', 'b.latitude', $listDirn, $listOrder) ?>
        </th>
        <th width="5%" class="nowrap center">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_BENEVOLES_LONGITUDE', 'b.longitude', $listDirn, $listOrder) ?>
        </th>
        <th width="5%" style="min-width:55px" class="nowrap center hidden-phone">
			<?php echo JHtml::_('grid.sort', 'Publié', 'e.published', $listDirn, $listOrder) ?>
        </th>
        <th width="10%" style="min-width:120px" class="nowrap center hidden-tablet hidden-phone">
			<?php echo JHtml::_('grid.sort', 'Date de modification', 'e.modified', $listDirn, $listOrder) ?>
        </th>
		<th width="5%" class="nowrap center hidden-tablet hidden-phone">
			<?php echo JHtml::_('grid.sort', 'JGLOBAL_HITS', 'e.hits', $listDirn, $listOrder); ?>
		</th>
		<th width="5%" class="nowrap center hidden-phone">
			<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'e.id', $listDirn, $listOrder); ?>
		</th>
	</tr>

