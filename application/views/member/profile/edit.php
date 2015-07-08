
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
              <h3 class="box-title">Edit Biodata</h3>
              <div class="box-tools pull-right">
                
              </div>
            </div>
           
            <div class="box-body"  id='main'  >
<form role="form" action="<?= base_url() ?>profile/update" method="post" id='form-registrasi'>
       
<div class="form-group">
    <label for="exampleInputPassword1">Nama Lengkap</label>
    <input type="text" name='profile[nama]' value = "<?= $user->profile('nama') ?>" class="form-control" id="" placeholder=" Nama Lengkap Anda.." required>
    <div style='color:red'><?= form_error('profile[nama]') ?></div>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Alamat</label>
    <input type="text" name='profile[alamat]' value = "<?= $user->profile('alamat')?>" class="form-control" id="" placeholder=" Alamat Tempat Tinggal.." required>
    <div style='color:red'><?= form_error('profile[alamat]') ?></div>
  </div>
<div class='row'>
  <div class="form-group col-sm-6">
    <label for="exampleInputPassword1">Provinsi</label>
    <input type="text" name='profile[provinsi]' value = "<?= $user->profile('provinsi')?>" class="form-control" id="" placeholder=" Provinsi.." required>
    <div style='color:red'><?= form_error('profile[provinsi]') ?></div>
  </div>
  <div class="form-group col-sm-6">
    <label for="exampleInputPassword1">Kota</label>
    <input type="text" name='profile[kota]' value = "<?= $user->profile('kota')?>" class="form-control" id="" placeholder=" Kota.." required>
    <div style='color:red'><?= form_error('profile[kota]') ?></div>
  </div>

</div>

  <div class="form-group">
    <label for="exampleInputPassword1">Kode Pos</label>
    <input type="text" name='profile[kode_pos]' value = "<?= $user->profile('kode_pos')?>" class="form-control" id="" placeholder=" Kode Pos.." required>
    <div style='color:red'><?= form_error('profile[kode_pos]') ?></div>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Nomor Handphone</label>
    <input type="text" name='profile[no_hp]' value = "<?=$user->profile('no_hp')?>" class="form-control" id="" placeholder=" Nomor Yang Bisa Dihubungi.." required>
    <div style='color:red'><?= form_error('profile[no_hp]') ?></div>
  </div>
   <div class="form-group">
  <button type="submit" class="btn btn-primary pull-right">Ubah </button>

  </div>
</form>
            </div><!-- /.box-body -->
            
    </div>


        <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Account</h3>
              <div class="box-tools pull-right">          </div>
            </div>
           
            <div class="box-body"  id='main'  >
      <table class='table table-striped'>
        <tr>
          <td>Username</td><td>:</td><td><?= $user->attributes('username') ?></td><td><a href='#' data-toggle="modal" data-target="#username"><i class='fa fa-edit'></i></a></td>
        </tr>
        <tr>
          <td>Email</td><td>:</td><td><?= $user->attributes('email') ?></td><td><a href='#' data-toggle="modal" data-target="#email"><i class='fa fa-edit'></i></a></td>
        </tr>
        <tr>
          <td>Password</td><td>:</td><td> *********** </td><td><a href='#' data-toggle="modal" data-target="#password"><i class='fa fa-edit'></i></a></td>
        </tr>
      </table>

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

    <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Data Bank</h3>
              <div class="box-tools pull-right"></div>
            </div>
           
            <div class="box-body"  id='main'  >
             
<form role="form" action="<?= base_url() ?>profile/update" method="post" id='form-registrasi'>
       
<div class="form-group">
    <label for="exampleInputPassword1">Nama Bank</label>
    <?php echo form_dropdown('profile[nama_bank]',$bank,$user->profile('nama_bank'),'class=form-control') ?>
    <div style='color:red'><?= form_error('profile[nama_bank]') ?></div>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Nomor Rekening</label>
    <input type="text" name='profile[no_rekening]' value = "<?=$user->profile('no_rekening')?>" class="form-control" id="" placeholder=" Nomor Rekening.." required>
    <div style='color:red'><?= form_error('profile[no_rekening]') ?></div>
  </div>
      <div class="form-group">
    <label for="exampleInputPassword1">Nama Rekening</label>
    <input type="text" name='profile[nama_rekening]' value = "<?=$user->profile('nama_rekening')?>" class="form-control" id="" placeholder=" a.n Rekening Anda" required>
    <div style='color:red'><?= form_error('profile[nama_rekening]') ?></div>
  </div>
   <div class="form-group">
  <button type="submit" class="btn btn-primary pull-right">Ubah </button>

  </div>
</form>
            </div><!-- /.box-body -->
            
    </div>
  </div> <!-- /.col 6 -->


</div>




<!-- /*  modal */ -->

<div class="modal fade" id="password" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">

   <form id='form-password' action="<?= base_url() ?>profile/update_password" method='post'>                
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">Ganti Password</h4>
                  </div>
                  <div class="modal-body">
                   
    <div class="form-group ">
    <label for="exampleInputPassword1">Password Baru</label>
    <input type="password" name='password_baru' class="form-control" id="" placeholder="Password Baru Anda.." required>
    <div style='color:red'><?= form_error('password_baru') ?></div>
  </div>
  <div class="form-group ">
    <label for="exampleInputPassword1">Konfirmasi Password Baru</label>
    <input type="password" name='repassword_baru' class="form-control" id="" placeholder=" Retype Password Baru Anda.." required>
    <div style='color:red'><?= form_error('repassword_baru') ?></div>
  </div>
  <div class="form-group ">
    <label for="exampleInputPassword1">Password Lama</label>
    <input type="password" name='password_lama' class="form-control" id="" placeholder="Password Lama.." required>
    <div style='color:red'><?= form_error('password_lama') ?></div>
  </div>
  

    
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Ubah</button>
                  </div>
                </div><!-- /.modal-content -->
                  </form>
              </div><!-- /.modal-dialog -->
            </div>




<div class="modal fade" id="username" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">

   <form id='form-password' action="<?= base_url() ?>profile/update_akun/username" method='post'>                
                  <div class="modal-header">
                   
                  </div>
                  <div class="modal-body">
                   
     <div class="form-group">
    <label for="exampleInputPassword1">Username Baru</label>
    <input type="text" name='username' class="form-control" id="" placeholder="Username Baru Anda" required>
    <div style='color:red'><?= form_error('username') ?></div>
  </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Ubah</button>
                  </div>
                </div><!-- /.modal-content -->
                  </form>
              </div><!-- /.modal-dialog -->
            </div>




<div class="modal fade" id="email" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">

   <form id='form-password' action="<?= base_url() ?>profile/update_akun/email" method='post'>                
                  <div class="modal-header">
                   
                  </div>
                  <div class="modal-body">
                   
     <div class="form-group">
    <label for="exampleInputPassword1">Email Baru</label>
    <input type="text" name='email' class="form-control" id="" placeholder="Email Baru Anda" required>
    <div style='color:red'><?= form_error('email') ?></div>
  </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Ubah</button>
                  </div>
                </div><!-- /.modal-content -->
                  </form>
              </div><!-- /.modal-dialog -->
            </div>










