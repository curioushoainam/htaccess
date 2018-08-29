<?php
class xl_giohang extends database {
	function docsanpham()
	{
		$sql = 'select * from san_pham where trang_thai=1';
		$this->setquery($sql);
		return $this->loadrows();
	}
	function docchitiet($id,$alias='')
	{
		$where = '';
		$param = array($id);
		if($alias)
		{
			$where  = " and alias  = ? ";
			$param[]  = $alias;
		}
		$sql = 'select * from san_pham where trang_thai=1 and ma=? '.$where;
		$this->setquery($sql);
		return $this->loadrow($param);
	}
	function phatgiohang()
	{
		//su dung session de luu hang cua nguoi dung dang mua
		if(!isset($_SESSION['giohang']))
			$_SESSION['giohang'] = array();
	}
	function addtocart($idsp)
	{
		if($idsp)
		{
			//lam doc cai san pham voi cai ma dc dua vao de kiem tra du lieu va add vao gio voi thong tin dang co
			$sp = $this->docchitiet($idsp);
			if($sp  && $sp->so_luong>1)
			{
				//ok co sna pham tien hanh add vao gio
				//tao san  pham tren gio hang de add vao
				$sanphamadd = array(
					'ma'=>$sp->ma,
					'ten'=>$sp->ten,
					'hinh'=>$sp->hinh,
					'dongia'=>$sp->don_gia,
					'soluong'=>1,
					'giamgia'=>0
				);
				//can kiem tra gi khong?
				if(isset($_SESSION['giohang'], $_SESSION['giohang'][$sp->ma]))
				{
					//tang so luong len
					$_SESSION['giohang'][$sp->ma]['soluong'] +=1;
				}else
					$_SESSION['giohang'][$sp->ma] = $sanphamadd;
				return true;
			}
			else
				return false;
		}
		else
			return false;
	}
	function deltocart($idsp)
	{
		if($idsp)
		{
			if(isset($_SESSION['giohang'], $_SESSION['giohang'][$idsp]))
			{
				unset($_SESSION['giohang'][$idsp]);
				return true;
			}else			
				return false;
		}
		else
			return false;
	}
	function capnhatsoluong($data)
	{
		if($data && is_array($data))
		{
			foreach($data as $ma=>$soluong)
				$_SESSION['giohang'][$ma]['soluong'] = $soluong;
			return true;
		}
		else
			return false;
	}
	function countcart()
	{
		return count($_SESSION['giohang']);
	}
	function doccf($key)
	{
		$sql = 'select * from configure where trang_thai=1 and khoa=? ';
		$this->setquery($sql);
		return $this->loadrow(array($key))->gia_tri;
	}
}

?>