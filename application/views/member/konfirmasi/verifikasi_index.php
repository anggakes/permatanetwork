<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>

<style type="text/css">
th, td { white-space: nowrap; }
    div.dataTables_wrapper {
        width: 950px;
        margin: 0 auto;
    }
</style>


<div class='box'>
<div class='box-header'><h4>Daftar Transfer untuk diverifikasi </h4>
<div class="box-tools pull-right">
<a class='btn btn-default' href='verifikasi'><i class='fa fa-paper-plane'></i>List Menunggu</a>
<a class='btn btn-default' href='verifikasi?history'><i class='fa fa-history'></i>History</a>
</div>
</div>
<div class='box-body'>
<table class='table table-bordered table-striped' id='datatable' style='overflow:scroll'>
<thead style='background:#EEFFBA;text-align: center;font-weight: bold'>
<tr>
  <td>Aksi</td>
<td>Tanggal Dibuat</td>
<td>Tanggal Diproses</td>
<td>Username</td>
<td>Nama</td>
<td>Nomor HP</td>
<td>Email</td>
<td>Alamat</td>
<td>Jumlah Transfer</td>
<td>Status</td>

</tr>
</thead>
<tbody style='text-align:center;'>
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
  <td>
  <?php if($v->status_transfer == 1 ): ?>
  <a href="<?= base_url('transfer/verifikasi/'.$v->id_transfer)?>"> Verifikasi </a>
  <?php endif; ?>
  <?php if($v->status_transfer == -1 OR $v->status_transfer == 2 ): ?>
  <a href="<?= base_url('transfer/riwayat/'.$v->id_transfer)?>"> Riwayat </a>
  <?php endif; ?>
</td>
<td><?= $v->created_at ?></td>
<td><?= $v->updated_at ?></td>
<td><?= $v->username ?></td>
<td><?= $v->nama ?></td>
<td><?= $v->no_hp ?></td>
<td><?= $v->email ?></td>
<td><?= $v->alamat ?>, Provinsi : <?= $v->provinsi ?>, Kota : <?= $v->kota ?></td>
<td>Rp. <?= rupiah($v->amount+$v->unique_transfer) ?></td>
<td><?= $status ?></td>

</tr>
<?php endforeach; ?>
</tbody>
</table>

</div>
</div>

 <script type="text/javascript">
      $(function () {

         $('#datatable').dataTable( {
              "order": [[ 1, '<?= $sort ?>' ]],
              "scrollX": true 
          } );

      });
    </script>