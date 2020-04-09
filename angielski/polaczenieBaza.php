<?php
class polaczenieBaza
{
  private $host="localhost";
  private $dbName= "jezyk";
  private $user= "root";
  private $pass= "";
  protected $con;
  
  public function __construct()
  {
    $this->con=new mysqli($this->host, $this->user, $this->pass, $this->dbName); 
    
    if (mysqli_connect_error())  
    { 
      die('Błąd połączenia.'); 
    } 
  
  
    
  }
}

?>