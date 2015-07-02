<?php 

  $user = unserialize($_SESSION['login_user']);

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Permata Network | 1 Juta Kecubung</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    
    <!-- Bootstrap 3.3.4 -->
    <link href="<?= base_url() ?>theme/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
 
    <!-- FontAwesome 4.3.0 -->
    <link href="<?= base_url() ?>theme/plugins/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="<?= base_url() ?>theme/plugins/ionicons/ionicons.min.css" rel="stylesheet" type="text/css" />    
    <!-- Theme style -->
    <link href="<?= base_url() ?>theme/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="<?= base_url() ?>theme/dist/css/skin-purple.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="<?= base_url() ?>theme/plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
       <!-- Date Picker -->
    <link href="<?= base_url() ?>theme/plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="<?= base_url() ?>theme/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="<?= base_url() ?>theme/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />

        <!-- DATA TABLES -->
    <link href="<?= base_url() ?>theme/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery 2.1.4 -->
    <script src="<?= base_url() ?>theme/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.2 -->
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->

     <!-- DATA TABES SCRIPT -->
    <script src="<?= base_url() ?>theme/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="<?= base_url() ?>theme/plugins/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>

    <style type="text/css">
      .aksi{
        color:#dd4b39;
      }
    </style>
 
  </head>
  <body class="skin-purple sidebar-mini layout-boxed">
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a href="<?= base_url() ?>" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>BO</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Permata</b>Network</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a> -->
        
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
               

             
              
                 <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <span class="hidden-xs">
                  <?php echo($user->profile('nama')) ?>
                </span>
                <img src="<?= base_url() ?>theme/dist/img/default.png" class="user-image" alt="User Image"/>
                
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="<?= base_url() ?>theme/dist/img/default.png" class="img-circle" alt="User Image" />
                    <p>
                        
                        <?php 
                        if ($_SESSION['login_role'] == "members") { 
                          echo $user->attributes('code'); 
                        }else{ 
                          echo ($user->attributes('super_admin')==1) ? "Super Admin" : "Admin";
                        }
                        ?> 
                        - 
                        <?php echo($user->profile('nama')) ?>
                      

                      <small>Bergabung Sejak : <?php echo($user->attributes('created_at')) ?></small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                 
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Edit Profil</a>
                    </div>
                    <div class="pull-right">
                      <a href="<?= base_url('profile/'.$user->attributes('username')) ?>" class="btn btn-default btn-flat">Lihat Profil</a>
                    </div>
                  </li>
                </ul>
              </li>
            <li>
                  <a href="<?= base_url().'auth/logout' ?>" ><i class='fa fa-sign-out'></i> Log out</a>

              </li>
           
              
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
          <!-- Sidebar user panel -->
<?php if ($_SESSION['login_role'] == "members") : ?> 
          <div class="user-panel" style='background:#000'>
            <h5 style='color:#c0c0c0'>Kode Member :</h5>
            <h2 style='text-align:center;color:#c0c0c0'><?= $user->attributes('code') ?></h2>
<?php if($user->attributes('status') == 2): ?>
<hr>
            <h5 style='color:#c0c0c0'>Waktu Transfer :</h5>
            <h3 style='text-align:center;color:#c0c0c0' id='clock'></h3>
<?php endif; ?>

              
          </div>
<?php endif; ?>
          <!-- sidebar menu: : style can be found in sidebar.less -->

          <?php include_once('template_main_sidebar_menu.php'); ?>


        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
           <?= @$title ?>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <?= $contents ?>
          
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <footer class="main-footer">
       
        <strong>Copyright &copy; 2015 <a href="#"></a>.</strong> All rights reserved.
      </footer>
      
    
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      
    </div><!-- ./wrapper -->


    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="<?= base_url() ?>theme/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>    
    <!-- daterangepicker -->
    <script src="<?= base_url() ?>theme/https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
    <script src="<?= base_url() ?>theme/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="<?= base_url() ?>theme/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="<?= base_url() ?>theme/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="<?= base_url() ?>theme/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='<?= base_url() ?>theme/plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url() ?>theme/dist/js/app.min.js" type="text/javascript"></script>    

    <?php if($user->attributes('status') == 2): ?>
    <!-- Countdown -->
    <script type="text/javascript" src="<?= base_url() ?>theme/jquery-countdown/jquery.countdown.min.js"></script>

    <script type="text/javascript">
        $('#clock').countdown("<?= date('Y/m/d h:i:s',strtotime($user->attributes('limited_transfer_at'))) ?>", function(event) {
          $(this).html(event.strftime('%D Hari %H:%M:%S'));
        });
    </script>
    <?php endif; ?>
  </body>
</html>