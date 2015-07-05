
<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>


<div class='row'>
<div class='col-md-8'>
<div class='box'>
<div class='box-header'>
	<h4>Riwayat Konfirmasi</h4>
</div>
<div class="box-body" style="display: block;">

<?php 
$upload_dir = base_url()."konfirmasi_transfer/"; 
$db = $transfer->getBukti_transfer();

foreach ($db as $dataBukti):
?>

<div class='col-md-6'>
	Tanggal Transfer : <?= $dataBukti->transfered_at ?><br><br>
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

<div class='clearfix'></div>

<br>
<?php 
$pesanCancel = $transfer->getCancelMassage($dataBukti->id);
if($pesanCancel != ''): ?>
<div class='pesan' style='border:1px solid #c0c0c0; padding:10px'>
<h4 style="color:red">Pesan Penolakan : </h4>
<?php echo($pesanCancel) ?>
</div>
<?php endif; ?>

</div>
<div class='col-md-6' style='border:1px dashed #c0c0c0;min-height: 300px'>
	<img src="<?= $upload_dir.$dataBukti->bukti_transfer ?>"  height:'300px' width='100%'  />
</div>
<div class='clearfix'></div><hr>
<?php endforeach; ?>
<!-- Button confirmation -->

<!-- Cancel message --> 


<?php if($transfer->data->id_referral == $user->attributes('id') and $transfer->data->status_transfer == "1"): ?>
<div id='batal' class='row' style="display:none">

<form role="form" action="<?= base_url("transfer/verifikasi_batal/".$transfer->data->id."/".$dataBukti->id) ?>" method="post"  class='col-md-12' id='form-registrasi' >
  <div class="form-group">
    <label for="exampleInputEmail1">Alasan Tolak</label> 
    <input type="text" name='msg' class="form-control" id="" placeholder="Alasan anda menolak verifikasi"  >
    <div style='color:red'><?= form_error('msg') ?></div>
    </div>
      <div class="form-group">
  
  <button type="submit" class="btn btn-danger pull-right">Kirim Konfirmasi </button>
   <a href="#!" class='btn btn-link pull-right' style='margin-right:5px' id='tutup'>tutup</a>
  </div>
</form>

</div>
<div class='clearfix'></div><br>
<div id='group-konfirmasi'>
<a href="<?= base_url('transfer/verifikasi_proses/'.$transfer->data->id)?>" class='btn btn-success pull-right'>Verifikasi</a>
<a href="#!" class='btn btn-danger pull-right' style='margin-right:5px' id='btn_batal'>Tolak</a>
</div>
<?php endif; ?>

<!-- END Cancel message --> 

</div></div>

</div>


<div class='col-md-4'>
<div class='box'>
<div class='box-header'>
	<h4>Informasi Transfer</h4>
</div>
<div class="box-body" style="display: block;">
<?php
  $status = "belum di transfer";
  
  if($transfer->data->status_transfer == 1){
      $status = "menunggu konfirmasi";
  }elseif($transfer->data->status_transfer == 2){
      $status = "selesai";
  }elseif($transfer->data->status_transfer == -1){
      $status = "Ditolak";
  }

?>


    <dl class="dl-horizontal" style='margin-left:10px'>

   <dt>Yang harus ditransfer :</dt><dd><?= $transfer->data->amount+$transfer->data->unique_transfer?></dd>
   <dt>Status :</dt><dd><?= $status?></dd>
    </dl>


</div></div>

</div>



</div>

<script type="text/javascript">

$(document).ready(function(){
	$('#btn_batal').click(function(){
		$('#batal').toggle();
		$('#group-konfirmasi').toggle();
	});
	$('#tutup').click(function(){
		$('#batal').toggle();
		$('#group-konfirmasi').toggle();
	});
});
</script>