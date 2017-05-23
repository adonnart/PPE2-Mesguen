<?php
$login=$_POST['login'];
$mdp=$_POST['mdp'];

include "connectAD.php";

@$req="SELECT usr_login, usr_mdp FROM user WHERE usr_login ='".$login."' AND usr_mdp ='".$mdp."'";

$sql=mysql_query($req);

if(@mysql_numrows($sql)==0)
{
	echo"</br>Erreur de connexion";
	echo'<META HTTP-EQUIV="REFRESH" CONTENT="2; URL=index.html">';
}
else
{
	echo"</br>Connexion réussie";
	echo'<META HTTP-EQUIV="REFRESH" CONTENT="2; URL=ac11.php">';
}



mysql_close();

?>