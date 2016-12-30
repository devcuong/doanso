<?php
/*
 * Template Name: Trang thong tin doan thanh nien so
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
				<div style="clear: both;"></div>
    <?php
    $postPerPage = 5;
    $paged = get_query_var('paged', 1);
    ?>

<h1>THÔNG TIN ĐOÀN THANH NIÊN SỞ</h1>
    <?php
    $v_args = array(
        'cat' => 77,
        'post_type' => 'post',
        'posts_per_page' => $postPerPage,
        'paged' => $paged
    );
    $newsQuery = new WP_Query($v_args);
    ?>
       		<?php
        if ($newsQuery->have_posts()) :
            while ($newsQuery->have_posts()) :
                $newsQuery->the_post();
                ?>
            <div
					class="base-box blog-post default-blog-post bp-vertical-share  post-17288 post type-post status-publish format-standard has-post-thumbnail category-phap-luat">
					<div class="bp-entry">
						<div class="bp-head">
							<h2>
								<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
							</h2>
						</div>
						<!--blog post head-->
						<div class="bp-details">
							<div class="post-img">
								<a href="<?php the_permalink(); ?>">
											<?php the_post_thumbnail('post-thumbnail', ['class' => 'disappear appear'])?>
										</a>
							</div>
							<!--img-->
							<p>
										<?php the_excerpt(); ?>... <a href="<?php the_permalink(); ?>"
									class="read-more-link">Xem thêm</a>
							</p>
						</div>
						<!--details-->
					</div>
					<div class="clear"></div>
				</div>
				<div></div>
            <?php endwhile ; ?>
			<?php endif; ?>
	      <?php
    
    $countPost = wp_count_posts('post');
    $publishPost = $countPost->publish;
    $pagedPost = ceil($publishPost / $postPerPage);
    echo "<ul class='pagination'>";
    for ($i = 1; $i <= $pagedPost; $i ++) {
        if ((int) $paged == $i) {
            echo "<li><a href='http://doanso.abc/thong-tin-hoat-dong-co-so/page/" . $i . "' class='active'>" . $i . "</a></li>";
        } else {
            echo "<li><a href='http://doanso.abc/thong-tin-hoat-dong-co-so/page/" . $i . "'>" . $i . "</a></li>";
        }
    }
    echo "</ul>";
    ?>
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
