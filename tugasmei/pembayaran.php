<?php
include("koneksi.php");
?>
<h3 align="center">Tabel pembayaran</h3>
<a href="?halaman=pembayaran_tambah" class="btn btn-primary btn=-sm">Tambah pembayaran</a><br /><br />
<div class="table-responsive">
<table class="table table-bordered table-hover">
	<tr>
		<th><center>no</center></th>
		<th><center>nokwitansi</center></th>
		<th><center>terbilang</center></th>
		<th><center>untuk</center></th>
		<th><center>nominal</center></th>
		<th><center>tanggal</center></th>
		<th><center>Aksi</center></th>
	</tr>

<?php
	$no=1;
	$query=("SELECT * from tabel_pembayaran");
	$lihat=mysqli_query($koneksi, $query) or die ('error, query filed.'.mysqli_error());
	$jml_data=mysqli_num_rows($lihat);
	while($r=mysqli_fetch_array($lihat)){

?>
	<tr>
		<td><?php echo"$r[no]";?></td>
		<td><?php echo"$r[nokwitansi]";?></td>
		<td><?php echo"$r[terbilang]";?></td>
		<td><?php echo"$r[untuk]";?></td>
		<td><?php echo"$r[nominal]";?></td>
		<td><?php echo"$r[tanggal]";?></td>
		<td align="center">

			<a href="?halaman=pembayaran_edit&id=<?php echo"$r[STTB]";?>" title="Edit Data"
			class="btn btn-primary btn-sm"><span class="glyphicon  glyphicon-edit" aria-hidden="true"></span></a>
			<a href="?halaman=pembayaran_delete&id=<?php  echo"$r[STTB]";?>"title="Hapus Data"
			class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"aria-hidde="true"></span></a>

		</tr>
		<?php
		$no++;		
		} ?>
		</table>
		</div>