<div class="sanpham">
	<h2>TIN CÔNG NGHỆ</h2>
	<div class="noidung_tcn">
		<?php
			if(isset($_GET['id'])){
				$id=$_GET['id'];
				$sql="SELECT * FROM tincongnghe WHERE id=$id";
				
				$result=mysqli_query($conn,$sql);
				$row=mysqli_fetch_assoc($result)
				?>
				<h1 style="height: auto;color: #333;font-family: 'Roboto Condensed',sans-serif;font-weight: 600;font-size: 45px;overflow: hidden;"><?php echo $row['tieude'];?></h1>
				<br>
				<div class="noidung">
					<?php echo $row['noidung'];?>
				</div>
				<span class="time"><?php echo $row['date'].'      From TheGioiDiDong'?></span>
				<?php
			}	
			
		?>
	</div>
</div>