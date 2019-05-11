<h3 align="center">Tambah pembayaran</h3>
<form class="form-horizontal" method="post" action="?halaman=pembayaran_ad" enctype="multipart/form-data">
<div class="form-group">
	<label class="col-sm-3 control-label">no : </label>
	<div class="col-sm-4">
	<input type="text" name="no" class="form-control" placeholder="masukan no"  requred>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-3 control-label">nokwitansi: </label>
	<div class="col-sm-4">
	<input type="text" name="kwitansi" class="form-control" placeholder="masukan kwitansi"  required>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-3 control-label">terbilang : </label>
	<div class="col-sm-4">
	<input type="text" name="terbilang" class="form-control" placeholder="masukan terbilang"  required>
	</div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label">untuk : </label>
	<div class="col-sm-4">
	<input type="text" name="alamat" class="form-control" placeholder="masukan alamat"  required>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-3 control-label">nominal : </label>
	<div class="col-sm-4">
	<input type="text" name="nominal" class="form-control" placeholder="masukan nominal"  required>
	</div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label">tanggal : </label>
	<div class="col-sm-4">
	<input type="text" name="tanggal" class="form-control" placeholder="masukan tanggal"  required>
	</div>
</div>
	<div class="form-group">
	<label class="col-sm-3 control-label">$nbsp;</label>
	<div class="col-sm-4">
	<input type="submit" name="tambah_pembayaran" class="btn btn-sm btn-primary" value="simpan">
	<a href="?halaman=pembayaran" class="btn btn-sm btn-danger"> Batal </a>
	</div>
</div>
</form>
