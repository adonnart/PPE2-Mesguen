<?php

if($_GET['submit']) {

	//Connection à la BDD
	@$db=mysql_connect('localhost', 'root', '') or die("erreur de connexion".mysql_error());
	mysql_select_db("mlr1", $db) or die("erreur de connexion à la base mlr1");
	
	//Récupération des données
	$ETPHREDEBUT = $_GET['TRNDTED'] . $_GET['TRNHRED'];
	$ETPHREFIN = $_GET['TRNDTEA'] . $_GET['TRNHREA'];
	$ETPNBPALLIV = $_GET['NBPALLIV'];
	$ETPNBPALLIVEUR = $_GET['NBPALLIVEUR'];
	$ETPNBPALCHARG = $G_ET['NBPALCHARG'];
	$ETPNBPALCHARGEUR = $_GET['NBPALCHARGEUR'];
	$ETPCHEQUE = $_GET['CHEQUE'];
	$ETPETATLIV = $_GET['Etat'];
	$ETPCOMMENTAIRE = $_GET['commentaire'];
	$ETPKM = $_GET['KMCOMPT'];
	$ETPID = $_GET['ETPID'];
	
//Requête SQL de modification des informations
	$sql="UPDATE mlr1.etape
			SET ETPHREDEBUT = '.$ETPHREDEBUT.',
			ETPHREFIN = '.$ETPHREFIN.',
			ETPNBPALLIV = '.$ETPNBPALLIV.',
			ETPNBPALLIVEUR = '.$ETPNBPALLIVEUR.',
			ETPNBPALCHARG = '.$ETPNBPALCHARG.',
			ETPNBPALCHARGEUR = '.$ETPNBPALCHARGEUR.',
			ETPCHEQUE = '.$ETPCHEQUE.',
			ETPETATLIV = '.$ETPETATLIV.',
			ETPCOMMENTAIRE = '.$ETPCOMMENTAIRE.',
			ETPKM = '.$ETPKM.'
			WHERE etape.TRNNUM = '1'
			AND etape.ETPID = '.$ETPID.'
	";
}
	$result=mysql_query($sql);
	
	if($result){
		echo"<meta http-equiv='refresh' content='10;url=fiche_tournee.php?message=<font color=green>Modification réalisée</font>'>";
	}else{
		echo"<meta http-equiv='refresh' content='10;url=fiche_tournee.php?message=<font color=green>Erreur</font>'>";
	}
	
?>