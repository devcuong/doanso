<div class="news-box base-box nb-style3">
										<header class="nb-header">
											<h2 class="nb-title" style="">
												<a href="http://doanso.abc/category/phong-trao">Khối BTXH1</a>
											</h2>
										</header>
										<!--nb header-->
										<div class="nb-content">
										<?php 
										// Query get top 6 news
										$btxh1 = array(
										    'post_type'     =>  'btxh1', // lay btxh1
										    'posts_per_page' => 5
										);
										$newsQuery = new WP_Query( $btxh1 );
										if( $newsQuery->have_posts() ) : while( $newsQuery->have_posts() ) : $newsQuery->the_post();
										if($newsQuery->current_post == 0)
										{
										?>
											<div class="recent-news">
												<article
													class="post-17634 post type-post status-publish format-standard has-post-thumbnail category-ban-se-tham-gia category-diem-tin category-hoi-thao category-phong-trao category-sinh-vien-5-tot category-thong-bao category-tin-doan-hoi"
													itemscope="" itemtype="http://schema.org/Article">
													<div class="news-image">
														<a
															href="<?php the_permalink(); ?>"><?php the_post_thumbnail('post-thumbnail', ['class' => 'disappear appear', 'title' => 'Feature image']);
															 ?></a><span
															class="post-format-icon"></span>
													</div>
													<div class="news-summary">
														<h3>
															<a
																href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
														</h3>
														<!--meta-->
														<p>
															<img draggable="false" class="emoji disappear appear"
																alt="??"
																src="http://doanso.abc/wp-content/themes/doanso/images/1f381.png"><?php the_excerpt() ?> <a
																href="<?php the_permalink(); ?>"
																class="read-more-link">Xem thêm</a>
														</p>
													</div>
												</article>

											</div>
											<div class="older-articles">
											<ul>
											<?php } else { ?>
											<li itemscope="" itemtype="http://schema.org/Article"><a
														href="<?php the_permalink(); ?>"><?php the_post_thumbnail('post-thumbnail', ['class' => 'disappear appear', 'title' => 'Feature image']);
															 ?></a>
														<div class="details has-feature-image">
															<h4>
																<a
																	href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
															</h4>
														</div></li>
											<?php } ?>
											<?php endwhile ; ?>
				                            <?php endif; ?>
											<!--recent news-->
											</ul>
											</div>
										</div>
										<footer class="nb-footer">
											<a href="http://doanso.abc/btxh1"
												data-post_type="" class="show-more-ajax" data-offset="5"
												data-number_of_posts="4" data-display="category"
												data-category="289" data-tag="" data-nbs="3"
												data-sort="DESC" data-orderby="date">Xem tiếp
											</a>
										</footer>
									</div>