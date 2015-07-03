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



<div class="box">
          <div class="box-body" style="display: block;">
                           <?php echo $output; ?>
        <br>
            </div><!-- /.box-body -->
          <?php if($user->attributes('super_admin')): ?>
                    <a href="<?= base_url(); ?>admin/voucher/generatevoucher" class='btn btn-danger pull-right'>Generate Voucher</a>
          <?php endif; ?>
          </div>


