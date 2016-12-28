			<?php get_header(); ?>
</div>
<!--header wrap-->
<nav id="navigation" class="dd-effect-fade sticky-nav" style="top: 0px;">
		<?php thachpham_menu('primary-menu'); ?>
		</nav>
<!--Navigation-->
<div class="boxed-content-wrapper clearfix" style="padding-top: 52px;">
	<div style="height: 20px;"></div>
	<div style="margin-top: -17px; margin-bottom: 20px;"></div>
	<div class="inner">
		<div class="breaking-news">
			<div class="the_ticker">
				<div class="bn-title">
					<span>Tiêu Điểm</span>
				</div>
				<div class="news-ticker">
			    <?php get_sidebar('sticker'); ?>
				</div>
				<!--news ticker-->
			</div>
			<span class="current_time"><span><?php 
			date_default_timezone_set('Asia/Hanoi');
			$date = date('d/m/Y', time());
			echo $date;
			?></span> </span>
		</div>
		<!--breaking news-->
	</div>
	<div class="inner">
		<div class="main_container">
			<div class="main-col">
					<?php if ( have_posts() ) : while( have_posts() ) : the_post(); ?>

					<?php get_template_part('content', get_post_format()); ?>

					<?php endwhile ?>
					<?php else: ?>
						<?php get_template_part('content', 'none'); ?>
					<?php endif ?>
			</div>
			<!--main column-->
			<div class="clear"></div>
		</div>
		<!--main container-->
		<div class="sidebar main-sidebar">
				<?php get_sidebar()?>
				</div>
		<!--main sidebar-->
		<div class="clear"></div>
	</div>
	<!--main inner-->

</div>
<!--content boxed wrapper-->
<?php get_footer();?>
<!--//footer-->
