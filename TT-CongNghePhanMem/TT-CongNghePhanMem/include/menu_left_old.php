
<div id="danhmucsp">
<div class="center">
<h4>SẢN PHẨM</h4>
<?php
    $sql="select * from danhmuc where dequi=1";
    $result=mysqli_query($conn,$sql);
    ?>
<ul>
<?php
    while($row=mysqli_fetch_assoc($result))
    {
        ?>
<li><a href="index.php?madm=<?php echo $row['madm'] ?>"><?php echo $row["tendm"];?></a></li>
<?php } ?>
</ul>
</div><!-- End .center -->
</div>    <!-- End .menu-left -->
<br>
<div id="phukien">
<div class="center">
<h4> PHỤ KIỆN</h4>
<?php
    $sql="select * from danhmuc where dequi=2";
    $result=mysqli_query($conn,$sql);
    ?>
<ul>
<?php
    while($row=mysqli_fetch_assoc($result))
    {
        ?>
<li><a href="index.php?madm=<?php echo $row['madm'] ?>"><?php echo $row["tendm"];?></a></li>
<?php } ?>
</ul>
</div><!-- End .center -->
</div><!-- End .phukien -->
<div id="tincongnghe">
    <div class="center">
        <h4> TIN CÔNG NGHỆ</h4>
        <?php
            $sql="select * from tincongnghe";
            $result = mysqli_query($conn,$sql);
        ?>
        <ul>
            <?php
                while($row=mysqli_fetch_assoc($result)){
                    ?>
                    <li style="background-image: none;border-bottom: 1px solid #c1c1c1; "><a href="#"><img style="width: 100px;height: 56px;" src="images/tincongnghe/<?php echo $row['img']?>"  ></a><br><a class="tincongnghe" href="index.php?content=tincongnghe&id=<?php echo $row['id'] ?>"> <?php echo $row['tieude'] ?></a></li>

                <?php }
            ?>
        </ul>
    </div>
</div>
