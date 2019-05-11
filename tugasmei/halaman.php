<?php
$halaman=(isset($_GET['halaman'])) ?$_GET['halaman']:"default";
switch($halaman){
		case'kelengkapan':include"kelengkapan.php";break;
		case'kelengkapan_edit':include"edit.php";break;
		case'kelengkapan_hapus':include"hapus.php";break;
		case'kelengkapan_tambah':include"tambah.php";break;			
		case'kelengkapan_ad':include"save.php";break;
		case'kelengkapan_up':include"update.php";break;
		case'kelengkapan_delete':include"delete.php";break;

		
		case'nilai':include"nilai.php";break;
		case'nilai_edit':include"editnilai.php";break;
		case'nilai_hapus':include"hapus.php";break;
		case'nilai_tambah':include"nilaitambah.php";break;
		case'nilai_ad':include"nilaisave.php";break;
		case'nilai_up':include"nilaiupdate.php";break;
		case'nilai_delete':include"nilaidelete.php";break;

		case'orangtua' :include"orangtua.php";break;
		case'orangtua_edit':include"orangtuaedit.php";break;
		case'orangtua_hapus':include"hapus.php";break;
		case'orangtua_tambah':include"orangtuatambah.php";break;
		case'orangtua_ad':include"orangtuasave.php";break;
		case'orangtua_up':include"updateortu.php";break;
		case'orangtua_delete':include"ortudelete.php";break;

		case'pembayaran' :include"pembayaran.php";break;
		case'pembayaran_edit':include"pembayaranedit.php";break;
		case'pembayaran_hapus':include"hapus.php";break;
		case'pembayaran_tambah':include"pembayarantambah.php";break;
		case'pembayaran_ad':include"pembayaransave.php";break;
		case'pembayaran_up':include"pembayaranupdate.php";break;
		case'pembayaran_delete':include"pembayarandelete.php";break;

		case'siswa' :include"siswa.php";break;
		case'siswa_edit':include"editortu.php";break;
		case'siswa_hapus':include"hapus.php";break;
		case'siswa_tambah':include"siswatambah.php";break;
		case'siswa_ad':include"ortusave.php";break;
		case'siswa_up':include"updateortu.php";break;
		case'siswa_delete':include"ortudelete.php";break;


		case'default':include"home.php";break;



		


}
?>
		
