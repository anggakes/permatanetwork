
<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>

<div class='row'>
  <div class='col-md-6'>
    <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Profile</h3>
              <div class="box-tools pull-right">

              </div>
            </div>
           
            <div class="box-body"  id='main'  >
      
            </div><!-- /.box-body -->
            
    </div>


        <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Account</h3>
              <div class="box-tools pull-right">

              </div>
            </div>
           
            <div class="box-body"  id='main'  >
      
            </div><!-- /.box-body -->
            
    </div>
  </div><!-- /.col 6 -->


  <div class='col-md-6'>
    <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Upload Foto</h3>
              <div class="box-tools pull-right">

              </div>
            </div>
           
            <div class="box-body"  id='main'  >
              <center>
                  <img src="<?= base_url() ?>foto_profil/<?= ($user->profile('foto') != '')? $user->profile('foto')  :"default.png"?>" style='width:80px' class=" img-circle" alt="User Image" />
             </center><br>
             <form role="form" action="<?= base_url("profile/upload_foto") ?>" method="post"   id='form-registrasi'  enctype="multipart/form-data">
              <div class="form-group">
              <label for="exampleInputEmail1">Foto Anda</label> 
              <input type="file" name='userfile' class="form-control" id="" placeholder="Bukti transfer bank..">
              <div style='color:red'><?= form_error('usernameOrEmail') ?></div>
              </div>
                <div class="form-group">
                <button type="submit" class="btn btn-primary pull-right">Upload </button>
                </div>
             </form>
            </div><!-- /.box-body -->
            
    </div>
  </div> <!-- /.col 6 -->


</div>










