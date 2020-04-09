<?php
require_once("losowanieSlowek.php");
class Punkty extends losowanieSlowek{
	public function __construct(){
		if($_POST!=NULL){
			$punkty=0;
			$i=0;
			parent::__construct();
			foreach($this->wylosowaneSlowka as $asocjacyjna){
				if($asocjacyjna["polski"]==$_POST["tlumaczenie".$i])
					$punkty++;
					$i++;
			}
			$procent=($punkty/count($this->wylosowaneSlowka)*100);
			if($procent>=30)
				header('Location:https://www.facebook.com/');
			else echo 'Test niezaliczony. Spróbuj ponownie. <a href="index.php">Kliknij tutaj.</a>';
		}
	}
}
$punkty=new Punkty();

?>