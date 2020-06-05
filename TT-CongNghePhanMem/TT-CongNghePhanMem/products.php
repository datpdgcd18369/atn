					
		<?php 
	   $sql="select * from danhmuc where dequi=1 order by madm";
	   $result=mysqli_query($conn,$sql);
	    while($row=mysqli_fetch_assoc($result))
		{ 
		?> 	<div class="sanpham"> <?php 
			$sql1="select * from sanpham where madm={$row['madm']} order by idsp  LIMIT 0,8";
			$kq=mysqli_query($conn,$sql1);
			$dem = mysqli_num_rows($kq);
			if($dem>0)
			{
			?>
		<h2><?php echo $row["tendm"];?></h2> 
			<div id="xemthem">
				<p><a href="index.php?madm=<?php echo $row['madm']?>">Xem thêm >></a></p>
			</div>
		<?php } ?>
    	<div class="sanphamcon">
			<?php while($rows=mysqli_fetch_assoc($kq))
			{ ?>
			<div class="dienthoai">
									<?php 
										if($rows['khuyenmai1']>0)
										{
									?>
									
									<?php } ?>
									<a href="index.php?content=chitietsp&idsp=<?php echo $rows['idsp'] ?>"><img  src="images/uploads/<?php echo $rows['hinhanh'];?>"></a><br>
									<p><a href="index.php?content=chitietsp&idsp=<?php echo $rows['idsp'] ?>" ><?php echo $rows['tensp'];?></a></p><br>
									<h4><?php echo number_format(($rows['gia']*((100-$rows['khuyenmai1'])/100)),0,",",".");?></h4>
									<div class="button">
										<ul>
											
											<li>
												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $rows['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
											</li>
										</ul>
									</div><!-- End .button-->
			</div><!-- End .dienthoai-->
			
			<?php } ?>
			
		</div>
		</div><!-- end san pham-->
<?php }?>
