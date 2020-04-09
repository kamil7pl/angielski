<?php
//destruktor
require_once("polaczenieBaza.php");//Uwaga na to.
class losowanieSlowek extends polaczenieBaza{
	public $wszystkieSlowka=array();
	public $wylosowaneSlowka=array();
	public $dzisiaj;
	public function __construct(){
		parent::__construct();
		$this->dzisiaj=date("Y/m/d",time());
		$this->wszystkieSlowka=$this->zTabeliDoTablicy("select angielski, polski from angielski_polski");
		if($this->zTabeliDoTablicy("select*from daty where data='$this->dzisiaj'")==NULL){
		$this->wylosowaneSlowka=$this->podtablica($this->wszystkieSlowka, 3);
		foreach($this->wylosowaneSlowka as $asocjacyjna){
			$asocjacyjna["dzis"]=$this->dzisiaj;
			$wstaw=$this->tablicaDoBazy($asocjacyjna);
			$this->con->query("insert into daty values $wstaw");
		}
		}
		else $this->wylosowaneSlowka=$this->zTabeliDoTablicy("select angielski, polski from daty where data='$this->dzisiaj'");
		
	}
	public function zTabeliDoTablicy($sql){
		$tablica=array();
	$wynik=$this->con->query($sql);//select
			while($row=$wynik->fetch_assoc()){
				array_push($tablica, $row);
			}
			return $tablica;
	}
	public function podtablica($tablica=array(), $dlugoscPodTablicy){
		try{
			if($dlugoscPodTablicy<=count($tablica)){
			$tabKluczy=array_rand($tablica, $dlugoscPodTablicy);
			shuffle($tabKluczy);
			$podTablicaTablicyTablica=array();
			foreach($tabKluczy as $wartosc){
			$podTablicaTablicyTablica[$wartosc]=$tablica[$wartosc];
			}
			return $podTablicaTablicyTablica;
			}
			else throw new Exception("Błąd. Podjęcie próby wylosowania większej liczby słówek niż jest wprowadzona w bazie danych.");
		}
		catch(Exception $x){
			echo $x->getMessage();
		}
	}
	public function tablicaDoBazy($tablica=array()){
	$ciag="(NULL, '".implode("','", $tablica)."')";
	return $ciag;
	}
}
/*
$losowanieSlowek=new losowanieSlowek();
print_r($losowanieSlowek->wylosowaneSlowka);
*/

?>