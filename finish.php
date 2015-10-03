<?php
session_start();
session_set_cookie_params(60 * 60 * 6); //Session limit 6 hours
if(isset($_SESSION['nick'])&& $_SESSION['level']>10){
?>
			<html>
			<head>
				<title>ACM::Hackathon</title>
				<link href="css/bootstrap.css" rel="stylesheet">
				<link href="css/bootstrap-theme.min.css" rel="stylesheet">
				<style>
				body{
					padding-bottom: 40px;
					min-width: 960px;
					background: url("images/finish.jpg") no-repeat center center fixed;
					background-size: cover;
				}

				body::before {
					content: "";
					background-color: rgba(0,0,0,0.3);
					top: 0;
					left: 0;
					bottom: 0;
					right: 0;
					position: fixed;
					z-index: -1;   
				}
				#sexylogout2, #sexyforum, #sexyleader, #sexyadmin{
					color: #FFFFFF;
					font-size: 18pt;
					border-color: #CFCFCF;
					border-width: 1px;
					border-radius: 4px 4px 4px 4px;
					background-color: transparent;
					margin-right: 20px;
					margin-top: 10px;
				}
				</style>
			</head>
			<body>
				<div align="center">
					<a style="float: right; position: absolute; right: 10%;" target="_blank" href="leaderboard.php"><button id="sexyleader" type="button" style="background:transparent;" class="btn btn-primary btn-lg">Leaderboard</button></a>
					<a style="float: right; position: absolute; right: 0%;" href="logout.php"><button id="sexylogout2" type="button" style="background:transparent;" class="btn btn-primary btn-lg">Logout</button></a>
				</div>
				<div id="finish_bg">

				</div>
				<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
				<script type="text/javascript" src="js/bootstrap.js"></script>
			</body>
			</html>
<?php
}else{
	header('Location: '.SITE_URL);
}
?>