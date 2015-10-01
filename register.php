<?php
include "config.php";
include "lib/password.php";
// name1, roll1, email1, name2, roll2, email2, nick, password
$name1 = $_POST['name1'];
$name2 = $_POST['name2'];
$roll1 = $_POST['roll1'];
$roll2 = $_POST['roll2'];
$password = password_hash($_POST['password'], PASSWORD_BCRYPT);
$nick = $_POST['nick'];
$email1 = $_POST['email1'];
$email2 = $_POST['email2'];
$college = $_POST['college'];
$con = new mysqli(SQL_HOST, SQL_USER, SQL_PASS, SQL_DB);
	//Check if Nick is Taken
$stmt = $con->prepare("SELECT nick FROM registration where nick = ?");
$stmt->bind_param("s", $nick);
$stmt->execute();
$stmt->bind_result($result_nick);
$stmt->fetch();
if($result_nick){
	echo "Nick <b>".$result_nick."</b> has Already Been taken.<br>Please Enter an Different Nick.";
	die();
}else{
	//Insert into DB
	$stmt = $con->prepare('INSERT into registration(name1,roll1,email1,name2,roll2,email2,nick,password,college) VALUES(?,?,?,?,?,?,?,?,?)');
	$stmt->bind_param("sssssssss", $name1, $roll1, $email1, $name2, $roll2, $email2, $nick, $password, $college);
	if($stmt->execute())
	echo "Registration Successful.";
	else
	echo "Failed";
	echo $stmt->error;
	//Closing Connection
	$con = null;
}
?>
