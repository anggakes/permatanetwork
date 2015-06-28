<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>VoltusFx System </title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    
    <!-- Bootstrap 3.3.4 -->
    <link href="<?= base_url() ?>theme/bootstrap/css/paper-bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="<?= base_url() ?>theme/plugins/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="<?= base_url() ?>theme/plugins/ionicons/ionicons.min.css" rel="stylesheet" type="text/css" />    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
     <!-- jQuery 2.1.4 -->
    <script src="<?= base_url() ?>theme/plugins/jQuery/jQuery-2.1.4.min.js"></script>
  
  <style type="text/css">
  .navbar{
    box-shadow: none;
    border-top:1px solid #c0c0c0;
    border-bottom:1px solid #c0c0c0;
    
  }

  h2 {
    font:normal normal normal 31px/1.1em caudex,serif;
  }

  .container{
    width:900px;
  }

  .nav li {
    margin-left: 60px;
  }

  footer{
    margin :20px auto;
    border-top:1px solid #c0c0c0;
    padding:20px 10px;
  }

  </style>

  </head>
  <body class="">
  <div class='container'>
    <!-- Top menu -->
    <center><h2 style='color:blue'>Permata Network</h2><h5>Kesuksesan nyata dari permata network</h5></center>
    <nav class="navbar navbar-default" role="navigation" >
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"><i class='fa fa-home'></i></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->

        <ul class="nav navbar-nav">
            <li><a href="#">PRODUK</a></li>
            <li><a href="#">REGISTRASI</a></li>
            <li><a href="#">LOGIN</a></li>
            <li><a href="#">KONTAK</a></li>
            <li><a href="#">TENTANG KAMI</a></li>
        </ul>
      </div>
    </nav>



        <!-- Top content -->
       

                          <?= $contents ?>  
                      
    <footer class='row'>
        <div class='col-md-12'>
          Footer
        </div>
    </footer>      

   </div>

      <!-- jQuery UI 1.11.2 -->
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="<?= base_url() ?>theme/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>    
     <!-- Slimscroll -->
    <script src="<?= base_url() ?>theme/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='<?= base_url() ?>theme/plugins/fastclick/fastclick.min.js'></script>
     <!-- FastClick full screen background -->
    <script src="<?= base_url() ?>theme/plugins/backstretch/jquery.backstretch.min.js"></script>

   
    
  </body>
</html>