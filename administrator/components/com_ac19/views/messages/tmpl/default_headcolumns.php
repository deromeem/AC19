<?php
defined('_JEXEC') or die('Restricted Access');

$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
?>

	<tr>
        <th width="5%" class="hidden-phone">
			<?php echo JHtml::_('grid.checkall'); ?>
        </th>                   
        <th width="20%" class="nowrap">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MESSAGES_OBJET', 'm.objet', $listDirn, $listOrder) ?>
        </th>
        <th width="30%" class="nowrap center">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MESSAGES_CONTENU', 'm.contenu', $listDirn, $listOrder) ?>
        </th>
        <th width="10%" class="nowrap center">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MESSAGES_AUTEUR', 'auteur', $listDirn, $listOrder) ?>
		</th>
		<th width="10%" class="nowrap center">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MESSAGES_DESTINATAIRE', 'destinataire', $listDirn, $listOrder) ?>
		</th>
		<th width="5%" style="min-width:55px" class="nowrap center hidden-phone">
			<?php echo JHtml::_('grid.sort', 'Publié', 'm.published', $listDirn, $listOrder) ?>
		</th>
		<th width="10%">
			<?php echo JHtml::_('grid.sort', 'COM_AC19_MESSAGES_DATE', 'm.date', $listDirn, $listOrder) ?>
        </th>
		<th width="10%" class="nowrap center hidden-tablet hidden-phone">
			<?php echo JHtml::_('grid.sort', 'JGLOBAL_HITS', 'm.hits', $listDirn, $listOrder); ?>
		</th>
		<th width="10%" class="nowrap center hidden-phone">
			<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'm.id', $listDirn, $listOrder); ?>
		</th>
	</tr>
