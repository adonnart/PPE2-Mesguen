<?php

include 'connectAD.php';

	$TRNNUM = $_POST['TRNNUM'];

	$sql_etape = "DELETE FROM etape WHERE TRNNUM = $TRNNUM";
	$req_etape = mysql_query($sql_etape) or die("erreur requete sql !");
	
	$sql_tournee = "DELETE FROM tournee WHERE TRNNUM = $TRNNUM";
	$req_tournee = mysql_query($sql_tournee) or die("erreur requete sql !");

	echo"Tournée supprimée";
	
	echo"<a href='affichage_tournees.php' />";
	echo'<META HTTP-EQUIV="REFRESH" CONTENT="1; URL=ac11.php">';

	
?>