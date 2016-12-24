	<h1>
        <?php thachpham_entry_header(); ?>
    </div>
		</h1>
	<div class="col-md-7 col-sm-6 col-xs-12">
		<div class="entry_content">
        <?php thachpham_entry_content(); ?>
        <?php ( is_single() ? thachpham_entry_tag() : '' )?>
    </div>
	</div>
	<div class="info-icon button-group col-md-3 col-sm-6 col-xs-12">
		<div class="entry_thumbnail">
        <?php thachpham_thumbnail('large'); ?>
    </div>