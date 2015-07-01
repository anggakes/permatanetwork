
<?php 
if($status != ''):
  $link_status = "status=".$status;
else:
  $link_status = "";
endif;
?>

<div class="box">
  <div class="box-header with-border">
              <h3 class="box-title">Title</h3>
              <div class="box-tools pull-right">
               <a href='<?= base_url() ?>admin/manajemenmember'> Semua</a> |
               <a href='<?= base_url() ?>admin/manajemenmember?status=1'> Aktif</a> | 
               <a href='<?= base_url() ?>admin/manajemenmember?status=2'> Transfer</a> | 
               <a href='<?= base_url() ?>admin/manajemenmember?status=0'> Tidak Aktif</a> | 
               <a href='<?= base_url() ?>admin/manajemenmember?status=-1'> Banned</a>
              </div>
            </div>

          <div class="box-body" style="display: block;">
<br>
<!-- 
<a href="#" class='btn btn-danger pull-right'>Bersihkan <br>yang lebih dari 3 bulan</a>
<div class='clearfix'></div>
-->
<br>

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
