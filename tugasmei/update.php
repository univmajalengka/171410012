<?php
include'koneksi.php';
$query=("UPDATE tabel_kelengkapan
	SET 
	nama='$_POST[STTB]'
	('$_POST[SKCK]',
	'$_POST[akta]',
	'$_POST[foto]',
	'$_POST[transkip]'
	WHERE no='$_POST[id]'");

	$lihat =mysqli_query($koneksi,$query) or die ('Error,query filed.'.mysqli_error());
	echo "<script>alert('Data tabel_kelengkapan Berhasil Dihapus.');</script>" ;
	echo "<meta http-equiv='refresh' content='1; url=?halaman=kelengkapan'>";
?>