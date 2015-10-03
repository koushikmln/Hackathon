<html>
<?php
include 'config.php';
?>
<?php setcookie("function", "9bf25b8a51f4b537725e7c8a9b6d9585"); ?>
<head>
	<title>Level 9</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Mystique 4.0 2015">
	<meta name="author" content="Koushik MLN">
	<link href="../css/bootstrap.css" rel="stylesheet">
	<!--<link href="css/bootstrap-theme.min.css" rel="stylesheet">-->
	<link href="../css/style.css" rel="stylesheet">
	<link href="<?php echo CSS_URL; ?>material.css" rel='stylesheet' type='text/css' />
    <link href="<?php echo CSS_URL; ?>ripples.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.js"></script>
	<script type="text/javascript" src="../js/scaler.js"></script>
	<script>
	</script>
	<script src="<?php echo JS_URL; ?>material.min.js"></script>
	<script src="<?php echo JS_URL; ?>ripples.min.js"></script>
	<div class="container">
		<br><br>
		<div class="row clearfix">
			<div class="col-md-3"></div>
			<div class="col-md-6 column">
				<div class="jumbotron" id = "main-box">
						<?php
							$conn=mysqli_connect("localhost","root","cassandra","hackathon");
							 if (mysqli_connect_errno($conn))
							{
							echo "Failed to connect to MySQL: " . mysqli_connect_error();
							}
							$user = $_SESSION['nick'];
							$sql = "SELECT * FROM `xss` WHERE `nick` = '$user' order by sno desc";  
							$result = mysqli_query($conn,$sql);
							echo "<p>Recent 3 Comments</p>";
							for($i=0;$i<3;$i++){
								if($row=mysqli_fetch_row($result))
									echo "<p><small>".$row[2]."</small></p>";
							}
							$conn->close();
							if (isset($_POST['comment'])){
								$con=new mysqli("localhost","root","cassandra","hackathon");
								if (mysqli_connect_errno($con)){
									echo "Failed to connect to MySQL: " . mysqli_connect_error();
								}
								$user = $_SESSION["nick"];
								$comment = $_POST["comment"];
								$stmt = $con->prepare('INSERT into xss(nick,comment) VALUES(?,?)');
								$stmt->bind_param("ss", $user, $comment);
								if($stmt->execute())
								$con->close();
								$page = $_SERVER['PHP_SELF']; 
								header('Loaction: '.$page);
							}
						?>
						<hr>
						<p>Please Post your comment here.</p>
						<form action = "level9.php" method="post">
							<div class="form-group">
                            <textarea class="form-control floating-label" rows="5" style="width:100%;" placeholder="Comment Here" name="comment" id="comment"></textarea>
                      </div>
						<br>
						<input type="submit" id="answer_submit" class="btn btn-primary"></button>
						</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
