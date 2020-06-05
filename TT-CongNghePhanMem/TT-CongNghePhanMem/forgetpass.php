<div id="forgetpass" style="height: 200px;width: 775px;">
	<div class="sanpham" style="float: left;">
		<h2>FORGET PASSWORD</h2>
	</div>
	<div style="float: left;margin-left: 300px;" >
		<form style="height:100px; " method="post";>
		<div style="float: left;"><input name="email" ></div>
		<div><input style="color:#000099;" type="submit" name="s_email" value="Gửi"></div>
	</div>
</div>
<?php
	if(isset($_POST['s_email'])){
		$email=$_POST['email'];
		 $sql_check = mysqli_query($conn,"select * from nguoidung where email = '$email'");
    	$dem = mysqli_num_rows($sql_check);
    	if($dem==0){
    		echo "
							<script language='javascript'>
								alert('Email khong ton tai');
							
							</script>
						";
    	}
    	else{
    		$sql="SELECT * FROM nguoidung WHERE email='$email'";
    		$res = mysqli_query($conn, $sql);
    		$r = mysqli_fetch_assoc($res);
    		
$password = str_shuffle('abcdegh123456');
echo $email;
$_password = MD5($password);
$idnd=$r['idnd'];
$update=mysqli_query($conn,"
		UPDATE nguoidung SET 

							password='$_password'
						WHERE idnd=1;
	");
if($update)
{
		echo("Bạn đã sửa thành công sản phẩm." );
	}
else {
	echo( "Sửa thất bại");
	}

$to = $r['email'];
$subject = "Your Recovered Password";

$message = "Please use this password to login " . $password;
$headers = "From : vu.tran@hcmut.edu.vn";
if(mail($to, $subject, $message, $headers)){
	echo "Your Password: ".$password;
}else{
	echo "Failed to Recover your password, try again";
}
    	}
	}
?>