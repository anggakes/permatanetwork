<?php $user = unserialize($_SESSION['login_user']); ?>

<?php if ($_SESSION['login_role'] == "members") : ?> 
          <ul class="sidebar-menu">
                  <li>
                    <a href="<?= base_url(); ?>">
                      <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                    </a>
                  </li>
          <?php if($user->isActive()) : ?>
                
                  <li class="header">MAIN NAVIGATION</li>
                  
                  
                  <li class="">
                    <a href="<?= base_url(); ?>downline">
                      <i class="fa fa-sitemap"></i> <span>Downline Chart</span>
                    </a>
                  </li>
                  <li class="">
                    <a href="<?= base_url(); ?>">
                      <i class="fa fa-book"></i> <span>Panduan</span>
                    </a>
                    
                  </li>
                 
                
          <?php endif; ?>
        </ul>
<?php elseif($_SESSION['login_role'] == "admin"): ?>

          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li>
              <a href="<?= base_url(); ?>">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
              </a>
            </li>
             <li>
              <a href="<?= base_url(); ?>admin/pengumuman">
                <i class="fa fa-dashboard"></i> <span>Pengumuman</span>
              </a>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-user"></i> <span>Member</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="" ><a href="<?= base_url() ?>admin/manajemenmember"><i class="fa fa-circle-o"></i> Daftar Member</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Daftar Konfirmasi Aktifasi </a></li>
              </ul>
            </li>

            <li class="header">MANAJEMEN KONTEN</li>
            <li>
              <a href="<?= base_url(); ?>">
                <i class="fa fa-dashboard"></i> <span>Homepage</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>admin/pengumuman">
                <i class="fa fa-dashboard"></i> <span>Halaman</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>admin/pengumuman">
                <i class="fa fa-dashboard"></i> <span>Artikel</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>">
                <i class="fa fa-dashboard"></i> <span>Slide Show</span>
              </a>
            </li>

            <?php if($user->attributes('super_admin')): ?>
            <li class="header">SUPER ADMIN</li>
                <li>
                  <a href="<?= base_url(); ?>">
                    <i class="fa fa-user-secret"></i> <span>Manajemen Admin</span>
                  </a>
                </li>
            <?php endif; ?>
           
          </ul>

<?php endif; ?>