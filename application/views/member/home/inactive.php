<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>
<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Aktifasi Akun</h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body" style="display: block;">
               <center>
                   <form role="form" class='col-md-4 col-md-offset-4' action ="<?= base_url('konfirmasi/statustransfer') ?>" method='post'>
                    <!-- textarea -->
                    <div class="form-group">
                      <label>Kode Voucher</label>
                      <input type='text' name='kode_voucher' required class="form-control" rows="3" placeholder="contoh: 312k-sdsj-12kk-3kwi">
                    </div>

                    <button type="submit" class="btn btn-primary"><i class='fa fa-send'></i> Kirim</button>
                 
                  </form></center>
              
            </div><!-- /.box-body -->
          
          </div>