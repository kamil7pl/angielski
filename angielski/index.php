<?php require_once("losowanieSlowek.php");?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Egzamin</title>
</head>
<body>
    <form action="ocena.php" method="post" />
		<?php
			$losowanieSlowek=new losowanieSlowek();
			$i=0;
			foreach($losowanieSlowek->wylosowaneSlowka as $asocjacyjna){
				echo $asocjacyjna["angielski"].':  <input autocomplete="off" value="" name="tlumaczenie'.$i.'" /><br /> <br />';
				$i++;
			}
		?>
		<input type="submit" value="Zakończ" />
	</form />
</body>
</html>
