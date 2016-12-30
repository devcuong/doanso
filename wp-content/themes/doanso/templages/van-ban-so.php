<?php
/*
 * Template Name: Trang download so
 */
?>
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
				<?php
                $v_args = array(
                    'tag_ID' => 92,
                    'post_type' => 'file_download',
                    'posts_per_page' => 10
                );
                $newsQuery = new WP_Query($v_args);
               /*  var_dump($newsQuery); */
                ?>
                            <ol>
                       		<?php
                        if ($newsQuery->have_posts()) :
                            while ($newsQuery->have_posts()) :
                                $newsQuery->the_post();
                                ?>
                <li><a href="<?php the_permalink() ?>" ><?php the_title(); ?></a></li>
                <?php endwhile ; ?>
                <?php endif; ?>
			</ol>
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
