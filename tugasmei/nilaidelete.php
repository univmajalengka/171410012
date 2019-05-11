<?php
include'koneksi.php';
$query=("DELETE  FROM tabel_nilai
	WHERE no='$_GET[id]' ");
	$lihat =mysqli_query($koneksi,$query) or die ('Error,query filed.'.mysqli_error());
	echo "<script>alert('Data tabel_nilai Berhasil Dihapus.');</script>" ;
	echo "<meta http-equiv='refresh' content='1; url=?halaman=nilai'>";
?>