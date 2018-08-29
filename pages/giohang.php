<?php 
$dt = new xl_giohang();
//print_r($_SESSION);
if(isset($_POST['soluong']))
{
	//echo '<pre>',print_r($_POST),'</pre>';
	if($dt->capnhatsoluong($_POST['soluong']))
		echo 'ok';
	else echo 'loi';
}
?>
<form action="" method="post">
<table width="500px" style="border-collapse:collapse" border="1" cellspacing="0" cellpadding="5">
  <tr>
    <td>Sản phẩm</td>
    <td>Số lượng</td>
    <td>Giá</td>
    <td>Thành tiền</td>
    <td><button>Cập nhật</button></td>
  </tr>
  <?php
  $tong= 0; 
  foreach($_SESSION['giohang'] as $item){
	  $tt = $item['dongia']*$item['soluong'];
	  $tong+=$tt;
  ?>
  <tr>
  	<td><img src="img/sp.jpg"  width="50"/> <?=$item['ten']?></td>
    <td><input name="soluong[<?=$item['ma']?>]" value="<?=$item['soluong']?>"/></td>
    <td  align="right"><?=$item['dongia']?></td>
    <td  align="right"><?=$tt?></td>
    <td><a href="?v=deltocart&id=<?=$item['ma']?>">Xóa</a></td>
  </tr>
  <?php 
  }
  ?>
   <tr>
    <td colspan="4" align="right"><?=$tong?></td>
    <td>&nbsp;</td>
  </tr>
</table>

</form>
<a href="?v=sanpham">Mua tiếp</a> <a href="#">Thanh toán</a> 