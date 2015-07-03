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
<?php foreach ($user->getDataAllTransfer() as $r): ?>

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
  <div class='com-md-12' style=''>
    <dl class="dl-horizontal" style='margin-left:10px'>
       <dt>Nama Lengkap :</dt><dd><?= $r->nama?></dd>
       <dt>Kontak :</dt><dd><?= $r->no_hp?></dd>
        <dt>Email :</dt><dd><?= $r->email?></dd>
         <dt>Alamat :</dt><dd><?= $r->alamat?></dd>

          <dt>Nama Bank :</dt><dd><?= $r->nama_bank?></dd>
           <dt>No Rekening :</dt><dd><?= $r->no_rekening?></dd>
            <dt>Atas Nama Rekening :</dt><dd><?= $r->nama_rekening?></dd>
            <dt>Yang harus ditransfer :</dt><dd><?= $r->amount?></dd>
   <dt>Status :</dt><dd><?= $status?></dd>
    </dl>
  </div>
  <a href='<?= base_url("transfer/konfirmasi/".$r->id_transfer) ?>' class='btn btn-
     <?= ($r->status_transfer==0) ? "btn-success" : "" ?>
   pull-right'>
    <?= ($r->status_transfer==0) ? "Konfirmasi" : "Riwayat" ?>
   Transfer</a>
  <div class='clearfix'></div>
             <hr>
</div>

<?php endforeach; ?>
</div>




                
            </div><!-- /.box-body -->
          
          </div>