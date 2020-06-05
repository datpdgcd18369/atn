
<div id="tintuc">
	<h3>Tin Tức</h3>
	<?php
		if(!isset($_GET['page'])){  
		$page = 1;  
		} else {  
		$page = $_GET['page'];  
		}
		// Chọn số kết quả trả về trong mỗi trang mặc định là 10 
		$max_results = 10;  

		// Tính số thứ tự giá trị trả về của đầu trang hiện tại 
		$from = (($page * $max_results) - $max_results);  

		// Chạy 1 MySQL query để hiện thị kết quả trên trang hiện tại  

		$sql = mysqli_query($conn,"SELECT * FROM tintuc ORDER by matt DESC  LIMIT $from, $max_results");
		while($row=mysqli_fetch_assoc($sql))
		{
	?>
	
	<div class="tintuccon">
		<div class="tintuccon-in">
			<div class="tieudetintuc">
				<p><a href="index.php?content=chitiettintuc&matt=<?php echo $row['matt'] ?>"><?php echo $row['tieude'] ?></a></p>
				<span>Ngày đăng tin: <?php echo $row['ngaydangtin'] ?></span>
			</div>
			<div class="imgtintuc">
				<img src="img/tintuc/<?php echo $row['hinhanh'] ?>" width="300px" height="300px;">
			</div>
			<div class="noidungtintuc">
				
				<span><p> <?php echo $row['ndngan'] ?> </p></span>
				<p class="xemthem"><a href="index.php?content=chitiettintuc&matt=<?php echo $row['matt'] ?>">Xem thêm >></a></p>
			</div>
		</div>
	</div>
	<?php } ?>
</div>
<div id="phantrang_sp">
	
	<?php
       
			// Tính tổng kết quả trong toàn DB:
           function mysqli_result($search, $row, $field){
            $i=0; while($results=mysqli_fetch_array($search)){
                if ($i==$row){$result=$results[$field];}
                $i++;}
            return $result;}
        
            $total_results = mysqli_result(mysqli_query($conn,"SELECT COUNT(*) as Num FROM tintuc"),0,0);
			// Tính tổng số trang. Làm tròn lên sử dụng ceil()  
			$total_pages = ceil($total_results / $max_results);  


			// Tạo liên kết đến trang trước trang đang xem 
			if($page > 1){  
			$prev = ($page - 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?content=tintuc&page=$prev\"><button class='trang'>Trang trước</button></a>&nbsp;";  
			}  

			for($i = 1; $i <= $total_pages; $i++){  
			if(($page) == $i){  
			echo "$i&nbsp;";  
			} else {  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?content=tintuc&page=$i\"><button class='so'>$i</button></a>&nbsp;";  
			}  
			}
			// Tạo liên kết đến trang tiếp theo  
			if($page < $total_pages){  
			$next = ($page + 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?content=tintuc&page=$next\"><button class='trang'>Trang sau</button></a>";  
			}  
			echo "</center>";
	?>
	</div>
