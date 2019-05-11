<?php
include("koneksi.php");
?>
<h3 align="center">Tabel Kelengkapan</h3>
<a href="?halaman=kelengkapan_tambah" class="btn btn-primary btn=-sm">Tambah kelengkapan</a><br /><br />
<div class="table-responsive">
<table class="table table-bordered table-hover">
	<tr>
		<th><center>no</center></th>
		<th><center>STTB</center></th>
		<th><center>SKCK</center></th>
		<th><center>foto</center></th>
		<th><center>akta</center></th>
		<th><center>transkip</center></th>
		<th><center>Aksi</center></th>
	</tr>

<?php
	$no=1;
	$query=("SELECT * from tabel_kelengkapan");
	$lihat=mysqli_query($koneksi, $query) or die ('error, query filed.'.mysqli_error());
	$jml_data=mysqli_num_rows($lihat);
	while($r=mysqli_fetch_array($lihat)){

?>
	<tr>
		<td><?php echo"$r[no]";?></td>
		<td><?php echo"$r[STTB]";?></td>
		<td><?php echo"$r[SKCK]";?></td>
		<td><?php echo"$r[foto]";?></td>
		<td><?php echo"$r[akta]";?></td>
		<td><?php echo"$r[transkip]";?></td>
		<td align="center">

			<a href="?halaman=kelengkapan_edit&id=<?php echo"$r[STTB]";?>" title="Edit Data"
			class="btn btn-primary btn-sm"><span class="glyphicon  glyphicon-edit" aria-hidden="true"></span></a>
			<a href="?halaman=kelengkapan_delete&id=<?php  echo"$r[STTB]";?>"title="Hapus Data"
			class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"aria-hidde="true"></span></a>

		</tr>
		<?php
		$no++;		
		} ?>
		</table>
		</div>