<?php
include'koneksi.php';
$query=("INSERT INTO  tabel_pembayaran (no,nokwitansi,terbilang,untuk,nominal,tanggal)
	VALUES 
	('$_POST[no]',
	'$_POST[nokwitansi]',
	'$_POST[terbilang]',
	'$_POST[untuk]',
	'$_POST[nominal]',
	'$_POST[tanggal]')");

	$lihat =mysqli_query($koneksi,$query) or die ('Error,query filed.'.mysqli_error());
	echo "<script>alert('Data tabel_pembayaran Berhasil Disimpan .');</script>" ;
	echo "<meta http-equiv='refresh' content='1; url=?halaman=pembayaran'>";
	
?>