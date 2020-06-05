<?php 
	chong_pha_hoai();
	//echo "viet code trang chu tai day";

	if($bo_cuc_web=="co_trai_cot_phai")
	{
		include("cumchucnang/trang_chu/san_pham_ngoai_trang_chu.php");
	}
	if($bo_cuc_web=="mot_cot")
	{
		include("cumchucnang/trang_chu/san_pham_ngoai_trang_chu_mot_cot.php");
	}
?>