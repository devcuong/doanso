<?php 
	/*
	Template Name: Trang quan-ly
	*/
?>
<?php get_sidebar("manage-header"); ?>
<div class="content">
    <div id="main-content">
        <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                        <?php get_template_part( 'content', get_post_format() ); ?>
                        <?php get_template_part( 'author-bio' ); ?>
                        <?php comments_template(); ?>
                <?php endwhile; ?>
                <?php else : ?>
                        <?php get_template_part( 'content', 'none' ); ?>
                <?php endif; ?>
    </div>
    <div id="sidebar">  
        <?php get_sidebar("manage-right") ?>
    </div>
</div>
<?php get_footer(); ?>