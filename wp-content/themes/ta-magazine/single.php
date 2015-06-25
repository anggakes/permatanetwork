<?php
/**
 * The template for displaying all single posts.
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

				<?php while ( have_posts() ) : the_post(); ?>
				<?php if ( function_exists('sharing_display') )
				remove_filter('the_content', 'sharing_display', 19); ?>

				<?php if ( function_exists('sharing_display') )
				remove_filter('the_excerpt', 'sharing_display', 19); ?>

				
				<!-- Post info end -->

					<div class="col-md-8">

					<?php get_template_part( 'content', 'single' ); ?>


					<!-- Post info begin -->
				



					<?php
						// If comments are open or we have at least one comment, load up the comment template
						if ( comments_open() || get_comments_number() ) :
							comments_template();
						endif;
					?>

				</div>

				<?php endwhile; // end of the loop. ?>

				</main><!-- #main -->
			</div><!-- #primary -->

			
			<!-- Sidebar block begin -->
			<?php get_sidebar(); ?>
			<!-- Sidebar block end -->
			
		</div>
	</section>

<?php get_footer(); ?>
