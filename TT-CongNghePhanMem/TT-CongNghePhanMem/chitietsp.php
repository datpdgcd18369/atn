<?php 
	$idsp=$_GET['idsp'];
	$rows=mysqli_query($conn,"select * from sanpham where idsp=$idsp");
	while ($row=mysqli_fetch_assoc($rows))
	{
?>

<div class="chitietsp">
	<div class="chitietsp-in">
		<div class="content">
			<div class="zoom-small-image">
				<a href='images/uploads/<?php echo $row['hinhanh'] ?>' width="300" height="300"  class = 'cloud-zoom' id='zoom1' rel="adjustX: 10, adjustY:-4">
					<img src="images/uploads/<?php echo $row['hinhanh'] ?>" width="250" height="250"  alt='' title="Optional title display" />
				</a>
			</div>
			<div class="giasp">
				<ul>
					<p> <?php echo $row['tensp'] ?></p>
					<li><span><b>Giá: <font color="red"><?php echo number_format(($row['gia']*((100-$row['khuyenmai1'])/100)),0,",",".");?></b></font></span></li>
					<li>Tình trạng: 
						<?php 
							$dem = $row['soluong'] - $row['daban'];
							if( $dem >0)
								echo "Số sản phẩm còn (".$dem.")";
							else 
								echo "Hết hàng";
						?>
					</li>
					<form action="index.php?content=cart&action=add&idsp=<?php echo $row['idsp'] ?>" method="post">
					<li>Số lượng mua : <input type="text" name="soluongmua" size="1" value="1" /></li>
					<li>
					<?php 
						if($dem <=0)
							echo "<a href='index.php?content=hethang'><button>Cho vào giỏ</button></a>
							";
						else { ?>
							<input type="submit" value="Cho vào giỏ" name="chovaogio" class="inputmuahang" />
							<?php } ?>
					</li>
					</form>
				</ul>
			</div>
		</div>
		<div class="tinhnang">
			<div class="tieudetinhnang">
				<ul class="tabs">
				<li><a href="#tab1">Tính năng</a></li>
				</ul>
			</div>
			
			<div id="tab1">
				<?php echo $row['chitiet'] ?>
			</div>
			<div id="tab2">
				<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.3&appId=513070835896647&autoLogAppEvents=1"></script>
				<div class="fb-comments" data-href="https://sellphonesbk.000webhostapp.com/index.php?content=chitietsp" data-width="100%" data-numposts="5"></div>

				
			</div>
		</div>
	</div>

</div>

<?php } ?>
