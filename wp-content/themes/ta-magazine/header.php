<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package TA Magazine
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php $fav = ta_option('custom_favicon', false, 'url'); ?>
<?php if ($fav !== '') { ?>
<link rel="icon" type="image/png" href="<?php echo ta_option('custom_favicon', false, 'url'); ?>" />
<?php } ?>

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div class='row' style='background:white; width:1000px; margin: 0px auto;'>
<div id="page" class="hfeed site">
	<a class="sr-only" href="#content"><?php _e( 'Skip to content', 'ta-magazine' ); ?></a>

	<?php if ( ta_option('disable_header_info') =='1' ) { ?>
	<div class="head-news container">
		<!-- News block begin -->
		<header><p><i class="fa fa-bullhorn"></i><?php if ( ta_option('header_info_title') != '') : echo ta_option('header_info_title'); ?><?php endif; ?></p></header> 
		<div class="content-news">
			<p><?php if ( ta_option('header_info') != '') : echo ta_option('header_info'); ?><?php endif; ?></p>
		</div>
		<!-- News block end -->

		<!-- Search-form begin -->	
		<div id="search" class="dropdown search">
			<a role="button" data-toggle="dropdown" data-target="#" href="#" onclick="return false">
				<i class="fa fa-search"></i>
			</a>
			<ul class="dropdown-menu" role="menu">
				<li>
					<form method="get" class="navbar-search pull-left input-group" action="<?php echo home_url( '/' ); ?>">
						<input type="text" class="form-control search-query" name="s" placeholder="<?php _e('Type and hit enter', 'ta-magazine'); ?>" />
						<div class="input-group-btn">
							<button class="btn btn-defaul" type="submit"><i class="fa fa-search"></i></button> 
						</div>
					</form>
				</li>
			</ul>
		</div> 
		<!-- Search-form end -->
	</div>
	<?php } ?>

	<header id="masthead" class="site-header header-block" role="banner">
		<div class="container" >
			<div class="header-top">
				<!-- Logo -->
				<div class="logo">
				<?php $logo = ta_option( 'custom_logo', false, 'url' ); ?>
				<?php if( $logo !== '' ) { ?>
					<h3><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><img class="img-responsive" src="<?php echo $logo ?>" alt="Logo" title="<?php bloginfo('description') ?>"></a></h3>
				<?php } else { ?>
					<h3><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home" title="<?php bloginfo('description') ?>"><?php bloginfo('name'); ?></a></h3>
				<?php } ?>
				</div>

				<?php if ( ta_option('disable_header_ad') =='1' && ta_option('ad_header') != '' ) { ?>
				<!-- Header advertise -->
				<figure class="header-adv">
					<?php echo ta_option('ad_header'); ?>
				</figure>
				<?php } ?>

				<?php if ( ta_option('disable_header_social') =='1' ) { ?>
				<!-- We are in social nets -->
				<div class="social-icons">
					<ul>
						<?php $social_options = ta_option('social_icons'); ?>
						<?php foreach ($social_options as $key => $value) {
							if ($value && $key == 'Google Plus') { ?>
						<li>
							<a href="<?php echo $value; ?>" data-toggle="tooltip" data-placement="bottom" data-original-title="<?php echo $key; ?>"><i class="fa fa-<?php echo strtolower( strtr($key, " ", "-") ); ?>"></i></a>
						</li>
						<?php } elseif ( $value ) { ?>
						<li>
							<a href="<?php echo $value; ?>" data-toggle="tooltip" data-placement="bottom" data-original-title="<?php echo $key; ?>"><i class="fa fa-<?php echo strtolower($key); ?>"></i></a>
						</li>
						<?php }
					} ?>
					</ul>
				</div>
				<?php } ?>

				<?php if ( ta_option('disable_login') =='1' ) { ?>
				<!-- Member area -->
				<div class="member-area">
					<ul>
						<li>
							<a href="<?php echo site_url(); ?>/app/auth/daftar"><i class="fa fa-plus"></i><?php _e('Daftar', 'ta-magazine'); ?></a>
						</li>
						<li>
							<a href="<?php echo site_url(); ?>/app/auth/login"><i class="fa fa-user"></i><?php _e('Login', 'ta-magazine'); ?></a>
						<li>
					</ul>
				</div>
				<?php } ?>

				<div class="clearfix"></div>
			</div>

			<!-- Navigation -->
<nav class=" navbar navbar-primary" role="navigation" style="
background: rgb(44,83,158); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(44,83,158,1) 0%, rgba(44,83,158,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(44,83,158,1)), color-stop(100%,rgba(44,83,158,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* IE10+ */
background: linear-gradient(to bottom,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2c539e', endColorstr='#2c539e',GradientType=0 ); /* IE6-9 */

"> 
<!-- Brand and toggle get grouped for better mobile display --> 
  <div class="navbar-header"> 
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"> 
      <span class="sr-only">Toggle navigation</span> 
      <span class="icon-bar"></span> 
      <span class="icon-bar"></span> 
      <span class="icon-bar"></span> 
    </button> 
     <a class="navbar-brand" href="<?= site_url()?>" style='color:#fff'><i class='fa fa-home'></i></a>
  </div> 
  <!-- Collect the nav links, forms, and other content for toggling --> 
  <div class="mainmenu collapse navbar-collapse navbar-ex1-collapse"> 

<?php /* Primary navigation */
wp_nav_menu( array(
  'menu' => 'top_menu',
  'depth' => 2,
  'container' => false,
  'menu_class' => 'nav navbar-nav',
  //Process nav menu using our custom nav walker
  'walker' => new wp_bootstrap_navwalker())
);
?>

</ul>
  </div>
</nav>



		</div><!-- .container -->
	</header><!-- #masthead -->

	<div id="content" class="site-content">