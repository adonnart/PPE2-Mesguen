<?php

include 'connectAD.php';

	$TRNNUM = $_POST['TRNNUM'];
	@$ETPID = $_POST['ETPID'];
	$LIEUID = $_POST['lieu'];
	$ETPHREMIN = $_POST['rdv-1'];
	$ETPHREMAX = $_POST['rdv-2'];
	$TRNPECCHAUFFEUR = $_POST['charge'];
	$ETPCOMMENTAIRE = $_POST['commentaire'];
	
	$exist = "SELECT TRNNUM, ETPID
		 	  FROM etape
			  WHERE TRNNUM =".$TRNNUM."
			  AND ETPID =".$ETPID;
	
	$res = mysql_query($exist);
	
	if($res){
		
		$update = "UPDATE etape
				   SET TRNNUM =".$TRNNUM.", ETPID =".$ETPID.", LIEUID ='".$LIEUID."', ETPHREMIN ='".$ETPHREMIN."', ETPHREMAX ='".$ETPHREMAX."', ETPHREDEBUT ='', ETPHREFIN ='', ETPNBPALLIV='', ETPNBPALLIVEUR='', ETPNBPALCHARG='', ETPNBPALCHARGEUR='', ETPNBPALRECU='', ETPETATLIV='', ETPCOMMENTAIRE='".$ETPCOMMENTAIRE."', ETPVAL='', ETPKM=''
				   WHERE TRNNUM=".$TRNNUM;
		
		$res_update = mysql_query($update);
	
		
		
		if($res_update){
			echo'<META HTTP-EQUIV="REFRESH" CONTENT="3; URL=ac12.php">';
			echo "Modifications réalisées";
		} else {
			echo'<META HTTP-EQUIV="REFRESH" CONTENT="3; URL=ac13.php">';
			echo "Modifications échouées, veuillez remplir tous les champs du formulaire";
		}
		
	} else {
		
		$select_tournee = "SELECT VEHIMMAT, CHFID, TRNDTE, TRNCOMMENTAIRE, TRNARCHAUFFEUR, pCharge FROM tournee WHERE TRNNUM = ".$TRNNUM;
		
		$result_select_tournee = mysql_query($select_tournee);
		
		while($ligne=mysql_fetch_array($result_select_tournee))
		{
			$VEHIMMAT = $ligne['VEHIMMAT'];
			$CHFID = $ligne['CHFID'];
			$TRNDTE = $ligne['TRNDTE'];
			$TRNCOMMENTAIRE = $ligne['TRNCOMMENTAIRE'];
			$TRNARCHAUFFEUR = $ligne['TRNARCHAUFFEUR'];
			$pCharge = $ligne['pCharge'];
		}
		
		
		$update_tournee ="UPDATE tournee
						  SET TRNNUM = ".$TRNNUM.", VEHIMMAT = '".$VEHIMMAT."', CHFID = '".$CHFID."', TRNDTE = '".$TRNDTE."', TRNCOMMENTAIRE ='".$TRNCOMMENTAIRE."', TRNPECCHAUFFEUR = '".$TRNPECCHAUFFEUR."', TRNARCHAUFFEUR = '".$TRNARCHAUFFEUR."', pCharge = '".$pCharge."' 
						  WHERE TRNNUM = ".$TRNNUM;
		
		$res_update_tournee = mysql_query($update_tournee);
		
		
		$insert_etape ="INSERT INTO etape(TRNNUM, LIEUID, ETPHREMIN, ETPHREMAX, ETPCOMMENTAIRE) 
				  VALUES(".$TRNNUM.", '".$LIEUID."', '".$ETPHREMIN."', '".$ETPHREMAX."', '".$ETPCOMMENTAIRE."')";
		
		$res_insert = mysql_query($insert_etape);
		
		if($res_insert){
			echo'<META HTTP-EQUIV="REFRESH" CONTENT="3; URL=ac11.php">';
			echo "Modifications réalisées";
		} else {
			echo'<META HTTP-EQUIV="REFRESH" CONTENT="3; URL=ac11.php">';
			echo "Modifications échouées, veuillez remplir tous les champs du formulaire";
		}
	}

?>