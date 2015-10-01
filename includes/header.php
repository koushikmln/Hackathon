<head>
	<title>ACM::Hackathon</title>
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_URL; ?>bootstrap.css" />
	<link href="<?php echo CSS_URL; ?>material.css" rel='stylesheet' type='text/css' />
    <link href="<?php echo CSS_URL; ?>ripples.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_URL; ?>style.css" />
</head>
<body>
	<center>
		<div align="center">
			<a href="http://bitotsav.in" target="_blank"><img style='position: absolute; left: 0; width:12%; padding-top:6px;' src="<?php echo IMAGE_URL; ?>pantheon.jpg" /></a>
			<a style="float: right; position: absolute; right: 10%;"><button id="sexyprizes" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#prizes_modal">Prizes</button></a>
			<a style="float: right; position: absolute; right: 0;"><button id="sexyrules" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#rules_modal">Rules</button></a>
			<a style="text-decoration:none;" href="<?php echo SITE_URL; ?>" ><img width="70%" style="padding:20px;" src="<?php echo IMAGE_URL; ?>logo_black.jpg" /></a>			
		</div>
	</center>
	<table id="table">
		<tr>
			<td align="center" colspan="1"><div class="numbers" id="count2"></div></td>
		</tr>
		<tr id="spacer1">
			<td align="center" ><div class="numbers" ></div></td>
			<td align="center" ><div class="numbers" id="dday"></div></td>
			<td align="center" ><div class="numbers" id="dhour"></div></td>
			<td align="center" ><div class="numbers" id="dmin"></div></td>
			<td align="center" ><div class="numbers" id="dsec"></div></td>
			<td align="center" ><div class="numbers" ></div></td>
		</tr>
		<tr id="spacer2">
			<td align="center" ><div class="title lead" ></div></td>
			<td align="center" ><div class="title lead" id="days">DAYS</div></td>
			<td align="center" ><div class="title lead" id="hours">HOURS</div></td>
			<td align="center" ><div class="title lead" id="minutes">MINUTES</div></td>
			<td align="center" ><div class="title lead" id="seconds">SECONDS</div></td>
			<td align="center" ><div class="title lead" ></div></td>
		</tr>
	</table>
	