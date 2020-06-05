<?php 
	chong_pha_hoai();


	//echo $bo_cuc_web;
	//echo "<br>";
	
	//$bo_cuc_web=lay_thong_so('bo_cuc');
	$su_dung_chieu_rong_anh=lay_thong_so('m1');
	$chieu_rong_1=lay_thong_so('m2');
	$chieu_rong_2=lay_thong_so('m3');
	
	//include("cumchucnang/trang_chu/san_pham_ngoai_trang_chu_bc2.php");
	if($bo_cuc_web=="cot_trai_cot_phai")
	{
		include("cumchucnang/trang_chu/san_pham_ngoai_trang_chu_bc2.php");
	}
	if($bo_cuc_web=="mot_cot")
	{
		include("cumchucnang/trang_chu/san_pham_ngoai_trang_chu_mot_cot.php");
	}
?>