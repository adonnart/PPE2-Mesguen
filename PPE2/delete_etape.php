<?php

include 'connectAD.php';

if($_POST['submit']) {

	$TRNNUM = $_POST['TRNNUM'];
	$ETPID = $_POST['ETPID'];
	
	$sql_etape = "DELETE FROM etape WHERE TRNNUM = $TRNNUM AND ETPID = $ETPID";
	$req_etape = mysql_query($sql_etape) or die("erreur requete sql !");

	echo"Etape supprimée";
	echo"<a href='ac12.php' />";
	echo'<META HTTP-EQUIV="REFRESH" CONTENT="3; URL=ac11.php">';
	echo"<input type='hidden' name='TRNNUM' value='<?php echo $TRNNUM ?>'>";
} else {
	echo"Erreur";
}

?>