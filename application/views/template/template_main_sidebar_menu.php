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
        </ul>
<?php elseif($_SESSION['login_role'] == "admin"): ?>

          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li>
              <a href="<?= base_url(); ?>">
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
                <i class="fa fa-dashboard"></i> <span>Voucher</span>
              </a>
            </li>
            <li class="" ><a href="<?= base_url() ?>admin/manajemenmember"><i class="fa fa-circle-o"></i> Member</a></li>
              
            

            <li class="header">MANAJEMEN KONTEN</li>
            <li>
              <a href="<?= base_url(); ?>admin/contents/homepage">
                <i class="fa fa-dashboard"></i> <span>Homepage</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>admin/contents/halaman">
                <i class="fa fa-dashboard"></i> <span>Halaman</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>admin/contents/artikel">
                <i class="fa fa-dashboard"></i> <span>Artikel</span>
              </a>
            </li>
            <li>
              <a href="<?= base_url(); ?>admin/contents/slider">
                <i class="fa fa-dashboard"></i> <span>Slide Show</span>
              </a>
            </li>

            <?php if($user->attributes('super_admin')): ?>
            <li class="header">SUPER ADMIN</li>
                <li>
                  <a href="<?= base_url(); ?>admin/manajemenadmin">
                    <i class="fa fa-user-secret"></i> <span>Manajemen Admin</span>
                  </a>
                </li>
            <?php endif; ?>
           
          </ul>

<?php endif; ?>