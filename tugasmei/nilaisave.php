<?php
include'koneksi.php';
$query=("INSERT INTO  tabel_nilai (no,nilai)
	VALUES 
	('$_POST[no]',
	'$_POST[nilai]')");

	$lihat =mysqli_query($koneksi,$query) or die ('Error,query filed.'.mysqli_error());
	echo "<script>alert('Data tabel_kelengkapan Berhasil Disimpan .');</script>" ;
	echo "<meta http-equiv='refresh' content='1; url=?halaman=kelengkapan'>";
?>