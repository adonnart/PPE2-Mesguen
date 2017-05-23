<?php
	include "AccesDonnees.php";
	$ip=explode(".",$_SERVER['SERVER_ADDR']);
	switch ($ip[0]) {
		case 10 :
			$host = "10.0.29.151";
			$user = "root";
			$password = "P@ssword";
			$dbname = "applichauffeurGc";
			$port="";
			break;
			
		case 127 :
			$host = "127.0.0.1";
			$user = "root";
			$password = "";
			$dbname = "applichauffeur";
			$port="";
			break;
			
		case 31 :
			$host = "mysql.hostinger.fr";
			$user = "u893031168_root";
			$password = "estran";
			$dbname = "u893031168_mlr1";
			$port='3306';
			break;
			
		default :
			exit ("Serveur non reconnu.");
			break;
	}
	
	$connexion=connexion($host,$port,$dbname,$user,$password);
	
	if (!$connexion) {
		echo "Aucune connexion.<br />";
	}
?>