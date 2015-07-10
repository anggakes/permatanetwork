            <?php 
            $user=unserialize($_SESSION["login_user"]);

            foreach($css_files as $file): ?>
                <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
             
            <?php endforeach; ?>
            <?php foreach($js_files as $file): ?>
             
                <script src="<?php echo $file; ?>"></script>
            <?php endforeach; ?>

            <?php 
              if(isset($_SESSION['message'])):
              ?>
              <div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
              <?= $_SESSION['message']?>
              </div>
            <?php endif; ?>




        <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Voucher Belum Digunakan</h3>
              <div class="box-tools pull-right">   
                  <a href="<?= base_url(); ?>admin/voucher" class='btn btn-default'><i class='fa fa-list'></i> Belum digunakan</a> 
                  <a href="<?= base_url(); ?>admin/voucher/histori" class='btn btn-default'> <i class='fa fa-history'></i> Histori</a>
              </div>
            </div>
          <div class="box-body" style="display: block;">
                           <?php echo $output; ?>
        <br>
        
                    <a href="#" class='btn btn-danger pull-right' data-toggle="modal" data-target="#voucher">Generate Voucher</a>
         

            </div><!-- /.box-body -->
         
          </div>

<!-- /*  modal */ -->

<div class="modal fade" id="voucher" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">

   <form id='form-password' action="<?= base_url(); ?>admin/voucher/generatevoucher" method='post'>                
                 <div class="modal-header">
                 
                  </div>
                  <div class="modal-body">
                   
    <div class="form-group ">
    <label for="exampleInputPassword1">Banyak Voucher</label>
    <input type="number" name='banyak' class="form-control" id="" placeholder="Jumlah voucher di generate" required>
    <div style='color:red'><?= form_error('banyak') ?></div>
  </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">generate</button>
                  </div>
                </div><!-- /.modal-content -->
                  </form>
              </div><!-- /.modal-dialog -->
            </div>


