<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>

<div class="box">
          <div class="box-body" style="display: block;">
               <table id="datatable" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Username</th>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Alamat</th>
                        <th>Kontak</th>
                        <th>Aksi</th>
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
          "ajax": "<?= base_url()?>admin/stokis/datatable",
          "scrollX": true 
        }); 
      });
    </script>
