<?php 
	include("connect/connect.php");
	$result = mysqli_query($conn, "SELECT * FROM `nguoidung` ORDER BY `idnd` DESC LIMIT 1");
	$row = mysqli_fetch_array($result);
	$idnd_max=$row['idnd'] + 1;
	echo "hello";
	echo($idnd_max);
 ?>