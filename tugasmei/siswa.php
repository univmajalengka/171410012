<?php
include("koneksi.php");
?>
<h3 align="center">Tabel siswa</h3>
<a href="?halaman=siswa_tambah" class="btn btn-primary btn=-sm">Tambah siswa</a><br /><br />
<div class="table-responsive">
<table class="table table-bordered table-hover">
	<tr>
		<th><center>no</center></th>
		<th><center>nama</center></th>
		<th><center>tempat_lahir</center></th>
		<th><center>tanggal</center></th>
		<th><center>alamat</center></th>
		<th><center>pendidikan</center></th>
		<th><center>tahun</center></th>
		<th><center>agama</center></th>
		<th><center>Aksi</center></th>
	</tr>

<?php
	$no=1;
	$query=("SELECT * from tabel_siswa");
	$lihat=mysqli_query($koneksi, $query) or die ('error, query filed.'.mysqli_error());
	$jml_data=mysqli_num_rows($lihat);
	while($r=mysqli_fetch_array($lihat)){

?>
	<tr>
		<td><?php echo"$r[no]";?></td>
		<td><?php echo"$r[nama]";?></td>
		<td><?php echo"$r[tempat_lahir]";?></td>
		<td><?php echo"$r[tanggal]";?></td>
		<td><?php echo"$r[alamat]";?></td>
		<td><?php echo"$r[pendidikan]";?></td>
		<td><?php echo"$r[tahun]";?></td>
		<td><?php echo"$r[agama]";?></td>
		<td align="center">

			<a href="?halaman=siswa_edit&id=<?php echo"$r[STTB]";?>" title="Edit Data"
			class="btn btn-primary btn-sm"><span class="glyphicon  glyphicon-edit" aria-hidden="true"></span></a>
			<a href="?halaman=siswa_delete&id=<?php  echo"$r[STTB]";?>"title="Hapus Data"
			class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"aria-hidde="true"></span></a>

		</tr>
		<?php
		$no++;		
		} ?>
		</table>
		</div>