<script type="text/javascript">
var interval;
$(window).ready(function(){
	flasher();
	flash_msg();
});

function flasher(){
	$.ajax({
		type: "POST",
		url: "../flasher.php",
	}).done(function(msg){
		$("#flash_msg").html(msg);
	});
}

function flash_msg(msg){
	clearInterval(interval);
	interval = setInterval(function() {
		flasher();
	}, 20000);
}
</script>
