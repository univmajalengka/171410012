<!DOCTYPE html>
<html>
<head>
	<title>My web |Sistem Basis Data|</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div clss="navbar-header">
	<a class="navbar-brand" href="#">Informatika</a>
</div>
<div>
<ul class="nav navbar-nav">
<li class="active"><a href="?halaman=default">Home</a></li>
<li><a href="?halaman=kelengkapan">Kelengkapan</a></li>
<li><a href="?halaman=nilai">Nilai</a></li>
<li><a href="?halaman=orangtua">orangtua</a></li>
<li><a href="?halaman=pembayaran">pembayaran</a></li>
<li><a href="?halaman=siswa">siswa</a></li>

</ul>
</div>
</nav>
	<div class="container">

<div>
	<div class="jumbotron">
	<?php
include("halaman.php");
?>
</div>
<div class="panel panel-primary">
	<div class="panel-heading">
	<h3 class="panel-title">copyright &copy; Mei Liyana Ababiel </h3>
	</div>
	</div>
	</div>
	</div>
</body>
</html>


