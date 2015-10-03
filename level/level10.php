<html>
<head>
	<?php
	include 'config.php';
	?>
	<title>Level - 10</title>
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
	<div class="container">
		<br><br><br><br><br><br>
		<div class="row clearfix">
			<div class="col-md-3 column"></div>
			<div class="col-md-6 column">
				<div class="jumbotron" id = "main-box">
					<h1>
						<span id="qtitle">Level 10</span>
					</h1>
					<p>
						<form action="level10post.php" method="post" enctype="multipart/form-data">
   							 Select image to upload:
   							 <input type="file" name="fileToUpload" id="fileToUpload">
   							 <input type="submit" value="Upload Image" name="submit" class="btn btn-primary">
						</form>
						<center><!--<img class="game-img" id="image" alt="Question" src="" style="max-width:100%;">--></center>
					</p>
					<br>	
				</div>
			</div>
			<div class="col-md-3 column"></div>
		</div>
	</div>
	<div id='footer'><div class='container' style='text-align: center'>&copy; ACM Birla Institute of Technology, Mesra</div></div>

	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.js"></script>
	<script type="text/javascript" src="../js/scaler.js"></script>
	<script src="<?php echo JS_URL; ?>material.min.js"></script>
	<script src="<?php echo JS_URL; ?>ripples.min.js"></script>
</body>
</html>
