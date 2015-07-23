<div class='row'>
<div class='col-md-6'>           
<div class='box'>
  <div class="box-header with-border">
          <h3 class="box-title">Penerima</h3>
        </div>
  <div class="box-body" style="display: block;">
  

          <table class='table table-bordered'>

            <tr><td><b>Nama Penerima</b></td><td><?= $users->profile('nama'); ?></td></tr>
            <tr><td><b>Email</b></td><td><?= $users->attributes('email'); ?></td></tr>
            <tr><td><b>Username</b></td><td><?= $users->attributes('username'); ?></td></tr>
          
          </table>
          <br>
          <a href="<?= base_url('profile/'.$users->attributes('username'))?>" class='btn'><i class='fa fa-eye'></i> Lihat profile</a>
    </div>
</div>
</div>


    <div class='col-md-6'>
     
      <div class="box ">
        <div class="box-header with-border">
          <h3 class="box-title"><i class='fa fa-truck'></i> Informasi Pengiriman</h3>
        </div>
          <div class="box-body" style="display: block;">

<form role="form" action="<?= base_url("admin/pengiriman/input_pengiriman/".$users->attributes('id')) ?>" method="post"  id='form-pengiriman'>
          
            <div class="form-group">
              <label for="exampleInputEmail1">Alamat Penerima</label>
                <textarea name='alamat' readonly class="form-control" id="" placeholder="Alamat Penerima"><?= $users->profile('alamat') ?>, Provinsi : <?= $users->profile('provinsi') ?>, Kota : <?= $users->profile('kota') ?></textarea> 
                <div style='color:red'><?= form_error('alamat') ?>
                  </div>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Nomor Handphone Penerima</label> 
                <input type="text" readonly name='no_hp' class="form-control" id="" placeholder="Nomor Handphone Penerima" value= "<?= $users->profile('no_hp'); ?>">
                  <div style='color:red'><?= form_error('no_hp') ?></div>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Tanggal Pengiriman</label> 
                <input type="date"  name="tanggal_pengiriman" class="form-control" value = "<?= date('Y-m-d') ?>" id="" required>
              <div style='color:red'><?= form_error('tanggal_pengiriman') ?></div>
            </div>

            <div class="form-group">
              <button type="submit" class="btn btn-danger pull-right">Kirim</button>
            </div>

            <div class='clearfix'></div>
</form>            
          </div>
        </div>
      </div>
</div>
