<html>
<head>
	<?php
	include 'config.php';
	?>
	<title>Level 5</title>
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
	<div class="container">
		<br><br>
		<div class="row clearfix">
			<div class="col-md-3"></div>
			<div class="col-md-6 column">
				<div class="jumbotron" id = "main-box">
					<h1>
						<span id="qtitle"></span>
					</h1>
					<p>
						<center><!--<img class="game-img" id="image" alt="Question" src="" style="max-width:100%;">--></center>
					</p>
					<br>
					<p>
						<center>
						<?php
							if (isset($_POST['password'])){
							$conn=mysqli_connect("localhost","root","cassandra","hackathon");
							 if (mysqli_connect_errno($conn))
							{
							echo "Failed to connect to MySQL: " . mysqli_connect_error();
							}
							$user = $_POST["user"];
							$password = $_POST["password"];
							$sql = "SELECT * FROM `sql` WHERE `user` = '$user' and `password` = '$password';";  
							$result = mysqli_query($conn,$sql);
							if($row=mysqli_fetch_row($result)) {
								echo "<div class='alert alert-success'> Key is pikachu</div>";
							} else {
								echo "<div class='alert alert-danger'> Your password is wrong</div>";
							}

							$conn->close();
							}
						?>
						Please Login as Admin
						<form action = "level5.php" method="post">
							<input id="user" style="margin:5px;" name="user" type="text" placeholder="Username" class="form-control input-md" required>
							<input id="pass" style="margin:5px;" name="password" type="password" placeholder="Password" class="form-control input-md" required>
						<br>
						<input type="submit" id="answer_submit" class="btn btn-primary"></button>
						</form>
						</center>
					</p>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.js"></script>
	<script type="text/javascript" src="../js/scaler.js"></script>
	<script src="<?php echo JS_URL; ?>material.min.js"></script>
	<script src="<?php echo JS_URL; ?>ripples.min.js"></script>
</body>
</html>
