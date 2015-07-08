<?php 

  $user = unserialize($user);

?>


<div class='row'>
<!-- Profile -->
<div class='col-md-8'>
<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Profile</h3>
              <div class="box-tools pull-right">
                <?php if ($_SESSION['login_role'] == "admin") : ?> 
                <a class="btn aksi"><i class="fa fa-ban"> Block Member</i></a>
                <?php endif; ?>
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
              <h3 class="box-title">Link Registrasi Untuk Member Baru Anda :</h3> <br>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body" style="display: block;">
              <a href='<?= base_url("?ref=".$user->attributes('code'))?>'><?= "permatanetwork.com/?ref=".$user->attributes('username')?></a>
            </div>
</div>
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
              <h3 style='text-align:center;'><div class='label label-default'><i class='fa fa-check'></i>Belum Aktif</div></h3>
            <?php }elseif($user->attributes('status') == 2) {?>
              <h3 style='text-align:center;'><div class='label label-info'><i class='fa fa-check'></i>Melakukan Transfer</div></h3>
            <?php }elseif($user->attributes('status') == -1) {?>
            <h3 style='text-align:center;'><div class='label label-danger'><i class='fa fa-check'></i> Banned</div></h3>
            
            <?php } ?>
          </div>
            </div><!-- /.box-body -->   

          </div>

</div>
</div>







