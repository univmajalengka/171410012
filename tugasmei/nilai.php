<?php
include("koneksi.php");
?>
<h3 align="center">Tabel nilai</h3>
<a href="?halaman=nilai_tambah" class="btn btn-primary btn=-sm">Tambah nilai</a><br /><br />
<div class="table-responsive">
<table class="table table-bordered table-hover">
	<tr>
		<th><center>no</center></th>
		<th><center>nilai</center></th>
		<th><center>Aksi</center></th>
		
	</tr>

<?php
	$no=1;
	$query=("SELECT * from tabel_nilai");
	$lihat=mysqli_query($koneksi, $query) or die ('error, query filed.'.mysqli_error());
	$jml_data=mysqli_num_rows($lihat);
	while($r=mysqli_fetch_array($lihat)){

?>
	<tr>
		<td><?php echo"$r[no]";?></td>
		<td><?php echo"$r[nilai]";?></td>
		<td align="center">

			<a href="?halaman=nilai_edit&id=<?php echo"$r[nilai]";?>" title="Edit Data"
			class="btn btn-primary btn-sm"><span class="glyphicon  glyphicon-edit" aria-hidden="true"></span></a>
			<a href="?halaman=nilai_delete&id=<?php  echo"$r[nilai]";?>"title="Hapus Data"
			class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"aria-hidde="true"></span></a>

		</tr>
		<?php
		$no++;		
		} ?>
		</table>
		</div>