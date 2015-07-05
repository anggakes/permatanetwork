<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>

<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Daftar Member yang wajib Anda Transfer :  </h3>
              
                <a href='<?= base_url()?>konfirmasi/statusaktif' class='btn btn-danger pull-right'>Lapor <br> Selesai Transfer</a>              
  <div class='clearfix'></div>
             
            </div>
            <div class="box-body" style="display: block;">




<div class='row'>
<?php foreach ($user->getDataAllTransfer() as $key =>$r): ?>

<?php
  $status = "belum di transfer";
  
  if($r->status_transfer == 1){
      $status = "menunggu konfirmasi";
  }elseif($r->status_transfer == 2){
      $status = "selesai";
  }elseif($r->status_transfer == -1){
      $status = "Ditolak";
  }

?>


<div class='col-md-6' >
  <div class='col-md-12' style=''>
    <dl class="dl-horizontal" style='margin-left:10px'>
       <dt>Nama Lengkap :</dt><dd><?= $r->nama?></dd>
       <dt>Kontak :</dt><dd><?= $r->no_hp?></dd>
        <dt>Email :</dt><dd><?= $r->email?></dd>
         <dt>Alamat :</dt><dd><?= $r->alamat?></dd>

          <dt>Nama Bank :</dt><dd><?= $r->nama_bank?></dd>
           <dt>No Rekening :</dt><dd><?= $r->no_rekening?></dd>
            <dt>Atas Nama Rekening :</dt><dd><?= $r->nama_rekening?></dd>
            <dt>Yang harus ditransfer :</dt><dd><?= $r->amount+$r->unique_transfer?></dd>
   <dt>Status :</dt><dd><?= $status?></dd>
    </dl>
  </div>
<?php if($r->status_transfer == 0): ?>
   <a href='<?= base_url("transfer/konfirmasi/".$r->id_transfer) ?>' class='btn btn-success pull-right'>
    Konfirmasi Transfer</a>

<?php else: ?>

  <?php if($r->status_transfer == -1): ?>
   <a href='<?= base_url("transfer/konfirmasi/".$r->id_transfer) ?>' class='btn btn-info pull-right'>
    Konfirmasi Ulang <br> Transfer</a>
  <?php endif; ?>
  <a href='<?= base_url("transfer/riwayat/".$r->id_transfer) ?>' class='btn  pull-right'>
    Riwayat Transfer</a>
   
<?php endif; ?>
  
  <div class='clearfix'></div>
             <hr>
</div>
<?= ($key%2!=0) ? "<div class='clearfix'></div>" : ""?>


<?php endforeach; ?>
</div>




                
            </div><!-- /.box-body -->
          
          </div>