<div class='row'>
<div class='col-md-6'>
<h3 class='col-sm-8'><strong>Member</strong> <small>Registration Form</small></h3>
    
    <a href="<?= base_url() ?>auth/login" class='btn btn-link pull-right'> Sudah Punya Akun ?</a>

    <form role="form" action="<?= base_url() ?>auth/daftar" method="post" class="col-sm-11" id='form-registrasi'>
    <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input type="text" name='member[username]' value = "<?= set_value('member[username]')?>" class="form-control" id="" placeholder="Username..">
    <div style='color:red'><?= form_error('member[username]') ?></div>
    </div>
    <div class="form-group">
    <label for="exampleInputEmail1">Alamat Email</label>
    <input type="email" name='member[email]' value = "<?= set_value('member[email]')?>" class="form-control" id="" placeholder="Email..">
    <div style='color:red'><?= form_error('member[email]') ?></div>
    </div>
  <div class='row'>
  <div class="form-group col-sm-6">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name='member[password]' class="form-control" id="" placeholder="Password..">
    <div style='color:red'><?= form_error('member[password]') ?></div>
  </div>
  <div class="form-group col-sm-6">
    <label for="exampleInputPassword1">Konfirmasi Password</label>
    <input type="password" name='member[repassword]' class="form-control" id="" placeholder=" Retype Password..">
    <div style='color:red'><?= form_error('member[repassword]') ?></div>
  </div>
</div>
  <div class="form-group">
    <label for="exampleInputPassword1">Kode Referal</label>
    <input type="text" name='member[referral_code]' value = "<?= set_value('member[referral_code]')?>" class="form-control" id="" placeholder=" Kode Referal..">
    <div style='color:red'><?= form_error('member[referral_code]') ?></div>
  </div>
 <hr>
<div class="form-group">
    <label for="exampleInputPassword1">Nama Lengkap</label>
    <input type="text" name='profile[nama]' value = "<?= set_value('profile[nama]')?>" class="form-control" id="" placeholder=" Nama Lengkap Anda..">
    <div style='color:red'><?= form_error('profile[nama]') ?></div>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Tanggal Lahir</label>
    <input type="date" name='profile[tanggal_lahir]' value = "<?= set_value('profile[tanggal_lahir]')?>" class="form-control" id="" placeholder=" Tanggal Lahir">
    <div style='color:red'><?= form_error('profile[tanggal_lahir]') ?></div>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Alamat</label>
    <input type="text" name='profile[alamat]' value = "<?= set_value('profile[alamat]')?>" class="form-control" id="" placeholder=" Alamat Tempat Tinggal..">
    <div style='color:red'><?= form_error('profile[alamat]') ?></div>
  </div>
<div class='row'>
  <div class="form-group col-sm-6">
    <label for="exampleInputPassword1">Provinsi</label>
    <input type="text" name='profile[provinsi]' value = "<?= set_value('profile[provinsi]')?>" class="form-control" id="" placeholder=" Provinsi..">
    <div style='color:red'><?= form_error('profile[provinsi]') ?></div>
  </div>
  <div class="form-group col-sm-6">
    <label for="exampleInputPassword1">Kota</label>
    <input type="text" name='profile[kota]' value = "<?= set_value('profile[kota]')?>" class="form-control" id="" placeholder=" Kota..">
    <div style='color:red'><?= form_error('profile[kota]') ?></div>
  </div>

</div>

  <div class="form-group">
    <label for="exampleInputPassword1">Kode Pos</label>
    <input type="text" name='profile[kode_pos]' value = "<?= set_value('profile[kode_pos]')?>" class="form-control" id="" placeholder=" Kode Pos..">
    <div style='color:red'><?= form_error('profile[kode_pos]') ?></div>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Nomor Handphone</label>
    <input type="text" name='profile[no_hp]' value = "<?= set_value('profile[no_hp]')?>" class="form-control" id="" placeholder=" Nomor Yang Bisa Dihubungi..">
    <div style='color:red'><?= form_error('profile[no_hp]') ?></div>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Nomor Rekening</label>
    <input type="text" name='profile[no_rekening]' value = "<?= set_value('profile[no_rekening]')?>" class="form-control" id="" placeholder=" Nomor Rekening..">
    <div style='color:red'><?= form_error('profile[no_rekening]') ?></div>
  </div>
  <?php echo $cap_img; ?>
  <input type="text" name="captcha" placeholder='captcha..'/>
  <div style='color:red'><?= form_error('captcha') ?></div>
   <div class="checkbox">
    <label>
      <input class='setuju' type="checkbox" name='accept_terms_checkbox'> Setuju dengan ketentuan dan syarat 
    </label>
      <div style='color:red'><?= form_error('accept_terms_checkbox') ?></div>
  </div>
  <hr>
    <div class="form-group">
  <button type="submit" class="btn btn-danger pull-right">Daftar <br> Menjadi Member </button>

  </div>
  <div class='clearfix'></div>
  <br>
                          </form>

</div>
</div>