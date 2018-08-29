<?php 
$dt = new xl_giohang();
$ds = $dt->docsanpham();

?>
<div style="position:relative"><a href="?v=giohang"><img src="img/gio.png" width="30" /><span style="position:absolute;color:red;font-weight:bold;font-size:30px"><?=$dt->countcart();?></span></a></div>
<div style="overflow:hidden">
<?php 
foreach($ds as $item){
?>
	<div style="float:left;margin-right:15px;margin-bottom:15px;    line-height: 26px;
border:1px solid; border-radius:5px;padding:5px;width:160px;min-height:250px">
		<a href="?v=chitiet&ma=<?=$item->ma?>&alias=<?=$item->alias?>"><img src="img/sp.jpg" width="150" height="120"/></a>
        <div><?=$item->ten?></div>
        <div style="color:red"><?=$item->don_gia?></div>
        <a href="?v=addtocart&id=<?=$item->ma?>" style="border:1px solid;text-decoration:none;padding:4px 3px">Mua</a>
	</div>	
 <?php 
}
 ?>
    
</div>