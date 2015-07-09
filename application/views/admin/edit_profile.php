
<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>
<div class='col-md-6'>


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


</div>



<!-- /*  modal */ -->

<div class="modal fade" id="password" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">

   <form id='form-password' action="<?= base_url() ?>admin/profileadmin/update_password" method='post'>                
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

   <form id='form-password' action="<?= base_url() ?>admin/profileadmin/update_akun/username" method='post'>                
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

   <form id='form-password' action="<?= base_url() ?>admin/profileadmin/update_akun/email" method='post'>                
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






