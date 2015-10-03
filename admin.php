<?php
include 'config.php';
if(in_array($_SESSION['nick'], $admins)){
	?>
	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta http-equiv="refresh" content="120">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Hackathon - Admins</title>
		<link rel='stylesheet' href='css/style.css'>
		<link rel='stylesheet' href='css/bootstrap.min.css'>
		<link rel='stylesheet' href='css/dataTables.bootstrap.css'>
		
		<link href="<?php echo CSS_URL; ?>material.css" rel='stylesheet' type='text/css' />
    	<link href="<?php echo CSS_URL; ?>ripples.css" rel='stylesheet' type='text/css' />
	</head>

	<body>
		<div align="center">
		</div>
		<center>
			<div id="leader" style="width:80%;background-color:#ffffff;">
				<a style="float: right;margin-right: 1%;" href="logout.php"><button type="button" class="btn btn-primary btn-lg">Logout</button></a>
			<a style="float: right; margin-right: 1%;" href="<?php echo SITE_URL?>"><button type="button" class="btn btn-primary btn-lg">Game</button></a>
				<br><br>
				<h1 id="title"><span style="color:#3c3c3c;">Admin Panel</span></h1>
				Flash Message:&nbsp;&nbsp;<input type="text" id="msg" name="msg" class="form-control input-md"><button id="s_flash" name="flash" class="btn btn-primary">Flash Message</button>
				<br><br><br>
				<table id="userData" class="table table-striped table-bordered" width="100%">
					<thead>
						<tr>
							<th class="danger"><strong>Name-1</strong></th>
							<th class="danger"><strong>Name-2</strong></th>
							<th class="danger"><strong>Nick</strong></th>
							<th class="danger"><strong>Level</strong></th>
							<th class="danger"><strong>Answer</strong></th>
							<th class="danger"><strong>Time Attempted</strong></th>
						</tr>
					</thead>
					<tbody>
						<?php
						try{
							$con = new PDO('mysql:dbname='.SQL_DB.';host='.SQL_HOST,SQL_USER,SQL_PASS);
							foreach($con->query(' SELECT registration.name1,registration.name2, logs.nick, logs.level, logs.answer, logs.time FROM logs INNER JOIN registration on logs.nick=registration.nick ORDER BY time DESC') as $row) {
								echo'<tr>';
								echo'<td>'.$row[0].'</td>';
								echo'<td>'.$row[1].'</td>';
								echo'<td>'.$row[2].'</td>';
								echo'<td>'.$row[3].'</td>';
								echo'<td>'.$row[4].'</td>';
								echo'<td>'.$row[5].'</td>';
								echo'</tr>';
							}
						}catch(PDOException $ex){
							echo "Error!: " . $ex->getMessage() . "<br/>";
							die();
						}
						?>
					</tbody>
				</table>
			</div>
		</center>
		<div id='footer'><div class='container' style='text-align: center'>&copy; ACM Birla Institute of Technology, Mesra 2015</div></div>

		<script src="js/jquery-1.9.1.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/dataTables.bootstrap.js"></script>
		<script src="js/material.min.js"></script>
		<script src="js/ripples.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function() {
			$('#userData').DataTable({
			});

			$('#s_flash').click(function(){
				data="msg=" + $("#msg").val();
				var conf = confirm("Are you sure you want to flash" + $("#msg").val() + "?");
				if (conf == true) {
					$.ajax({
						type: "POST",
						url: "set_flasher.php",
						data: data
					});
					$("#msg").val("");
				}
			});
		});
		</script>
	</body>
	</html>
	<?php
}else{
	header('Location: '.SITE_URL);
}
?>