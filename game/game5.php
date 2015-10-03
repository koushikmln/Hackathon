<?php
include '../config.php';
if(!isset($_SESSION['nick'])){
	header("Location: ../index.php");
}
else if(in_array($_SESSION['nick'], $bans)){
	echo "<script> alert('You have been banned. Please contact adm_nightstalker @ +91-8051119404 for further details');";
	echo "window.location = '../logout.php';</script>";
}
?>
<html>
<head>
	<title>Level - 5</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Mystique 4.0 2015">
	<meta name="author" content="Koushik MLN">
	<link href="../css/bootstrap.css" rel="stylesheet">
	<!--<link href="css/bootstrap-theme.min.css" rel="stylesheet">-->
	<link href="../css/style.css" rel="stylesheet">
	<?php include INCLUDE_PATH . "rules_modal.php"; ?>
	<link href="<?php echo CSS_URL; ?>material.css" rel='stylesheet' type='text/css' />
    <link href="<?php echo CSS_URL; ?>ripples.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<div align="center">
		<?php
		if(in_array($_SESSION['nick'], $admins)){
			echo '<a style="float: left; position: absolute; left: 5%;" target="_blank" href="admin.php"><button id="sexyadmin" type="button" class="btn btn-primary btn-lg">Admin</button></a>';
		}
		?>
		<a style="float: right; position: absolute; right: 22%;" target="_blank" href="../leaderboard.php"><button id="sexyleader" type="button" class="btn btn-primary btn-lg">Leaderboard</button></a>
		<a style="float: right; position: absolute; right: 10%;" href="../logout.php"><button id="sexylogout2" type="button" class="btn btn-primary btn-lg">Logout</button></a>
		<a style="float: right; position: absolute; right: 0;"><button id="sexyrules" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#rules_modal">Rules</button></a>
	</div>
	<div class="container">
		<br><br><br><br><br><br>
		<div class="row clearfix">
			<div class="col-md-8 column">
				<?php
					if(isset($_SESSION['error'])){
						echo '<div id="answer_alert" class="alert alert-danger" role="alert">'.$_SESSION['error'].'</div>';
						$_SESSION['error']=null;
					}
				?>
				<div class="jumbotron" id = "main-box">
					<h1>
						<span id="qtitle">Level 5</span>
					</h1>
					<p>
					Admin pages are where we admins chill out and say nasty things behind your back. This particular admin page is where you get your revenge. <a href="/hackathon/level/level5.php">(Here Again.)</a>
					</p>
					<br>
					<p>
						<center>
							<form action="../answer.php" method="POST">
							<input id="ans" name="answer" type="text" placeholder="Enter Answer" class="form-control input-md" required>
							<br>
							<button type="submit" id="answer_submit" class="btn btn-primary">Submit Answer</button>
							</form>
						</center>
					</p>
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>Now Playing</strong>
						</h3>
					</div>
					<div class="panel-body">
						Current Level: <?php echo $_SESSION['level'];?><strong><span style="color:#C51F1F; font-size:20pt;" id="level_status"></span></strong>
						<br>
						Score: <?php echo $_SESSION['score'];?><strong><span style="color:#C51F1F; font-size:20pt;" id="score_status"></span></strong>
						<br>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>A Word To The Wise</strong>
						</h3>
					</div>
					<div class="panel-body" id="flash" style="height:250px; overflow-y:scroll;">
						<strong><span id="flash_msg"></span></strong>
					</div>
				</div>		
			</div>		
		</div>
	</div>
	<div id='footer'><div class='container' style='text-align: center'>&copy; ACM Birla Institute of Technology, Mesra 2015</div></div>

	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.js"></script>
	<script type="text/javascript" src="../js/scaler.js"></script>
	<script src="<?php echo JS_URL; ?>material.min.js"></script>
	<script src="<?php echo JS_URL; ?>ripples.min.js"></script>
	<?php include '../js/set_question.php' ?>
</body>
</html>
