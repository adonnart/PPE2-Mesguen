<?php 

//Connexion à la BDD
@$db=mysql_connect('localhost', 'root', '') or die("erreur de connexion".mysql_error());
mysql_select_db("mlr1", $db) or die("erreur de connexion à la base mlr1");

$ETPID = $_POST['ETPID'];
$LIEUNOM = $_POST['LIEUNOM'];

?>

<html>
<head>
	<title>AC43 : Valider une tournee - Valider une étape</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<form method="GET" action="ac43_update.php">

Arrivée sur l'étape : <?php echo $LIEUNOM?>
	<h4>
	<label for ="TRNDTED" align='center'>Le</label>
		<input type="date" name="TRNDTED" align="center" style="border-color:lime; width:145px;">
	à  
		<input type="time" name="TRNHRED" align="center" style="border-color:lime; width:70px;"></br>
	</h4>
	
Fin de l'étape :
	<h4>
	<label for ="TRNDTEA" align='center'>Le</label>
		<input id="TRNDTEA" type="date" name="TRNDTEA" align="center" style="border-color:lime; width:145px;">
	à  
		<input type="time" name="TRNHREA" align="center" style="border-color:lime; width:70px;"></br>
	</h4>
	
Palette(s) :
	<h4>
	<label for="NBPALLIV">Livrée : </label>
		<input id="NBPALLIV" type="number" name="NBPALLIV" align="center" style="border-color:lime; width:70px;" min="0">
		
	dont EUR :
		<input type="number" name="NBPALLIVEUR" align="center" style="border-color:lime; width:70px;" min="0"></br></br>
		
	<label for="NBPALCHARG">Chargée : </label>
		<input id="NBPALCHARG" type="number" name="NBPALCHARG" align="center" style="border-color:lime; width:70px;" min="0">
		
	dont EUR :
		<input type="number" name="NBPALCHARGEUR" align="center" style="border-color:lime; width:70px;" min="0"></br></br>
		
	<label for="Cheque">Cheque : </label>
		<input id="Cheque" type="number" name="CHEQUE" align="center" style="border-color:lime; width:70px;" min="0"></br></br>
			
	<label for="Km">Kms Compteur</label>
		<input id="Km" type="number" name="KMCOMPT" align="center" style="border-color:lime; width:145px;" min="0"></br></br>
		
	<label for="Etat">Etat</label>
		<span class="listeD">
			<select id="Etat" name="Etat" size=1 style="border-color:lime; width:145px;  ">
				<option>CONFORME</option>
				<option>NON CONFORME</option>
			</select>
		</span>	
	</h4>
	
	Commentaire(s): </br>
		<textarea name="commentaire" align="center" rows=5 cols=50 style="border-color:lime"></textarea></br></br>
		
	<input type='reset' value='Retour' align='center'/>
	<input type='submit' value='Prendre une photo' align='center'/>
	<input type='submit' value='Valider' align='center'/>
	 	

		
</form><br/><br/>	


</body>
</html>
