<style type="text/css">
<!--
body,td,th {
	color: #FF0066;
}
body {
	background-color: #F0F0AB;
	background-image: url(../images/background.png);
}
-->
</style><?php
if(! empty($_SESSION['SES_ADMIN'])) {
	echo "<h2 style='margin:-5px 0px 5px 0px; padding:0px;'>Selamat datang ........!</h2></p>";
	echo "<b> Anda login sebagai Administrator";
	exit;
}
else {
	echo "<h2 style='margin:-5px 0px 5px 0px; padding:0px;'>Selamat datang ........!</h2></p>";
	echo "<b> Silahkan <a href='?open=Login' alt='Login'>login </a>untuk mengakses sistem ini ";	
}
?>