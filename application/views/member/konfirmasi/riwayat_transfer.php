<div class='box'>
<div class='box-header'>
	<h4>Informasi Transfer</h4>
</div>
<div class="box-body" style="display: block;">

<?php 
$upload_dir = base_url()."konfirmasi_transfer/"; 
$dataBukti = $transfer->getBukti_transfer();
?>

<div class='col-md-6'>
<table class="table table-bordered table-striped ">
<thead>
<tr>
<td></td>
<td>Pengirim</td>
<td>Penerima</td>
</tr>
</thead>
<tbody>
<tr>
<td>Nama Bank</td>
<td><?= $dataBukti->nama_bank_pengirim ?></td>
<td><?= $dataBukti->nama_bank_penerima ?></td>
</tr>
<tr>
<td>Nama Rekening</td>
<td><?= $dataBukti->nama_rekening_pengirim ?></td>
<td><?= $dataBukti->nama_rekening_penerima ?></td>
</tr>
<tr>
<td>Nomor Rekening</td>
<td><?= $dataBukti->no_rekening_pengirim ?></td>
<td><?= $dataBukti->no_rekening_penerima ?></td>
</tr>
</tbody>
</table>
</div>
<div class='col-md-6'>
	<img src="<?= $upload_dir.$dataBukti->bukti_transfer ?>" width='100%'  />
</div>
<div class='clearfix'></div>
<?php if($transfer->data->id_referral == $user->attributes('id')): ?>
<a href="<?= base_url('transfer/verifikasi_proses/'.$transfer->data->id)?>" class='btn btn-success pull-right'>Verifikasi</a>
<a href="<?= base_url('transfer/verifikasi_batal/'.$transfer->data->id)?>" class='btn btn-danger pull-right' style='margin-right:5px'>Batal</a>
<?php endif; ?>
</div></div>