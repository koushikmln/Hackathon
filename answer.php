<?php
include "config.php";
error_reporting(E_ALL);
ini_set('display_errors', True);
if(isset($_SESSION['nick'])){
	$nick = $_SESSION['nick'];
	$answer = $_POST['answer'];
	try{
		$con = new PDO('mysql:dbname='.SQL_DB.';host='.SQL_HOST,SQL_USER,SQL_PASS);
	//Check if Nick Exists
		$stmt = $con->prepare("SELECT * FROM game where nick = ?");
		$stmt->execute(array($nick));
		$row = $stmt->fetch();
		if(!$row){
			echo "Invalid Nick<br>";
		}else{
			$stmt = $con->prepare("INSERT INTO logs(nick,level,answer) VALUES(:nick, :level, :answer)");
			$stmt->execute(array('nick' => $nick, 'level'=>$row['level'],'answer'=>$answer));
			$bool = false;
			//echo $row['level'];
			switch ($row['level']) {
				case 1:
					if($answer=='7')
						$bool = true;
					break;
				case 2:
					if($answer=='pantheon')
						$bool = true;
					break;
				case 3:
					if($answer=='nekochan')
						$bool = true;
					break;
				case 4:
					if($answer=='550')
						$bool = true;
					break;
				case 5:
					if($answer=='pikachu')
						$bool = true;
					break;
				case 6:
					if($answer=='42678')
						$bool = true;
					break;
				case 7:
					if($answer=='clementine')
						$bool = true;
					break;
				case 8:
					if($answer=='PINGU')
						$bool = true;
					break;
				case 9:
					if($answer=='alibaba')
						$bool = true;
					break;
				case 10:
					if($answer=='pandora')
						$bool = true;
					break;
				
			}
			if($bool){
				$row['score'] = $row['score']+$row['level'];
				$row['level']++;
				$_SESSION['level'] = $row['level'];
                $_SESSION['score'] = $row['score'];
				$stmt = $con->prepare('UPDATE game SET level=:level, score=:score WHERE nick=:nick');
				$stmt->execute( array('nick' => $nick, 'level'=>$row['level'],'score'=>$row['score']) );
				//echo "True";
			}else{
				$_SESSION['error']="Incorrect Answer. Try Again!! ";
			}
            $game_url = SITE_URL.'game/game'.$_SESSION['level'].'.php';
            if($row['level']<=END_LEVEL)
				header('Location: '.$game_url);
			else
				header('Location: '.SITE_URL.'finish.php');
			$con = null;
		}
	}catch(PDOException $ex){
		echo "Error!: " . $ex->getMessage() . "<br/>";
		die();
	}
}else{
	echo "LOGIN";
}
?>