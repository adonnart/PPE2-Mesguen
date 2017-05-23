<html>
<head>
	<title>AC13 : Organiser une tournée - Fiche étape</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<?php 

include 'connectAD.php';

if(@$_POST['ajouter']) {

	$TRNNUM = $_POST['TRNNUM'];
?>

<div class="header">AC13 - Organiser les tournées - Nouvelle tournée</div>

<div class="container">

	<form action='update_etape.php' method='post'>
	
	<label for="lieu" >Lieu</label>
	<select size ="1" name = "lieu" style="border-color:lime; width:145px;">
			<!-- rÃ©cupÃ©ration de CHFNOM de la table chauffeur pour la liste dÃ©roulante -->
			<?php
				$sql = "SELECT lieuNom, LIEUID FROM lieu";
				$result = mysql_query($sql) or die("erreur requete sql");
				
				while($ligne=mysql_fetch_array($result)){
					echo"<option value=".$ligne['LIEUID'].">".$ligne['lieuNom']."</option>";}
    		?>
    	</select>
    	<br />
    	<br />
		<label for="rdv-1" >Rendez vous entre</label>
		<input type="datetime" name="rdv-1" align="center" style="border-color:lime; width:145px;" placeholder="AAAA-MM-JJ 00:00:00"></br></br>
		<br />
		<label for="rdv-2" >et</label>
		<input type="datetime" name="rdv-2" align="center" style="border-color:lime; width:145px;" placeholder="AAAA-MM-JJ 00:00:00"></br></br>
		<br />
		<label for="charge" >Prise en charge le</label>
		<input type="datetime" name="charge" align="center" style="border-color:lime; width:145px;" placeholder="AAAA-MM-JJ 00:00:00"></br></br>
		<br />
		<label for="commentaire">Commentaire</label>
		<textarea name="commentaire" align="center" rows=10 cols=18 style="border-color:lime;"></textarea></br>
		<br />
		
		<div class='boutton'>	
			<input class='valider' type='submit' value='Valider' name='submit_insert'/>
			<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM ?>'>	
		</div>
		
		</form>
		
		<form action='ac12.php' method='post'>
		<div class='boutton'>	
		 	<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM ?>'>
		 	<input class='supprimer' type='submit' name='submit2' value="Annuler">
		</div>
		</form>
		</div>		

<?php
} else {

$TRNNUM = $_POST['TRNNUM'];
$ETPID = $_POST['ETPID'];

$sql ="SELECT LIEUNOM, ETPHREMIN, ETPHREMAX, TRNPECCHAUFFEUR, ETPCOMMENTAIRE
			FROM tournee, etape, lieu
			WHERE tournee.TRNNUM = etape.TRNNUM
			AND etape.LIEUID = lieu.LIEUID
			AND tournee.TRNNUM = $TRNNUM
			AND etape.ETPID = $ETPID";

$req = mysql_query($sql);

while($ligne=mysql_fetch_array($req))
{
	$LIEUNOM = $ligne['LIEUNOM'];
	$ETPHREMIN = $ligne['ETPHREMIN'];
	$ETPHREMAX = $ligne['ETPHREMAX'];
	$TRNPECCHAUFFEUR = $ligne['TRNPECCHAUFFEUR'];
	$ETPCOMMENTAIRE = $ligne['ETPCOMMENTAIRE'];
}

?>
<div class="header">AC13 - Organiser les tournées - Tournée <?php echo $TRNNUM;?> Etape <?php echo $ETPID;?></div>

<div class="container">

	<form action='update_etape.php' method='post'>
	
	<label for="Lieu" >Lieu</label>
	<select size ="1" name = "lieu" id = "lieu" style="border-color:lime; width:145px;">
		<option value="NULL"><?php echo $LIEUNOM; ?></option>
			<!-- rÃ©cupÃ©ration de CHFNOM de la table chauffeur pour la liste dÃ©roulante -->
			<?php
				$sql = "SELECT lieuId, lieuNom FROM lieu";
				$result = mysql_query($sql) or die("erreur requete sql");
				
				while($ligne=mysql_fetch_array($result)){
					echo"<option>".$ligne['lieuNom']."</option>";}
    		?>
    	</select>
    	<br />
    	<br />
		<label for="rdv-1" >Rendez vous entre</label>
		<input type="datetime" name="rdv-1" align="center" style="border-color:lime; width:145px;" value="<?php echo $ETPHREMIN; ?>" placeholder="AAAA-MM-JJ 00:00:00"></br></br>
		<br />
		<label for="rdv-2" >et</label>
		<input type="datetime" name="rdv-2" align="center" style="border-color:lime; width:145px;" value="<?php echo $ETPHREMAX; ?>" placeholder="AAAA-MM-JJ 00:00:00"></br></br>
		<br />
		<label for="charge" >Prise en charge le</label>
		<input type="datetime" name="charge" align="center" style="border-color:lime; width:145px;" value="<?php echo $TRNPECCHAUFFEUR; ?>" placeholder="AAAA-MM-JJ 00:00:00"></br></br>
		<br />
		<label for="commentaire">Commentaire</label>
		<textarea name="commentaire" align="center" rows=10 cols=18 style="border-color:lime;"><?php echo $ETPCOMMENTAIRE; ?></textarea></br>
		<br />
		
		<div class='boutton'>		
			<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM ?>'>
			<input type='hidden' name='ETPID' value='<?php echo $ETPID ?>'>	
			<input class='valider' type='submit' value='Valider' name='submit_update'/>
		</div>
		</form>
		
		<div class='boutton'>
		<form action='ac12.php' method='post'>
		 	<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM ?>'>
		 	<input class='supprimer' type='submit' name='submit2' value="Annuler">
		</form>
		</div>
			
</div>
<?php 
}
?>
</body>
</html>