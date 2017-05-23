<?php
	include 'connectAD.php';
?>

<!DOCTYPE html>
<html>
	<head>
		<title>AC11 : Affichage tournées</title>
		<link rel="stylesheet" type="text/css" href="style.css"/>
	</head>
	
	<body>
	<div class='header'>AC11 - Organiser les tournées - Liste des tournées</div>
	<div class='tableau'>
		<table align='center' border=2>
		
			<tr>
				<th>Tournée</th>
				<th>Date</th>
				<th>Chauffeur</th>
				<th>Véhicule</th>
				<th>Départ</th>
				<th>Arrivée</th>
				<th>Supprimer</th>
				<th>Modifier</th>
			</tr>
	<?php 
	
	$sql ="SELECT tournee.TRNNUM, TRNDTE, CHFNOM, VEHIMMAT
			FROM tournee, chauffeur
			WHERE tournee.CHFID = chauffeur.CHFID
			ORDER BY TRNNUM ASC";
		
	$req = mysql_query($sql) or die("erreur requete sql !");
	
	while($ligne=mysql_fetch_array($req))
	{
	
	?>
		<tr align='center'>
			<td><?php  echo $ligne['TRNNUM'] ?></td>
		 	<td><?php  echo $ligne['TRNDTE'] ?></td>
		 	<td><?php  echo $ligne['CHFNOM'] ?></td>
		 	<td><?php  echo $ligne['VEHIMMAT'] ?></td>
			<td><?php  
			
			$TRNNUM = $ligne['TRNNUM'];
			
			$depart_sql = "SELECT LIEUNOM
							FROM lieu, etape, tournee
							WHERE etape.LIEUID = lieu.LIEUID
							AND etape.TRNNUM = ".$TRNNUM."
							ORDER BY ETPID;";
			
			$depart_req = mysql_query($depart_sql) or die("erreur requete sql !");
			
			$ligne_depart = mysql_fetch_array ($depart_req);
			echo $ligne_depart['0'];
	
				?></td>
			<td><?php 
			
			$TRNNUM = $ligne['TRNNUM'];
			
			$arrivee_sql = "SELECT LIEUNOM
							FROM lieu,etape,tournee
							WHERE etape.LIEUID = lieu.LIEUID
							AND etape.TRNNUM = ".$TRNNUM."
							ORDER BY ETPID DESC;";
			
			$arrivee_req = mysql_query($arrivee_sql) or die("erreur requete sql !");
			
			$ligne_arrivee = mysql_fetch_array ($arrivee_req);
			echo $ligne_arrivee['0'];
			
			?></td>
			
		 <td>
		 	<form action='delete.php' method='post'>
		 		<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM ?>'>
		 		<input class='supprimerTablo' type='submit'name='submit'>
		 	</form>
		 </td>
		 
		 <td>
		 	<form action='ac12.php' method='post'>
		 		<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM ?>'>
		 		<input class='modifierTablo' type='submit' name='submit2'>
		 	</form>
		 </td>
			
		 	
		</tr>
	<?php 
	}
	?>
	
		</table></div>
		<br/><br/>
		<div class='boutton' align='center'>	
			<a href="ac12.php"><input class='ajouter' type='submit' value='Ajouter'/></a>
			<a href="index.html"><input class='valider' type='reset' value='Retour'/></a>
		</div>
	</body>
</html>