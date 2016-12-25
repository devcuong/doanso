<?php
/*
 * Template Name: Trang danh muc
 */
?>
<style>
ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
}
</style>
<div id="main-content">
	<div id="ctl40_HeaderContainer" class="title_post">
		<h2>
			<a><span style="white-space: nowrap;">Tin rao dành cho bạn</span></a>
		</h2>
	</div>
	<div style="clear: both;"></div>
	<div class="line_gr"></div>
    <?php  
    $postPerPage = 2;
    $paged = get_query_var( 'paged', 1 );  ?>

<h1>Currently Browsing Page <?php echo (int) $paged; ?></h1>
    <?php
    $v_args = array(
        'post_type' => 'btxh1', // your CPT
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
       		<?php the_title(); ?><br>
            <?php endwhile ; ?>
			<?php endif; ?>
	<?php $countPost = wp_count_posts('btxh1');
          $publishPost = $countPost->publish;
          $pagedPost = ceil($publishPost/$postPerPage);
          echo "<ul class='pagination'>";
          for($i = 0; $i < $pagedPost; $i++ ){
              if((int)$paged == $i){
                  echo "<li><a href='#' class='active'>".$i."</a></li>";
              } else{
                  echo "<li><a href='#'>".$i."</a></li>";
              }
          }
          echo "</ul>";
	?>
</div>