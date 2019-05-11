<?php
include'koneksi.php';
$query=("UPDATE tabel_nilai
	SET 
	nama='$_POST[nama_ortu]'
	('$_POST[hubungan]',
	('$_POST[pekerjaan]',
	('$_POST[alamat]',
	('$_POST[agama]'
	WHERE no='$_POST[id]'");

	$lihat =mysqli_query($koneksi,$query) or die ('Error,query filed.'.mysqli_error());
	echo "<script>alert('Data tabel_orangtua Berhasil Dihapus.');</script>" ;
	echo "<meta http-equiv='refresh' content='1; url=?halaman=orangtua'>";
?>