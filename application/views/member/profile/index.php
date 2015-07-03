<?php 

  $user = unserialize($user);

  function drawChartDownline ($listOfItems) {
      echo "<ul>";
      foreach ($listOfItems as $item) {
          echo "<li> 
          <a href='".base_url()."profile/".$item->attributes('username')."'>".$item->profile('nama')."</a>";

          if ($item->hasDownline()) {
              drawChartDownline($item->getDownline()); // here is the recursion
          }
          echo "</li>";
      }
      echo "</ul>";
  }

?>


<div class='row'>
<!-- Profile -->
<div class='col-md-8'>
<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Profile</h3>
              <div class="box-tools pull-right">
                <a class="btn aksi"><i class="fa fa-ban"> Block Member</i></a>

              </div>
            </div>
           
            <div class="box-body"  id='main'  >
 <!-- Sidebar user panel -->
        
            <div class='row'>  
              <img src="<?= base_url() ?>theme/dist/img/default.png" class="col-md-2 img-circle" alt="User Image" />
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
       <a href="<?= base_url("profile/upline/".$user->attributes('username'))?>" class='btn btn-default' data-toggle="modal" data-target="#myModal">Upline</a>
     
    </div>
    </div>             
         

            </div><!-- /.box-body -->
            
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
            <h3 style='text-align:center;'><div class='label label-success'><i class='fa fa-check'></i> Aktif</div></h3>
          </div>
            </div><!-- /.box-body -->   

          </div>
</div>
</div>







<link rel="stylesheet" href="<?= base_url() ?>theme/plugins/jquery-orgchart/jquery.orgchart.css"/>
<script src="<?= base_url() ?>theme/plugins/jquery-orgchart/jquery.orgchart.js"></script>
<script type="text/javascript">
$(document).ready(function(){

  var org =  $("#chart").orgChart({container: $("#downline")});


    
});

</script>