<?php
$username=$_GET['username'];
$password=$_GET['password'];
$is64bit=$_GET['is64bit']=='true'; //this is only needed if you return compiled lua scripts. You can also just return plaintext lua

//check if the username and password match what is stored in some kind of database
//for this example: user601 - whatever

if (($username === "Aditya") && ($password === "Mathur"))
{
	if ($is64bit)
	{
		include("examplescript.luac64");
	}
	else
	{
		include("examplescript.luac32");
	}
}
else
{
	echo("showMessage('wrong')\n\r");
	echo("closeCE()");
}

?>
