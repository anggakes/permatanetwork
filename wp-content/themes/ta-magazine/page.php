<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package TA Magazine
 */

get_header(); ?>

	<section id="breadcrumbs" style='border:none; margin:10px 0px'>
		<div class="container" >
			<div class="row">
				<div class="col-md-11 offset-md-1" style=''>
					<?php ta_breadcrumbs(); ?>
				</div>
			</div>
		</div>
	</section>

	<section id="content" class="container blog-posts">
		<div class="row">
			<div id="primary" class="content-area">
				<main id="main" class="site-main" role="main">

					<div class="col-md-8" >
						<?php while ( have_posts() ) : the_post(); ?>

							<?php get_template_part('content', 'page'); ?>

							

						<?php endwhile; // end of the loop. ?>
					</div>

				</main><!-- #main -->
			</div><!-- #primary -->

			<!-- Sidebar block begin -->
			<?php get_sidebar(); ?>
			<!-- Sidebar block end -->
		</div>
	<section>

<?php get_sidebar(); ?>
<?php get_footer(); ?>
