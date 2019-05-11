<?php
include'koneksi.php';
$query=("INSERT INTO  tabel_kelengkapan (STTB,SKCK,akta,foto,transkip)
	VALUES 
	('$_POST[STTB]',
	'$_POST[SKCK]',
	'$_POST[akta]',
	'$_POST[foto]',
	'$_POST[transkip]')");

	$lihat =mysqli_query($koneksi,$query) or die ('Error,query filed.'.mysqli_error());
	echo "<script>alert('Data tabel_kelengkapan Berhasil Disimpan .');</script>" ;
	echo "<meta http-equiv='refresh' content='1; url=?halaman=kelengkapan'>";
?>