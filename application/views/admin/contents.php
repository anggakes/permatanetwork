            <?php 
            foreach($css_files as $file): ?>
                <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
             
            <?php endforeach; ?>
            <?php foreach($js_files as $file): ?>
             
                <script src="<?php echo $file; ?>"></script>
            <?php endforeach; ?>



<div class="box">
  <div class="box-header with-border">
              <h3 class="box-title">Title</h3>
            </div>

          <div class="box-body" style="display: block;">
<br>
<!-- 
<a href="#" class='btn btn-danger pull-right'>Bersihkan <br>yang lebih dari 3 bulan</a>
<div class='clearfix'></div>
-->
<br>

                           <?php echo $output; ?>
        <br>
            </div><!-- /.box-body -->
            
          </div>