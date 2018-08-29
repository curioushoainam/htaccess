<?php 
//echo $_GET['id'];
$dt = new xl_giohang();
if($dt->addtocart($_GET['id']))
	//bao ra them thanh cong vao chuyen trang
	header('location: index.php?v=giohang');
else
	header('location: index.php');
?>