<?php $user = unserialize($_SESSION['login_user']); ?>

<?php if ($_SESSION['login_role'] == "members") : ?> 

         
          <ul class="sidebar-menu">
             <li class="header">MAIN NAVIGATION</li>
             
          <?php if($user->attributes('status') == 2) : ?>
                  <li>
                    <a href="<?= base_url(); ?>">
                      <i class="fa fa-send"></i> <span>Data Transfer</span>
                    </a>
                  </li>
          <?php endif; ?>

          <?php if($user->isActive()) : ?>

                  <li>
                    <a href="<?= base_url(); ?>">
                      <i class="fa fa-line-chart"></i> <span>Stat Member</span>
                    </a>
                  </li>
                  <li class="">
                    <a href="<?= base_url(); ?>transfer/verifikasi">
                      <i class="fa fa-money"></i> <span>Verifikasi Transfer</span>
                    </a>
                  </li>
                 
                 
                
          <?php endif; ?>

          <?php foreach ($halaman as $hal) { ?>
            <li class="">
                    <a href="<?= base_url('content/view/'.$hal->slug)?>" >
                      <i class="fa fa-book"></i> <span><?= $hal->judul?></span>
                    </a>
            </li>
          <?php } ?>

        </ul>
<?php elseif($_SESSION['login_role'] == "admin"): ?>

          <ul class="sidebar-menu">
            <?php if( $user->isSuperAdmin() OR $user->isAdmin()) {?>
             
            <li class="header">MENU UTAMA</li>
            <li>
              <a href="<?= base_url(); ?>admin/home">
                <i class="fa fa-line-chart"></i> <span>Stat Sistem</span>
              </a>
            </li>
             <li>
              <a href="<?= base_url(); ?>admin/pengumuman">
                <i class="fa fa-dashboard"></i> <span>Pengumuman</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>admin/voucher">
                <i class="fa fa-key"></i> <span>Voucher</span>
              </a>
            </li>
            <?php } ?>
             <?php if($user->isStokis() OR $user->isSuperAdmin() OR $user->isAdmin()) {?>
                  <li class="" ><a href="<?= base_url() ?>admin/manajemenmember"><i class="fa fa-circle-o"></i> Member</a></li>

                  <li class="header">STOKIS</li> 
                 <li>
                  <a href="<?= base_url(); ?>admin/pengiriman">
                    <i class="fa fa-truck"></i> <span>Pengiriman </span>
                  </a>
                </li>
            <?php } ?> 
            <?php if( $user->isSuperAdmin() OR $user->isAdmin()) {?>
            
            <li class="header">MANAJEMEN KONTEN</li>
            <li>
              <a href="<?= base_url(); ?>admin/contents/homepage">
                <i class="fa fa-circle-o"></i> <span>Homepage</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>admin/contents/halaman">
                <i class="fa fa-circle-o"></i> <span>Halaman</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>admin/contents/berita">
                <i class="fa fa-circle-o"></i> <span>Berita</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>admin/contents/slider">
                <i class="fa fa-circle-o"></i> <span>Slide Show</span>
              </a>
            </li>
            <?php } ?>
            <?php if($user->isSuperAdmin()): ?>
            <li class="header">SUPER ADMIN</li>
                <li>
                  <a href="<?= base_url(); ?>admin/manajemenadmin">
                    <i class="fa fa-user-secret"></i> <span>Manajemen Admin</span>
                  </a>
                </li>
            <?php endif; ?>
            
                      
          </ul>

<?php endif; ?>