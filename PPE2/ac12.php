<html>
<head>
	<title>AC12 : Organiser les tournées</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<?php 
	include "connectAD.php";
	@$TRNNUM = $_POST['TRNNUM'];

	if(@$_POST['submit2']) {
	//Si le bouton Modifier est cliquer, on récupère les valeurs de la tournée
	
		$modif="SELECT TRNDTE, CHFNOM, VEHIMMAT, TRNPECCHAUFFEUR, TRNCOMMENTAIRE
			  FROM tournee, chauffeur
			  WHERE tournee.CHFID = chauffeur.CHFID
			  AND TRNNUM =".$TRNNUM;
		
		$res_modif = mysql_query($modif);
		
		while($ligne=mysql_fetch_array($res_modif))
		{
			$TRNDTE = $ligne['TRNDTE'];
			$CHFNOM = $ligne['CHFNOM'];
			$VEHIMMAT = $ligne['VEHIMMAT'];
			$TRNPECCHAUFFEUR = $ligne['TRNPECCHAUFFEUR'];
			$TRNCOMMENTAIRE = $ligne['TRNCOMMENTAIRE'];
		}
		
?>

<div class="header">AC12 - Organiser les tournées - Tournée <?php echo $TRNNUM;?></div>
<div id="gauche" align="left">
	<form action='insert_tournee.php' method='post'>
	<h4>
	<label for="date">Date</label>
	<input type="date" name="date" align="center" style="border-color:lime" value="<?php echo $TRNDTE;?>"></br></br>
	
	<label for="chauffeur">Chauffeur</label>
	<span class="listeD">
		<select name="chauffeur" size=1 style="border-color:lime; width:145px;  ">
			<option value="NULL"><?php echo $CHFNOM; ?></option>
			<?php
			$sql="SELECT CHFNOM, CHFID FROM chauffeur";

			$requete=mysql_query($sql) or die("erreur requete sql !");

			while($ligne=mysql_fetch_array($requete)){
				echo"<option value='".$ligne['CHFID']."'>".$ligne['CHFNOM']."</option>";}
			?>
		</select>
	</span></br></br>
	
	<label for="vehicule">Véhicule</label>
	<span class="listeD">
		<select name="vehicule" size=1 style="border-color:lime; width:145px;  ">
			<option value="NULL"><?php echo $VEHIMMAT; ?></option>
			<?php 
			$sql="SELECT VEHIMMAT FROM vehicule";
			
			$requete=mysql_query($sql) or die("Aucune tournée sélectionnée.");
				
			while($ligne=mysql_fetch_array($requete)){
				echo"<option>".$ligne['VEHIMMAT']."</option>";}
			?>
		</select>
	</span></br></br>
	
	<label for="pec">Pris en charge le</label>
	<input type="datetime" name="pec" align="center" style="border-color:lime; width:145px;" value="<?php echo $TRNPECCHAUFFEUR;?>"></br></br>
	
	<label for="commentaire">Commentaire</label>
	<textarea name="commentaire" align="center" rows=10 cols=18 style="border-color:lime;"><?php echo $TRNCOMMENTAIRE;?></textarea></br>
	</h4>
		
	<div class='boutton' align='center'>
		<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM ?>'>
		<input class='valider' type='submit' value='Valider'/>
	</div>
	
	</form><br/>
	<div class='boutton' align='center'>
		<form action='ac11.php' method='post'>
			<input class='supprimer' type='submit' value='Annuler'/>
		</form>
	</div>
</div>
	
<div>
<hr class="separation"/>
</div>

<div id="droite"  align="center" >
<h3>Étapes</h3>
	<div class='tablo'>
	<table border = 0>
	<tr>
	<td></td>
	</tr>
<?php 
$sql="SELECT ETPID, LIEUNOM
	FROM etape, tournee, lieu
	WHERE lieu.LIEUID = etape.LIEUID
	AND etape.TRNNUM = tournee.TRNNUM
	AND etape.TRNNUM =".$TRNNUM;
	
$req=mysql_query($sql) or die("Aucune tournée sélectionnée.");

while($ligne=mysql_fetch_array($req))
{
	echo"<tr align='center'>";
	echo"<td>" . $ligne['ETPID'] ."</td>
		 <td>" . $ligne['LIEUNOM'] ."</td>
		 <td></td>
	 <td>
	 	<form action='delete_etape.php' method='post'>
	 		<input type='hidden' name='ETPID' value='". $ligne['ETPID']."'>
			<input type='hidden' name='TRNNUM' value='". $TRNNUM."'>
	 		<input class='supprimerTablo' type='submit'name='submit'>
	 	</form>
	 </td>
	 
	 <td>
	 	<form action='ac13.php' method='post'>
	 		<input type='hidden' name='ETPID' value='". $ligne['ETPID']."'>
			<input type='hidden' name='TRNNUM' value='". $TRNNUM."'>
	 		<input class='modifierTablo' type='submit' name='submit'>
	 	</form>
	 </td>
	 	" ;
	echo"</tr>";
}
?>
	</table>
	<br/>
	<div class='boutton' align='center'>
		<form action='ac13.php' method='post'>
	 		<input type='hidden' name='ETPID' value='<?php echo $ligne['ETPID']; ?>'>
			<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM; ?>'>
	 		<input class='ajouter' type='submit' value='Ajouter' name='ajouter'/>
	 	</form>
	
	</div>
	</div>

</div>
<?php 
	} else {
	//Sinon on ne récupère pas les valeurs
?>

<div class="header">AC12 - Organiser les tournées - Nouvelle tournée</div>
<div id="gauche", align="left">
	<form action='insert_tournee.php' method='post'>
	<h4>
	<label for="date">Date</label>
	<input type="date" name="date" align="center" style="border-color:lime"></br></br>
	
	<label for="chauffeur">Chauffeur</label>
	<span class="listeD">
		<select name="chauffeur" size=1 style="border-color:lime; width:145px;  ">
		<?php
			$sql="SELECT CHFNOM, CHFID FROM chauffeur";

			$requete=mysql_query($sql) or die("erreur requete sql !");

			while($ligne=mysql_fetch_array($requete)){
				echo"<option value='".$ligne['CHFID']."'>".$ligne['CHFNOM']."</option>";}
		?>
		</select>
	</span></br></br>
	
	<label for="vehicule">Véhicule</label>
	<span class="listeD">
		<select name="vehicule" size=1 style="border-color:lime; width:145px;  ">
		<?php 
		$sql="SELECT VEHIMMAT FROM vehicule";
		
		$requete=mysql_query($sql) or die("Aucune tournée sélectionnée.");
			
		while($ligne=mysql_fetch_array($requete)){
			echo"<option>".$ligne['VEHIMMAT']."</option>";}
		?>
		</select>
	</span></br></br>
	
	<label for="pec">Pris en charge le</label>
	<input type="date" name="pec" align="center" style="border-color:lime"></br></br>
	
	<label for="commentaire">Commentaire</label>
	<textarea name="commentaire" align="center" rows=10 cols=18 style="border-color:lime"></textarea></br>
	</h4>
		
	<div class='boutton' align='center'>
		<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM ?>'>
		<input class='valider' type='submit' value='Valider'/>
	</div>
	
	</form><br/>
	<div class='boutton' align='center'>
		<form action='ac11.php' method='post'>
			<input class='supprimer' type='submit' value='Annuler'/>
		</form>
	</div>
</div>
	
<div>
<hr class="separation"/>
</div>

<div id="droite"  align="center" >
<h3>Étapes</h3>
	<div class='tablo'>
	<table border = 0>
	<tr>
	<td></td>
	</tr>
<?php 
$sql="SELECT ETPID, LIEUNOM
	FROM etape, tournee, lieu
	WHERE lieu.LIEUID = etape.LIEUID
	AND etape.TRNNUM = tournee.TRNNUM
	AND etape.TRNNUM =".$TRNNUM;
	
$req=mysql_query($sql) or die("Aucune tournée sélectionnée.");

while($ligne=mysql_fetch_array($req))
{
	echo"<tr align='center'>";
	echo"<td>" . $ligne['ETPID'] ."</td>
		 <td>" . $ligne['LIEUNOM'] ."</td>
		 <td></td>
	 <td>
	 	<form action='delete_etape.php' method='post'>
	 		<input type='hidden' name='ETPID' value='". $ligne['ETPID']."'>
			<input type='hidden' name='TRNNUM' value='". $TRNNUM."'>
	 		<input class='supprimerTablo' type='submit'name='submit'>
	 	</form>
	 </td>
	 
	 <td>
	 	<form action='ac13.php' method='post'>
	 		<input type='hidden' name='ETPID' value='". $ligne['ETPID']."'>
			<input type='hidden' name='TRNNUM' value='". $TRNNUM."'>
	 		<input class='modifierTablo' type='submit' name='submit'>
	 	</form>
	 </td>
	 	" ;
	echo"</tr>";
}
?>
	</table>
	<br/>
	<div class='boutton' align='center'>
		<form action='ac13.php' method='post'>
	 		<input type='hidden' name='ETPID' value='<?php echo $ligne['ETPID']; ?>'>
			<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM; ?>'>
	 		<input class='ajouter' type='submit' value='Ajouter' name='ajouter'/>
	 	</form>
	
	</div>
	</div>

</div>
<?php 
	}
?>
</body>
</html>