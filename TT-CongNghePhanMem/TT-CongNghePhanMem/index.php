<?php
session_start();
include ("connect/connect.php"); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Bán Điện Thoại</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
	<body>
		<div id="banner">
			<img src="images/banner3.png">
		</div>
	</div><!-- End .menu-header -->
	<div id="menu_top" style="padding-bottom:0px;">
		<ul>
			<li><a href="index.php" title="TRANG CHỦ">TRANG CHỦ</a></li>
			<li><a href="index.php?content=product" title="SẢN PHẨM">SẢN PHẨM</a></li>
			<li><a href="index.php?content=accessories" title="PHỤ KIỆN">PHỤ KIỆN</a></li>
			<li><a href="index.php?content=khuyenmai" title="KHUYẾN MÃI">KHUYẾN MÃI</a></li>
			<li><a href="index.php?content=intro" title="GIỚI THIỆU">GIỚI THIỆU</a></li>
			<li id="signIn">
				<?php 
				if(isset($_SESSION['username'])){
					?>
					<a href="log_out.php" title="Loging Out" style="color:#ff0000;padding-left: 150px;border-right: hidden;"><?php echo("Log out")?></a>
					<?php
				}
				else {
					$string_1="1";?>
					<a href="index.php?content=dangky" title="Đăng kí" style="color: #ff0000;padding-left: 150px;border-right: hidden;margin:80px;"><?php echo("Đăng kí")?></a>
				<?php }?>
			</li>
		</ul>
	</div>
	<div class="slideshow-container">
		<div class="mySlides fade">
			<img src="images/slide1.png" style="width:100%">
			
		</div>
		<div class="mySlides fade">
			<img src="images/slide2.png" style="width:100%">
			
		</div>

		<div class="mySlides fade">
			<img src="images/slide3.png" style="width:100%">
		
		</div>
	</div>

	<div style="text-align:center;background-color: #e6e6ff;">
		<span class="dot" onclick="currentSlide(0)"></span> 
		<span class="dot" onclick="currentSlide(1)"></span> 
		<span class="dot" onclick="currentSlide(2)"></span> 
	</div>

	<script type="text/javascript" src="js/slide.js"></script>

	<nav id="nav_body">
		<div id="menu">
		<div id="menu_left">
			<?php 
			include("include/menu_left_old.php");
			?>
		</div>
		<div id ="main" style="width: 775px;">
			<?php
			include("content_page.php");
			?>

		</div>

		<div id="menu_right">

			<?php 
			include("include/menu_right.php");
			?>
		</div>
	</div>
	<br>
	</nav>
	<script>
		window.onscroll = function() {scrollFunction()};
		function scrollFunction() {
		    if (document.body.scrollTop > 210 || document.documentElement.scrollTop > 210) {
				document.getElementById("menu_top").style.top = "0px";
				document.getElementById("menu_top").style.position = "fixed";
			} else {
				document.getElementById("menu_top").style.top = "150px";
				document.getElementById("menu_top").style.position = "static";
			}
		}
	</script>
	<footer>
		<?php
		    include("include/footer.php");
		?>
	</footer>
</body>
</html>
