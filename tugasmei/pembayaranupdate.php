<?php
include'koneksi.php';
$query=("UPDATE tabel_pembayaran
	SET 
	nama='$_POST[no]'
	('$_POST[nokwitansi]',
	'$_POST[terbilang]',
	'$_POST[untuk]',
	'$_POST[nominal]'
	'$_POST[tanggal]'
	WHERE no='$_POST[id]'");

	$lihat =mysqli_query($koneksi,$query) or die ('Error,query filed.'.mysqli_error());
	echo "<script>alert('Data tabel_pembayaran Berhasil Dihapus.');</script>" ;
	echo "<meta http-equiv='refresh' content='1; url=?halaman=pembayaran'>";
?>