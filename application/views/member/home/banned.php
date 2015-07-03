<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>
<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Akun anda sudah di banned</h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body" style="display: block;">
               
               <br><center>
               <img width='300px' src="<?= base_url()?>theme/img/banned.jpg"/><br>
               <div style='color:red; margin-top:20px'>

               Maaf anda tidak dapat mengakses akun anda karena akun anda sudah dibanned.<br> harap menghubungi admin untuk informasi lebih lanjut.
              </div>
              </center>
            </div><!-- /.box-body -->
          
          </div>