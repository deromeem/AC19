<?php
defined('_JEXEC') or die('Restricted access');
?>

<h1>Contacts de l'annuaire</h1>

<form action="<?php echo htmlspecialchars(JFactory::getURI()->toString()); ?>" method="post" name="adminForm" id="adminForm">

	<table class="category">
		<thead>
			<tr>
			<th class="title">Date</th>
			<th class="title">Objet</th>
			<th class="title">Contenu</th>
		</tr>
		</thead>

		<tbody>
			<?php foreach($this->tickets as $i => $item) : ?>
			<tr>
				<td><?php echo $item->date ?></td>
				<td><?php echo $item->objet ?></td>
				<td><?php echo $item->contenu ?></td>
			</tr>			
			<?php endforeach; ?>
		</tbody>
	</table>

</form>

<?php echo $this->pagination->getListFooter(); ?>
