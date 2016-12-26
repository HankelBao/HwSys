<?php
	$username = $_POST["username"];
	$password = $_POST["password"];
	$accountfile = simplexml_load_file("account/account.xml");
	foreach($accountfile->user as $x){
		if ($x == $password) {
			session_start();
			$_SESSION["username"] = $x["name"];
			$_SESSION["type"] = $x["type"];
			header("location:../studentClient.php");
		}
	}
	//header("location:../index.php")
?>