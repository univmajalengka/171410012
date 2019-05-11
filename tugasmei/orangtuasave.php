<?php
include'koneksi.php';
$query=("INSERT INTO  tabel_orangtua (no,nama_ortu,hubungan,pekerjaan,alamat,agama)
	VALUES 
	('$_POST[no]',
	'$_POST[nama_ortu]',
	'$_POST[hubungan]',
	'$_POST[pekerjaan]',
	'$_POST[alamat]',
	'$_POST[agama]')");

	$lihat =mysqli_query($koneksi,$query) or die ('Error,query filed.'.mysqli_error());
	echo "<script>alert('Data tabel_nilai Berhasil Disimpan .');</script>" ;
	echo "<meta http-equiv='refresh' content='1; url=?halaman=nilai'>";
?>