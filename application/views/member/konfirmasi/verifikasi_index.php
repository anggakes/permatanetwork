<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>



<div class='box'>
<div class='box-header'><h4>Daftar Transfer untuk diverifikasi </h4>
<div class="box-tools pull-right">
<a class='btn btn-default' href='verifikasi'><i class='fa fa-check'></i>List Menunggu</a>
<a class='btn btn-default' href='verifikasi?history'><i class='fa fa-check'></i>History</a>
</div>
</div>
<div class='box-body'>
<table class='table table-bordered table-striped' id='datatable'>
<thead style='background:#EEFFBA;text-align: center;font-weight: bold'>
<tr>
<td>Tanggal</td>
<td>Nama</td>
<td>Nomor HP</td>
<td>Email</td>
<td>Alamat</td>
<td>Jumlah Transfer</td>
<td>Status</td>
<td>Aksi</td>
</tr>
</thead>
<tbody style='text-align:center'>
<?php foreach($user->getDataAllVerifikasiTransfer($where) as $v): ?>

<?php
  $status = "Belum Melakukan Transfer";
  
  if($v->status_transfer == 1){
      $status = "Menunggu Konfirmasi";
  }elseif($v->status_transfer == 2){
      $status = "Selesai";
  }elseif($v->status_transfer == -1){
      $status = "Pending";
  }

?>

<tr>
<td><?= $v->updated_at ?></td>
<td><?= $v->nama ?></td>
<td><?= $v->no_hp ?></td>
<td><?= $v->email ?></td>
<td><?= $v->alamat ?>, Provinsi : <?= $v->provinsi ?>, Kota : <?= $v->kota ?></td>
<td>Rp. <?= rupiah($v->amount+$v->unique_transfer) ?></td>
<td><?= $status ?></td>
<td>
	<?php if($v->status_transfer == 1 ): ?>
	<a href="<?= base_url('transfer/verifikasi/'.$v->id_transfer)?>"> Verifikasi </a>
	<?php endif; ?>
	<?php if($v->status_transfer == -1 OR $v->status_transfer == 2 ): ?>
	<a href="<?= base_url('transfer/riwayat/'.$v->id_transfer)?>"> Riwayat </a>
	<?php endif; ?>
</td>
</tr>
<?php endforeach; ?>
</tbody>
</table>

</div>
</div>

 <script type="text/javascript">
      $(function () {

         $('#datatable').dataTable( {
              "order": [[ 6, '<?= $sort ?>' ]]
          } );

      });
    </script>