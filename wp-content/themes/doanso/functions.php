<?php
/*
 * ------------------------------------
 * 1. NAP NHUNG TAP TIN CSS VAO THEME
 * --------------------------------------
 */
add_action('wp_enqueue_scripts', 'thachpham_theme_register_style');

function thachpham_theme_register_style()
{
    global $wp_styles;

    $cssUrl = get_template_directory_uri() . '/css';
    // echo $cssUrl;
    
    wp_register_style('masteri_theme_main', $cssUrl . '/main.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_main');

    wp_register_style('masteri_theme_layerslider', $cssUrl . '/layerslider.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_layerslider');

    wp_register_style('masteri_theme_styles', $cssUrl . '/styles.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_styles');

    wp_register_style('masteri_theme_font-awesome', $cssUrl . '/font-awesome.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_font-awesome');

    wp_register_style('masteri_theme_et-icons', $cssUrl . '/et-icons.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_et-icons');

    wp_register_style('masteri_theme_et-line', $cssUrl . '/et-line.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_et-line');

    wp_register_style('masteri_theme_style.min', $cssUrl . '/style.min.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_style.min');

    wp_register_style('masteri_theme_settings', $cssUrl . '/settings.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_settings');
    
    wp_register_style('masteri_theme_polls-css', $cssUrl . '/polls-css.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_polls-css');
    
    wp_register_style('masteri_theme_plugins', $cssUrl . '/plugins.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_plugins');
    
    wp_register_style('masteri_theme_media', $cssUrl . '/media.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_media');
    
    
    wp_register_style('masteri_theme_style', $cssUrl . '/style.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_style');
    
    
    wp_register_style('masteri_theme_online_counter', $cssUrl . '/online_counter.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_online_counter');
    
    wp_register_style('masteri_theme_functional', $cssUrl . '/functional.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_functional');
    
    wp_register_style('masteri_theme_style-light', $cssUrl . '/style-light.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_style-light');
    
    wp_register_style('masteri_theme_vc_carousel', $cssUrl . '/vc_carousel.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_vc_carousel');
    
    wp_register_style('masteri_theme_style-light', $cssUrl . '/style-light.css', 'all', '1.0');
    wp_enqueue_style('masteri_theme_style-light');

    wp_register_style('masteri_theme_ie8.css', $cssUrl . '/ie8.css', 'all', '1.0');
    $wp_styles->add_data('masteri_theme_ie8.css', 'conditional', 'IE 8');
    wp_enqueue_style('masteri_theme_ie8.css');
}

/*
 * ------------------------------------
 * 1. NAP NHUNG TAP TIN JS VAO THEME
 * --------------------------------------
 */
add_action('wp_enqueue_scripts', 'thachpham_theme_register_js');

function thachpham_theme_register_js()
{
    $jsUrl = get_template_directory_uri() . '/js';
    
    wp_register_script('masteri_theme_jquery', $jsUrl . '/jquery.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_jquery');

    wp_register_script('masteri_theme_analytics', $jsUrl . '/analytics.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_analytics');

    wp_register_script('masteri_theme_wp-emoji-release.min', $jsUrl . '/wp-emoji-release.min.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_wp-emoji-release.min');

    wp_register_script('masteri_theme_jquery-migrate.min', $jsUrl . '/jquery-migrate.min.js', array('jquery'), '1.0');
    wp_enqueue_script('masteri_theme_jquery-migrate.min');

    wp_register_script('masteri_theme_layerslider.kreaturamedia.jquery', $jsUrl . '/layerslider.kreaturamedia.jquery.js', array('jquery'), '1.0');
    wp_enqueue_script('masteri_theme_layerslider.kreaturamedia.jquery');

    wp_register_script('masteri_theme_greensock', $jsUrl . '/greensock.js', array('jquery'), '1.0');
    wp_enqueue_script('masteri_theme_greensock');

    wp_register_script('masteri_theme_layerslider.transitions', $jsUrl . '/layerslider.transitions.js', array('jquery'), '1.0');
    wp_enqueue_script('masteri_theme_layerslider.transitions');
    
    wp_register_script('masteri_theme_ion.sound.min', $jsUrl . '/ion.sound.min.js', array('jquery'), '1.0');
    wp_enqueue_script('masteri_theme_ion.sound.min');
    
    wp_register_script('masteri_theme_jquery.doubletap', $jsUrl . '/jquery.doubletap.js', array('jquery'), '1.0');
    wp_enqueue_script('masteri_theme_jquery.doubletap');
    
    wp_register_script('masteri_theme_jquery.themepunch.tools.min', $jsUrl . '/jquery.themepunch.tools.min.js', array('jquery'), '1.0');
    wp_enqueue_script('masteri_theme_jquery.themepunch.tools.min');
    
    wp_register_script('masteri_theme_jquery.themepunch.revolution.min', $jsUrl . '/jquery.themepunch.revolution.min.js', array('jquery'), '1.0');
    wp_enqueue_script('masteri_theme_jquery.themepunch.revolution.min');
    
    wp_register_script('masteri_theme_comment-reply.min', $jsUrl . '/comment-reply.min.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_comment-reply.min');
    
    wp_register_script('masteri_theme_editor.js', $jsUrl . '/editor.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_editor.js');
    
    wp_register_script('masteri_theme_jquery.form.min', $jsUrl . '/jquery.form.min.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_jquery.form.min');
    
    wp_register_script('masteri_theme_scripts', $jsUrl . '/scripts.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_scripts');
    
    wp_register_script('masteri_theme_polls-js', $jsUrl . '/polls-js.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_polls-js');
    
    wp_register_script('masteri_theme_plugins.min', $jsUrl . '/plugins.min.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_jquery.form.min');
    
    wp_register_script('masteri_theme_main', $jsUrl . '/main.js', array('jquery'), '1.0');
    wp_enqueue_script('masteri_theme_main');
    
    wp_register_script('masteri_theme_jquery.prettyPhoto', $jsUrl . '/jquery.prettyPhoto.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_jquery.prettyPhoto');
    
    wp_register_script('masteri_theme_js_composer_front', $jsUrl . '/js_composer_front.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_js_composer_front');
    
    wp_register_script('masteri_theme_all.frontend.min', $jsUrl . '/all.frontend.min.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_all.frontend.min');
    
    wp_register_script('masteri_theme_transition', $jsUrl . '/transition.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_transition');
    
    wp_register_script('masteri_theme_vc_carousel', $jsUrl . '/vc_carousel.js', array(), '1.0');
    wp_enqueue_script('masteri_theme_vc_carousel');
}

/**
 * @ Khai bao hang gia tri
 * @ THEME_URL = lay duong dan thu muc theme
 * @ CORE = lay duong dan thu muc /core
 */
define('THEME_URL', get_stylesheet_directory_uri());
define('THEME_DIR', get_stylesheet_directory());
define('CORE', THEME_DIR . "/core");

/**
 * @ Nhung file /core/init.php
 */
require_once (CORE . "/init.php");

/**
 * @ Thiet lap chieu rong noi dung
 */
if (! isset($content_width)) {
    $content_width = 620;
}

/**
 * @ Khai bao chuc nang cua theme
 */
if (! function_exists('thachpham_theme_setup')) {

    function thachpham_theme_setup()
    {
        /* Thiet lap textdomain */
        $language_folder = THEME_DIR . '/languages';
        load_theme_textdomain('thachpham', $language_folder);

        /* Tu dong them link CSS len <head> */
        add_theme_support('automatic-feeds-links');

        /* Them post thumnail */
        add_theme_support('post-thumbnails');

        /* Post Format */
        add_theme_support('post-formats', array(
            'image',
            'video',
            'gallery',
            'quote',
            'link'
        ));

        /* Them title-tag */
        add_theme_support('title-tag');

        /* Them custom background */
        $default_background = array(
            'default-color' => '#e8e8e8'
        );
        add_theme_support('custom-background');

        /* Them menu */
        register_nav_menu('primary-menu', __('Primary Menu', 'thachpham'));

        /* Tao sidebar */
        $sidebar = array(
            'name' => __('Main Sidebar', 'thachpham'),
            'id' => 'main-sidebar',
            'description' => __('Default sidebar'),
            'class' => 'main-sidebar',
            'before_title' => '<h3 class="widget-head">',
            'after_title' => '</h3>'
        );
        register_sidebar( $sidebar );
    }
    add_action('init', 'thachpham_theme_setup');
}
/* ------------- TEMPLATE FUNCTION ------------- */
/**
 * Tao va hien thi Header
 */
if (! function_exists('thachpham_header')) {

    function thachpham_header()
    {
        ?>
<div class="site-name">
             <?php
        if (is_home()) {
            printf('<h1><a href="%1$s" title="%2$s">%3$s</a></h1>', get_bloginfo('url'), get_bloginfo('description'), get_bloginfo('sitename'));
        } else {
            printf('<p><a href="%1$s" title="%2$s">%3$s</a></p>', get_bloginfo('url'), get_bloginfo('description'), get_bloginfo('sitename'));
        }
        ?>
            </div>
<div class="site-description"><?php bloginfo('description'); ?></div>
<?php
    }
}

/**
 * Thiet lap menu
 */
if (! function_exists('thachpham_menu')) {

    function thachpham_menu($menu)
    {
        $menu = array(
            'theme_location' => $menu,
            'container' => 'div',
            'container_class' => "navigation-inner",
            'menu_id' => 'menu-menu-chinhmain-menu',
            'menu_class' => 'main-menu mom_visibility_desktop',
        );

        wp_nav_menu( $menu );
    }
}

/**
 * Ham tao phan trang don gian
 */
if (! function_exists('thachpham_pagination')) {

    function thachpham_pagination()
    {
        if( is_singular() )
		return;

	global $wp_query;

	/** Stop execution if there's only 1 page */
	if( $wp_query->max_num_pages <= 1 )
		return;

	$paged = get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1;
	$max   = intval( $wp_query->max_num_pages );

	/**	Add current page to the array */
	if ( $paged >= 1 )
		$links[] = $paged;

	/**	Add the pages around the current page to the array */
	if ( $paged >= 3 ) {
		$links[] = $paged - 1;
		$links[] = $paged - 2;
	}

	if ( ( $paged + 2 ) <= $max ) {
		$links[] = $paged + 2;
		$links[] = $paged + 1;
	}

	echo '<div class="navigation"><ul>' . "\n";

	/**	Previous Post Link */
	if ( get_previous_posts_link() )
		printf( '<li>%s</li>' . "\n", get_previous_posts_link() );

	/**	Link to first page, plus ellipses if necessary */
	if ( ! in_array( 1, $links ) ) {
		$class = 1 == $paged ? ' class="active"' : '';

		printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( 1 ) ), '1' );

		if ( ! in_array( 2, $links ) )
			echo '<li>…</li>';
	}

	/**	Link to current page, plus 2 pages in either direction if necessary */
	sort( $links );
	foreach ( (array) $links as $link ) {
		$class = $paged == $link ? ' class="active"' : '';
		printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $link ) ), $link );
	}

	/**	Link to last page, plus ellipses if necessary */
	if ( ! in_array( $max, $links ) ) {
		if ( ! in_array( $max - 1, $links ) )
			echo '<li>…</li>' . "\n";

		$class = $paged == $max ? ' class="active"' : '';
		printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $max ) ), $max );
	}

	/**	Next Post Link */
	if ( get_next_posts_link() )
		printf( '<li>%s</li>' . "\n", get_next_posts_link() );

	echo '</ul></div>' . "\n";
    }
}

/**
 * Ham hien thi thumbnail
 */
if (! function_exists('thachpham_thumbnail')) {

    function thachpham_thumbnail($size)
    {
        if (! is_single() && has_post_thumbnail() && ! post_password_required() || has_post_format('image')) :
            ?>
<figure class="post-thumbnail"><?php the_post_thumbnail( $size ); ?></figure>
<?php endif; ?>
            <?php
    }
}

/**
 * Ham hien thi tieu de post = thachpham_entry_header
 */
if (! function_exists('thachpham_entry_header')) {

    function thachpham_entry_header()
    {
        ?>
                <?php if ( is_single() ) : ?>
<h1>
	<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
</h1>
<?php else : ?>
<h2>
	<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
</h2>



<?php endif;?>
        <?php
    }
}

/**
 * Lay du lieu thong tin cua post = thachpham_entry_meta
 */
if (! function_exists('thachpham_entry_meta')) {

    function thachpham_entry_meta()
    {
        ?>
               <?php if ( !is_page() ) : ?>
<div class="entry-meta">
                <?php
            printf(__('<span class="author">Posted by %1$s', 'thachpham'), get_the_author());
            printf(__('<span class="date-published"> at %1$s', 'thachpham'), get_the_date());
            printf(__('<span class="category"> in %1$s', 'thachpham'), get_the_category_list(','));

            if (comments_open()) :
                echo '<span class="meta-reply">';
                comments_popup_link(__('Leave a comment', 'thachpham'), __('One comment', 'thachpham'), __('% comments', 'thachpham'), __('Read all comments', 'thachpham'));
                echo '</span>';
                    endif;
            ?>
               </div>
<?php endif; ?>
            <?php
    }
}

/**
 * Ham hien thi noi dung cua post page
 */
if (! function_exists('thachpham_entry_content')) {

    function thachpham_entry_content()
    {
        if (! is_single() && ! is_page()) {
            the_excerpt();
        } else {
            the_content();

            /* Phan trang trong single */
            $link_pages = array(
                'before' => __('<p>Page: ', 'thachpham'),
                'after' => '</p>',
                'nextpagelink' => __('Next Page', 'thachpham'),
                'previouspagelink' => __('Previous Page', 'thachpham')
            );
            wp_link_pages($link_pages);
        }
    }
}

/**
 * Them read more
 */
function thachpham_readmore()
{
    return '<a class="read-more" href="' . get_permalink(get_the_ID()) . '">' . __('[Read More]', 'thachpham') . '</a>';
}
add_filter('excerpt_more', 'thachpham_readmore');

/**
 * Ham hien thi tag
 */
if (! function_exists('thachpham_entry_tag')) {

    function thachpham_entry_tag()
    {
        if (has_tag()) :
            echo '<div class="entry-tag">';
            printf(__('Tagged in %1$s', 'thachpham'), get_the_tag_list('', ','));
            echo '</div>';





                endif;
    }
}

/**
 * Gioi thieu - Vi tri - Mat bang
 * Ham thong tin du an
 */
if (! function_exists('thachpham_project_infor')) {

    function thachpham_project_infor()
    {
        $infor = array(
            1086,
            2,
            1376
        );
        foreach ($infor as $value) {
            ?>
<div class="item col-md-4 col-sm-4 col-xs-12">
	<a class="item-image" href="<?php echo(get_page_uri($value)); ?>"
		title="<?php echo get_the_title( $value ); ?>" target="_self"> <img
		src="<?php echo(wp_get_attachment_url( get_post_thumbnail_id($value) )); ?>"
		alt="<?php echo get_the_title( $value ); ?>">
	</a> <a class="item-title icon1"
		href="<?php echo(get_page_uri($value)); ?>"
		title="<?php echo get_the_title( $value ); ?>" target="_self">
		<h2><?php echo get_the_title( $value ); ?></h2>
	</a>
</div>
<?php
        }
    }
}

/**
 * HAM LAY TIN TUC
 * Ham get post boi category
 */
if (! function_exists('thachpham_news_post')) {

    function thachpham_news_post()
    {
        global $post;

        $myposts = get_posts(array(
            'posts_per_page' => 5,
            'category' => 75
        ));

        if ($myposts) {
            foreach ($myposts as $post) :
                setup_postdata($post);
                ?>
<!--<li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>-->
<li>
	<h3>
		<a rel="bookmark" target="_self" href="<?php the_permalink(); ?>"
			title="<?php the_title(); ?>"><?php the_title(); ?></a>
	</h3>
</li>
<?php

endforeach
            ;
            wp_reset_postdata();
        }
    }
}
/**
 * HAM LAY DU AN
 * Ham get post boi category
 */
if (! function_exists('thachpham_project_post')) {

    function thachpham_project_post()
    {
        global $post;

        $myposts = get_posts(array(
            'posts_per_page' => 2,
            'category' => 76
        ));

        if ($myposts) {
            foreach ($myposts as $post) :
                setup_postdata($post);
                ?>
<div class="item col-md-6 col-sm-6 col-xs-12">
	<a class="item-image" href="<?php the_permalink(); ?>"
		title="<?php the_title(); ?>" target="_blank"> <?php the_post_thumbnail(); ?>
						</a> <a class="item-title icon1" href="<?php the_permalink(); ?>"
		title="<?php the_title(); ?>" target="_blank">
		<h2><?php the_title(); ?></h2>
	</a>
</div>
<?php

endforeach
            ;
            wp_reset_postdata();
        }
    }
}

/**
 * Tien ich
 * Ham thong tin du an
 */
if (! function_exists('thachpham_project_feature')) {

    function thachpham_project_feature()
    {
        $featureId = 1389;
        ?>
<div class="item col-sm-12">
	<a class="item-image" href="<?php echo(get_page_uri($featureId)); ?>"
		title="<?php echo get_the_title( $featureId ); ?>" target="_self"> <img
		src="<?php echo(wp_get_attachment_url( get_post_thumbnail_id($featureId) )); ?>"
		alt="<?php echo get_the_title( $featureId ); ?>">
	</a> <a class="item-title icon1"
		href="<?php echo(get_page_uri($featureId)); ?>"
		title="<?php echo get_the_title( $featureId ); ?>" target="_self">
		<h2><?php echo get_the_title( $featureId ); ?></h2>
	</a>
</div>
<?php
    }
}

/**
 * HAM LAY HINH ANH DU AN
 * Ham get post boi category
 */
if (! function_exists('thachpham_project_images')) {

    function thachpham_project_images()
    {
        global $post;

        $myposts = get_posts(array(
            'posts_per_page' => 2,
            'category' => 77
        ));

        if ($myposts) {
            foreach ($myposts as $post) :
                setup_postdata($post);
                ?>
<div class="item col-md-6 col-sm-6 col-xs-12">
	<a class="item-image" href="<?php the_permalink(); ?>"
		title="<?php the_title(); ?>" target="_self"><?php the_post_thumbnail(); ?>
						</a> <a class="item-title icon1" href="<?php the_permalink(); ?>"
		title="<?php the_title(); ?>" target="_self"><h2><?php the_title(); ?></h2></a>
</div>
<?php

endforeach
            ;
            wp_reset_postdata();
        }
    }
}

/**
 * HAM LAY THONG TIN HO TRO DU AN
 * Ham get post boi category
 */
if (! function_exists('thachpham_project_support')) {

    function thachpham_project_support()
    {
        global $post;

        $myposts = get_posts(array(
            'posts_per_page' => 2,
            'category' => 78
        ));

        if ($myposts) {
            foreach ($myposts as $post) :
                setup_postdata($post);
                ?>
<div class="item col-md-6 col-sm-6 col-xs-12">
	<a class="item-image" href="<?php the_permalink(); ?>"
		title="<?php the_title(); ?>" target="_self"><img
		src="<?php echo(wp_get_attachment_url( get_post_thumbnail_id($post->ID))); ?>"
		alt="<?php the_title(); ?>"> </a> <a class="item-title icon1"
		href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"
		target="_self"><h2><?php the_title(); ?></h2></a>
</div>
<?php

endforeach
            ;
            wp_reset_postdata();
        }
    }
}

/**
 * HAM LAY THONG TIN DOI NGU DU AN
 * Ham get post boi category
 */
if (! function_exists('thachpham_project_investment')) {

    function thachpham_project_investment()
    {
        global $post;

        $myposts = get_posts(array(
            'posts_per_page' => 6,
            'category' => 79
        ));

        if ($myposts) {
            foreach ($myposts as $post) :
                setup_postdata($post);
                ?>
<div class="partner-item col-md-2 col-sm-4 col-xs-6">
	<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"
		target="_self"> <img
		src="<?php echo(wp_get_attachment_url( get_post_thumbnail_id($post->ID))); ?>"
		alt="<?php the_title(); ?>">
	</a>
</div>
<?php

endforeach
            ;
            wp_reset_postdata();
        }
    }
}

/**
 * HAM LAY FOOTER
 * Ham get post boi id
 */
if (! function_exists('thachpham_theme_footer_post')) {

    function thachpham_theme_footer_post()
    {
        $featureId = 1426;
        ?>
            <div class="container-fluid">
            	<div id="ctl00_divAltContent2" class="altcontent2 cmszone">

            		<div class="col-md-12 Module Module-138">
            			<div class="ModuleContent">
            				<h4>
            					<div itemtype="http://schema.org/Organization">
								<?php
								$postFooter = get_post( $featureId );
								$content = $postFooter -> post_content;
								echo $content;
								?>
            					</div>
            				</h4>
            			</div>
            		</div>
            	</div>
            </div>
		<?php
    }
}

/**
 * HAM LAY HEADER TOP INFO
 * Ham get post boi id
 */
if (! function_exists('thachpham_theme_top_info')) {

    function thachpham_theme_top_info()
    {
        $featureId = 1436;
        $postHeader = get_post( $featureId );
        $content = $postHeader -> post_content;
        echo $content;
    }
}