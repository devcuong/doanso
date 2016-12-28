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
					<div class="vc_row wpb_row vc_row-fluid vc_custom_1438851416240">
					<div class="vc_col-sm-12 wpb_column vc_column_container ">
						<div class="wpb_wrapper">
							<!--News box three-->
									<?php get_sidebar('btxh1')?>
									<!--news box-->
							<!--News box three-->


						</div>
					</div>
					</div>
					<div class="vc_row wpb_row vc_row-fluid vc_custom_1438851416240">
					<div class="vc_col-sm-12 wpb_column vc_column_container ">
						<div class="wpb_wrapper">
							<!--News box three-->
							<div class="header-right header-right_custom-content"
								style="margin-bottom: 20px">
								<?php
									$featureId = 1504;
									$postHeader = get_post( $featureId );
									$content = $postHeader -> post_content;
									echo $content;
								?>
							</div>
									<!--news box-->
							<!--News box three-->


						</div>
					</div>
					</div>
				<div class="vc_row wpb_row vc_row-fluid vc_custom_1438851416240">
					<div class="vc_col-sm-12 wpb_column vc_column_container ">
						<div class="wpb_wrapper">
							<!--News box three-->
									<?php get_sidebar('btxh2')?>
									<!--news box-->
							<!--News box three-->


						</div>
					</div>
				</div>
				<div class="vc_row wpb_row vc_row-fluid vc_custom_1438851416240">
					<div class="vc_col-sm-12 wpb_column vc_column_container ">
						<div class="wpb_wrapper">
							<!--News box three-->
									<?php get_sidebar('hcsn')?>
									<!--news box-->
							<!--News box three-->
						</div>
					</div>
				</div>
				<div class="vc_row wpb_row vc_row-fluid vc_custom_1438851416240">
					<div class="vc_col-sm-12 wpb_column vc_column_container ">
						<div class="wpb_wrapper">
							<!--News box three-->
									<?php get_sidebar('0506')?>
									<!--news box-->
							<!--News box three-->
						</div>
					</div>
				</div>
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
