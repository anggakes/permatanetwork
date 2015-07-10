
<?php 
if($status != ''):
  $link_status = "status=".$status;
else:
  $link_status = "";
endif;
?>


<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>


<div class="box ">
            
          <div class='box-header'>
          <div class="box-tools pull-right">
               <a href='<?= base_url() ?>admin/manajemenmember' class='btn btn-default'> Semua</a> 
               <a href='<?= base_url() ?>admin/manajemenmember?status=1' class='btn btn-default'> Aktif</a> 
               <a href='<?= base_url() ?>admin/manajemenmember?status=2' class='btn btn-default'> Transfer</a> 
               <a href='<?= base_url() ?>admin/manajemenmember?status=0' class='btn btn-default'> Tidak Aktif</a> 
               <a href='<?= base_url() ?>admin/manajemenmember?status=-1' class='btn btn-default'> Banned</a>
            </div>
          </div>
<br><hr>
          <div class="box-body" style="display: block;">
               <table id="datatable" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Aksi</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Nama</th>
                        <th>Tanggal Daftar</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    </tbody>
                   
                  </table>
        <br>
            </div><!-- /.box-body -->
            
          </div>

    <script type="text/javascript">
      $(function () {

         $("#datatable").dataTable({ 
          "order": [[ 4, "desc" ]],
          "ajax": "<?= base_url()?>admin/manajemenmember/datatable?<?= $link_status?>",
          "scrollX": true 
        }); 
      });
    </script>
