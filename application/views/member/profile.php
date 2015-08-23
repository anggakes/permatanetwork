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
                    <dt>Tanggal Lahir</dt>
                    <dd><?= $user->profile('tanggal_lahir') ?></dd>
                    <dt>Alamat Lengkap</dt>
                    <dd><?= $user->profile('alamat'). 
                            " <br>Kota : ".  $user->profile('kota').
                            " <br>Provinsi : ". $user->profile('provinsi').
                            " <br>Negara : ". $user->profile('negara').
                            " <br>Kode Pos :". $user->profile('kode_pos') 
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


    </div>             
         

            </div><!-- /.box-body -->
            
          </div>
</div>

<!-- Stat -->
<div class='col-md-4'>
<div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Stat</h3>
              <div class="box-tools pull-right">
              <span class='label label-success'>Status : Aktif</span>  
              </div>
            </div>
           
            <div class="box-body"  id='main' >
          
          <div class="user-panel" style='background:#000'>
            <h5 style='color:#c0c0c0'>Kode Member :</h5>
            <h3 style='text-align:center;color:#c0c0c0'><?= $user->attributes('code') ?></h3>
          </div>

            </div><!-- /.box-body -->   

          </div>
</div>
</div>




<!-- orgchart -->
 <ul id="chart" style='display:none'>
      <li>
        <!-- Referral -->
        <?php if($user->hasReferral()) : ?>
            <adjunct>
              <a href='<?= base_url() ?>profile/<?= $user->getReferral()->attributes('username') ?>'><?= $user->getReferral()->profile('nama') ?></a>
            </adjunct> 
        <?php endif;?>

        <em><a href='<?= base_url() ?>profile/<?= $user->attributes('username') ?>'><?= $user->profile('nama') ?></a></em> 
        <!-- Downline -->
           <?php 
              if($user->hasDownline()){
                drawChartDownline($user->getDownline());
              } 
           ?>
      
      </li>
</ul>
<!-- end orgchart -->
<style type="text/css">
            .orgChart{
              overflow: scroll;
              height: 400px;
            }
</style>

<div class="box ">
            <div class="box-header with-border">
              <h3 class="box-title">Downline</h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
           
            <div class="box-body"  id='downline'  >


            </div><!-- /.box-body -->
            
          </div>


<link rel="stylesheet" href="<?= base_url() ?>theme/plugins/jquery-orgchart/jquery.orgchart.css"/>
<script src="<?= base_url() ?>theme/plugins/jquery-orgchart/jquery.orgchart.js"></script>
<script type="text/javascript">
$(document).ready(function(){

  var org =  $("#chart").orgChart({container: $("#downline")});


    
});

</script>