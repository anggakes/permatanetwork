<?php 

  $user = unserialize($user);

?>


<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>

<div class='row'>
<!-- Profile -->
<div class='col-md-8'>
<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Profile</h3>
              <div class="box-tools pull-right">
                
              </div>
            </div>
           
            <div class="box-body"  id='main'  >
 <!-- Sidebar user panel -->
        
            <div class='row'>  
              <img src="<?= base_url() ?>foto_profil/<?= ($user->profile('foto') != '')? $user->profile('foto')  :"default.png"?>" class="col-md-2 img-circle" alt="User Image" />
              <div class='col-md-10'>
<dl class="dl-horizontal">
                    <dt>Nama Lengkap</dt>
                    <dd><?= $user->profile('nama') ?></dd>
                   
                    <dt>Alamat Lengkap</dt>
                    <dd><?= $user->profile('alamat'). 
                            " <br><b>Kota</b> : ".  $user->profile('kota').
                            " <br><b>Provinsi</b> : ". $user->profile('provinsi').
                            " <br><b>Kode Pos</b> :". $user->profile('kode_pos') 
                    ?></dd>
                    <dt>Nomor Handphone</dt>
                    <dd><?= $user->profile('no_hp') ?></dd>
                    <dt>Email</dt>
                    <dd><?= $user->attributes('email') ?></dd>
                    <dt>Username</dt>
                    <dd><?= $user->attributes('username') ?></dd>
                     <dt>Bergabung Sejak</dt>
                    <dd><?= $user->attributes('created_at') ?></dd>
                     <dt>Aktif Sejak</dt>
                    <dd><?= $user->attributes('activation_at') ?></dd>
                  </dl>

              </div>
            </div>
    <div class='box-footer'>
      <div class='pull-right'>
      <a href="<?= base_url("profile/downline/".$user->attributes('username'))?>" class='btn btn-default' data-toggle="modal" data-target="#myModal">Downline</a>
       
    </div>
    </div>             

            </div><!-- /.box-body -->

            
          </div>
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Link Registrasi Untuk Member Baru :</h3> <br>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body" style="display: block;">
              <a href='<?= base_url("?ref=".$user->attributes('code'))?>'><?= "permatanetwork.com/?ref=".$user->attributes('username')?></a>
            </div>
</div>

<?php if($_SESSION['login_role']=="admin" AND unserialize($_SESSION['login_user'])->attributes('role') != 2) {?>

<div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Riwayat yang harus di Transfer</h3>
              
            </div>
           
            <div class="box-body"  id='main' >

<table class='table table-bordered'>
<thead style='color:white;background:blue'>
<tr>
<td>Nama</td>
<td>Status</td>
<td>#</td>
</tr>
</thead>

<?php foreach ($user->getDataAllTransfer() as $key =>$r): ?>

<?php
  $status = "Belum Melakukan Transfer";
  
  if($r->status_transfer == 1){
      $status = "Menunggu Konfirmasi";
  }elseif($r->status_transfer == 2){
      $status = "Selesai";
  }elseif($r->status_transfer == -1){
      $status = "Pending";
  }

?>
<tr>
<td><?= $r->username." (".$r->nama.") " ?></td>
<td><?= $status ?></td>
<td> <a href="<?= base_url('admin/manajemenmember/riwayat_transfer/'.$r->id_transfer."?u=".$user->attributes('username')) ?>">Lihat</a></td>
</tr>

<?php endforeach; ?>
</table>

            </div><!-- /.box-body -->   

          </div>
<?php } ?>

</div>

<!-- Stat -->
<div class='col-md-4'>
<div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Stat</h3>
              
            </div>
           
            <div class="box-body"  id='main' >
          
          <div class="user-panel" style='background:#000'>
            <h5 style='color:#c0c0c0'>Kode Member :</h5>
            <h3 style='text-align:center;color:#c0c0c0'><?= $user->attributes('code') ?></h3>
          </div>

          <div class="user-panel" style=''>
            <h5 style=''>Status Member :</h5>
            <?php if($user->attributes('status') == 1){?>
              <h3 style='text-align:center;'><div class='label label-success'><i class='fa fa-check'></i> Aktif</div></h3>
            <?php }elseif($user->attributes('status') == 0) {?>
              <h3 style='text-align:center;'><div class='label label-default'> Tidak Aktif</div></h3>
            <?php }elseif($user->attributes('status') == 2) {?>
              <h3 style='text-align:center;'><div class='label label-info'><i class='fa fa-clock-o'></i> Melakukan Transfer</div></h3>
            <?php }elseif($user->attributes('status') == -1) {?>
            <h3 style='text-align:center;'><div class='label label-danger'><i class='fa fa-ban'></i> Banned</div></h3>
            
            <?php } ?>
          </div>
          <?php if($user->attributes("status")==2){ ?>
          <center>
            Waktu Transfer : <div class='clock'><?= $user->attributes("limited_transfer_at")?></div>

          </center>
          <script type="text/javascript">
            $(document).ready(function(){
            $(".clock").countdown($(".clock").html(), function(event) {
                          $(".clock").html(event.strftime('%D Hari %H:%M:%S'));
                        });
            });
            </script>
            <?php } ?>
            </div><!-- /.box-body -->   

          </div>

<?php if($_SESSION['login_role']=="admin" AND unserialize($_SESSION['login_user'])->attributes('role') != 2) {?>

<div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Admin Tool</h3>
              
            </div>
           
            <div class="box-body"  id='main' >
          
              <center>
<?php if($user->attributes('status') == -1){?>
<a href="<?= base_url('admin/manajemenmember/toogle/'.$user->attributes('username')) ?>" class='btn btn-success'><i class='fa fa-check'></i> Aktifkan</a>
<?php }elseif($user->attributes('status') == 1){ ?> 
<a href="<?= base_url('admin/manajemenmember/toogle/'.$user->attributes('username')) ?>" class='btn btn-danger'><i class='fa fa-ban'></i> Banned</a>
<?php } ?>

              </center>
            </div><!-- /.box-body -->   

          </div>
<?php } ?>

</div>
</div>








