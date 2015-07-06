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
                  <span class="info-box-number"><?= ($user->getMaxIncome() == '' OR $user->getMaxIncome() == 0 or $user->getMaxIncome() == 1) ? "belum ada" : "Rp. ".rupiah($user->getMaxIncome()) ?></span>
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