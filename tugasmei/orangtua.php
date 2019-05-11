<?php
include("koneksi.php");
?>
<h3 align="center">Tabel orangtua</h3>
<a href="?halaman=orangtua_tambah" class="btn btn-primary btn=-sm">Tambah orangtua</a><br /><br />
<div class="table-responsive">
<table class="table table-bordered table-hover">
	<tr>
		<th>no</th>
		<th>nama_ortu</th>
		<th>hubungan</th>
		<th>pekerjaan</th>
		<th>alamat</th>
		<th>agama</th>
		<th>Aksi</th>
	</tr>

<?php
	$no=1;
	$query=("SELECT * from tabel_orangtua");
	$lihat=mysqli_query($koneksi, $query) or die ('error, query filed.'.mysqli_error());
	$jml_data=mysqli_num_rows($lihat);
	while($r=mysqli_fetch_array($lihat)){

?>
	<tr>
		<td><?php echo"$r[no]";?></td>
		<td><?php echo"$r[nama_ortu]";?></td>
		<td><?php echo"$r[hubungan]";?></td>
		<td><?php echo"$r[pekerjaan]";?></td>
		<td><?php echo"$r[alamat]"?></td>
		<td><?php echo"$r[agama]"?></td>
		<td align="center">

			<a href="?halaman=orangtua_edit&id=<?php echo"$r[STTB]";?>" title="Edit Data"
			class="btn btn-primary btn-sm"><span class="glyphicon  glyphicon-edit" aria-hidden="true"></span></a>
			<a href="?halaman=orangtua_delete&id=<?php  echo"$r[STTB]";?>"title="Hapus Data"
			class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"aria-hidde="true"></span></a>

		</tr>
		<?php
		$no++;		
		} ?>
		</table>
		</div>