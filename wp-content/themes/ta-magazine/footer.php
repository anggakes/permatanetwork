<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package TA Magazine
 */
?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		

		<!-- Copyrights -->
		<div class="copyright">
			<div class="container">
				<div class="row">
					<p>Copyrights 2015 permatanetwork.com</p>
					<!-- Footer menu -->
					<div class="footer-menu">
						<?php
						wp_nav_menu( array(
							'theme_location' => 'secondary',
							'container'      => false,
							)
						);
						?>
					</div>
				</div>
			</div>
		</div>
		
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>
</div> <!-- end row -->
</body>
</html>
