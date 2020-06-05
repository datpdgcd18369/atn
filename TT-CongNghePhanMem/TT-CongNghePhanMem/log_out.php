<?php session_start();
unset($_SESSION['phanquyen']);
unset($_SESSION['username']);
unset($_SESSION['idnd']);


echo "
							<script language='javascript'>
								alert('Thoát thành công');
								window.open('index.php','_self', 1);
							</script>
						";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Loading</title>
</head>
<body>

</body>
</html>