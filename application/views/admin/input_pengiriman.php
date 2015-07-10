<form role="form" action="<?= base_url("admin/pengiriman/input_pengiriman/".$users->attributes('id')) ?>" method="post"  class='row' id='form-pengiriman'>
            
<div class='box'>
  <div class="box-body" style="display: block;">
    <div class='col-md-6'>
      <div class="box box-solid bg-red-gradient">
        <div class="box-header with-border">
          <h3 class="box-title">Informasi Penerima</h3>
        </div>
          <div class="box-body" style="display: block;">

          <div class="form-group">
              <label for="exampleInputEmail1">Nama Penerima</label> 
                <input type="text" name='nama_penerima' class="form-control" id="" placeholder="Nama Penerima" value= "<?= $users->profile('nama'); ?>">
                  <div style='color:red'><?= form_error('nama_penerima') ?>
                  </div>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Username Penerima</label> 
                <input type="text" name='username_penerima' class="form-control" id="" placeholder="Username Penerima" value= "<?= $users->attributes('username'); ?>">
                  <div style='color:red'><?= form_error('username_penerima') ?>
                  </div>
            </div>
            
            <div class="form-group">
              <label for="exampleInputEmail1">Email Penerima</label> 
                <input type="text" name='email_penerima' class="form-control" id="" placeholder="Email Penerima" value= "<?= $users->attributes('email'); ?>">
                  <div style='color:red'><?= form_error('email_penerima') ?>
                  </div>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Alamat Penerima</label>
                <textarea name='alamat' class="form-control" id="" placeholder="Alamat Penerima"><?= $users->profile('alamat'); ?></textarea> 
                <div style='color:red'><?= form_error('alamat') ?>
                  </div>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Nomor Handphone Penerima</label> 
                <input type="text" name='no_hp' class="form-control" id="" placeholder="Nomor Handphone Penerima" value= "<?= $users->profile('no_hp'); ?>">
                  <div style='color:red'><?= form_error('no_hp') ?></div>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Tanggal Pengiriman</label> 
                <input type="date" name="tanggal_pengiriman" class="form-control" id="" required>
              <div style='color:red'><?= form_error('tanggal_pengiriman') ?></div>
            </div>

            <div class="form-group">
              <button type="submit" class="btn btn-danger pull-right">Kirim</button>
            </div>

            <div class='clearfix'></div>
            
          </div>
        </div>
      </div>
    </div>
</div>

</form>