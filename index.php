<?php
function href($type,$item,$seo=0)
{
	if($seo)
	{
		switch($type)
		{
			case 'sanpham':
				return DOMAIN.$item->alias.'-'.$item->ma;
		}	
	}else
	{
		switch($type)
		{
			case 'sanpham':
				return 'index.php?v=chitiet&ma='.$item->ma;
		}	
	}
}
ob_start();
define('DOMAIN','http://localhost:81/rutgonlink/');
session_start();
include_once('class/database.php');
include_once('class/xl_giohang.php');
//phat gio cho bat ky nguoi vao web site
$giohang = new xl_giohang();
$giohang->phatgiohang();
//-------

$v = isset($_GET['v'])?$_GET['v']:'sanphamalias';
$path = 'pages/'.$v.'.php';
include $path;
ob_end_flush();
?>
