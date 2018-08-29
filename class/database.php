<?php
class database {
	protected $pdo = NULL;
	protected $stmt = NULL;
	protected $sql = '';	

	function __construct(){
		try {
				$this->pdo = new PDO('mysql:host=localhost; dbname=db', 'root','');
				$this->pdo->query('set names utf8');
				$this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} 
		catch (PDOException $e){
			exit ('Server error in connection =>  ' . $e->getMessage());
		}
	}

	function setquery($sql){
		$this->sql = $sql;
	}

	function loadrow($param = array(), $type = PDO::FETCH_OBJ){
		try{
			$this->stmt = $this->pdo->prepare($this->sql);
			$this->stmt->execute($param);
			return $this->stmt->fetch($type);
		} catch (PDOException $e){
			exit ('Server error in loadRow => ' . $e->getMessage());
		}
		
	}

	function loadrows($param = array(), $type = PDO::FETCH_OBJ){		
		try{
			$this->stmt = $this->pdo->prepare($this->sql);
			$this->stmt->execute($param);
			return $this->stmt->fetchAll($type);
		} catch (PDOException $e){
			exit ('Server error in loadRows=> ' . $e->getMessage());
		}
	}

	function execute($param = array()){
		try{
			$this->stmt = $this->pdo->prepare($this->sql);
			return $this->stmt->execute($param);
		} catch (PDOException $e){
			exit ('Server error in execute => ' . $e->getMessage());
		}
	}	

	function getlastid(){
		try{
			return $this->pdo->lastInsertId();
		} catch (PDOException $e){
			exit ('Server error in getLastId => ' . $e->getMessage());
		}
		
	}

	function disconnect(){
		$this->pdo = NULL;
		$this->stmt = NULL;
		$this->sql = '';
	}
	
}

?>