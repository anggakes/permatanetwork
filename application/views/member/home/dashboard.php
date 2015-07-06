<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>

<div class='row'>
<div class="col-md-4">
              <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-money"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Total Pendapatan</span>
                  <span class="info-box-number">Rp. <?= rupiah($user->getBalance())?></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div>

<div class="col-md-4">
              <div class="info-box">
                <span class="info-box-icon bg-red"><i class="fa fa-exclamation"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Maximum Pendapatan</span>
                  <span class="info-box-number"><?= ($user->getMaxIncome() == -1) ? "Maximal Income" : "Rp. ".rupiah($user->getMaxIncome()) ?></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div>
<div class="col-md-4">
              <a href ="<?= base_url("profile/downline/".$user->attributes('username'))?>" data-toggle="modal" data-target="#myModal">
              <div class="info-box">
                <span class="info-box-icon bg-green"><i class="fa fa-sitemap"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Total Downline</span>
                  <span class="info-box-number"><?= $user->countDownline() ?> Orang</span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
              </a>
            </div>
</div> <!-- END ROW -->

<?php /*
<div class='row'>
  <div class='col-md-6'>

<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Menunggu Konfirmasi Transfer</h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body" style="display: block;">
              <ul>
            <?php foreach($verifikasi as $v) :?>
              <li>
                <a href='<?= base_url("transfer/verifikasi/".$v->id_transfer)?>'><?= $v->nama ?></a><br>
              </li>
            <?php endforeach; ?>
          </ul>
            </div><!-- /.box-body -->
          
</div>

</div> <!-- End col-md-6 -->
</div> <!-- End ROW-->
*/ ?>


<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Member Yang Harus Transfer :  </h3>
             
            </div>
            <div class="box-body" style="display: block;">




<div class='row'>
<?php foreach ( $verifikasi as $key =>$r): ?>

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
    <?php if($r->status_transfer == 1){?>
    <span class="label label-warning pull-right" style='font-size: 14pt'>!</span>
    <?php } ?>
    <dl class="dl-horizontal" style='margin-left:10px'>
       <dt>Nama Lengkap :</dt><dd><?= $r->nama?></dd>
       <dt>Username :</dt><dd><?= $r->username?></dd>
       <dt>Kontak :</dt><dd><?= $r->no_hp?></dd>
        <dt>Email :</dt><dd><?= $r->email?></dd>
         <dt>Alamat :</dt><dd><?= $r->alamat?></dd>

          <dt>Nama Bank :</dt><dd><?= $r->nama_bank?></dd>
           <dt>No Rekening :</dt><dd><?= $r->no_rekening?></dd>
            <dt>Atas Nama Rekening :</dt><dd><?= $r->nama_rekening?></dd>
            <dt>Yang harus ditransfer :</dt><dd>Rp. <?= rupiah($r->amount+$r->unique_transfer) ?></dd>
   <dt>Status :</dt><dd><?= $status?></dd>
    <dt>Waktu Transfer :</dt><dd class='clock'><?= date('Y/m/d h:i:s',strtotime($r->limited_transfer_at)) ?></dd>
    </dl>
  </div>
  <?php if($r->status_transfer >0){ ?>
  <a href='<?= base_url("transfer/riwayat/".$r->id_transfer) ?>' class='btn  pull-right'>
    Riwayat Transfer</a>
  <?php } ?>
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