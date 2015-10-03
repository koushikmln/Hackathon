
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="refresh" content="120">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Hackathon - Leaderboard</title>
	<link rel='stylesheet' href='css/style.css'>
	<link rel='stylesheet' href='css/bootstrap.min.css'>
	<link rel='stylesheet' href='js/dataTables.bootstrap.css'>
	<link href="css/material.css" rel='stylesheet' type='text/css' />
    <link href="css/ripples.css" rel='stylesheet' type='text/css' />
</head>

<body>
	<center>
		<div id="leader" style="width:80%; min-height:650px;background-color:#ffffff;" >
			<h1 style="color:#67b0d1; font-size:100px;">Leaderboard</h1>
			<br>
			<table id="userData" class="responsive table table-striped table-bordered" width="100%">
				<thead>
					<tr>
						<th class="danger"><strong>Nick</strong></th>
						<th class="danger"><strong>Level</strong></th>
						<th class="danger"><strong>Score</strong></th>
					</tr>
				</thead>
				<tbody>
					<?php
					
					try{
						$con = new PDO('mysql:dbname=hackathon;host=localhost','root','cassandra');
						foreach($con->query('SELECT * FROM game ORDER BY score DESC, time ASC, level DESC ') as $row) {
							echo'<tr>';
							echo'<td class="">'.$row[0].'</td>';
							echo'<td class="">'.$row[1].'</td>';
							echo'<td class="">'.$row[2].'</td>';
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
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.js"></script>
	<script src="js/>material.min.js"></script>
	<script src="js/ripples.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$('#userData').DataTable({
			"bSort" : false
		});
	});
	</script>
	<div id='footer'><div class='container' style='text-align: center'>&copy; ACM Birla Institute of Technology, Mesra 2015</div></div>
</body>

</html>