<?php
include"koneksi.php";
$query="SELECT * FROM tabel_pembayaran WHERE no='$_GET[id]'";
$galeri=mysqli_query($koneksi,$query) or die('error,query failed.'.mysqli_error());
$m=mysqli_fetch_array($galeri);
?>

<h3 align="center">Edit pembayaran</h3>
<form class="form-horizontal" method="post" action="halamanpembayaran_up" enctype="multipart/form-data">
	<input type="hidden" name="id" vaklue="<?php echo"$m[no]";?>"/>
<div class="form-group">
	<label class="col-sm-2 control-label">nokwitansi : </label>
	<div class="col-sm-3">
	<input type="text" name="nokwitansi" class="form-control" placeholder="nokwitansi" value="<?php echo"$m[STTB]";?>" requred>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-2 control-label">SKCK : </label>
	<div class="col-sm-3">
	<input type="text" name="SKCK" class="form-control" placeholder="masukan SKCK" value="<?php echo"$m[SKCK]";?>" required>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-2 control-label">foto : </label>
	<div class="col-sm-3">
	<input type="text" name="foto" class="form-control" placeholder="masukan foto" value="<?php echo"$m[foto]";?>" required>
	</div>
</div>
<div class="form-group">
	<label class="col-sm-2 control-label">akta : </label>
	<div class="col-sm-3">
	<input type="text" name="akta" class="form-control" placeholder="masukan akta" value="<?php echo"$m[akta]";?>" required>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-2 control-label">transkip : </label>
	<div class="col-sm-3">
	<input type="text" name="transkip" class="form-control" placeholder="masukan transkip" value="<?php echo"$m[transkip]";?>" required>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-2 control-label">$nbsp;</label>
	<div class="col-sm-3">
	<input type="submit" name="tambah_kelengkapan" class="btn btn-sm btn-primary" value="simpan">
	<a href="?kelengkapan" class="btn btn-sm btn-danger"> Batal </a>
	</div>
</div>
</form>
