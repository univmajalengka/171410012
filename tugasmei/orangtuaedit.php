<?php
include"koneksi.php";
$query="SELECT * FROM tabel_nilai WHERE no='$_GET[id]'";
$galeri=mysqli_query($koneksi,$query) or die('error,query failed.'.mysqli_error());
$m=mysqli_fetch_array($galeri);
?>

<h3 align="center">Edit nilai</h3>
<form class="form-horizontal" method="post" action="halamannilai_up" enctype="multipart/form-data">
	<input type="hidden" name="id" vaklue="<?php echo"$m[no]";?>"/>
<div class="form-group">
	<label class="col-sm-2 control-label">nama_ortu : </label>
	<div class="col-sm-3">
	<input type="text" name="nama_ortu" class="form-control" placeholder="masukan nama_ortu" value="<?php echo"$m[nama_ortu]";?>" requred>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-2 control-label">hubungan : </label>
	<div class="col-sm-3">
	<input type="text" name="hubungan" class="form-control" placeholder="masukan hubungan" value="<?php echo"$m[hubungan]";?>" required>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-2 control-label">pekerjaan : </label>
	<div class="col-sm-3">
	<input type="text" name="pekerjaan" class="form-control" placeholder="masukan pekerjaan" value="<?php echo"$m[pekerjaan]";?>" required>
	</div>
</div>
<div class="form-group">
	<label class="col-sm-2 control-label">alamat : </label>
	<div class="col-sm-3">
	<input type="text" name="akta" class="form-control" placeholder="masukan alamat" value="<?php echo"$m[alamat]";?>" required>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-2 control-label">agama : </label>
	<div class="col-sm-3">
	<input type="text" name="agama" class="form-control" placeholder="masukan agama" value="<?php echo"$m[agama]";?>" required>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-2 control-label">$nbsp;</label>
	<div class="col-sm-3">
	<input type="submit" name="tambah_nilai" class="btn btn-sm btn-primary" value="simpan">
	<a href="?halaman=nilai" class="btn btn-sm btn-danger"> Batal </a>
	</div>
</div>
</form>
