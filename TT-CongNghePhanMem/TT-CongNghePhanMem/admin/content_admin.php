
<?php
mysqli_query($conn,"SET NAMES 'UTF8'");
if(isset($_GET['admin']))
	switch($_GET['admin'])
	{
		case 'viewproduct':
			include ("product.php");
			break;
		case 'addproduct':
			include ("addproduct.php");
			break;
		case 'editproduct':
			include ("editproduct.php");
			break;
		case 'hienthidm':
			include ("categories.php");
			break;
		case 'themdm':
			include ("addcategory.php");
			break;
		case 'suadm':
			include ("editcategory.php");
			break;
		case 'showaccounts':
			include ("accounts.php");
			break;
		case 'themnd':
			include ("them_nguoidung.php");
			break;
		case 'suand':
			include ("editaccount.php");
			break;
			case 'billhandling':
			include ("billhandling.php");
			break;
		case 'hienthitt':
			include ("tintuc.php");
			break;
		case 'themtt':
			include ("them_tintuc.php");
			break;
		case 'suatt':
			include ("sua_tintuc.php");
			break;
		case 'hienthiht':
			include ("hotro.php");
			break;
		case 'viewbill':
			include ("bill.php");
			break;
		case 'billdetail':
			include ("billdetail.php");
			break;
		case 'xulyht':
			include ("xulyht.php");
			break;
		case 'producthandling':
			include ("producthandling.php");
			break;
		case 'xulytt':
			include ("xulytt.php");
			break;
		default:
			include ("product.php");
			break;
	}
	else 
	{
	?>
		<div id="admincon">
			<div id="sanphammoi">
				<table>
				<?php $ngay=date('Y-m-d'); ?>
					<tr class="sanphammoitheongay">
						<td colspan=6>Đơn hàng cần được xử lý</td>
					</tr>
					<tr class="tieudespmoi">
						<td>STT</td>
						<td>Họ tên</td>
						<td>Địa chỉ</td>
						<td>Điện thoại</td>
						<td>Ngày đặt hàng</td>
					</tr>
					<?php 
						$i=1;
						
						$query= " SELECT * from hoadon WHERE trangthai='1'";
						$sql=mysqli_query($conn,$query);
						while($row=mysqli_fetch_assoc($sql))
						{
					
					?>
					<tr>
						<td><?php echo $i++; ?></td>
						<td><?php echo $row['hoten'] ?></td>
						<td><?php echo $row['diachi'] ?></td>
						<td><?php echo $row['dienthoai'] ?></td>
						<td><?php echo $row['ngaydathang'] ?></td>
					</tr>
					<?php } ?>
					<tr>
						<td colspan=6 align="right" style="padding-right:20px; height:30px;"><a href="admin.php?admin=viewbill">Chi tiết</a></td>
					</tr>
				</table>
			</div>
		</div>
	<?php 
	}

?>
