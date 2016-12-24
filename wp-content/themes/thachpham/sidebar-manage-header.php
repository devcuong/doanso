<!DOCTYPE html>
<html lang="<?php language_attributes(); ?>" />
<head>
<meta charset="<?php bloginfo('charset'); ?>" />
<meta http-equiv='cache-control' content='no-cache'>
<link rel="profile" href="http://gmgp.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo('pingback_url') ?>" />
<?php wp_head(); ?>
</head>
<body <?php body_class(); ?> >
	<div id="wr_header" class="header">
		<div class="header-register" id="headerregister">
			<div class="action">
				<?php if(!is_user_logged_in()){
					echo "<div class='logon'>";
					echo "<a href='/dang-nhap.htm' rel='nofollow' title='Đăng nhập'> <span>Đăng nhập</span></a>";
					echo "</div>";
					echo "<div class='register'>";
					echo "<a href='/dang-ky.htm' rel='nofollow' title='Đăng ký'> <span>Đăng ký</span></a>";
					echo "</div>";	
				} else{
					$current_user = wp_get_current_user();
					echo "<div class='logon'>";
					echo "<a href='http://dothi24h.abc/logout/' rel='nofollow' title='Đăng xuất'> <span>";
					echo $current_user->display_name;
					echo "</span></a>";
					echo "</div>";
				} ?>
			</div>
		</div>
		<div class="header-logo">
			<div class="hdcontent">
				<div class="content-logo"> <?php thachpham_header(); ?></div>

				<div class="MultiBanner1 content-banner" id="Banner_bxh">
					<a href="http://banxehoi.com" target="_blank" rel="nofollow"> <img
						src="http://dothi.net/Images/banner/banner-bxh-151230-b1-728x90.gif"></a>
				</div>
			</div>

		</div>
	</div>
	<div class="adv-menu">
		<div class="menu-content"><?php thachpham_menu('primary-menu'); ?>
</div>
	</div>
	<div id="container">