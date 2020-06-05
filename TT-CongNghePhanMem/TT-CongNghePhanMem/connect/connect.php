<?php
    
    $conn=mysqli_connect("localhost","id9161760_root1","123456","id9161760_new");
   
   //mysqli_select_db($conn,"dienthoai");
	if (mysqli_connect_errno())
  	{
  		echo "Failed to connect to MySQL: " . mysqli_connect_error();
  	}
    
	mysqli_query($conn,"SET NAMES 'UTF8'");
?>