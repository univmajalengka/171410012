<?php
include'koneksi.php';
$query=("DELETE  FROM tabel_kelengkapan
	WHERE no='$_GET[id]' ");
	$lihat =mysqli_query($koneksi,$query) or die ('Error,query filed.'.mysqli_error());
	echo "<script>alert('Data tabel_kelengkapan Berhasil Dihapus.');</script>" ;
	echo "<meta http-equiv='refresh' content='1; url=?halaman=kelengkapan'>";
?>