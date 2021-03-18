<?php
defined('_JEXEC') or die('Restricted access');
?>

<h1>Contacts de l'annuaire</h1>

<form action="<?php echo htmlspecialchars(JFactory::getURI()->toString()); ?>" method="post" name="adminForm" id="adminForm">

	<table class="category">
		<thead>
			<tr>
			<th class="title">Numéro de commande</th>
			<th class="title">Date et heure de la prise de commande</th>
			<th class="title">Date et heure de la livraison</th>
			<th class="title">Prix total</th>
		</tr>
		</thead>

		<tbody>
			<?php foreach($this->tickets as $i => $item) : ?>
			<tr>
				<td><?php echo $item->numCde ?></td>
				<td><?php echo $item->dateHeureCde ?></td>
				<td><?php echo $item->dateHeureLivr ?></td>
				<td><?php echo $item->prixTotal ?></td>
			</tr>			
			<?php endforeach; ?>
		</tbody>
	</table>

</form>

<?php echo $this->pagination->getListFooter(); ?>
