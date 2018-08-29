<?php
 
$dt = new xl_giohang();
$sp = $dt->docchitiet($_GET['ma'],$_GET['alias']);
echo '<pre>';
print_r($_GET);
print_r($sp);
echo '</pre>';
?>