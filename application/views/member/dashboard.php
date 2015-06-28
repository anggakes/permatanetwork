<?php  $user = unserialize($_SESSION['login_user']); ?>

<?php if($user->attributes('status') == 0 ): ?>

          <div class='alert alert-warning'>
                <b> Konfirmasi Pembayaran Pendaftaran </b><br>
                Akun anda belum aktif, silahkan melakukan pembayaran.<br>
                Setelah anda melakukan pembayaran silahkan melakukan konfirmasi
          </div>
<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Konfirmasi Pendaftaran</h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body" style="display: block;">
                <?php if(!$user->hasConfirmation()) :?><center>

                   <form role="form" class='col-md-4 col-md-offset-4' action ="<?= base_url('konfirmasi/'.$user->attributes('id')) ?>" method='post'>
                <div class='alert alert-info'>
                    Jika anda telah melakukan pembayaran isi form berikut 
                </div>
                    <!-- textarea -->
                    <div class="form-group">
                      <label>Data Pembayaran</label>
                      <textarea name='pesan'  required class="form-control" rows="3" placeholder="Data Pembayaran, seperti nomor akun. norek:019230192;A.n:antonio;"></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary"><i class='fa fa-send'></i> Kirim</button>
                 
                  </form></center>
                <?php else : ?>
                <center>
                    Anda telah melakukan Konfirmasi Pendaftaran <br>
                    harap tunggu verifikasi dari admin kurang lebih 1x24 jam
                    <br> terima kasih

                  <hr>

                </center>  
                
                <?php endif; ?>
            </div><!-- /.box-body -->
          
          </div>
<?php endif; ?>