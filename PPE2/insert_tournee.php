<?php

  include 'connectAD.php';

  $TRNNUM = $_POST['TRNNUM'];
  $TRNDTE = $_POST['date'];
  $CHFID = $_POST['chauffeur'];
  $VEHIMMAT = $_POST['vehicule'];
  $PEC = $_POST['pec'];
  $COM = $_POST['commentaire'];

  $exist = "select TRNNUM from tournee where TRNNUM =".$TRNNUM;
  
  $res = mysql_query($exist);

  if ($res) {
    $up = "UPDATE tournee
    	   SET VEHIMMAT ='".$VEHIMMAT."', CHFID ='".$CHFID."', TRNDTE ='".$TRNDTE."', TRNCOMMENTAIRE ='".$COM."', TRNPECCHAUFFEUR ='".$PEC."', TRNARCHAUFFEUR ='', pCharge=''
    	   WHERE TRNNUM = ".$TRNNUM;
  
    $resu = mysql_query($up);
    
    if($resu){
        echo'<META HTTP-EQUIV="REFRESH" CONTENT="3; URL=ac11.php">';
        echo "Modifications réalisées";
    } else {
    	echo'<META HTTP-EQUIV="REFRESH" CONTENT="3; URL=ac12.php">';
        echo "Modifications échouées, veuillez remplir tous les champs du formulaire";
    }
  } else {
	   $sql= "insert into tournee(VEHIMMAT, CHFID, TRNDTE, TRNCOMMENTAIRE, TRNPECCHAUFFEUR) values('".$VEHIMMAT."',".$CHFID.",'".$TRNDTE."','".$COM."','".$PEC."')";
	   $result= mysql_query($sql);
	   if($result){
		    echo'<META HTTP-EQUIV="REFRESH" CONTENT="3; URL=ac11.php">';
		    echo "Ajout réalisé";
	   } else {
		    echo'<META HTTP-EQUIV="REFRESH" CONTENT="3; URL=ac11.php">';
		    echo "Ajout échoué, veuillez remplir tous les champs du formulaire";
	   }
  }
?>