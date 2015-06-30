
<form role="form" action="<?= base_url("transfer/konfirmasi/".$id_transfer) ?>" method="post"  class='row' id='form-registrasi'  enctype="multipart/form-data">
<div class="col-md-12">

<div class='box'>
 <div class="box-body" style="display: block;">
<div class='col-md-6'>
<div class="box box-solid bg-green-gradient">
            <div class="box-header with-border">
              <h3 class="box-title">Informasi Penerima</h3>
            </div>
            <div class="box-body" style="display: block;">


    
    <div class="form-group">
    <label for="exampleInputEmail1">Nama Bank Penerima</label> 
    <input type="text" name='nama_bank_penerima' class="form-control" id="" placeholder="Nama Bank Penerima" value= "<?= $referral->profile('nama_bank'); ?>" >
    <div style='color:red'><?= form_error('nama_bank_penerima') ?></div>
    </div>

        <div class="form-group">
    <label for="exampleInputEmail1">Nama Rekening Penerima</label> 
    <input type="text" name='nama_rekening_penerima' class="form-control" id="" placeholder="Username atau Email.." value= "<?= $referral->profile('nama_rekening'); ?>" >
    <div style='color:red'><?= form_error('nama_rekening_penerima') ?></div>
    </div>
        <div class="form-group">
    <label for="exampleInputEmail1">Nomor Rekening Penerima</label> 
    <input type="text" name='no_rekening_penerima' class="form-control" id="" placeholder="Username atau Email.." value= "<?= $referral->profile('no_rekening'); ?>" >
    <div style='color:red'><?= form_error('no_rekening_penerima') ?></div>
    </div>
  <div class='clearfix'></div>
  <br>
                         
            </div><!-- /.box-body -->
          
          </div>
</div> <!--END COL 6 -->

<div class='col-md-6'>
<div class="box box-solid bg-light-blue-gradient ">
            <div class="box-header with-border">
              <h3 class="box-title">Informasi Pengirim</h3>
              
                
            </div>
            <div class="box-body" style="display: block;">


    
   
        <div class="form-group">
    <label for="exampleInputEmail1">Nama Bank Pengirim</label> 
    <input type="text" name='nama_bank_pengirim' class="form-control" id="" placeholder="Username atau Email.." value= "<?= $user->profile('nama_bank'); ?>">
    <div style='color:red'><?= form_error('nama_bank_pengirim') ?></div>
    </div>
        <div class="form-group">
    <label for="exampleInputEmail1">Nama Rekening Pengirim</label> 
    <input type="text" name='nama_rekening_pengirim' class="form-control" id="" placeholder="Username atau Email.." value= "<?= $user->profile('nama_rekening'); ?>">
    <div style='color:red'><?= form_error('nama_rekening_pengirim') ?></div>
    </div>
        <div class="form-group">
    <label for="exampleInputEmail1">Nomor Rekening Pengirim</label> 
    <input type="text" name='no_rekening_pengirim' class="form-control" id="" placeholder="Username atau Email.." value= "<?= $user->profile('no_rekening'); ?>">
    <div style='color:red'><?= form_error('no_rekening_pengirim') ?></div>
    </div>
  
  <div class='clearfix'></div>
  <br>
                         
            </div><!-- /.box-body -->
          
          </div>

</div><!-- END col 6-->

    <div class="form-group">
    <label for="exampleInputEmail1">Bukti pengiriman</label> 
    <input type="file" name='userfile' class="form-control" id="" placeholder="Bukti transfer bank..">
    <div style='color:red'><?= form_error('usernameOrEmail') ?></div>
    </div>
  
  <div class="form-group">
  <button type="submit" class="btn btn-danger pull-right">Kirim Konfirmasi </button>
  </div>
  <div class='clearfix'></div>

</div></div>
</div> <!-- END col 12-->
</form>