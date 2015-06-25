<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package TA Magazine
 */

get_header(); ?>

	<?php if ( ta_option('disable_slider') == '1' ) { ?>
	<!-- Slider block begin -->
	<section class="slider-wrapper">
		<div class="container" style='border-left: 1px solid #e0dddd;border-right:1px solid #e0dddd; margin-top:-20px;
			background: url(<?php echo get_template_directory_uri() ?>/images/daftar.png) no-repeat right bottom;
		'>
			<div class="row">
				<?php
				// get recent sticky posts.
				$sticky = get_option('sticky_posts');
				rsort($sticky);
				$sum = count($sticky);
				if ($sum <= 5) {
					$psum = $sum;
				} else {
					$psum = 5;
				}
				?>

				<?php if ($sticky[0]) : ?>
				<!-- Slider begin (bootstrap carousel) -->
				<div class="col-md-8 slider">
				    <div id="slider" class="carousel slide" data-ride="carousel">
					    <ol class="carousel-indicators">
						<?php
						$o = 1;
						while ($o <= $psum) {
						?>
							<li data-target="#slider" data-slide-to="<?php echo $o-1?>"<?php if ($o == 1) { echo 'class="active"'; } ?>></li>
						<?php
						$o++;
						}
						?>
					    </ol>

					    <!-- Carousel items begin -->
					    <div class="carousel-inner">
							<?php
							$i = 1;
							$sposts = array_slice ($sticky, 0, 4);
							$posts = new WP_Query( array('post__in' => $sposts, 'ignore_sticky_posts' => 1) );
							while( $posts->have_posts() ) : $posts->the_post();
							?>
						    <div class="<?php if ($i == 1) { echo 'active'; } ?> item">
								<div class="post-thumbnail-1">
									
									<figure>
										<?php 
										if ( has_post_thumbnail() ) : ?>
											<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
											<?php the_post_thumbnail( 'slider-lg', array('class' => "img-responsive carousel-img") ); ?>
										</a>
										<?php endif; ?>
									</figure>
									<h3><a href="<?php echo get_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h3>
									<p class="meta-tags">
										<span><i class="fa fa-clock-o"></i><?php echo get_the_date(); ?></span>
										<span><i class="fa fa-user"></i><a href="<?php echo get_author_posts_url( get_the_author_meta('ID') ); ?>"><?php the_author_meta('display_name'); ?></a></span>
										<?php if( class_exists('Jetpack') && Jetpack::is_module_active('stats') ) : ?>
											<?php jp_get_post_views( get_the_ID() ); ?>
										<?php endif; ?>
										<?php if ( ! post_password_required() && ( comments_open() || '0' != get_comments_number() ) ) : ?>
											<span><i class="fa fa-comments"></i><?php comments_popup_link( __('Leave a comment', 'ta-magazine'), __('1 Comment', 'ta-magazine'), __('% Comments', 'ta-magazine') ); ?></span>
										<?php endif; ?>
									</p>
								</div>
						    </div>
							<?php
							$i++;
							endwhile;
							wp_reset_query();
							?>
						</div>
					    <!-- Carousel's item end -->
					</div>
				</div>
				<!-- Slider end -->
				<?php else : ?>
					<?php _e('No sticky posts.', 'ta-magazine' ); ?>
				<?php endif; ?>

				
				<!-- Slider sidebar begin -->
				<div class="col-md-4 slider-sidebar">
					<div class="row ">
						<div class="slider-sidebar-wrapper">
							<div class="col-md-10 daftar" >
								

					<h3 >Ayo Bergabung</h3>

					<p> Tertarik dan sudah mengerti kerja sistem, ayo bergabung menjadi bagian keluarga permata network
					</p>

					<a href='<?= site_url() ?>/app/auth/daftar' class=' btn-primary btn btn-lg'><i class='fa fa-sign-in'></i> Bergabung </a>
								
							</div>
							
						</div>
					</div>
				</div>
				<!-- Slider sidebar end -->
				
			</div>
		</div>
	</section>
	<!-- Slider block end -->
	<?php } else { ?>
	<!-- Breadcrumbs block begin -->
	<section id="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					 <?php ta_breadcrumbs(); ?>
				</div>
			</div>
		</div>
	</section>
	<?php } ?>

	<!-- Content block begin -->
	<section id="content" class="container" style='padding-top:50px;border-left: 1px solid #e0dddd;border-right:1px solid #e0dddd; '>
		<div class="row col-md-12" style='margin-left: 8px' >
			<div class="col-md-8">

		<div class="row">
			<div class="col-md-12" >
				<h5 style = "
											background: rgb(44,83,158); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(44,83,158,1) 0%, rgba(44,83,158,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(44,83,158,1)), color-stop(100%,rgba(44,83,158,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* IE10+ */
background: linear-gradient(to bottom,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2c539e', endColorstr='#2c539e',GradientType=0 ); /* IE6-9 */
											
											color:#fff;
											display:block;
											padding:10px;
											margin:5px 0px 0px 0px;
										"> <i class="fa fa-info"></i> Informasi Paket</h5>
				<center>
					<ul class="post-list" style='
							padding:15px 10px;
							border-right:1px solid #cccccc;
							border-left:1px solid #cccccc;
							border-bottom:1px solid #cccccc;
						'>
							<li>
								<ul style='
									display:block;
									padding:2px 2px 0px 2px;
									margin:2px;
								'>
<div class='row'>
<div class='col-md-3'>
<img src=" <?php echo get_template_directory_uri() ?>/images/action.png" style='margin-top:5px'/> 
</div>
<div class='col-md-9 daftar' >
<center>

	<h3>Ayo beraksi sekarang</h3>
<p style='margin:10px'>	Anda berhak menerima Produk 1 Cincin dan Berhak mendapat penghasilan dahsyat jika anda infokan peluang ini ke teman2.

	Informasi Paket Lebih lanjut <br><br>
	<a href='<?= site_url()?>/kerja-sistem'><i class='fa fa-key'> Kerja Sistem</i></a>
	<br>
</p>
</center>
</div>

</div>
								</ul>
							</li>
								</center>
			</div>
		</div>



<!-- ---------------------------------------------------------------------------------------- -->

				<?php if ( ta_option('disable_blog') == '1' ) { ?>
				<!-- Blog Style Content section begin -->
				<div class="row">
					
					<div class="col-md-6">
						<?php
						if ( ta_option('blog_cat', [$o-1]) != '') :
						$category_id = ta_option('blog_cat')[$o-1];
						$category_link = get_category_link($category_id);
						$category_name = get_cat_name($category_id);
						endif;
						?>
						<h5 style = "
					background: rgb(44,83,158); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(44,83,158,1) 0%, rgba(44,83,158,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(44,83,158,1)), color-stop(100%,rgba(44,83,158,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* IE10+ */
background: linear-gradient(to bottom,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2c539e', endColorstr='#2c539e',GradientType=0 ); /* IE6-9 */
							color:#fff;
							display:block;
							padding:10px;
							margin:10px 0px 0px 0px;
						"> <i class="fa fa-newspaper-o"></i> Berita dan Informasi</h5>
						<ul class="post-list" style='
							padding:15px 10px;
							border-right:1px solid #cccccc;
							border-left:1px solid #cccccc;
							border-bottom:1px solid #cccccc;
						'>
							<?php
							$i = 1;
							$post_number = ta_option('blog_posts');
							$posts = new WP_Query( array('showposts' => $post_number, 'category_name' => "berita", 'post_status' => 'publish', 'has_password' => false) );
							while( $posts->have_posts() ) : $posts->the_post();
							?>
							<li>
								<ul class='news'>
									
									<span style='margin-right:10px'><?php echo get_the_date(); ?></span></li>
									<br>
									<a href="<?php echo get_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
									
								</ul>
							</li>
							<?php
							$i++;
							endwhile;
							wp_reset_query();
							?>
						</ul>
					</div>


					<div class="col-md-6">
						<?php
						if ( ta_option('tab_cat', [$o-1]) != '') :
						$category_id = ta_option('tab_cat')[$o-1];
						$category_link = get_category_link($category_id);
						$category_name = get_cat_name($category_id);
						endif;
						?>
						<h5 style = "
	background: rgb(44,83,158); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(44,83,158,1) 0%, rgba(44,83,158,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(44,83,158,1)), color-stop(100%,rgba(44,83,158,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* IE10+ */
background: linear-gradient(to bottom,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2c539e', endColorstr='#2c539e',GradientType=0 ); /* IE6-9 */
							color:#fff;
							display:block;
							padding:10px;
							margin:10px 0px 0px 0px;
						"> <i class="fa fa-bullhorn"></i> Pengumuman</h5>
						<ul class="post-list" style='
							padding:15px 10px;
							border-right:1px solid #cccccc;
							border-left:1px solid #cccccc;
							border-bottom:1px solid #cccccc;
						'>
							<?php
							$i = 1;
							$post_number = ta_option('blog_posts');
							$posts = new WP_Query( array('showposts' => $post_number, 'category_name' => "pengumuman", 'post_status' => 'publish', 'post__not_in' => get_option('sticky_posts'), 'has_password' => false) );
							while( $posts->have_posts() ) : $posts->the_post();
							?>
							<li>
								<ul class='news'>
									
									<span style='margin-right:10px'><?php echo get_the_date(); ?></span></li>
									<br>
									<a href="<?php echo get_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
									
								</ul>
							</li>
							<?php
							$i++;
							endwhile;
							wp_reset_query();
							?>
						</ul>
					</div>
					
				</div>
				<!-- Blog Style Content section end -->
				<?php } ?>

<!-- ----------------------------------------------------------------------------------------- -->





			</div>

			<!-- Sidebar block begin -->
			<?php get_sidebar(); ?>
			<!-- Sidebar block end -->
			<div class="row">
			<div class="col-md-12" >
				<h5 style = "
											background: rgb(44,83,158); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(44,83,158,1) 0%, rgba(44,83,158,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(44,83,158,1)), color-stop(100%,rgba(44,83,158,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* IE10+ */
background: linear-gradient(to bottom,  rgba(44,83,158,1) 0%,rgba(44,83,158,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2c539e', endColorstr='#2c539e',GradientType=0 ); /* IE6-9 */
											
											color:#fff;
											display:block;
											padding:10px;
											margin:5px 0px 0px 0px;
										"> <i class="fa fa-diamond"></i> Manfaat Produk</h5>
				<center>
					<ul class="post-list" style='
							padding:15px 10px;
							border-right:1px solid #cccccc;
							border-left:1px solid #cccccc;
							border-bottom:1px solid #cccccc;
						'>
							<li>
								<ul style='
									display:block;
									padding:2px 2px 0px 2px;
									margin:2px;
								'>
<div class='row'>								
<div class='col-md-4'>
<img src=" <?php echo get_template_directory_uri() ?>/images/kecubung.png" /> 
<img src=" <?php echo get_template_directory_uri() ?>/images/kecubung2.png" /> 
</div>
<div class='col-md-8' style='text-align:justify'>
<h3>Manfaat Produk</h3><hr>
Khasiat batu kecubung – Kecubung atau Amethyst merupakan jenis batu mulia populer didunia dengan warna umum ungu berkilau, merah muda dan kebiruan. Batu permata ini di Indonesia lebih dikenal dengan sebutan batu kecubung ungu dan dipercaya memiliki khasiat. Sedangkan harga nya bisa ratusan sampai puluhan juta rupiah untuk jenis batu terbaik.
Batu Amethyst (kecubung) merupakan batuan mineral kuarsa atau jenis mineral berstruktur kristal heksagonal terbuat dari silika (silikon dioksida) dengan tingkat kekerasan hingga 7 mohs. Keunikan warna pada batu permata ini menimbulkan daya tarik tersendiri dan tidak dimiliki jenis batu mulia lainnya.
Terkait mitos yang berkembang, batu ini juga dianggap sebagai batu kelahiran Februari dalam zodiak. Sebutan pada batu ini juga tidak lepas dengan mitos yang berkembang pada zamat itu dan dikenal dengan istilah‘amethyst’ asal kata Yunani ‘amethystos’ yang berarti obat untuk mencegah mabuk.Sehingga batu ini dipercaya bisa membawa keberuntungan bagi pemiliknya terutama mereka yang punya kelahiran bulan Februari. Pada zaman dulu batu ini banyak dipakai kalangan raja-raja, pangeran dan puteri kerjaan sebagai pembangkit aura baik untuk kecantikan atau untuk menambah kewibawaan.
<br>
</div>
</div>
								</ul>
							</li>
								</center>
			</div>
		</div>
		</div>
	</section>

<?php get_footer(); ?>