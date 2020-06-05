<?php
if(isset($_SESSION['username'])){
	?>
	<div>
		<td><span id="xinchao"><p style="padding-left: 8px;font-weight: bold;text-align: center;">Xin chào: <span style="color: #ff0000;text-align: center;"> 
			 <?php if($_SESSION['phanquyen'] == 0) :?> <a href = "admin/admin.php"><?php echo ($_SESSION['username'])?></a><?php else :?> <?php echo ($_SESSION['username']) ?> 
								<?php endif; ?> 
			 </span></p></span></td>
	</div>
	<?php } 
	?>
	<div id="searchform">
		<form action="index.php?content=timkiem" method="get">
			<table style="height: 150;">
				<tr style="height: 10px;padding-bottom: 2px;">
					<th style="color: #000099;font-size: 18px;padding-top: 0px;padding-bottom: 0px;height: 10px;" colspan="2" >Tìm kiếm </th>
				</tr>
				<tr style="height: 15px;">
					<td style="padding-right: 0px; width: 25px;" id="Search"><input type="input" name="txt_input"></td>
					<td><button style="width: 22px; height: 22px;padding-left: 0px ; border:0; background-color: #e6e6ff;" ID="Timkiem">
						<img src="images/find.png"></button>
					</td>
				</tr>
				<tr>
					<td id="search_option" style="height: 22px;" colspan="2">
						<select  style="width: 160px;" name="gia">
							<option value="0">Tất cả</option>
							<option value="1"> <1.000.000</option>
							<option value="2">1.000.000-3.000.000</option>
							<option value="3">3.000.000-5.000.000</option>
							<option value="4">5.000.000-10.000.000</option>
							<option value="5"> >10.000.000</option>
						</select>
					</td>
				</tr>
				<tr style="height: 12px;">
								<input type="hidden" name="content" value="timkiem">
							</tr>
			</table>
		</form>
	</div>
	<br>
	<?php 
	if(empty($_SESSION['username'])){
		?>
		<div id="loginform">
			<form action="dangnhap.php" method="post">
				<table>
					<tr>

						<th id="tieudedangnhap" style="color: #000099;font-size: 18px;" colspan="2" >Đăng nhập </th>
					</tr>
					<tr class="user">
						<td>User</td>
						<td><input type="text" name="user"></td>
					</tr>
					<tr class="user">
						<td>Pass</td>
						<td><input type="password" name="pass"></td>
					</tr>
					<tr id="btnlogin">
						<td colspan="2" align="center"><input style="color:#000099;" id="submit" type="submit" name="login" value="SignIn"></td> 
					</tr>
					<tr id="forgetPass">
						<td colspan="2" ><a href="index.php?content=forgetpass"> Forget Password?</a></td>
					</tr>

				</table>
			</form>
		</div>
		<?php } 
	?>
	<br>
	<div id="gio_hang">
					<div class="center1">
						<h4>GIỎ HÀNG</h4>
							<a href="index.php?content=cart"><img src="images/cart1.png" title="Vào giỏ hàng" width="150" height="100px"></a>
							<?php 
								$tongtien=0;
								if(isset($_SESSION['cart']))
								$count=count($_SESSION['cart']);
								else $count=0;
								if($count==0){
							?>
							<p>Không có sản phẩm</p>
							<?php } 
							else {
							?>
							<p id="soluonggiohang">Có <span><?=$count?></span> sản phẩm trong giỏ</p>
							 
							<p id="tiengiohang">
							 <?php $sql ="select * from sanpham where idsp in(";
        
							foreach($_SESSION['cart'] as $id => $soluong)
					            {
					              if($soluong>0)
					                $sql .= $id.",";
					            }
					        if (substr($sql,-1,1)==',')
					        {
					            $sql = substr($sql,0,-1);
					        }
					      	$sql .=' )order by idsp 	';
					      	$rows=mysqli_query($conn,$sql);
							while ($row=mysqli_fetch_array($rows))
							{  
								$tongtien+=$_SESSION['cart'][$row['idsp']]*$row['gia']; 
							}
							?> <?php  echo number_format($tongtien,"0",",",".");?> VNĐ</p>
							<?php } ?>		
							
					</div><!-- End .center1-->
				</div>