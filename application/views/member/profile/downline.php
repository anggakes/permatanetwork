<?php 

  $user = unserialize($user);

  function drawChartDownline ($listOfItems) {
      echo "<ul>";
      foreach ($listOfItems as $item) {
          $merah = ($item->attributes('status') != 1) ? "style='background:#FF9999'" : '';
          echo "<li $merah> ".$item->profile('nama')." (".$item->attributes('username').")";

          if ($item->hasDownline()) {
              drawChartDownline($item->getDownline(false)); // here is the recursion
          }
          echo "</li>";
      }
      echo "</ul>";
  }

?>

<!-- orgchart -->
 <ul id="chart" style='display:none'>
      <li>
        <!-- Referral -->
       

        <em>Anda</em> 
        <!-- Downline -->
           <?php 
              if($user->hasDownline()){
                drawChartDownline($user->getDownline(false));
              } 
           ?>
      
      </li>
</ul>
<!-- end orgchart -->
<style type="text/css">
            .orgChart{
              overflow: scroll;
              height: 400px;
            }
</style>

<div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">Data Downline</h4>
      </div>
            <div class="modal-body" id='downline'>
              
            </div>
            <div class='modal-footer'></div>
        </div> <!-- /.modal-content -->
    </div> <!-- /.modal-dialog -->

<link rel="stylesheet" href="<?= base_url() ?>theme/plugins/jquery-orgchart/jquery.orgchart.css"/>
<script src="<?= base_url() ?>theme/plugins/jquery-orgchart/jquery.orgchart.js"></script>


<script type="text/javascript">
$(document).ready(function(){

  var org =  $("#chart").orgChart({container: $("#downline")});


    
});

</script>