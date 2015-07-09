<div class='row'>
<div class='col-md-6'>

<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><i class='fa fa-newspaper-o'></i> Berita</h3>
              <div class="box-tools pull-right">
                <a href="<?= base_url('admin/contents/berita') ?>" class='btn'><i class='fa fa-edit'></i >kelola</a>
              </div>
            </div>
            <div class="box-body" style="display: block;min-height:180px">
              <ul>
              <?php  foreach ($beritas as $berita) {?>
                  <li><a href="<?= base_url('content/view/'.$berita->slug)?>"><?= $berita->judul?></a></li>
              <?php } ?>
            </ul>
            </div><!-- /.box-body -->
          
</div>

</div> <!-- End col-md-6 -->

<div class='col-md-6'>

<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><i class='fa fa-exclamation-circle'></i> Pengumuman</h3>
              <div class="box-tools pull-right">
               <a href="<?= base_url('admin/pengumuman') ?>" class='btn'><i class='fa fa-edit'></i >kelola</a>
              </div>
            </div>
            <div class="box-body" style="display: block;min-height:180px">
              <ul>
              <?php  foreach ($pengumumans as $pengumuman) {?>
                  <li><?= $pengumuman->isi?></li>
              <?php } ?>
            </ul>
            </div><!-- /.box-body -->
          
</div>

</div> <!-- End col-md-6 -->

<div class='col-md-6'>

<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><i class='fa fa-list'></i> Halaman</h3>
              <div class="box-tools pull-right">
             <a href="<?= base_url('admin/contents/halaman') ?>" class='btn'><i class='fa fa-edit'></i >kelola</a>
              </div>
            </div>
            <div class="box-body" style="display: block;min-height:180px">
              <ul>
              <?php  foreach ($halamans as $halaman) {?>
                  <li><a href="<?= base_url('content/view/'.$halaman->slug)?>"><?= $halaman->judul?></a></li>
              <?php } ?>
            </ul>
            </div><!-- /.box-body -->
          
</div>

</div> <!-- End col-md-6 -->

<div class='col-md-6'>

<div class="info-box bg-yellow">
                <span class="info-box-icon"><i class="fa fa-users"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Total Member</span>
                  <span class="info-box-number"><?= $total_member ?></span>
                 
                  <span class="progress-description">
                    <a href='<?= base_url("admin/manajemenmember")?>' style='color:white'><i class='fa fa-arrow-circle-o-right'></i> lihat member</a>
                  </span>
                </div><!-- /.info-box-content -->
              </div>

</div>

</div>