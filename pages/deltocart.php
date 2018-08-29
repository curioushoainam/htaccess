<?php 
//echo $_GET['id'];
$dt = new xl_giohang();
$dt->deltocart($_GET['id']);
header('location: index.php?v=giohang');
?>