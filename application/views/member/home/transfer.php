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
              <!--
                <a href='<?= base_url()?>konfirmasi/statusaktif' class='btn btn-danger pull-right'>Lapor <br> Selesai Transfer</a>              
  <div class='clearfix'></div>
 -->            
            </div>
            <div class="box-body" style="display: block;">




<div class='row'>
<?php foreach ($user->getDataAllTransfer() as $key =>$r): ?>

<?php
  $status = "Belum Melakukan Transfer";
  
  if($r->status_transfer == 1){
      $status = "<span class='label label-default'>Menunggu Konfirmasi</span>";
  }elseif($r->status_transfer == 2){
      $status = "<span class='label label-success'>Selesai</span>";
  }elseif($r->status_transfer == -1){
      $status = "<span class='label label-danger'> Pending </span>";
  }

?>


<div class='col-md-6' >
  <div class='col-md-12' style=''>
    <dl class="dl-horizontal" style='margin-left:10px'>
       <dt>Nama Lengkap :</dt><dd><?= $r->nama?></dd>
       <dt>Username :</dt><dd><?= $r->username?></dd>
       <dt>Kontak :</dt><dd><?= $r->no_hp?></dd>
        <dt>Email :</dt><dd><?= $r->email?></dd>
         <dt>Alamat :</dt><dd><?= $r->alamat?>
         ,<b>Kota : </b><?= $r->kota ?> 
         ,<b>Provinsi : </b><?= $r->provinsi ?></dd>

         <dt>Country :</dt><dd><?= $r->country_code?></dd>
          <dt>Nama Bank :</dt><dd><?= $r->nama_bank?></dd>
           <dt>No Rekening :</dt><dd><?= $r->no_rekening?></dd>
            <dt>Atas Nama Rekening :</dt><dd><?= $r->nama_rekening?></dd>
            <dt>Yang harus ditransfer :</dt><dd>
            <?= $user->getCurrency()->currency ?> <?= ($user->attributes("country_code") == "ID")? rupiah($r->amount+$r->unique_transfer) : currConverter($r->amount+$r->unique_transfer)?>
          </dd>
          <dt>Status :</dt><dd><?= $status?></dd>
    <dt>Waktu :</dt><dd class='clock'><?= $r->waktu_transfer?></dd>
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

<script type="text/javascript">
$(document).ready(function(){


    $('.clock').each(function(){
      $(this).countdown($(this).html(), function(event) {
              $(this).html(event.strftime('%D Hari %H:%M:%S'));
            });

    });


});
</script>