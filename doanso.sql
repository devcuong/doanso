/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : doanso

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-12-30 05:54:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `wp_commentmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_comments`
-- ----------------------------
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_comments
-- ----------------------------
INSERT INTO `wp_comments` VALUES ('1', '1', 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-12-21 04:28:38', '2016-12-21 04:28:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('2', '1077', 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es/', '24.126.245.62', '2013-03-15 18:16:59', '2013-03-15 23:16:59', 'Ello! Pretend you\'re reading this comment with an English accent.', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('3', '149', 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es', '59.167.157.3', '2013-01-04 10:15:32', '2013-01-04 16:15:32', 'There are a few checklist items that should be in each comment.\n\n<ul>\n<li>The commenter\'s <strong>gravatar</strong>. Optional, but a best practice. Use get_comment_author_email.</li>\n<li>The commenter\'s <strong>name</strong>. Use <a href=\"http://codex.wordpress.org/Function_Reference/comment_author\" title=\"Comment Author\" rel=\"nofollow\">comment_author</a>.</li>\n<li>The commenter\'s <strong>URL</strong>. Usually applied as a link to the commenter\'s name. Use <a href=\"http://codex.wordpress.org/Function_Reference/comment_author_url\" title=\"Comment Author URL\" rel=\"nofollow\">comment_author_url</a></li>\n<li>The <strong>date / time</strong> the comment was made. Use <a href=\"http://codex.wordpress.org/Function_Reference/get_comment_date\" title=\"Get Comment Date\" rel=\"nofollow\">get_comment_date</a>.</li>\n<li>A <strong>permalink</strong> to the comment. Usually applied as a link to the date / time of the comment. Use <a href=\"http://codex.wordpress.org/Function_Reference/get_comment_link\" title=\"Get Comment Link\" rel=\"nofollow\">get_comment_link</a></li>\n<li>Indication of a <strong>comment left by the post author</strong>. Style the <code>.bypostauthor</code> class.</li>\n<li>The <strong>comment text</strong>. Use <a href=\"http://codex.wordpress.org/Function_Reference/comment_text\" title=\"Comment Text\" rel=\"nofollow\">comment_text</a>.</li>\n<li>An <strong>edit</strong> comment link. Use <a href=\"http://codex.wordpress.org/Function_Reference/edit_comment_link\" title=\"Edit Comment Link\" rel=\"nofollow\">edit_comment_link</a>.</li>\n<li>A comment <strong>reply</strong> link. Used for threaded comments. Use <a href=\"http://codex.wordpress.org/Function_Reference/comment_reply_link\" title=\"Comment Reply Link\" rel=\"nofollow\">comment_reply_link</a>.</li>\n</ul>', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('4', '149', 'Tom McFarlin', 'tom@tommcfarlin.com', 'http://tommcfarlin.com', '59.167.157.3', '2012-09-03 10:18:04', '2012-09-03 15:18:04', '<h2>Headings</h2>\n\n<h1>Header one</h1>\n\n<h2>Header two</h2>\n\n<h3>Header three</h3>\n\n<h4>Header four</h4>\n\n<h5>Header five</h5>\n\n<h6>Header six</h6>\n\n<h2>Blockquotes</h2>\n\nSingle line blockquote:\n\n<blockquote>Stay hungry. Stay foolish.</blockquote>\n\nMulti line blockquote with a cite reference:\n\n<blockquote>People think focus means saying yes to the thing you\'ve got to focus on. But that\'s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I\'m actually as proud of the things we haven\'t done as the things I have done. Innovation is saying no to 1,000 things. <cite>Steve Jobs - Apple Worldwide Developers\' Conference, 1997</cite></blockquote>\n\n<h2>Tables</h2>\n\n<table>\n    <tbody>\n        <tr>\n            <th>Employee</th>\n            <th class=\"views\">Salary</th>\n            <th></th>\n        </tr>\n        <tr class=\"odd\">\n            <td><a href=\"http://john.do/\" rel=\"nofollow\">John Saddington</a></td>\n            <td>$1</td>\n            <td>Because that\'s all Steve Job\' needed for a salary.</td>\n        </tr>\n        <tr class=\"even\">\n            <td><a href=\"http://tommcfarlin.com/\" rel=\"nofollow\">Tom McFarlin</a></td>\n            <td>$100K</td>\n            <td>For all the blogging he does.</td>\n        </tr>\n        <tr class=\"odd\">\n            <td><a href=\"http://jarederickson.com/\" rel=\"nofollow\">Jared Erickson</a></td>\n            <td>$100M</td>\n            <td>Pictures are worth a thousand words, right? So Tom x 1,000.</td>\n        </tr>\n        <tr class=\"even\">\n            <td><a href=\"http://chrisam.es/\" rel=\"nofollow\">Chris Ames</a></td>\n            <td>$100B</td>\n            <td>With hair like that?! Enough said...</td>\n        </tr>\n    </tbody>\n</table>\n\n<h2>Definition Lists</h2>\n\n<dl>\n    <dt>Definition List Title</dt>\n    <dd>Definition list division.</dd>\n    <dt>Startup</dt>\n    <dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd>\n    <dt>#dowork</dt>\n    <dd>Coined by Rob Dyrdek and his personal body guard Christopher \"Big Black\" Boykins, \"Do Work\" works as a self motivator, to motivating your friends.</dd>\n    <dt>Do It Live</dt>\n    <dd>I\'ll let Bill O\'Reilly will <a href=\"https://www.youtube.com/watch?v=O_HyZ5aW76c\" title=\"We\'ll Do It Live\" rel=\"nofollow\">explain</a> this one.</dd>\n</dl>\n\n<h2>Unordered Lists (Nested)</h2>\n\n<ul>\n    <li>List item one\n        <ul>\n            <li>List item one\n                <ul>\n                    <li>List item one</li>\n                    <li>List item two</li>\n                    <li>List item three</li>\n                    <li>List item four</li>\n            	</ul>\n            </li>\n            <li>List item two</li>\n            <li>List item three</li>\n            <li>List item four</li>\n        </ul>\n    </li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n\n<h2>Ordered List (Nested)</h2>\n\n<ol>\n    <li>List item one\n        <ol>\n            <li>List item one\n                <ol>\n                    <li>List item one</li>\n                    <li>List item two</li>\n                    <li>List item three</li>\n                    <li>List item four</li>\n                </ol>\n            </li>\n            <li>List item two</li>\n            <li>List item three</li>\n            <li>List item four</li>\n        </ol>\n    </li>\n    <li>List item two</li>\n    <li>List item three</li>\n    <li>List item four</li>\n</ol>\n\n<h2>HTML Tags</h2>\n\nThese supported tags come from the WordPress.com code <a href=\"http://en.support.wordpress.com/code/\" title=\"Code\" rel=\"nofollow\">FAQ</a>.\n\n<strong>Address Tag</strong>\n\n<address>\n1 Infinite Loop\nCupertino, CA 95014\nUnited States\n</address>\n\n<strong>Anchor Tag (aka. Link)</strong>\n\nThis is an example of a <a href=\"http://apple.com\" title=\"Apple\" rel=\"nofollow\">link</a>.\n\n<strong>Abbreviation Tag</strong>\n\nThe abbreviation <abbr title=\"Seriously\">srsly</abbr> stands for \"seriously\".\n\n<strong>Acronym Tag</strong>\n\nThe acronym <acronym title=\"For The Win\">ftw</acronym> stands for \"for the win\".\n\n<strong>Big Tag</strong>\n\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\n\n<strong>Cite Tag</strong>\n\n\"Code is poetry.\" --<cite>Automattic</cite>\n\n<strong>Code Tag</strong>\n\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\n\n<strong>Delete Tag</strong>\n\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\n\n<strong>Emphasize Tag</strong>\n\nThe emphasize tag should <em>italicize</em> text.\n\n<strong>Insert Tag</strong>\n\nThis tag should denote <ins>inserted</ins> text.\n\n<strong>Keyboard Tag</strong>\n\nThis scarsly known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Preformatted Tag</strong>\n\nThis tag styles large blocks of code.\n\n<pre>\n.post-title {\n	margin: 0 0 5px;\n	font-weight: bold;\n	font-size: 38px;\n	line-height: 1.2;\n}\n</pre>\n\n<strong>Quote Tag</strong>\n\n<q>Developers, developers, developers...</q> --Steve Ballmer\n\n<strong>Strong Tag</strong>\n\nThis tag shows <strong>bold<strong> text.\n\n<strong>Subscript Tag</strong>\n\nGetting our science styling on with H<sub>2</sub>O, which should push the \"2\" down.\n\n<strong>Superscript Tag</strong>\n\nStill sticking with science and Albert Einstein\'s E = MC<sup>2</sup>, which should lift the \"2\" up.\n\n<strong>Teletype Tag</strong>\n\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Variable Tag</strong>\n\nThis allows you to denote <var>variables</var>.', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('5', '149', 'Anonymous User', 'fake@email.com', '', '67.3.69.40', '2013-03-11 23:45:54', '2013-03-12 04:45:54', 'This user it trying to be anonymous.\n\n<ul>\n    <li>They used a fake email, so there should be no <a href=\"http://gravatar.com/\" title=\"Gravatar\" rel=\"nofollow\">Gravatar</a> associated with it.</li>\n    <li>They did not speify a website, so there should be no link to it in the comment.</li>\n</ul>', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('6', '149', 'Jason bradley', 'jason.bradley@me.com', 'http://everchangingmedia.com/', '204.54.106.1', '2013-03-12 13:17:35', '2013-03-12 18:17:35', 'Comments? I love comments!', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('7', '149', 'Matt Mullenweg', 'm@mullenweg.com', 'http://ma.tt/', '24.126.245.62', '2013-03-14 07:53:26', '2013-03-14 12:53:26', 'These tests are amazing!', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('8', '149', 'Michael Novotny', 'manovotny@gmail.com', '', '24.126.245.62', '2013-03-14 07:56:46', '2013-03-14 12:56:46', 'Author Comment.', '0', 'post-trashed', '', '', '0', '1');
INSERT INTO `wp_comments` VALUES ('9', '149', 'Jared Erickson', 'jared@lessmade.com', 'http://jarederickson.com/', '24.126.245.62', '2013-03-14 07:57:01', '2013-03-14 12:57:01', 'Comment Depth 01', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('10', '149', 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es/', '24.126.245.62', '2013-03-14 08:01:21', '2013-03-14 13:01:21', 'Comment Depth 02', '0', 'post-trashed', '', '', '9', '0');
INSERT INTO `wp_comments` VALUES ('11', '149', 'John Saddington', 'me@john.do', 'http://john.do/', '24.126.245.62', '2013-03-14 08:02:06', '2013-03-14 13:02:06', 'Comment Depth 03', '0', 'post-trashed', '', '', '10', '0');
INSERT INTO `wp_comments` VALUES ('12', '149', 'Tom McFarlin', 'tom@tommcfarlin.com', 'http://tommcfarlin.com/', '24.126.245.62', '2013-03-14 08:03:22', '2013-03-14 13:03:22', 'Comment Depth 04', '0', 'post-trashed', '', '', '11', '0');
INSERT INTO `wp_comments` VALUES ('13', '149', 'Michael Novotny', 'manovotny@gmail.com', 'http://manovotny.com/', '24.126.245.62', '2013-03-14 08:10:29', '2013-03-14 13:10:29', 'Comment Depth 05\n\nAlso an author comment.', '0', 'post-trashed', '', '', '12', '1');
INSERT INTO `wp_comments` VALUES ('14', '149', 'Jason Bradley', 'jason.bradley@me.com', 'http://everchangingmedia.com/', '24.126.245.62', '2013-03-14 08:12:16', '2013-03-14 13:12:16', 'Comment Depth 06', '0', 'post-trashed', '', '', '13', '0');
INSERT INTO `wp_comments` VALUES ('15', '149', 'Jared Erickson', 'jared@lessmade.com', 'http://jarederickson.com/', '24.126.245.62', '2013-03-14 08:12:58', '2013-03-14 13:12:58', 'Comment Depth 07', '0', 'post-trashed', '', '', '14', '0');
INSERT INTO `wp_comments` VALUES ('16', '149', 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es/', '24.126.245.62', '2013-03-14 08:13:42', '2013-03-14 13:13:42', 'Comment Depth 08', '0', 'post-trashed', '', '', '15', '0');
INSERT INTO `wp_comments` VALUES ('17', '149', 'John Saddington', 'me@john.do', 'http://john.do/', '24.126.245.62', '2013-03-14 08:14:13', '2013-03-14 13:14:13', 'Comment Depth 09', '0', 'post-trashed', '', '', '16', '0');
INSERT INTO `wp_comments` VALUES ('18', '149', 'Michael Novotny', 'manovotny@gmail.com', 'http://manovotny.com/', '24.126.245.62', '2013-03-14 08:14:47', '2013-03-14 13:14:47', 'Comment Depth 10\n\nAlso an author comment.', '0', 'post-trashed', '', '', '17', '1');
INSERT INTO `wp_comments` VALUES ('19', '149', 'John Saddington', 'me@john.do', 'http://john.do/', '24.126.245.62', '2013-03-14 09:29:30', '2013-03-14 14:29:30', 'Video comment.\n\n<iframe width=\"640\" height=\"360\" src=\"http://www.youtube.com/embed/9bZkp7q19f0\" frameborder=\"0\" allowfullscreen></iframe>', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('20', '149', 'Eryn Erickson', 'eryn@lessmade.com', 'http://soworthloving.com/', '24.126.245.62', '2013-03-14 09:56:43', '2013-03-14 14:56:43', 'Image comment.\n\n<img src=\"http://wptest.io/demo/wp-content/uploads/2013/03/soworthloving-wallpaper.jpg\" alt=\"I Am Worth Loving Wallpaper\" />', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('21', '149', 'WP Daily', 'hello@wpdaily.com', 'http://wpdaily.co/', '24.126.245.62', '2013-03-14 11:23:24', '2013-03-14 16:23:24', 'We are totally going to blog about these tests!', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('22', '149', '8BIT', 'sales@8bit.io', 'http://8bit.io/', '24.126.245.62', '2013-03-14 11:27:54', '2013-03-14 16:27:54', 'We use these tests all the time! Killer stuff!', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('23', '149', 'Michael Novotny', 'manovotny@gmail.com', 'http://manovotny.com/', '24.126.245.62', '2013-03-14 11:30:33', '2013-03-14 16:30:33', 'Thanks for all the comments, everyone!', '0', 'post-trashed', '', '', '0', '1');
INSERT INTO `wp_comments` VALUES ('24', '151', 'Ping 1 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-1/', '72.232.101.12', '2007-11-21 11:31:12', '2007-11-21 01:31:12', '[...] Trackback test. [...]', '0', 'post-trashed', '', 'pingback', '0', '0');
INSERT INTO `wp_comments` VALUES ('25', '151', 'Ping 2 with a much longer title than the previous ping, which was called Ping 1 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-2-with-a-much-longer-title-than-the-previous-ping-which-was-called-ping-1/', '72.232.101.12', '2007-11-21 11:35:47', '2007-11-21 01:35:47', '[...] Another trackback test.  Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec hendrerit gravida nisi. Praesent libero odio, tincidunt nec, fringilla et, mollis ut, ipsum. Proin a lacus quis nisi pulvinar bibendum. Donec massa justo, dapibus at, imperdiet vestibulum, dapibus in, leo. Donec pretium tellus in dui. Phasellus tristique aliquet justo. Donec sodales. Nulla urna mi, molestie ac, malesuada sit amet, sagittis id, lacus. Mauris auctor leo ac justo. Proin convallis. Nulla eleifend dictum mi. Donec at lectus. Integer augue sapien, ornare vitae, rhoncus quis, rhoncus sed, sapien. Nunc mattis diam sodales diam.Etiam porttitor, ante sed varius semper, ante arcu rutrum tortor, at luctus nunc urna id nibh. Fusce sodales. Integer sed ligula. Donec posuere, nibh aliquet auctor congue, augue est porttitor odio, imperdiet facilisis tortor urna vel mauris. Pellentesque pretium, lorem non pellentesque varius, elit diam ultrices mi, sed posuere sapien lectus sed mi. Donec vestibulum urna. Donec gravida elit et enim. Ut dignissim neque ut erat. Morbi tincidunt nunc vitae lorem. Morbi rhoncus mi. Praesent facilisis tincidunt enim. Ut pulvinar. Suspendisse potenti. Vivamus turpis odio, porta at, malesuada in, iaculis eget, odio. Aenean faucibus, urna quis congue dignissim, orci tellus ornare leo, eget viverra ante ipsum sit amet magna. Suspendisse mattis nunc at justo. Nullam malesuada lobortis lorem. Morbi ultricies. Nam risus erat, sagittis ut, tristique rhoncus, luctus id, ante. Maecenas ac dui. [...]', '0', 'post-trashed', '', 'pingback', '0', '0');
INSERT INTO `wp_comments` VALUES ('26', '151', 'Ping 4 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-4/', '72.232.101.12', '2007-11-21 11:39:25', '2007-11-21 01:39:25', '[...] Another short one. [...]', '0', 'post-trashed', '', 'pingback', '0', '0');
INSERT INTO `wp_comments` VALUES ('27', '151', 'Ping 3 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-3/', '72.232.101.12', '2007-11-21 11:38:22', '2007-11-21 01:38:22', '[...] Just a short one. [...]', '0', 'post-trashed', '', 'pingback', '0', '0');
INSERT INTO `wp_comments` VALUES ('28', '151', 'Tom McFarlin', 'tom@tommcfarlin.com', 'http://tommcfarlin.com', '146.214.103.251', '2010-06-11 15:27:04', '2010-06-11 20:27:04', 'This is a comment amongst pingbacks and trackbacks.', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('29', '131', 'Tom McFarlin', 'tom@tommcfarlin.com', 'http://tommcfarlin.com/', '24.126.245.62', '2013-03-14 11:56:08', '2013-03-14 16:56:08', 'This comment should not be visible until the password is entered.', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('30', '134', 'Chris Ames', 'yo@chrisam.es', 'http://chrisam.es', '24.126.245.62', '2013-03-14 12:35:07', '2013-03-14 17:35:07', 'Having no content in the post should have no adverse effects on the layout or functionality.', '0', 'post-trashed', '', '', '0', '0');
INSERT INTO `wp_comments` VALUES ('31', '877', 'Jared Erickson', 'jared@lessmade.com', 'http://jarederickson.com/', '24.126.245.62', '2013-03-14 13:07:19', '2013-03-14 18:07:19', 'Non-breaking text is my favorite!\n\nSuper/Duper/Long/NonBreaking/Path/Name/To/A/File/That/Is/Way/Deep/Down/In/Some/Mysterious/Remote/Desolate/Part/Of/The/Operating/System/To/A/File/That/Just/So/Happens/To/Be/Strangely/Named/Supercalifragilisticexpialidocious.txt', '0', 'post-trashed', '', '', '0', '0');

-- ----------------------------
-- Table structure for `wp_huge_itslider_images`
-- ----------------------------
DROP TABLE IF EXISTS `wp_huge_itslider_images`;
CREATE TABLE `wp_huge_itslider_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image_url` text COLLATE utf8mb4_unicode_ci,
  `sl_url` text COLLATE utf8mb4_unicode_ci,
  `sl_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_target` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl_stitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl_sdesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl_postlink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) unsigned DEFAULT NULL,
  `published_in_sl_width` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_huge_itslider_images
-- ----------------------------
INSERT INTO `wp_huge_itslider_images` VALUES ('1', '', '1', '', 'http://doanso.abc/wp-content/plugins/slider-image/Front_images/slides/slide1.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', '1', '1', null);
INSERT INTO `wp_huge_itslider_images` VALUES ('2', 'Simple Usage', '1', '', 'http://doanso.abc/wp-content/plugins/slider-image/Front_images/slides/slide2.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', '2', '1', null);
INSERT INTO `wp_huge_itslider_images` VALUES ('3', 'Huge-IT Slider', '1', 'The slider allows having unlimited amount of images with their titles and descriptions. The slider uses autogenerated shortcodes making it easier for the users to add it to the custom location.', 'http://doanso.abc/wp-content/plugins/slider-image/Front_images/slides/slide3.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', '3', '1', null);

-- ----------------------------
-- Table structure for `wp_huge_itslider_params`
-- ----------------------------
DROP TABLE IF EXISTS `wp_huge_itslider_params`;
CREATE TABLE `wp_huge_itslider_params` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_huge_itslider_params
-- ----------------------------
INSERT INTO `wp_huge_itslider_params` VALUES ('89', 'slider_crop_image', 'Slider crop image', 'Slider crop image', 'resize');
INSERT INTO `wp_huge_itslider_params` VALUES ('90', 'slider_title_color', 'Slider title color', 'Slider title color', '000000');
INSERT INTO `wp_huge_itslider_params` VALUES ('91', 'slider_title_font_size', 'Slider title font size', 'Slider title font size', '13');
INSERT INTO `wp_huge_itslider_params` VALUES ('92', 'slider_description_color', 'Slider description color', 'Slider description color', 'ffffff');
INSERT INTO `wp_huge_itslider_params` VALUES ('93', 'slider_description_font_size', 'Slider description font size', 'Slider description font size', '13');
INSERT INTO `wp_huge_itslider_params` VALUES ('94', 'slider_title_position', 'Slider title position', 'Slider title position', 'right-top');
INSERT INTO `wp_huge_itslider_params` VALUES ('95', 'slider_description_position', 'Slider description position', 'Slider description position', 'right-bottom');
INSERT INTO `wp_huge_itslider_params` VALUES ('96', 'slider_title_border_size', 'Slider Title border size', 'Slider Title border size', '0');
INSERT INTO `wp_huge_itslider_params` VALUES ('97', 'slider_title_border_color', 'Slider title border color', 'Slider title border color', 'ffffff');
INSERT INTO `wp_huge_itslider_params` VALUES ('98', 'slider_title_border_radius', 'Slider title border radius', 'Slider title border radius', '4');
INSERT INTO `wp_huge_itslider_params` VALUES ('99', 'slider_description_border_size', 'Slider description border size', 'Slider description border size', '0');
INSERT INTO `wp_huge_itslider_params` VALUES ('100', 'slider_description_border_color', 'Slider description border color', 'Slider description border color', 'ffffff');
INSERT INTO `wp_huge_itslider_params` VALUES ('101', 'slider_description_border_radius', 'Slider description border radius', 'Slider description border radius', '0');
INSERT INTO `wp_huge_itslider_params` VALUES ('102', 'slider_slideshow_border_size', 'Slider border size', 'Slider border size', '0');
INSERT INTO `wp_huge_itslider_params` VALUES ('103', 'slider_slideshow_border_color', 'Slider border color', 'Slider border color', 'ffffff');
INSERT INTO `wp_huge_itslider_params` VALUES ('104', 'slider_slideshow_border_radius', 'Slider border radius', 'Slider border radius', '0');
INSERT INTO `wp_huge_itslider_params` VALUES ('105', 'slider_navigation_type', 'Slider navigation type', 'Slider navigation type', '1');
INSERT INTO `wp_huge_itslider_params` VALUES ('106', 'slider_navigation_position', 'Slider navigation position', 'Slider navigation position', 'bottom');
INSERT INTO `wp_huge_itslider_params` VALUES ('107', 'slider_title_background_color', 'Slider title background color', 'Slider title background color', 'ffffff');
INSERT INTO `wp_huge_itslider_params` VALUES ('108', 'slider_description_background_color', 'Slider description background color', 'Slider description background color', '000000');
INSERT INTO `wp_huge_itslider_params` VALUES ('109', 'slider_title_transparent', 'Slider title has background', 'Slider title has background', 'on');
INSERT INTO `wp_huge_itslider_params` VALUES ('110', 'slider_description_transparent', 'Slider description has background', 'Slider description has background', 'on');
INSERT INTO `wp_huge_itslider_params` VALUES ('111', 'slider_slider_background_color', 'Slider slider background color', 'Slider slider background color', 'ffffff');
INSERT INTO `wp_huge_itslider_params` VALUES ('112', 'slider_dots_position', 'slider dots position', 'slider dots position', 'top');
INSERT INTO `wp_huge_itslider_params` VALUES ('113', 'slider_active_dot_color', 'slider active dot color', '', 'ffffff');
INSERT INTO `wp_huge_itslider_params` VALUES ('114', 'slider_dots_color', 'slider dots color', '', '000000');
INSERT INTO `wp_huge_itslider_params` VALUES ('115', 'slider_description_width', 'Slider description width', 'Slider description width', '70');
INSERT INTO `wp_huge_itslider_params` VALUES ('116', 'slider_description_height', 'Slider description height', 'Slider description height', '50');
INSERT INTO `wp_huge_itslider_params` VALUES ('117', 'slider_description_background_transparency', 'slider description background transparency', 'slider description background transparency', '70');
INSERT INTO `wp_huge_itslider_params` VALUES ('118', 'slider_description_text_align', 'description text-align', 'description text-align', 'justify');
INSERT INTO `wp_huge_itslider_params` VALUES ('119', 'slider_title_width', 'slider title width', 'slider title width', '30');
INSERT INTO `wp_huge_itslider_params` VALUES ('120', 'slider_title_height', 'slider title height', 'slider title height', '50');
INSERT INTO `wp_huge_itslider_params` VALUES ('121', 'slider_title_background_transparency', 'slider title background transparency', 'slider title background transparency', '70');
INSERT INTO `wp_huge_itslider_params` VALUES ('122', 'slider_title_text_align', 'title text-align', 'title text-align', 'right');
INSERT INTO `wp_huge_itslider_params` VALUES ('123', 'slider_title_has_margin', 'title has margin', 'title has margin', 'on');
INSERT INTO `wp_huge_itslider_params` VALUES ('124', 'slider_description_has_margin', 'description has margin', 'description has margin', 'on');
INSERT INTO `wp_huge_itslider_params` VALUES ('125', 'slider_show_arrows', 'Slider show left right arrows', 'Slider show left right arrows', 'on');
INSERT INTO `wp_huge_itslider_params` VALUES ('126', 'loading_icon_type', 'Slider loading icon type', 'Slider loading icon type', '1');
INSERT INTO `wp_huge_itslider_params` VALUES ('127', 'slider_thumb_count_slides', 'Slide thumbs count', 'Slide thumbs count', '3');
INSERT INTO `wp_huge_itslider_params` VALUES ('128', 'slider_dots_position_new', 'Slide Dots Position', 'Slide Dots Position', 'dotstop');
INSERT INTO `wp_huge_itslider_params` VALUES ('129', 'slider_thumb_back_color', 'Thumbnail Background Color', 'Thumbnail Background Color', 'FFFFFF');
INSERT INTO `wp_huge_itslider_params` VALUES ('130', 'slider_thumb_passive_color', 'Passive Thumbnail Color', 'Passive Thumbnail Color', 'FFFFFF');
INSERT INTO `wp_huge_itslider_params` VALUES ('131', 'slider_thumb_passive_color_trans', 'Passive Thumbnail Color Transparency', 'Passive Thumbnail Color Transparency', '50');
INSERT INTO `wp_huge_itslider_params` VALUES ('132', 'slider_thumb_height', 'Slider Thumb Height', 'Slider Thumb Height', '100');

-- ----------------------------
-- Table structure for `wp_huge_itslider_sliders`
-- ----------------------------
DROP TABLE IF EXISTS `wp_huge_itslider_sliders`;
CREATE TABLE `wp_huge_itslider_sliders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl_height` int(11) unsigned DEFAULT NULL,
  `sl_width` int(11) unsigned DEFAULT NULL,
  `pause_on_hover` text COLLATE utf8mb4_unicode_ci,
  `slider_list_effects_s` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `param` text COLLATE utf8mb4_unicode_ci,
  `sl_position` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text COLLATE utf8mb4_unicode_ci,
  `sl_loading_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dotstop',
  `video_autoplay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `random_images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_huge_itslider_sliders
-- ----------------------------
INSERT INTO `wp_huge_itslider_sliders` VALUES ('1', 'My First Slider', '187', '307', 'on', 'random', '4000', '1000', 'center', '1', '300', 'off', 'dotstop', 'off', 'on');

-- ----------------------------
-- Table structure for `wp_links`
-- ----------------------------
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_links
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_nextend2_image_storage`
-- ----------------------------
DROP TABLE IF EXISTS `wp_nextend2_image_storage`;
CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `image` text NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_nextend2_image_storage
-- ----------------------------
INSERT INTO `wp_nextend2_image_storage` VALUES ('1', '11bf60726bef9211416c8607c6722a73', '$upload$/2016/09/1masteri-thao-dien-6.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');
INSERT INTO `wp_nextend2_image_storage` VALUES ('2', '48e9715537e595cf450408befb786918', '$upload$/2016/09/masterithaodien.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');
INSERT INTO `wp_nextend2_image_storage` VALUES ('3', '6be55c60e1d64fb8dfc3a312b1bf19f2', '$upload$/2016/09/masteri-thao-dien-2.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');
INSERT INTO `wp_nextend2_image_storage` VALUES ('4', '49a8ed469d6983d4898be0971ac16459', 'http://smartslider3.com/sample/programmer.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIxMjAwfCp8NjAwIn0sImRlc2t0b3AtcmV0aW5hIjp7ImltYWdlIjoiIiwic2l6ZSI6IjB8KnwwIn0sInRhYmxldCI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQtcmV0aW5hIjp7ImltYWdlIjoiIiwic2l6ZSI6IjB8KnwwIn0sIm1vYmlsZSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUtcmV0aW5hIjp7ImltYWdlIjoiIiwic2l6ZSI6IjB8KnwwIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES ('5', 'a0b16b7e1bd6a957cb98b5b9edb85029', 'http://smartslider3.com/sample/free1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIxMjAwfCp8NjAwIn0sImRlc2t0b3AtcmV0aW5hIjp7ImltYWdlIjoiIiwic2l6ZSI6IjB8KnwwIn0sInRhYmxldCI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQtcmV0aW5hIjp7ImltYWdlIjoiIiwic2l6ZSI6IjB8KnwwIn0sIm1vYmlsZSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUtcmV0aW5hIjp7ImltYWdlIjoiIiwic2l6ZSI6IjB8KnwwIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES ('6', 'b289ede7fdbce72fd19c282a305de016', 'http://smartslider3.com/sample/photographer.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIxMjAwfCp8NjAwIn0sImRlc2t0b3AtcmV0aW5hIjp7ImltYWdlIjoiIiwic2l6ZSI6IjB8KnwwIn0sInRhYmxldCI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQtcmV0aW5hIjp7ImltYWdlIjoiIiwic2l6ZSI6IjB8KnwwIn0sIm1vYmlsZSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUtcmV0aW5hIjp7ImltYWdlIjoiIiwic2l6ZSI6IjB8KnwwIn19');

-- ----------------------------
-- Table structure for `wp_nextend2_section_storage`
-- ----------------------------
DROP TABLE IF EXISTS `wp_nextend2_section_storage`;
CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application` varchar(20) NOT NULL,
  `section` varchar(32) NOT NULL,
  `referencekey` varchar(64) DEFAULT '',
  `value` mediumtext NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  `editable` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `application` (`application`,`section`,`referencekey`),
  KEY `application_2` (`application`,`section`)
) ENGINE=MyISAM AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_nextend2_section_storage
-- ----------------------------
INSERT INTO `wp_nextend2_section_storage` VALUES ('10000', 'smartslider', 'settings', '', '{\"discover\":0}', '0', '1');
INSERT INTO `wp_nextend2_section_storage` VALUES ('10001', 'smartslider', 'sliderChanged', '2', '1', '0', '1');
INSERT INTO `wp_nextend2_section_storage` VALUES ('10002', 'smartslider', 'free', 'subscribeOnImport', '1', '0', '1');
INSERT INTO `wp_nextend2_section_storage` VALUES ('10003', 'smartslider', 'sliderChanged', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for `wp_nextend2_smartslider3_generators`
-- ----------------------------
DROP TABLE IF EXISTS `wp_nextend2_smartslider3_generators`;
CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(254) NOT NULL,
  `type` varchar(254) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_nextend2_smartslider3_generators
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_nextend2_smartslider3_sliders`
-- ----------------------------
DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders`;
CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `params` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_nextend2_smartslider3_sliders
-- ----------------------------
INSERT INTO `wp_nextend2_smartslider3_sliders` VALUES ('1', 'Sample Slider', 'simple', '{\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"12\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-action\":\"click\",\"widget-bullet-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJwYWRkaW5nIjoiNXwqfDV8Knw1fCp8NXwqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiI1MCIsImV4dHJhIjoibWFyZ2luOiA0cHg7In0seyJleHRyYSI6IiIsImJhY2tncm91bmRjb2xvciI6IjA5YjQ3NGZmIn1dfQ==\",\"widget-bullet-bar\":\"\",\"widget-bullet-align\":\"center\",\"widget-bullet-orientation\":\"auto\",\"widget-bullet-bar-full-size\":0,\"widget-bullet-overlay\":0,\"widget-bullet-thumbnail-show-image\":\"1\",\"widget-bullet-thumbnail-width\":\"120\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDsifV19\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-arrow-responsive-desktop\":1,\"widget-arrow-responsive-tablet\":0.7,\"widget-arrow-responsive-mobile\":0.5,\"widget-arrow-previous-image\":\"\",\"widget-arrow-previous\":\"$ss$/plugins/widgetarrow/image/image/previous/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-animation\":\"fade\",\"widget-arrow-mirror\":1,\"widget-arrow-next-image\":\"\",\"widget-arrow-next\":\"$ss$/plugins/widgetarrow/image/image/next/thin-horizontal.svg\",\"widget-arrow-next-color\":\"ffffffcc\",\"widget-arrow-next-hover\":0,\"widget-arrow-next-hover-color\":\"ffffffcc\",\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"align\":\"normal\",\"animation\":\"horizontal\",\"animation-duration\":\"600\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"width\":\"1200\",\"height\":\"600\",\"fontsize\":\"16\",\"margin\":\"0|*|0|*|0|*|0\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"1\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widgetbullet\":\"transition\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-height\":\"81\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widgets\":\"bullet\",\"background\":\"\"}', '2015-11-01 14:14:20');
INSERT INTO `wp_nextend2_smartslider3_sliders` VALUES ('2', 'masterislider', 'simple', '{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"align\":\"normal\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"width\":\"1366\",\"height\":\"615\",\"fontsize\":\"16\",\"margin\":\"0|*|0|*|0|*|0\",\"backgroundMode\":\"fill\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"0\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"weaker-selector\":\"0\",\"delay\":\"0\",\"dependency\":\"\",\"is-delayed\":\"0\",\"overflow-hidden-page\":\"0\",\"callbacks\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-previous\":\"$ss$\\/plugins\\/widgetarrow\\/image\\/image\\/previous\\/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widgetbullet\":\"disabled\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"100\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDtiYWNrZ3JvdW5kLXNpemU6Y292ZXI7In1dfQ==\",\"widget-bullet-thumbnail-side\":\"before\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widgets\":\"arrow\"}', '2016-09-24 18:51:35');

-- ----------------------------
-- Table structure for `wp_nextend2_smartslider3_slides`
-- ----------------------------
DROP TABLE IF EXISTS `wp_nextend2_smartslider3_slides`;
CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_nextend2_smartslider3_slides
-- ----------------------------
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES ('1', 'Slide One', '1', '2015-11-01 12:27:34', '2025-11-11 12:27:34', '1', '0', '[{\"zIndex\":1,\"eye\":false,\"lock\":false,\"animations\":{\"repeatable\":0,\"specialZeroIn\":0,\"transformOriginIn\":\"50|*|50|*|0\",\"inPlayEvent\":\"\",\"repeatCount\":0,\"repeatStartDelay\":0,\"transformOriginLoop\":\"50|*|50|*|0\",\"loopPlayEvent\":\"\",\"loopPauseEvent\":\"\",\"loopStopEvent\":\"\",\"transformOriginOut\":\"50|*|50|*|0\",\"outPlayEvent\":\"\",\"instantOut\":1,\"in\":[],\"loop\":[],\"out\":[]},\"id\":null,\"parentid\":null,\"class\":\"\",\"name\":\"MartinDwyer\",\"namesynced\":1,\"crop\":\"visible\",\"inneralign\":\"left\",\"parallax\":0,\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"responsiveposition\":1,\"responsivesize\":1,\"desktopportraitleft\":0,\"desktopportraittop\":-267,\"desktopportraitwidth\":\"auto\",\"desktopportraitheight\":\"auto\",\"desktopportraitalign\":\"center\",\"desktopportraitvalign\":\"bottom\",\"desktopportraitparentalign\":\"center\",\"desktopportraitparentvalign\":\"middle\",\"desktopportraitfontsize\":100,\"mobileportraitleft\":0,\"mobileportraittop\":-319,\"mobileportraitalign\":\"center\",\"mobileportraitvalign\":\"bottom\",\"mobileportraitfontsize\":120,\"items\":[{\"type\":\"heading\",\"values\":{\"link\":\"#|*|_self\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjEwcHgiLCJ3b3Jkc3BhY2luZyI6Im5vcm1hbCIsInRleHR0cmFuc2Zvcm0iOiJ1cHBlcmNhc2UifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiZmZmZmZmY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"heading\":\"Martin Dwyer\",\"fullwidth\":\"1\",\"nowrap\":\"1\"}}]},{\"zIndex\":2,\"eye\":false,\"lock\":false,\"animations\":{\"repeatable\":0,\"specialZeroIn\":0,\"transformOriginIn\":\"50|*|50|*|0\",\"inPlayEvent\":\"\",\"repeatCount\":0,\"repeatStartDelay\":0,\"transformOriginLoop\":\"50|*|50|*|0\",\"loopPlayEvent\":\"\",\"loopPauseEvent\":\"\",\"loopStopEvent\":\"\",\"transformOriginOut\":\"50|*|50|*|0\",\"outPlayEvent\":\"\",\"instantOut\":1,\"in\":[],\"loop\":[],\"out\":[]},\"id\":null,\"parentid\":null,\"class\":\"\",\"name\":\"ApplicationDeveloper\",\"namesynced\":1,\"crop\":\"visible\",\"inneralign\":\"left\",\"parallax\":0,\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"responsiveposition\":1,\"responsivesize\":1,\"desktopportraitleft\":0,\"desktopportraittop\":338,\"desktopportraitwidth\":\"auto\",\"desktopportraitheight\":\"auto\",\"desktopportraitalign\":\"center\",\"desktopportraitvalign\":\"top\",\"desktopportraitparentalign\":\"center\",\"desktopportraitparentvalign\":\"middle\",\"desktopportraitfontsize\":100,\"mobileportraitleft\":0,\"mobileportraittop\":291,\"mobileportraitalign\":\"center\",\"mobileportraitvalign\":\"top\",\"mobileportraitfontsize\":120,\"items\":[{\"type\":\"heading\",\"values\":{\"link\":\"#|*|_self\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"heading\":\"Application Developer\",\"fullwidth\":\"1\",\"nowrap\":\"1\"}}]}]', '', 'http://smartslider3.com/sample/developerthumbnail.jpg', '{\"generator_id\":\"0\",\"first\":\"0\",\"static-slide\":\"0\",\"backgroundColor\":\"ffffff00\",\"backgroundImage\":\"http://smartslider3.com/sample/programmer.jpg\",\"backgroundImageOpacity\":\"100\",\"backgroundMode\":\"default\",\"link\":\"|*|_self\",\"slide-duration\":\"0\",\"background-animation\":\"\",\"background-animation-speed\":\"default\"}', '0', '0');
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES ('2', 'Slide Two', '1', '2015-11-01 12:27:34', '2025-11-11 12:27:34', '1', '0', '[{\"zIndex\":1,\"eye\":false,\"lock\":false,\"animations\":{\"repeatable\":0,\"specialZeroIn\":0,\"transformOriginIn\":\"50|*|50|*|0\",\"inPlayEvent\":\"\",\"repeatCount\":0,\"repeatStartDelay\":0,\"transformOriginLoop\":\"50|*|50|*|0\",\"loopPlayEvent\":\"\",\"loopPauseEvent\":\"\",\"loopStopEvent\":\"\",\"transformOriginOut\":\"50|*|50|*|0\",\"outPlayEvent\":\"\",\"instantOut\":1,\"in\":[],\"loop\":[],\"out\":[]},\"id\":null,\"parentid\":null,\"class\":\"\",\"name\":\"RachelWright\",\"namesynced\":1,\"crop\":\"visible\",\"inneralign\":\"left\",\"parallax\":0,\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"responsiveposition\":1,\"responsivesize\":1,\"desktopportraitleft\":0,\"desktopportraittop\":-267,\"desktopportraitwidth\":\"auto\",\"desktopportraitheight\":\"auto\",\"desktopportraitalign\":\"center\",\"desktopportraitvalign\":\"bottom\",\"desktopportraitparentalign\":\"center\",\"desktopportraitparentvalign\":\"middle\",\"desktopportraitfontsize\":100,\"mobileportraitleft\":0,\"mobileportraittop\":-319,\"mobileportraitalign\":\"center\",\"mobileportraitvalign\":\"bottom\",\"mobileportraitfontsize\":120,\"items\":[{\"type\":\"heading\",\"values\":{\"link\":\"#|*|_self\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjEwcHgiLCJ3b3Jkc3BhY2luZyI6Im5vcm1hbCIsInRleHR0cmFuc2Zvcm0iOiJ1cHBlcmNhc2UifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiZmZmZmZmY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"heading\":\"Rachel Wright\",\"fullwidth\":\"1\",\"nowrap\":\"1\"}}]},{\"zIndex\":2,\"eye\":false,\"lock\":false,\"animations\":{\"repeatable\":0,\"specialZeroIn\":0,\"transformOriginIn\":\"50|*|50|*|0\",\"inPlayEvent\":\"\",\"repeatCount\":0,\"repeatStartDelay\":0,\"transformOriginLoop\":\"50|*|50|*|0\",\"loopPlayEvent\":\"\",\"loopPauseEvent\":\"\",\"loopStopEvent\":\"\",\"transformOriginOut\":\"50|*|50|*|0\",\"outPlayEvent\":\"\",\"instantOut\":1,\"in\":[],\"loop\":[],\"out\":[]},\"id\":null,\"parentid\":null,\"class\":\"\",\"name\":\"ArtDirector&Photographer\",\"namesynced\":1,\"crop\":\"visible\",\"inneralign\":\"left\",\"parallax\":0,\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"responsiveposition\":1,\"responsivesize\":1,\"desktopportraitleft\":0,\"desktopportraittop\":338,\"desktopportraitwidth\":\"auto\",\"desktopportraitheight\":\"auto\",\"desktopportraitalign\":\"center\",\"desktopportraitvalign\":\"top\",\"desktopportraitparentalign\":\"center\",\"desktopportraitparentvalign\":\"middle\",\"desktopportraitfontsize\":100,\"mobileportraitleft\":0,\"mobileportraittop\":291,\"mobileportraitalign\":\"center\",\"mobileportraitvalign\":\"top\",\"mobileportraitfontsize\":120,\"items\":[{\"type\":\"heading\",\"values\":{\"link\":\"#|*|_self\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"heading\":\"Art Director & Photographer\",\"fullwidth\":\"1\",\"nowrap\":\"1\"}}]}]', '', 'http://smartslider3.com/sample/artdirectorthumbnail.jpg', '{\"generator_id\":\"0\",\"first\":\"0\",\"static-slide\":\"0\",\"backgroundColor\":\"ffffff00\",\"backgroundImage\":\"http://smartslider3.com/sample/free1.jpg\",\"backgroundImageOpacity\":\"100\",\"backgroundMode\":\"default\",\"link\":\"|*|_self\",\"slide-duration\":\"0\",\"background-animation\":\"\",\"background-animation-speed\":\"default\"}', '1', '0');
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES ('3', 'Slide Three', '1', '2015-11-01 12:27:34', '2025-11-11 12:27:34', '1', '0', '[{\"zIndex\":1,\"eye\":false,\"lock\":false,\"animations\":{\"repeatable\":0,\"specialZeroIn\":0,\"transformOriginIn\":\"50|*|50|*|0\",\"inPlayEvent\":\"\",\"repeatCount\":0,\"repeatStartDelay\":0,\"transformOriginLoop\":\"50|*|50|*|0\",\"loopPlayEvent\":\"\",\"loopPauseEvent\":\"\",\"loopStopEvent\":\"\",\"transformOriginOut\":\"50|*|50|*|0\",\"outPlayEvent\":\"\",\"instantOut\":1,\"in\":[],\"loop\":[],\"out\":[]},\"id\":null,\"parentid\":null,\"class\":\"\",\"name\":\"AndrewButler\",\"namesynced\":1,\"crop\":\"visible\",\"inneralign\":\"left\",\"parallax\":0,\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"responsiveposition\":1,\"responsivesize\":1,\"desktopportraitleft\":0,\"desktopportraittop\":-267,\"desktopportraitwidth\":\"auto\",\"desktopportraitheight\":\"auto\",\"desktopportraitalign\":\"center\",\"desktopportraitvalign\":\"bottom\",\"desktopportraitparentalign\":\"center\",\"desktopportraitparentvalign\":\"middle\",\"desktopportraitfontsize\":100,\"mobileportraitleft\":0,\"mobileportraittop\":-319,\"mobileportraitalign\":\"center\",\"mobileportraitvalign\":\"bottom\",\"mobileportraitfontsize\":120,\"items\":[{\"type\":\"heading\",\"values\":{\"link\":\"#|*|_self\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjEwcHgiLCJ3b3Jkc3BhY2luZyI6Im5vcm1hbCIsInRleHR0cmFuc2Zvcm0iOiJ1cHBlcmNhc2UifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiZmZmZmZmY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"heading\":\"Andrew Butler\",\"fullwidth\":\"1\",\"nowrap\":\"1\"}}]},{\"zIndex\":2,\"eye\":false,\"lock\":false,\"animations\":{\"repeatable\":0,\"specialZeroIn\":0,\"transformOriginIn\":\"50|*|50|*|0\",\"inPlayEvent\":\"\",\"repeatCount\":0,\"repeatStartDelay\":0,\"transformOriginLoop\":\"50|*|50|*|0\",\"loopPlayEvent\":\"\",\"loopPauseEvent\":\"\",\"loopStopEvent\":\"\",\"transformOriginOut\":\"50|*|50|*|0\",\"outPlayEvent\":\"\",\"instantOut\":1,\"in\":[],\"loop\":[],\"out\":[]},\"id\":null,\"parentid\":null,\"class\":\"\",\"name\":\"Photographer&Illustrator\",\"namesynced\":1,\"crop\":\"visible\",\"inneralign\":\"left\",\"parallax\":0,\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"responsiveposition\":1,\"responsivesize\":1,\"desktopportraitleft\":0,\"desktopportraittop\":338,\"desktopportraitwidth\":\"auto\",\"desktopportraitheight\":\"auto\",\"desktopportraitalign\":\"center\",\"desktopportraitvalign\":\"top\",\"desktopportraitparentalign\":\"center\",\"desktopportraitparentvalign\":\"middle\",\"desktopportraitfontsize\":100,\"mobileportraitleft\":0,\"mobileportraittop\":291,\"mobileportraitalign\":\"center\",\"mobileportraitvalign\":\"top\",\"mobileportraitfontsize\":120,\"items\":[{\"type\":\"heading\",\"values\":{\"link\":\"#|*|_self\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"heading\":\"Photographer & Illustrator\",\"fullwidth\":\"1\",\"nowrap\":\"1\"}}]}]', '', 'http://smartslider3.com/sample/photographerthumbnail.jpg', '{\"generator_id\":\"0\",\"first\":\"0\",\"static-slide\":\"0\",\"backgroundColor\":\"ffffff00\",\"backgroundImage\":\"http://smartslider3.com/sample/photographer.jpg\",\"backgroundImageOpacity\":\"100\",\"backgroundMode\":\"default\",\"link\":\"|*|_self\",\"slide-duration\":\"0\",\"background-animation\":\"\",\"background-animation-speed\":\"default\"}', '2', '0');
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES ('4', '1masteri-thao-dien-6', '2', '2016-09-23 18:51:59', '2026-09-24 18:51:59', '1', '0', '[]', '', '$upload$/2016/09/1masteri-thao-dien-6.jpg', '{\"backgroundImage\":\"$upload$\\/2016\\/09\\/1masteri-thao-dien-6.jpg\"}', '0', '0');
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES ('5', 'masterithaodien', '2', '2016-09-23 18:51:59', '2026-09-24 18:51:59', '1', '0', '[]', '', '$upload$/2016/09/masterithaodien.jpg', '{\"backgroundImage\":\"$upload$\\/2016\\/09\\/masterithaodien.jpg\"}', '1', '0');
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES ('6', 'masteri-thao-dien-2', '2', '2016-09-23 18:52:00', '2026-09-24 18:52:00', '1', '0', '[]', '', '$upload$/2016/09/masteri-thao-dien-2.jpg', '{\"backgroundImage\":\"$upload$\\/2016\\/09\\/masteri-thao-dien-2.jpg\"}', '2', '0');

-- ----------------------------
-- Table structure for `wp_options`
-- ----------------------------
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=613 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_options
-- ----------------------------
INSERT INTO `wp_options` VALUES ('1', 'siteurl', 'http://doanso.abc', 'yes');
INSERT INTO `wp_options` VALUES ('2', 'home', 'http://doanso.abc', 'yes');
INSERT INTO `wp_options` VALUES ('3', 'blogname', 'Đoàn Sở Lao Động Thương Binh Và Xã Hội', 'yes');
INSERT INTO `wp_options` VALUES ('4', 'blogdescription', 'Just another WordPress site', 'yes');
INSERT INTO `wp_options` VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES ('6', 'admin_email', 'cuong.dh8c@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES ('7', 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES ('21', 'default_pingback_flag', '1', 'yes');
INSERT INTO `wp_options` VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES ('23', 'date_format', 'F j, Y', 'yes');
INSERT INTO `wp_options` VALUES ('24', 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES ('25', 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES ('28', 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO `wp_options` VALUES ('29', 'rewrite_rules', 'a:230:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"sdm_downloads/?$\";s:33:\"index.php?post_type=sdm_downloads\";s:46:\"sdm_downloads/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=sdm_downloads&feed=$matches[1]\";s:41:\"sdm_downloads/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=sdm_downloads&feed=$matches[1]\";s:33:\"sdm_downloads/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=sdm_downloads&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:58:\"danh_muc_tai_lieu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?danh_muc_tai_lieu=$matches[1]&feed=$matches[2]\";s:53:\"danh_muc_tai_lieu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?danh_muc_tai_lieu=$matches[1]&feed=$matches[2]\";s:34:\"danh_muc_tai_lieu/([^/]+)/embed/?$\";s:50:\"index.php?danh_muc_tai_lieu=$matches[1]&embed=true\";s:46:\"danh_muc_tai_lieu/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?danh_muc_tai_lieu=$matches[1]&paged=$matches[2]\";s:28:\"danh_muc_tai_lieu/([^/]+)/?$\";s:39:\"index.php?danh_muc_tai_lieu=$matches[1]\";s:33:\"btxh1/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"btxh1/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"btxh1/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"btxh1/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"btxh1/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"btxh1/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"btxh1/([^/]+)/embed/?$\";s:38:\"index.php?btxh1=$matches[1]&embed=true\";s:26:\"btxh1/([^/]+)/trackback/?$\";s:32:\"index.php?btxh1=$matches[1]&tb=1\";s:34:\"btxh1/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?btxh1=$matches[1]&paged=$matches[2]\";s:41:\"btxh1/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?btxh1=$matches[1]&cpage=$matches[2]\";s:30:\"btxh1/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?btxh1=$matches[1]&page=$matches[2]\";s:22:\"btxh1/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"btxh1/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"btxh1/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"btxh1/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"btxh1/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"btxh1/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"btxh2/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"btxh2/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"btxh2/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"btxh2/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"btxh2/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"btxh2/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"btxh2/([^/]+)/embed/?$\";s:38:\"index.php?btxh2=$matches[1]&embed=true\";s:26:\"btxh2/([^/]+)/trackback/?$\";s:32:\"index.php?btxh2=$matches[1]&tb=1\";s:34:\"btxh2/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?btxh2=$matches[1]&paged=$matches[2]\";s:41:\"btxh2/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?btxh2=$matches[1]&cpage=$matches[2]\";s:30:\"btxh2/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?btxh2=$matches[1]&page=$matches[2]\";s:22:\"btxh2/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"btxh2/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"btxh2/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"btxh2/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"btxh2/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"btxh2/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"hcsn_dn_truonghoc/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"hcsn_dn_truonghoc/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"hcsn_dn_truonghoc/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"hcsn_dn_truonghoc/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"hcsn_dn_truonghoc/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"hcsn_dn_truonghoc/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"hcsn_dn_truonghoc/([^/]+)/embed/?$\";s:50:\"index.php?hcsn_dn_truonghoc=$matches[1]&embed=true\";s:38:\"hcsn_dn_truonghoc/([^/]+)/trackback/?$\";s:44:\"index.php?hcsn_dn_truonghoc=$matches[1]&tb=1\";s:46:\"hcsn_dn_truonghoc/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?hcsn_dn_truonghoc=$matches[1]&paged=$matches[2]\";s:53:\"hcsn_dn_truonghoc/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?hcsn_dn_truonghoc=$matches[1]&cpage=$matches[2]\";s:42:\"hcsn_dn_truonghoc/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?hcsn_dn_truonghoc=$matches[1]&page=$matches[2]\";s:34:\"hcsn_dn_truonghoc/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"hcsn_dn_truonghoc/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"hcsn_dn_truonghoc/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"hcsn_dn_truonghoc/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"hcsn_dn_truonghoc/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"hcsn_dn_truonghoc/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"05_06/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"05_06/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"05_06/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"05_06/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"05_06/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"05_06/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"05_06/([^/]+)/embed/?$\";s:38:\"index.php?05_06=$matches[1]&embed=true\";s:26:\"05_06/([^/]+)/trackback/?$\";s:32:\"index.php?05_06=$matches[1]&tb=1\";s:34:\"05_06/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?05_06=$matches[1]&paged=$matches[2]\";s:41:\"05_06/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?05_06=$matches[1]&cpage=$matches[2]\";s:30:\"05_06/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?05_06=$matches[1]&page=$matches[2]\";s:22:\"05_06/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"05_06/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"05_06/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"05_06/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"05_06/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"05_06/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"file_download/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"file_download/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"file_download/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"file_download/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"file_download/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"file_download/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"file_download/([^/]+)/embed/?$\";s:46:\"index.php?file_download=$matches[1]&embed=true\";s:34:\"file_download/([^/]+)/trackback/?$\";s:40:\"index.php?file_download=$matches[1]&tb=1\";s:42:\"file_download/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?file_download=$matches[1]&paged=$matches[2]\";s:49:\"file_download/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?file_download=$matches[1]&cpage=$matches[2]\";s:38:\"file_download/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?file_download=$matches[1]&page=$matches[2]\";s:30:\"file_download/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"file_download/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"file_download/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"file_download/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"file_download/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"file_download/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"sdm_downloads/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"sdm_downloads/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"sdm_downloads/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"sdm_downloads/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"sdm_downloads/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"sdm_downloads/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"sdm_downloads/([^/]+)/embed/?$\";s:46:\"index.php?sdm_downloads=$matches[1]&embed=true\";s:34:\"sdm_downloads/([^/]+)/trackback/?$\";s:40:\"index.php?sdm_downloads=$matches[1]&tb=1\";s:54:\"sdm_downloads/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?sdm_downloads=$matches[1]&feed=$matches[2]\";s:49:\"sdm_downloads/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?sdm_downloads=$matches[1]&feed=$matches[2]\";s:42:\"sdm_downloads/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?sdm_downloads=$matches[1]&paged=$matches[2]\";s:49:\"sdm_downloads/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?sdm_downloads=$matches[1]&cpage=$matches[2]\";s:38:\"sdm_downloads/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?sdm_downloads=$matches[1]&page=$matches[2]\";s:30:\"sdm_downloads/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"sdm_downloads/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"sdm_downloads/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"sdm_downloads/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"sdm_downloads/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"sdm_downloads/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"sdm_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?sdm_categories=$matches[1]&feed=$matches[2]\";s:50:\"sdm_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?sdm_categories=$matches[1]&feed=$matches[2]\";s:31:\"sdm_categories/([^/]+)/embed/?$\";s:47:\"index.php?sdm_categories=$matches[1]&embed=true\";s:43:\"sdm_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?sdm_categories=$matches[1]&paged=$matches[2]\";s:25:\"sdm_categories/([^/]+)/?$\";s:36:\"index.php?sdm_categories=$matches[1]\";s:49:\"sdm_tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?sdm_tags=$matches[1]&feed=$matches[2]\";s:44:\"sdm_tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?sdm_tags=$matches[1]&feed=$matches[2]\";s:25:\"sdm_tags/([^/]+)/embed/?$\";s:41:\"index.php?sdm_tags=$matches[1]&embed=true\";s:37:\"sdm_tags/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?sdm_tags=$matches[1]&paged=$matches[2]\";s:19:\"sdm_tags/([^/]+)/?$\";s:30:\"index.php?sdm_tags=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');
INSERT INTO `wp_options` VALUES ('30', 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES ('31', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES ('32', 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES ('33', 'active_plugins', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:35:\"advanced-custom-post-types/acpt.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:53:\"default-featured-image/set-default-featured-image.php\";i:6;s:51:\"simple-link-list-widget/simple-link-list-widget.php\";i:7;s:48:\"traffic-stats-widget/wp-traffic-stats-widget.php\";i:8;s:47:\"video-sidebar-widgets/video-sidebar-widgets.php\";}', 'yes');
INSERT INTO `wp_options` VALUES ('34', 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES ('35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES ('36', 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES ('37', 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES ('38', 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES ('39', 'recently_edited', '', 'no');
INSERT INTO `wp_options` VALUES ('40', 'template', 'doanso', 'yes');
INSERT INTO `wp_options` VALUES ('41', 'stylesheet', 'doanso', 'yes');
INSERT INTO `wp_options` VALUES ('42', 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES ('43', 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES ('44', 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES ('45', 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES ('46', 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES ('47', 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES ('48', 'db_version', '38590', 'yes');
INSERT INTO `wp_options` VALUES ('49', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES ('50', 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES ('51', 'blog_public', '1', 'yes');
INSERT INTO `wp_options` VALUES ('52', 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES ('53', 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options` VALUES ('54', 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES ('55', 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES ('56', 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES ('57', 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES ('58', 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES ('59', 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES ('60', 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES ('61', 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES ('62', 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES ('63', 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES ('64', 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES ('65', 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES ('66', 'image_default_link_type', '', 'yes');
INSERT INTO `wp_options` VALUES ('67', 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES ('68', 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES ('69', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES ('70', 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES ('71', 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES ('72', 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES ('73', 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES ('74', 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES ('75', 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES ('76', 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES ('77', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('78', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('79', 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('80', 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('81', 'uninstall_plugins', 'a:2:{s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";s:53:\"default-featured-image/set-default-featured-image.php\";a:2:{i:0;s:22:\"default_featured_image\";i:1;s:9:\"uninstall\";}}', 'no');
INSERT INTO `wp_options` VALUES ('82', 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES ('83', 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES ('84', 'page_on_front', '0', 'yes');
INSERT INTO `wp_options` VALUES ('85', 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES ('86', 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES ('87', 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `wp_options` VALUES ('88', 'site_icon', '0', 'yes');
INSERT INTO `wp_options` VALUES ('89', 'medium_large_size_w', '768', 'yes');
INSERT INTO `wp_options` VALUES ('90', 'medium_large_size_h', '0', 'yes');
INSERT INTO `wp_options` VALUES ('91', 'initial_db_version', '38590', 'yes');
INSERT INTO `wp_options` VALUES ('92', 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES ('93', 'fresh_site', '0', 'yes');
INSERT INTO `wp_options` VALUES ('94', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('95', 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('96', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('97', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('98', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('99', 'sidebars_widgets', 'a:4:{s:18:\"orphaned_widgets_1\";a:5:{i:0;s:8:\"search-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:5:{i:0;s:6:\"list-2\";i:1;s:14:\"videosidebar-2\";i:2;s:6:\"list-3\";i:3;s:6:\"list-4\";i:4;s:13:\"traffic-stats\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES ('100', 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('101', 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('102', 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('103', 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('104', 'cron', 'a:5:{i:1483115319;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1483144848;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1483158593;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1483160968;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES ('105', 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1482375832;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes');
INSERT INTO `wp_options` VALUES ('117', 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` VALUES ('136', '_site_transient_timeout_wporg_theme_feature_list', '1482305398', 'no');
INSERT INTO `wp_options` VALUES ('137', '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:\"Layout\";a:7:{i:0;s:11:\"grid-layout\";i:1;s:10:\"one-column\";i:2;s:11:\"two-columns\";i:3;s:13:\"three-columns\";i:4;s:12:\"four-columns\";i:5;s:12:\"left-sidebar\";i:6;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:14:\"footer-widgets\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:9:{i:0;s:4:\"blog\";i:1;s:10:\"e-commerce\";i:2;s:9:\"education\";i:3;s:13:\"entertainment\";i:4;s:14:\"food-and-drink\";i:5;s:7:\"holiday\";i:6;s:4:\"news\";i:7;s:11:\"photography\";i:8;s:9:\"portfolio\";}}', 'no');
INSERT INTO `wp_options` VALUES ('138', '_site_transient_timeout_popular_importers_0a1ebf537f500dadf2e44a5387f18a0e', '1482467637', 'no');
INSERT INTO `wp_options` VALUES ('139', '_site_transient_popular_importers_0a1ebf537f500dadf2e44a5387f18a0e', 'a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:28:\"Import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES ('143', 'recently_activated', 'a:12:{s:32:\"simple-download-monitor/main.php\";i:1483104422;s:67:\"post-type-select-for-advanced-custom-fields/acf-posttype-select.php\";i:1483102687;s:23:\"settings-api/plugin.php\";i:1482927175;s:26:\"promotion-slider/index.php\";i:1482818150;s:23:\"ml-slider/ml-slider.php\";i:1482817899;s:23:\"my-slider/my-slider.php\";i:1482812402;s:23:\"slider-image/slider.php\";i:1482811247;s:27:\"wp-pagenavi/wp-pagenavi.php\";i:1482811231;s:25:\"tp-weather/tp-weather.php\";i:1482626350;s:41:\"xt-visitor-counter/xt-visitor-counter.php\";i:1482626338;s:30:\"easy-visitor-counter/index.php\";i:1482624904;s:41:\"wordpress-importer/wordpress-importer.php\";i:1482607408;}', 'yes');
INSERT INTO `wp_options` VALUES ('156', 'current_theme', 'DoanSo Theme 2016', 'yes');
INSERT INTO `wp_options` VALUES ('157', 'theme_mods_doanso', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:86;}}', 'yes');
INSERT INTO `wp_options` VALUES ('158', 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES ('167', 'theme_mods_masteri', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `wp_options` VALUES ('182', 'cptui_post_types', 'a:6:{s:5:\"btxh1\";a:28:{s:4:\"name\";s:5:\"btxh1\";s:5:\"label\";s:5:\"btxh1\";s:14:\"singular_label\";s:5:\"btxh1\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:21:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:5:\"btxh2\";a:28:{s:4:\"name\";s:5:\"btxh2\";s:5:\"label\";s:5:\"btxh2\";s:14:\"singular_label\";s:5:\"btxh2\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:21:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:17:\"hcsn_dn_truonghoc\";a:28:{s:4:\"name\";s:17:\"hcsn_dn_truonghoc\";s:5:\"label\";s:17:\"hcsn-dn-truonghoc\";s:14:\"singular_label\";s:17:\"hcsn-dn-truonghoc\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:21:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:5:\"05_06\";a:28:{s:4:\"name\";s:5:\"05_06\";s:5:\"label\";s:5:\"05-06\";s:14:\"singular_label\";s:5:\"05-06\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:21:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"banner\";a:28:{s:4:\"name\";s:6:\"banner\";s:5:\"label\";s:6:\"Banner\";s:14:\"singular_label\";s:6:\"Banner\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:21:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:13:\"file_download\";a:28:{s:4:\"name\";s:13:\"file_download\";s:5:\"label\";s:13:\"File Download\";s:14:\"singular_label\";s:13:\"File Download\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:21:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes');
INSERT INTO `wp_options` VALUES ('185', 'WPLANG', '', 'yes');
INSERT INTO `wp_options` VALUES ('220', '_transient_timeout_dash_a5a61dcab273495c31cd79aafebbdc74', '1482646876', 'no');
INSERT INTO `wp_options` VALUES ('221', '_transient_dash_a5a61dcab273495c31cd79aafebbdc74', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2016/12/vaughan/\'>WordPress 4.7 “Vaughan”</a> <span class=\"rss-date\">Tháng Mười Hai 6, 2016</span><div class=\"rssSummary\">Version 4.7 of WordPress, named “Vaughan” in honor of legendary jazz vocalist Sarah &quot;Sassy&quot; Vaughan, is available for download or update in your WordPress dashboard. New features in 4.7 help you get your site set up the way you want it.</div></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/buddypress-2-7-4-patches-security-vulnerability-that-could-allow-arbitrary-file-deletion\'>WPTavern: BuddyPress 2.7.4 Patches Security Vulnerability That Could Allow Arbitrary File Deletion</a></li><li><a class=\'rsswidget\' href=\'https://buddypress.org/2016/12/buddypress-2-7-4-security-release/\'>BuddyPress: BuddyPress 2.7.4 – Security Release</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-org-launches-homepage-redesign\'>WPTavern: WordPress.org Launches Homepage Redesign</a></li></ul></div><div class=\"rss-widget\"><ul><li class=\"dashboard-news-plugin\"><span>Gói Bổ Xung Tính Năng Phổ Biến:</span> Clef Two-Factor Authentication&nbsp;<a href=\"plugin-install.php?tab=plugin-information&amp;plugin=wpclef&amp;_wpnonce=62dd14a2a9&amp;TB_iframe=true&amp;width=600&amp;height=800\" class=\"thickbox open-plugin-details-modal\" aria-label=\"Cài đặt Clef Two-Factor Authentication\">(Cài đặt)</a></li></ul></div>', 'no');
INSERT INTO `wp_options` VALUES ('233', 'widget_tp-weather-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('236', 'widget_list', 'a:4:{i:2;a:28:{s:5:\"title\";s:19:\"Liên kết website\";s:5:\"item1\";s:42:\"Website Đảng đoàn thể Sở LĐTB&XH\";s:10:\"item_link1\";s:33:\"http://www.dangdoanthesldtbxh.vn/\";s:11:\"item_class1\";s:12:\"link-dang-so\";s:12:\"item_target1\";s:2:\"on\";s:5:\"item2\";s:39:\"Website Sở LĐTB&XH Tp.Hồ Chí Minh\";s:10:\"item_link2\";s:40:\"http://www.sldtbxh.hochiminhcity.gov.vn/\";s:11:\"item_class2\";s:14:\"link-so-ldtbxh\";s:12:\"item_target2\";s:2:\"on\";s:5:\"item3\";s:21:\"Website Thành Đoàn\";s:10:\"item_link3\";s:42:\"http://www.thanhdoan.hochiminhcity.gov.vn/\";s:11:\"item_class3\";s:15:\"link-thanh-doan\";s:12:\"item_target3\";s:2:\"on\";s:5:\"item4\";s:43:\"Website Hội LHTN Việt Nam Thành phố.\";s:10:\"item_link4\";s:42:\"http://www.thanhnien.hochiminhcity.gov.vn/\";s:11:\"item_class4\";s:13:\"link-hoi-lntn\";s:12:\"item_target4\";s:0:\"\";s:5:\"item5\";s:38:\" Website Hội sinh viên Thành phố\";s:10:\"item_link5\";s:32:\"http://www.hoisinhvientphcm.com/\";s:11:\"item_class5\";s:13:\"link-hoi-svtp\";s:12:\"item_target5\";s:0:\"\";s:5:\"item6\";s:38:\"Website Cơ sở Đoàn trực thuộc\";s:10:\"item_link6\";s:23:\"http://doanvptw.dcs.vn/\";s:11:\"item_class6\";s:8:\"link-dcs\";s:12:\"item_target6\";s:0:\"\";s:6:\"amount\";s:1:\"6\";s:4:\"type\";s:9:\"unordered\";s:7:\"reverse\";s:0:\"\";}i:3;a:16:{s:5:\"title\";s:10:\"Văn bản\";s:5:\"item1\";s:34:\"Văn bản mởi của Đoàn Sở\";s:10:\"item_link1\";s:34:\"http://doanso.abc/van-ban-doan-so/\";s:11:\"item_class1\";s:20:\"link-van-ban-doan-so\";s:12:\"item_target1\";s:0:\"\";s:5:\"item2\";s:33:\"Văn bản mới của Hội Sở\";s:10:\"item_link2\";s:33:\"http://doanso.abc/van-ban-hoi-so/\";s:11:\"item_class2\";s:19:\"link-van-ban-hoi-so\";s:12:\"item_target2\";s:0:\"\";s:5:\"item3\";s:0:\"\";s:10:\"item_link3\";s:0:\"\";s:11:\"item_class3\";s:0:\"\";s:12:\"item_target3\";s:0:\"\";s:6:\"amount\";s:1:\"3\";s:4:\"type\";s:9:\"unordered\";s:7:\"reverse\";s:0:\"\";}i:4;a:16:{s:5:\"title\";s:43:\"Lịch làm việc của văn phòng Đoàn\";s:5:\"item1\";s:18:\"Lịch làm việc\";s:10:\"item_link1\";s:51:\"http://doanso.abc/lich-lam-viec-cua-van-phong-doan/\";s:11:\"item_class1\";s:0:\"\";s:12:\"item_target1\";s:0:\"\";s:5:\"item2\";s:0:\"\";s:10:\"item_link2\";s:0:\"\";s:11:\"item_class2\";s:0:\"\";s:12:\"item_target2\";s:0:\"\";s:5:\"item3\";s:0:\"\";s:10:\"item_link3\";s:0:\"\";s:11:\"item_class3\";s:0:\"\";s:12:\"item_target3\";s:0:\"\";s:6:\"amount\";s:1:\"3\";s:4:\"type\";s:9:\"unordered\";s:7:\"reverse\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('244', 'widget_vistorcounterplugin_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('247', 'widget_xt_visitor_counter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('248', 'xtvc_style', 'image/web', 'yes');
INSERT INTO `wp_options` VALUES ('253', 'xt_visitor_counter_default_time', '1482625157', 'yes');
INSERT INTO `wp_options` VALUES ('255', '_site_transient_timeout_available_translations', '1482636190', 'no');
INSERT INTO `wp_options` VALUES ('256', '_site_transient_available_translations', 'a:88:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-09 16:12:38\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 12:56:13\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 19:24:17\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/4.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-09-29 08:38:56\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.6.1/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-11 22:42:10\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-07 08:41:41\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-10-20 16:53:20\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.6.1/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.6.1/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.5.4\";s:7:\"updated\";s:19:\"2016-04-19 23:16:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.4/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-19 21:56:10\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.4.3\";s:7:\"updated\";s:19:\"2016-02-16 15:34:57\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-02-11 18:32:36\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-05 11:08:55\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 11:33:59\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 15:48:14\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-21 21:24:48\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-21 21:25:23\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.7/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 15:44:48\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.7/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-21 11:11:49\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-05 08:11:17\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-15 04:56:31\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-11 18:03:11\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-03 23:03:48\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 00:34:14\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-04 17:16:39\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-03 12:46:56\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-21 12:19:03\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-22 20:46:39\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-08-17 22:11:44\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.6.1/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.6.1/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-07 12:13:31\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-05 22:19:40\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-16 13:52:56\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-10-22 16:41:36\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.6.1/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-07 18:34:12\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-10-23 20:20:40\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.6.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 18:04:09\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-08 10:49:30\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-10 17:48:28\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-05 16:41:35\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.6.1/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-04 01:43:25\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 21:13:09\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-08 02:27:42\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-17 12:35:49\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-10 14:04:11\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-12-06 20:18:25\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.6.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-02-04 07:13:54\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-16 22:13:37\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-14 15:32:24\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-19 12:29:16\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-05 13:03:24\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-03 10:10:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-11 11:21:27\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 12:39:15\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 06:17:03\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-23 09:02:10\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-11 08:51:51\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-09 14:23:37\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.13\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.13/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-20 09:00:07\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-14 14:03:31\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-10-14 13:24:10\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.6.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-21 12:56:58\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-09-23 13:45:11\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6.1/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 20:27:29\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.13\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.13/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-04 21:26:34\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-14 22:17:48\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-06 22:16:39\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-19 20:51:55\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-09 11:05:20\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-05 08:28:07\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-03 20:47:33\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-04 20:17:20\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-19 19:20:20\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6.1/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-10-12 07:04:13\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.6.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-11-27 15:51:36\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-19 17:56:07\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-12-01 16:07:46\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.6.1/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-08 16:20:54\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-24 07:44:48\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.7/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-09 01:01:25\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-07 09:57:58\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"4.7\";s:7:\"updated\";s:19:\"2016-12-08 04:30:37\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.6.1\";s:7:\"updated\";s:19:\"2016-12-05 11:58:02\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.6.1/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` VALUES ('264', 'widget_traffic_stats', 'a:12:{s:18:\"wp_tsw_WidgetTitle\";s:22:\"Thống kê truy cập\";s:26:\"wp_tsw_WidgetText_Visitors\";s:1:\" \";s:22:\"wp_tsw_WidgetText_Hits\";s:1:\" \";s:24:\"wp_tsw_WidgetText_Unique\";s:1:\" \";s:25:\"wp_tsw_WidgetText_LastDay\";s:14:\"Trong 24 giờ\";s:26:\"wp_tsw_WidgetText_LastWeek\";s:13:\"Trong 7 ngày\";s:27:\"wp_tsw_WidgetText_LastMonth\";s:14:\"Trong 30 ngày\";s:24:\"wp_tsw_WidgetText_Online\";s:19:\"Hiện đang online\";s:25:\"wp_tsw_WidgetText_log_opt\";s:2:\"on\";s:29:\"wp_tsw_WidgetText_Default_Tab\";s:1:\"1\";s:29:\"wp_tsw_WidgetText_bots_filter\";s:1:\"3\";s:23:\"wp_tsw_WidgetText_wlink\";s:2:\"on\";}', 'yes');
INSERT INTO `wp_options` VALUES ('271', 'sdm_db_version', '1.2', 'yes');
INSERT INTO `wp_options` VALUES ('273', 'sdm_downloads_options', 'a:3:{s:20:\"admin_tinymce_button\";s:2:\"on\";s:13:\"admin_no_logs\";s:2:\"on\";s:21:\"download_button_color\";s:5:\"green\";}', 'yes');
INSERT INTO `wp_options` VALUES ('300', 'pagenavi_options', 'a:15:{s:10:\"pages_text\";s:36:\"Page %CURRENT_PAGE% of %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:8:\"« First\";s:9:\"last_text\";s:7:\"Last »\";s:9:\"prev_text\";s:2:\"«\";s:9:\"next_text\";s:2:\"»\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";i:0;s:16:\"use_pagenavi_css\";i:1;s:5:\"style\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('373', 'slider_image_version', '3.2', 'yes');
INSERT INTO `wp_options` VALUES ('374', 'slider_image_imege_hover_preview', 'on', 'yes');
INSERT INTO `wp_options` VALUES ('375', 'widget_hugeit_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('378', 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('379', 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES ('380', 'ml-slider_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('381', 'widget_project_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('382', 'widget_my_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('387', 'widget_videosidebar', 'a:2:{i:2;a:7:{s:6:\"title2\";s:20:\"Video hoạt động\";s:8:\"v_width2\";s:3:\"307\";s:9:\"v_height2\";s:3:\"200\";s:11:\"v_autoplay2\";s:1:\"0\";s:5:\"v_id2\";s:11:\"UcgQ0IreqXI\";s:8:\"v_source\";s:7:\"YouTube\";s:6:\"v_cap2\";s:19:\"Caption của video\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('388', 'widget_randomvideosidebar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('389', 'widget_postmetavideo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('394', 'sdm_categories_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('400', 'promotion_slider_options', 'a:9:{s:7:\"version\";s:5:\"3.3.4\";s:8:\"start_on\";s:5:\"first\";s:12:\"auto_advance\";s:12:\"auto_advance\";s:10:\"time_delay\";i:6;s:13:\"display_title\";s:4:\"none\";s:15:\"display_excerpt\";s:4:\"none\";s:14:\"pause_on_hover\";s:8:\"no_pause\";s:10:\"load_js_in\";s:4:\"head\";s:16:\"default_img_size\";s:4:\"full\";}', 'yes');
INSERT INTO `wp_options` VALUES ('401', 'promotion-categories_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('413', '_site_transient_timeout_browser_3bdd8c95c7bd15a9a71de1b118b278fe', '1483504577', 'no');
INSERT INTO `wp_options` VALUES ('414', '_site_transient_browser_3bdd8c95c7bd15a9a71de1b118b278fe', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"52.3.2743.138\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES ('431', 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES ('556', 'dfi_image_id', '1423', 'yes');
INSERT INTO `wp_options` VALUES ('571', 'wedevs_basics', 'a:8:{s:8:\"text_val\";s:5:\"Title\";s:12:\"number_input\";d:0;s:8:\"textarea\";s:0:\"\";s:8:\"checkbox\";s:3:\"off\";s:5:\"radio\";s:3:\"yes\";s:9:\"selectbox\";s:2:\"no\";s:8:\"password\";s:0:\"\";s:4:\"file\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` VALUES ('572', 'wedevs_advanced', '', 'yes');
INSERT INTO `wp_options` VALUES ('587', '_transient_timeout_plugin_slugs', '1483190822', 'no');
INSERT INTO `wp_options` VALUES ('588', '_transient_plugin_slugs', 'a:13:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:35:\"advanced-custom-post-types/acpt.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:53:\"default-featured-image/set-default-featured-image.php\";i:5;s:9:\"hello.php\";i:6;s:32:\"simple-download-monitor/main.php\";i:7;s:51:\"simple-link-list-widget/simple-link-list-widget.php\";i:8;s:25:\"tp-weather/tp-weather.php\";i:9;s:48:\"traffic-stats-widget/wp-traffic-stats-widget.php\";i:10;s:47:\"video-sidebar-widgets/video-sidebar-widgets.php\";i:11;s:41:\"wordpress-importer/wordpress-importer.php\";i:12;s:27:\"wp-pagenavi/wp-pagenavi.php\";}', 'no');
INSERT INTO `wp_options` VALUES ('589', '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1483116065', 'no');
INSERT INTO `wp_options` VALUES ('590', '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to wordpress.org port 80: Timed out</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to planet.wordpress.org port 443: Timed out</p></div><div class=\"rss-widget\"><ul></ul></div>', 'no');
INSERT INTO `wp_options` VALUES ('592', 'category_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('596', '_site_transient_timeout_theme_roots', '1483103566', 'no');
INSERT INTO `wp_options` VALUES ('597', '_site_transient_theme_roots', 'a:2:{s:6:\"doanso\";s:7:\"/themes\";s:7:\"masteri\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` VALUES ('598', '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.7\";s:7:\"version\";s:3:\"4.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1483102541;s:15:\"version_checked\";s:3:\"4.7\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES ('599', '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1483102544;s:7:\"checked\";a:2:{s:6:\"doanso\";s:3:\"1.0\";s:7:\"masteri\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES ('601', '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1483112828', 'no');
INSERT INTO `wp_options` VALUES ('602', '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";s:4:\"6130\";}s:6:\"plugin\";a:3:{s:4:\"name\";s:6:\"plugin\";s:4:\"slug\";s:6:\"plugin\";s:5:\"count\";s:4:\"3761\";}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"Post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";s:4:\"3755\";}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";s:4:\"3274\";}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:4:\"2870\";}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";s:4:\"2562\";}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";s:4:\"2237\";}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";s:4:\"2158\";}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";s:4:\"2113\";}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";s:4:\"2107\";}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";s:4:\"2096\";}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";s:4:\"2056\";}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";s:4:\"1987\";}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";s:4:\"1958\";}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"Facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";s:4:\"1773\";}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";s:4:\"1668\";}s:9:\"wordpress\";a:3:{s:4:\"name\";s:9:\"wordpress\";s:4:\"slug\";s:9:\"wordpress\";s:5:\"count\";s:4:\"1646\";}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";s:4:\"1473\";}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";s:4:\"1390\";}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";s:4:\"1304\";}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";s:4:\"1302\";}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";s:4:\"1158\";}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";s:4:\"1141\";}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";s:4:\"1076\";}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";s:4:\"1029\";}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";s:4:\"1027\";}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";s:3:\"977\";}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";s:3:\"974\";}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";s:3:\"971\";}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";s:3:\"941\";}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"AJAX\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";s:3:\"935\";}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";s:3:\"918\";}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";s:3:\"867\";}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";s:3:\"862\";}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";s:3:\"862\";}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";s:3:\"829\";}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";s:3:\"791\";}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"Share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";s:3:\"790\";}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";s:3:\"790\";}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";s:3:\"772\";}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";s:3:\"767\";}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";s:3:\"761\";}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";s:3:\"751\";}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";s:3:\"751\";}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"CSS\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";s:3:\"747\";}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";s:3:\"737\";}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";s:3:\"735\";}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";s:3:\"731\";}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";s:3:\"724\";}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";s:3:\"711\";}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";s:3:\"711\";}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";s:3:\"661\";}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";s:3:\"656\";}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";s:3:\"650\";}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";s:3:\"641\";}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";s:3:\"638\";}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";s:3:\"625\";}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";s:3:\"620\";}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";s:3:\"620\";}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";s:3:\"616\";}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";s:3:\"603\";}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";s:3:\"593\";}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";s:3:\"588\";}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";s:3:\"586\";}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";s:3:\"585\";}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";s:3:\"574\";}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";s:3:\"558\";}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";s:3:\"557\";}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";s:3:\"552\";}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";s:3:\"549\";}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";s:3:\"544\";}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";s:3:\"543\";}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";s:3:\"535\";}s:4:\"shop\";a:3:{s:4:\"name\";s:4:\"shop\";s:4:\"slug\";s:4:\"shop\";s:5:\"count\";s:3:\"525\";}s:7:\"picture\";a:3:{s:4:\"name\";s:7:\"picture\";s:4:\"slug\";s:7:\"picture\";s:5:\"count\";s:3:\"521\";}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";s:3:\"518\";}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";s:3:\"509\";}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";s:3:\"502\";}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";s:3:\"488\";}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";s:3:\"472\";}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";s:3:\"472\";}s:8:\"pictures\";a:3:{s:4:\"name\";s:8:\"pictures\";s:4:\"slug\";s:8:\"pictures\";s:5:\"count\";s:3:\"468\";}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";s:3:\"467\";}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";s:3:\"464\";}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";s:3:\"452\";}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";s:3:\"451\";}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";s:3:\"444\";}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";s:3:\"437\";}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";s:3:\"437\";}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";s:3:\"435\";}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";s:3:\"434\";}s:9:\"thumbnail\";a:3:{s:4:\"name\";s:9:\"thumbnail\";s:4:\"slug\";s:9:\"thumbnail\";s:5:\"count\";s:3:\"428\";}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";s:3:\"427\";}s:6:\"upload\";a:3:{s:4:\"name\";s:6:\"upload\";s:4:\"slug\";s:6:\"upload\";s:5:\"count\";s:3:\"424\";}s:6:\"paypal\";a:3:{s:4:\"name\";s:6:\"paypal\";s:4:\"slug\";s:6:\"paypal\";s:5:\"count\";s:3:\"424\";}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"News\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";s:3:\"423\";}s:7:\"sharing\";a:3:{s:4:\"name\";s:7:\"sharing\";s:4:\"slug\";s:7:\"sharing\";s:5:\"count\";s:3:\"423\";}s:5:\"flash\";a:3:{s:4:\"name\";s:5:\"flash\";s:4:\"slug\";s:5:\"flash\";s:5:\"count\";s:3:\"420\";}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";s:3:\"418\";}s:8:\"linkedin\";a:3:{s:4:\"name\";s:8:\"linkedin\";s:4:\"slug\";s:8:\"linkedin\";s:5:\"count\";s:3:\"416\";}}', 'no');
INSERT INTO `wp_options` VALUES ('606', '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1483102647;s:7:\"checked\";a:14:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.11\";s:35:\"advanced-custom-post-types/acpt.php\";s:5:\"0.5.5\";s:19:\"akismet/akismet.php\";s:3:\"3.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.4.3\";s:53:\"default-featured-image/set-default-featured-image.php\";s:3:\"1.6\";s:9:\"hello.php\";s:3:\"1.6\";s:67:\"post-type-select-for-advanced-custom-fields/acf-posttype-select.php\";s:5:\"1.0.0\";s:32:\"simple-download-monitor/main.php\";s:5:\"3.3.7\";s:51:\"simple-link-list-widget/simple-link-list-widget.php\";s:5:\"0.3.1\";s:25:\"tp-weather/tp-weather.php\";s:3:\"1.0\";s:48:\"traffic-stats-widget/wp-traffic-stats-widget.php\";s:5:\"1.0.2\";s:47:\"video-sidebar-widgets/video-sidebar-widgets.php\";s:3:\"5.9\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.3\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:4:\"2.91\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:4:\"2.91\";s:7:\"updated\";s:19:\"2016-12-05 01:59:40\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/wp-pagenavi/2.91/vi.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:13:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"21367\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.11\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip\";}s:35:\"advanced-custom-post-types/acpt.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"73461\";s:4:\"slug\";s:26:\"advanced-custom-post-types\";s:6:\"plugin\";s:35:\"advanced-custom-post-types/acpt.php\";s:11:\"new_version\";s:5:\"0.5.5\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/advanced-custom-post-types/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/advanced-custom-post-types.zip\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.3.2.zip\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"13183\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.4.3.zip\";}s:53:\"default-featured-image/set-default-featured-image.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"37315\";s:4:\"slug\";s:22:\"default-featured-image\";s:6:\"plugin\";s:53:\"default-featured-image/set-default-featured-image.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/default-featured-image/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/default-featured-image.1.6.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:67:\"post-type-select-for-advanced-custom-fields/acf-posttype-select.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"66193\";s:4:\"slug\";s:43:\"post-type-select-for-advanced-custom-fields\";s:6:\"plugin\";s:67:\"post-type-select-for-advanced-custom-fields/acf-posttype-select.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/post-type-select-for-advanced-custom-fields/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/post-type-select-for-advanced-custom-fields.zip\";}s:32:\"simple-download-monitor/main.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"10937\";s:4:\"slug\";s:23:\"simple-download-monitor\";s:6:\"plugin\";s:32:\"simple-download-monitor/main.php\";s:11:\"new_version\";s:5:\"3.3.7\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/simple-download-monitor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/simple-download-monitor.zip\";}s:51:\"simple-link-list-widget/simple-link-list-widget.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"20097\";s:4:\"slug\";s:23:\"simple-link-list-widget\";s:6:\"plugin\";s:51:\"simple-link-list-widget/simple-link-list-widget.php\";s:11:\"new_version\";s:5:\"0.3.1\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/simple-link-list-widget/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/simple-link-list-widget.0.3.1.zip\";}s:48:\"traffic-stats-widget/wp-traffic-stats-widget.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"38487\";s:4:\"slug\";s:20:\"traffic-stats-widget\";s:6:\"plugin\";s:48:\"traffic-stats-widget/wp-traffic-stats-widget.php\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/traffic-stats-widget/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/traffic-stats-widget.1.0.2.zip\";}s:47:\"video-sidebar-widgets/video-sidebar-widgets.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"9112\";s:4:\"slug\";s:21:\"video-sidebar-widgets\";s:6:\"plugin\";s:47:\"video-sidebar-widgets/video-sidebar-widgets.php\";s:11:\"new_version\";s:3:\"5.9\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/video-sidebar-widgets/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/video-sidebar-widgets.5.9.zip\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"14975\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.3.zip\";}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"363\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:4:\"2.91\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-pagenavi.2.91.zip\";}}}', 'no');
INSERT INTO `wp_options` VALUES ('607', 'acf_version', '4.4.11', 'yes');
INSERT INTO `wp_options` VALUES ('610', 'cptui_taxonomies', 'a:1:{s:17:\"danh_muc_tai_lieu\";a:21:{s:4:\"name\";s:17:\"danh_muc_tai_lieu\";s:5:\"label\";s:22:\"Danh mục tài liệu\";s:14:\"singular_label\";s:22:\"Danh mục tài liệu\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:13:\"file_download\";}}}', 'yes');

-- ----------------------------
-- Table structure for `wp_postmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2485 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_postmeta
-- ----------------------------
INSERT INTO `wp_postmeta` VALUES ('1', '2', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('2', '6', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('3', '6', '_edit_lock', '1482295007:1');
INSERT INTO `wp_postmeta` VALUES ('590', '1062', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('591', '1062', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('592', '1062', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('593', '1064', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('594', '1064', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('595', '1066', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('596', '1066', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('597', '1075', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('598', '1075', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('599', '1077', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('600', '1077', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('601', '1080', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('602', '1080', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('603', '1083', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('604', '1083', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('605', '1083', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('606', '1086', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('607', '1086', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('608', '1086', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('609', '1088', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('610', '1088', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('611', '1090', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('612', '1090', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('613', '1092', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('614', '1092', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('615', '1094', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('616', '1094', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('617', '1096', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('618', '1096', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('619', '1098', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('620', '1098', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('669', '149', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('670', '149', '_wp_old_slug', 'comment-test');
INSERT INTO `wp_postmeta` VALUES ('671', '151', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('672', '151', '_wp_old_slug', 'many-trackbacks');
INSERT INTO `wp_postmeta` VALUES ('673', '152', '_wp_old_slug', 'no-comments');
INSERT INTO `wp_postmeta` VALUES ('674', '152', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('675', '167', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('676', '168', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('677', '418', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('678', '555', '_thumbnail_id', '611');
INSERT INTO `wp_postmeta` VALUES ('679', '555', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('680', '555', '_wp_old_slug', 'post-format-test-gallery');
INSERT INTO `wp_postmeta` VALUES ('681', '559', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('682', '559', '_wp_old_slug', 'post-format-test-aside');
INSERT INTO `wp_postmeta` VALUES ('683', '562', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('684', '562', '_wp_old_slug', 'post-format-test-chat');
INSERT INTO `wp_postmeta` VALUES ('685', '565', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('686', '565', '_wp_old_slug', 'post-format-test-link');
INSERT INTO `wp_postmeta` VALUES ('687', '568', '_wp_old_slug', 'post-format-test-image');
INSERT INTO `wp_postmeta` VALUES ('688', '568', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('689', '568', '_wp_old_slug', 'post-format-test-image-linked');
INSERT INTO `wp_postmeta` VALUES ('690', '575', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('691', '575', '_wp_old_slug', 'post-format-test-quote');
INSERT INTO `wp_postmeta` VALUES ('692', '579', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('693', '579', '_wp_old_slug', 'post-format-test-status');
INSERT INTO `wp_postmeta` VALUES ('694', '582', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('695', '582', '_wp_old_slug', 'post-format-test-video');
INSERT INTO `wp_postmeta` VALUES ('696', '582', '_oembed_7338f2ed6983f1e8f5ec2aef019d9c39', '<iframe width=\"610\" height=\"343\" src=\"http://www.youtube.com/embed/nwe-H6l4beM?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>');
INSERT INTO `wp_postmeta` VALUES ('697', '587', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('698', '587', '_wp_old_slug', 'post-format-test-audio');
INSERT INTO `wp_postmeta` VALUES ('699', '587', 'enclosure', 'http://wptest.io/demo/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3\n11039151\naudio/mpeg\n');
INSERT INTO `wp_postmeta` VALUES ('700', '674', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('701', '674', '_wp_old_slug', 'post-format-test-image-attached');
INSERT INTO `wp_postmeta` VALUES ('702', '922', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('703', '922', 'standard_seo_post_level_layout', '');
INSERT INTO `wp_postmeta` VALUES ('704', '922', 'standard_link_url_field', '');
INSERT INTO `wp_postmeta` VALUES ('705', '922', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('706', '946', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('707', '1005', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('708', '1005', 'standard_seo_post_level_layout', '');
INSERT INTO `wp_postmeta` VALUES ('709', '1005', 'standard_link_url_field', '');
INSERT INTO `wp_postmeta` VALUES ('710', '1005', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('711', '1105', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('712', '1105', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('713', '131', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('714', '131', '_wp_old_slug', 'test-with-secret-password');
INSERT INTO `wp_postmeta` VALUES ('715', '133', '_wp_old_slug', '14');
INSERT INTO `wp_postmeta` VALUES ('716', '133', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('717', '134', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('718', '134', '_wp_old_slug', 'this-post-has-no-body');
INSERT INTO `wp_postmeta` VALUES ('719', '188', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('720', '188', '_wp_old_slug', 'layout-test');
INSERT INTO `wp_postmeta` VALUES ('721', '861', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('722', '867', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('723', '877', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('724', '877', '_wp_old_slug', 'non-breaking-tex');
INSERT INTO `wp_postmeta` VALUES ('725', '895', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('726', '903', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('727', '903', 'standard_seo_post_level_layout', '');
INSERT INTO `wp_postmeta` VALUES ('728', '903', 'standard_link_url_field', '');
INSERT INTO `wp_postmeta` VALUES ('729', '903', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('730', '919', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('731', '919', 'standard_seo_post_level_layout', '');
INSERT INTO `wp_postmeta` VALUES ('732', '919', 'standard_link_url_field', '');
INSERT INTO `wp_postmeta` VALUES ('733', '919', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('734', '993', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('735', '996', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('736', '1000', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('737', '1011', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('738', '1011', '_wp_old_slug', 'featured-image');
INSERT INTO `wp_postmeta` VALUES ('739', '1011', '_thumbnail_id', '1022');
INSERT INTO `wp_postmeta` VALUES ('740', '1011', 'standard_seo_post_level_layout', '');
INSERT INTO `wp_postmeta` VALUES ('741', '1011', 'standard_link_url_field', '');
INSERT INTO `wp_postmeta` VALUES ('742', '1011', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('743', '1016', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('744', '1016', '_thumbnail_id', '1024');
INSERT INTO `wp_postmeta` VALUES ('745', '1016', 'standard_seo_post_level_layout', '');
INSERT INTO `wp_postmeta` VALUES ('746', '1016', 'standard_link_url_field', '');
INSERT INTO `wp_postmeta` VALUES ('747', '1016', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('748', '1027', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('749', '1027', 'standard_seo_post_level_layout', '');
INSERT INTO `wp_postmeta` VALUES ('750', '1027', 'standard_link_url_field', '');
INSERT INTO `wp_postmeta` VALUES ('751', '1027', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('752', '1027', '_oembed_551fbbcf3ec765ea83fa636f36fee1d5', '<blockquote class=\"twitter-tweet\" width=\"550\"><p>Doing what you “know” locks you in a prison of the past. Uncertainty is the path to an innovative future.</p>&mdash; Carl Smith (@carlsmith) <a href=\"https://twitter.com/carlsmith/status/258214236126322689\">October 16, 2012</a></blockquote><script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>');
INSERT INTO `wp_postmeta` VALUES ('753', '1031', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('754', '1031', 'standard_seo_post_level_layout', '');
INSERT INTO `wp_postmeta` VALUES ('755', '1031', 'standard_link_url_field', '');
INSERT INTO `wp_postmeta` VALUES ('756', '1031', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('757', '1241', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('758', '1241', 'standard_seo_post_level_layout', '');
INSERT INTO `wp_postmeta` VALUES ('759', '1241', 'standard_link_url_field', '');
INSERT INTO `wp_postmeta` VALUES ('760', '1241', 'standard_seo_post_meta_description', '');
INSERT INTO `wp_postmeta` VALUES ('945', '1027', '_oembed_c5f46c14b550ed5ac414fa037392efda', '<blockquote class=\"twitter-tweet\" data-width=\"550\"><p lang=\"en\" dir=\"ltr\">Doing what you “know” locks you in a prison of the past. Uncertainty is the path to an innovative future.</p>&mdash; Carl Smith (@carlsmith) <a href=\"https://twitter.com/carlsmith/status/258214236126322689\">October 16, 2012</a></blockquote><script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>');
INSERT INTO `wp_postmeta` VALUES ('946', '1027', '_oembed_time_c5f46c14b550ed5ac414fa037392efda', '1482295482');
INSERT INTO `wp_postmeta` VALUES ('947', '1267', '_wp_attached_file', '2016/12/banner-gioi-thieu.jpg');
INSERT INTO `wp_postmeta` VALUES ('948', '1267', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:361;s:4:\"file\";s:29:\"2016/12/banner-gioi-thieu.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"banner-gioi-thieu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"banner-gioi-thieu-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('949', '1270', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('950', '1270', '_edit_lock', '1482386439:1');
INSERT INTO `wp_postmeta` VALUES ('951', '1271', '_wp_attached_file', '2016/12/14729361_1329318950414210_3988608301551473084_n.jpg');
INSERT INTO `wp_postmeta` VALUES ('952', '1271', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:59:\"2016/12/14729361_1329318950414210_3988608301551473084_n.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('953', '1270', '_thumbnail_id', '1271');
INSERT INTO `wp_postmeta` VALUES ('954', '1272', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('955', '1272', '_edit_lock', '1482386545:1');
INSERT INTO `wp_postmeta` VALUES ('956', '1272', '_thumbnail_id', '1271');
INSERT INTO `wp_postmeta` VALUES ('957', '1273', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('958', '1273', '_edit_lock', '1482386718:1');
INSERT INTO `wp_postmeta` VALUES ('959', '1273', '_thumbnail_id', '1271');
INSERT INTO `wp_postmeta` VALUES ('960', '1274', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('961', '1274', '_edit_lock', '1482386870:1');
INSERT INTO `wp_postmeta` VALUES ('962', '1274', '_thumbnail_id', '1271');
INSERT INTO `wp_postmeta` VALUES ('963', '1275', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('964', '1275', '_edit_lock', '1482387807:1');
INSERT INTO `wp_postmeta` VALUES ('965', '1275', '_thumbnail_id', '1271');
INSERT INTO `wp_postmeta` VALUES ('966', '1276', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('967', '1276', '_edit_lock', '1482388411:1');
INSERT INTO `wp_postmeta` VALUES ('968', '1276', '_thumbnail_id', '1271');
INSERT INTO `wp_postmeta` VALUES ('969', '1277', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('970', '1277', '_thumbnail_id', '1271');
INSERT INTO `wp_postmeta` VALUES ('971', '1277', '_edit_lock', '1482388441:1');
INSERT INTO `wp_postmeta` VALUES ('972', '1280', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('973', '1280', '_edit_lock', '1482603983:1');
INSERT INTO `wp_postmeta` VALUES ('974', '1280', '_thumbnail_id', '1271');
INSERT INTO `wp_postmeta` VALUES ('975', '1281', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('976', '1281', '_edit_lock', '1482604360:1');
INSERT INTO `wp_postmeta` VALUES ('977', '1281', '_thumbnail_id', '1271');
INSERT INTO `wp_postmeta` VALUES ('978', '1282', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('979', '1282', '_edit_lock', '1482627308:1');
INSERT INTO `wp_postmeta` VALUES ('980', '1282', 'sdm_description', '');
INSERT INTO `wp_postmeta` VALUES ('981', '1282', 'sdm_upload', 'http://www.w3schools.com/css/css_list.asp');
INSERT INTO `wp_postmeta` VALUES ('982', '1282', 'sdm_item_dispatch', null);
INSERT INTO `wp_postmeta` VALUES ('983', '1282', 'sdm_upload_thumbnail', '');
INSERT INTO `wp_postmeta` VALUES ('984', '1282', 'sdm_count_offset', '0');
INSERT INTO `wp_postmeta` VALUES ('985', '1282', 'sdm_item_file_size', '');
INSERT INTO `wp_postmeta` VALUES ('986', '1282', 'sdm_item_version', '');
INSERT INTO `wp_postmeta` VALUES ('987', '1282', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('988', '1282', '_wp_trash_meta_time', '1482627452');
INSERT INTO `wp_postmeta` VALUES ('989', '1282', '_wp_desired_post_slug', 'link-download1');
INSERT INTO `wp_postmeta` VALUES ('990', '1284', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('991', '1284', '_edit_lock', '1482813431:1');
INSERT INTO `wp_postmeta` VALUES ('992', '1284', 'sdm_description', '');
INSERT INTO `wp_postmeta` VALUES ('993', '1284', 'sdm_upload', 'http://www.w3schools.com/css/css_list.asp');
INSERT INTO `wp_postmeta` VALUES ('994', '1284', 'sdm_item_dispatch', null);
INSERT INTO `wp_postmeta` VALUES ('995', '1284', 'sdm_upload_thumbnail', '');
INSERT INTO `wp_postmeta` VALUES ('996', '1284', 'sdm_count_offset', '0');
INSERT INTO `wp_postmeta` VALUES ('997', '1284', 'sdm_item_file_size', '');
INSERT INTO `wp_postmeta` VALUES ('998', '1284', 'sdm_item_version', '');
INSERT INTO `wp_postmeta` VALUES ('999', '1286', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1000', '1286', '_edit_lock', '1482945401:1');
INSERT INTO `wp_postmeta` VALUES ('1001', '1286', '_wp_page_template', 'templages/btxh1.php');
INSERT INTO `wp_postmeta` VALUES ('1002', '1027', '_oembed_a873949b9d427f7fc12f7b2124c40fbf', '<blockquote class=\"twitter-tweet\" data-width=\"550\"><p lang=\"en\" dir=\"ltr\">Doing what you “know” locks you in a prison of the past. Uncertainty is the path to an innovative future.</p>&mdash; Carl Smith (@carlsmith) <a href=\"https://twitter.com/carlsmith/status/258214236126322689\">October 16, 2012</a></blockquote><script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>');
INSERT INTO `wp_postmeta` VALUES ('1003', '1027', '_oembed_time_a873949b9d427f7fc12f7b2124c40fbf', '1482607367');
INSERT INTO `wp_postmeta` VALUES ('1004', '1289', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1005', '1289', '_edit_lock', '1482724499:1');
INSERT INTO `wp_postmeta` VALUES ('1006', '1290', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1007', '1290', '_edit_lock', '1482725133:1');
INSERT INTO `wp_postmeta` VALUES ('1008', '1290', '_wp_page_template', 'templages/btxh2.php');
INSERT INTO `wp_postmeta` VALUES ('1009', '1289', '_wp_trash_meta_status', 'draft');
INSERT INTO `wp_postmeta` VALUES ('1010', '1289', '_wp_trash_meta_time', '1482725183');
INSERT INTO `wp_postmeta` VALUES ('1011', '1289', '_wp_desired_post_slug', '');
INSERT INTO `wp_postmeta` VALUES ('1012', '1293', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1013', '1293', '_edit_lock', '1482725225:1');
INSERT INTO `wp_postmeta` VALUES ('1014', '1293', '_wp_page_template', 'templages/hcsn.php');
INSERT INTO `wp_postmeta` VALUES ('1015', '1295', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1016', '1295', '_edit_lock', '1482726206:1');
INSERT INTO `wp_postmeta` VALUES ('1017', '1295', '_wp_page_template', 'templages/hcsn.php');
INSERT INTO `wp_postmeta` VALUES ('1018', '1297', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1019', '1297', '_edit_lock', '1482951218:1');
INSERT INTO `wp_postmeta` VALUES ('1020', '1297', '_wp_page_template', 'templages/trang-download-doan-so.php');
INSERT INTO `wp_postmeta` VALUES ('1021', '1299', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1022', '1299', '_edit_lock', '1482729974:1');
INSERT INTO `wp_postmeta` VALUES ('1023', '1300', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1024', '1300', '_edit_lock', '1482810146:1');
INSERT INTO `wp_postmeta` VALUES ('1025', '1300', '_wp_page_template', 'templages/trang-download-hoi-so.php');
INSERT INTO `wp_postmeta` VALUES ('1026', '1299', '_wp_trash_meta_status', 'draft');
INSERT INTO `wp_postmeta` VALUES ('1027', '1299', '_wp_trash_meta_time', '1482810028');
INSERT INTO `wp_postmeta` VALUES ('1028', '1299', '_wp_desired_post_slug', '');
INSERT INTO `wp_postmeta` VALUES ('1029', '1303', 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"nivo\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"900\";s:6:\"height\";s:3:\"450\";s:3:\"spw\";s:1:\"7\";s:3:\"sph\";s:1:\"5\";s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.69999999999999996;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:7:\"sliceUp\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:1:\"<\";s:8:\"nextText\";s:1:\">\";s:6:\"slices\";s:2:\"15\";s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:5:\"false\";s:12:\"smoothHeight\";s:5:\"false\";}');
INSERT INTO `wp_postmeta` VALUES ('1030', '1271', 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES ('1031', '1267', 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES ('1032', '1271', '_wp_attachment_backup_sizes', 'a:7:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:106:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/14729361_1329318950414210_3988608301551473084_n-700x300.jpg\";s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-307x187\";a:5:{s:4:\"path\";s:106:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/14729361_1329318950414210_3988608301551473084_n-307x187.jpg\";s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-307x187.jpg\";s:5:\"width\";i:307;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-307x200\";a:5:{s:4:\"path\";s:106:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/14729361_1329318950414210_3988608301551473084_n-307x200.jpg\";s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-307x200.jpg\";s:5:\"width\";i:307;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-900x200\";a:5:{s:4:\"path\";s:106:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/14729361_1329318950414210_3988608301551473084_n-900x200.jpg\";s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-900x200.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-900x600\";a:5:{s:4:\"path\";s:106:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/14729361_1329318950414210_3988608301551473084_n-900x600.jpg\";s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-900x600.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-900x500\";a:5:{s:4:\"path\";s:106:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/14729361_1329318950414210_3988608301551473084_n-900x500.jpg\";s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-900x500.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-900x450\";a:5:{s:4:\"path\";s:106:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/14729361_1329318950414210_3988608301551473084_n-900x450.jpg\";s:4:\"file\";s:59:\"14729361_1329318950414210_3988608301551473084_n-900x450.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES ('1033', '1267', '_wp_attachment_backup_sizes', 'a:7:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/banner-gioi-thieu-700x300.jpg\";s:4:\"file\";s:29:\"banner-gioi-thieu-700x300.jpg\";s:5:\"width\";i:428;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-307x187\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/banner-gioi-thieu-307x187.jpg\";s:4:\"file\";s:29:\"banner-gioi-thieu-307x187.jpg\";s:5:\"width\";i:307;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-307x200\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/banner-gioi-thieu-307x200.jpg\";s:4:\"file\";s:29:\"banner-gioi-thieu-307x200.jpg\";s:5:\"width\";i:307;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-428x95\";a:5:{s:4:\"path\";s:75:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/banner-gioi-thieu-428x95.jpg\";s:4:\"file\";s:28:\"banner-gioi-thieu-428x95.jpg\";s:5:\"width\";i:428;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-428x285\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/banner-gioi-thieu-428x285.jpg\";s:4:\"file\";s:29:\"banner-gioi-thieu-428x285.jpg\";s:5:\"width\";i:428;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-428x237\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/banner-gioi-thieu-428x237.jpg\";s:4:\"file\";s:29:\"banner-gioi-thieu-428x237.jpg\";s:5:\"width\";i:428;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-428x214\";a:5:{s:4:\"path\";s:76:\"C:xampphtdocsdoanso/wp-content/uploads/2016/12/banner-gioi-thieu-428x214.jpg\";s:4:\"file\";s:29:\"banner-gioi-thieu-428x214.jpg\";s:5:\"width\";i:428;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES ('1034', '1271', 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES ('1035', '1271', '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES ('1036', '1267', 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES ('1037', '1267', '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES ('1038', '1304', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1039', '1304', '_edit_lock', '1482814459:1');
INSERT INTO `wp_postmeta` VALUES ('1040', '1304', '_wp_page_template', 'templages/lich-lam-viec-van-phong-doan.php');
INSERT INTO `wp_postmeta` VALUES ('1041', '1304', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1042', '1304', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1043', '1304', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1044', '1304', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1045', '1304', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1046', '1304', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1065', '1086', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1066', '1086', '_wp_trash_meta_time', '1482944989');
INSERT INTO `wp_postmeta` VALUES ('1067', '1086', '_wp_desired_post_slug', 'about');
INSERT INTO `wp_postmeta` VALUES ('1068', '1062', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1069', '1062', '_wp_trash_meta_time', '1482944993');
INSERT INTO `wp_postmeta` VALUES ('1070', '1062', '_wp_desired_post_slug', 'amazon-store');
INSERT INTO `wp_postmeta` VALUES ('1071', '1066', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1072', '1066', '_wp_trash_meta_time', '1482945001');
INSERT INTO `wp_postmeta` VALUES ('1073', '1066', '_wp_desired_post_slug', 'blog');
INSERT INTO `wp_postmeta` VALUES ('1074', '1077', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1075', '1077', '_wp_trash_meta_time', '1482945082');
INSERT INTO `wp_postmeta` VALUES ('1076', '1077', '_wp_desired_post_slug', 'page-comments');
INSERT INTO `wp_postmeta` VALUES ('1077', '1077', '_wp_trash_meta_comments_status', 'a:1:{i:2;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES ('1078', '1075', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1079', '1075', '_wp_trash_meta_time', '1482945085');
INSERT INTO `wp_postmeta` VALUES ('1080', '1075', '_wp_desired_post_slug', 'page-comments-disabled');
INSERT INTO `wp_postmeta` VALUES ('1081', '1080', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1082', '1080', '_wp_trash_meta_time', '1482945088');
INSERT INTO `wp_postmeta` VALUES ('1083', '1080', '_wp_desired_post_slug', 'page-image-alignment');
INSERT INTO `wp_postmeta` VALUES ('1084', '1083', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1085', '1083', '_wp_trash_meta_time', '1482945091');
INSERT INTO `wp_postmeta` VALUES ('1086', '1083', '_wp_desired_post_slug', 'page-markup-and-formatting');
INSERT INTO `wp_postmeta` VALUES ('1087', '1088', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1088', '1088', '_wp_trash_meta_time', '1482945094');
INSERT INTO `wp_postmeta` VALUES ('1089', '1088', '_wp_desired_post_slug', 'parent-page');
INSERT INTO `wp_postmeta` VALUES ('1090', '2', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1091', '2', '_wp_trash_meta_time', '1482945098');
INSERT INTO `wp_postmeta` VALUES ('1092', '2', '_wp_desired_post_slug', 'sample-page');
INSERT INTO `wp_postmeta` VALUES ('1093', '1090', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1094', '1090', '_wp_trash_meta_time', '1482945110');
INSERT INTO `wp_postmeta` VALUES ('1095', '1090', '_wp_desired_post_slug', 'child-page-01');
INSERT INTO `wp_postmeta` VALUES ('1096', '1092', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1097', '1092', '_wp_trash_meta_time', '1482945110');
INSERT INTO `wp_postmeta` VALUES ('1098', '1092', '_wp_desired_post_slug', 'child-page-02');
INSERT INTO `wp_postmeta` VALUES ('1099', '1094', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1100', '1094', '_wp_trash_meta_time', '1482945110');
INSERT INTO `wp_postmeta` VALUES ('1101', '1094', '_wp_desired_post_slug', 'child-page-03');
INSERT INTO `wp_postmeta` VALUES ('1102', '1096', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1103', '1096', '_wp_trash_meta_time', '1482945111');
INSERT INTO `wp_postmeta` VALUES ('1104', '1096', '_wp_desired_post_slug', 'child-page-04');
INSERT INTO `wp_postmeta` VALUES ('1105', '1098', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1106', '1098', '_wp_trash_meta_time', '1482945111');
INSERT INTO `wp_postmeta` VALUES ('1107', '1098', '_wp_desired_post_slug', 'child-page-05');
INSERT INTO `wp_postmeta` VALUES ('1108', '1105', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1109', '1105', '_wp_trash_meta_time', '1482945111');
INSERT INTO `wp_postmeta` VALUES ('1110', '1105', '_wp_desired_post_slug', 'grandchild-page');
INSERT INTO `wp_postmeta` VALUES ('1111', '418', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1112', '418', '_wp_trash_meta_time', '1482945213');
INSERT INTO `wp_postmeta` VALUES ('1113', '418', '_wp_desired_post_slug', 'scheduled');
INSERT INTO `wp_postmeta` VALUES ('1114', '6', '_wp_trash_meta_status', 'draft');
INSERT INTO `wp_postmeta` VALUES ('1115', '6', '_wp_trash_meta_time', '1482945215');
INSERT INTO `wp_postmeta` VALUES ('1116', '6', '_wp_desired_post_slug', '');
INSERT INTO `wp_postmeta` VALUES ('1117', '922', '_wp_trash_meta_status', 'draft');
INSERT INTO `wp_postmeta` VALUES ('1118', '922', '_wp_trash_meta_time', '1482945218');
INSERT INTO `wp_postmeta` VALUES ('1119', '922', '_wp_desired_post_slug', '');
INSERT INTO `wp_postmeta` VALUES ('1120', '1', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1121', '1', '_wp_trash_meta_time', '1482945220');
INSERT INTO `wp_postmeta` VALUES ('1122', '1', '_wp_desired_post_slug', 'hello-world');
INSERT INTO `wp_postmeta` VALUES ('1123', '1', '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES ('1124', '1031', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1125', '1031', '_wp_trash_meta_time', '1482945230');
INSERT INTO `wp_postmeta` VALUES ('1126', '1031', '_wp_desired_post_slug', 'tiled-gallery');
INSERT INTO `wp_postmeta` VALUES ('1127', '1027', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1128', '1027', '_wp_trash_meta_time', '1482945232');
INSERT INTO `wp_postmeta` VALUES ('1129', '1027', '_wp_desired_post_slug', 'twitter-embeds');
INSERT INTO `wp_postmeta` VALUES ('1130', '1016', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1131', '1016', '_wp_trash_meta_time', '1482945234');
INSERT INTO `wp_postmeta` VALUES ('1132', '1016', '_wp_desired_post_slug', 'featured-image-vertical');
INSERT INTO `wp_postmeta` VALUES ('1133', '1011', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1134', '1011', '_wp_trash_meta_time', '1482945237');
INSERT INTO `wp_postmeta` VALUES ('1135', '1011', '_wp_desired_post_slug', 'featured-image-horizontal');
INSERT INTO `wp_postmeta` VALUES ('1136', '1000', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1137', '1000', '_wp_trash_meta_time', '1482945239');
INSERT INTO `wp_postmeta` VALUES ('1138', '1000', '_wp_desired_post_slug', 'nested-and-mixed-lists');
INSERT INTO `wp_postmeta` VALUES ('1139', '996', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1140', '996', '_wp_trash_meta_time', '1482945241');
INSERT INTO `wp_postmeta` VALUES ('1141', '996', '_wp_desired_post_slug', 'more-tag');
INSERT INTO `wp_postmeta` VALUES ('1142', '993', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1143', '993', '_wp_trash_meta_time', '1482945244');
INSERT INTO `wp_postmeta` VALUES ('1144', '993', '_wp_desired_post_slug', 'excerpt');
INSERT INTO `wp_postmeta` VALUES ('1145', '919', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1146', '919', '_wp_trash_meta_time', '1482945246');
INSERT INTO `wp_postmeta` VALUES ('1147', '919', '_wp_desired_post_slug', 'markup-and-formatting');
INSERT INTO `wp_postmeta` VALUES ('1148', '903', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1149', '903', '_wp_trash_meta_time', '1482945249');
INSERT INTO `wp_postmeta` VALUES ('1150', '903', '_wp_desired_post_slug', 'image-alignment');
INSERT INTO `wp_postmeta` VALUES ('1151', '895', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1152', '895', '_wp_trash_meta_time', '1482945251');
INSERT INTO `wp_postmeta` VALUES ('1153', '895', '_wp_desired_post_slug', 'text-alignment');
INSERT INTO `wp_postmeta` VALUES ('1154', '188', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1155', '188', '_wp_trash_meta_time', '1482945253');
INSERT INTO `wp_postmeta` VALUES ('1156', '188', '_wp_desired_post_slug', 'paginated');
INSERT INTO `wp_postmeta` VALUES ('1157', '1241', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1158', '1241', '_wp_trash_meta_time', '1482945255');
INSERT INTO `wp_postmeta` VALUES ('1159', '1241', '_wp_desired_post_slug', 'sticky');
INSERT INTO `wp_postmeta` VALUES ('1160', '134', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1161', '134', '_wp_trash_meta_time', '1482945257');
INSERT INTO `wp_postmeta` VALUES ('1162', '134', '_wp_desired_post_slug', 'no-content');
INSERT INTO `wp_postmeta` VALUES ('1163', '134', '_wp_trash_meta_comments_status', 'a:1:{i:30;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES ('1164', '877', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1165', '877', '_wp_trash_meta_time', '1482945259');
INSERT INTO `wp_postmeta` VALUES ('1166', '877', '_wp_desired_post_slug', 'non-breaking-text');
INSERT INTO `wp_postmeta` VALUES ('1167', '877', '_wp_trash_meta_comments_status', 'a:1:{i:31;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES ('1168', '867', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1169', '867', '_wp_trash_meta_time', '1482945263');
INSERT INTO `wp_postmeta` VALUES ('1170', '867', '_wp_desired_post_slug', 'title-with-special-characters');
INSERT INTO `wp_postmeta` VALUES ('1171', '861', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1172', '861', '_wp_trash_meta_time', '1482945265');
INSERT INTO `wp_postmeta` VALUES ('1173', '861', '_wp_desired_post_slug', 'title-with-markup');
INSERT INTO `wp_postmeta` VALUES ('1174', '133', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1175', '133', '_wp_trash_meta_time', '1482945267');
INSERT INTO `wp_postmeta` VALUES ('1176', '133', '_wp_desired_post_slug', 'no-title');
INSERT INTO `wp_postmeta` VALUES ('1177', '131', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1178', '131', '_wp_trash_meta_time', '1482945284');
INSERT INTO `wp_postmeta` VALUES ('1179', '131', '_wp_desired_post_slug', 'password-protected');
INSERT INTO `wp_postmeta` VALUES ('1180', '131', '_wp_trash_meta_comments_status', 'a:1:{i:29;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES ('1181', '149', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1182', '149', '_wp_trash_meta_time', '1482945284');
INSERT INTO `wp_postmeta` VALUES ('1183', '149', '_wp_desired_post_slug', 'comments');
INSERT INTO `wp_postmeta` VALUES ('1184', '149', '_wp_trash_meta_comments_status', 'a:21:{i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"1\";i:11;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";i:14;s:1:\"1\";i:15;s:1:\"1\";i:16;s:1:\"1\";i:17;s:1:\"1\";i:18;s:1:\"1\";i:19;s:1:\"1\";i:20;s:1:\"1\";i:21;s:1:\"1\";i:22;s:1:\"1\";i:23;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES ('1185', '152', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1186', '152', '_wp_trash_meta_time', '1482945285');
INSERT INTO `wp_postmeta` VALUES ('1187', '152', '_wp_desired_post_slug', 'comments-disabled');
INSERT INTO `wp_postmeta` VALUES ('1188', '151', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1189', '151', '_wp_trash_meta_time', '1482945285');
INSERT INTO `wp_postmeta` VALUES ('1190', '151', '_wp_desired_post_slug', 'pingbacks-an-trackbacks');
INSERT INTO `wp_postmeta` VALUES ('1191', '151', '_wp_trash_meta_comments_status', 'a:5:{i:24;s:1:\"1\";i:25;s:1:\"1\";i:26;s:1:\"1\";i:27;s:1:\"1\";i:28;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES ('1192', '946', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1193', '946', '_wp_trash_meta_time', '1482945286');
INSERT INTO `wp_postmeta` VALUES ('1194', '946', '_wp_desired_post_slug', 'post-format-standard');
INSERT INTO `wp_postmeta` VALUES ('1195', '555', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1196', '555', '_wp_trash_meta_time', '1482945286');
INSERT INTO `wp_postmeta` VALUES ('1197', '555', '_wp_desired_post_slug', 'post-format-gallery');
INSERT INTO `wp_postmeta` VALUES ('1198', '559', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1199', '559', '_wp_trash_meta_time', '1482945287');
INSERT INTO `wp_postmeta` VALUES ('1200', '559', '_wp_desired_post_slug', 'post-format-aside');
INSERT INTO `wp_postmeta` VALUES ('1201', '562', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1202', '562', '_wp_trash_meta_time', '1482945288');
INSERT INTO `wp_postmeta` VALUES ('1203', '562', '_wp_desired_post_slug', 'post-format-chat');
INSERT INTO `wp_postmeta` VALUES ('1204', '565', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1205', '565', '_wp_trash_meta_time', '1482945288');
INSERT INTO `wp_postmeta` VALUES ('1206', '565', '_wp_desired_post_slug', 'post-format-link');
INSERT INTO `wp_postmeta` VALUES ('1207', '674', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1208', '674', '_wp_trash_meta_time', '1482945288');
INSERT INTO `wp_postmeta` VALUES ('1209', '674', '_wp_desired_post_slug', 'post-format-image-caption');
INSERT INTO `wp_postmeta` VALUES ('1210', '568', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1211', '568', '_wp_trash_meta_time', '1482945289');
INSERT INTO `wp_postmeta` VALUES ('1212', '568', '_wp_desired_post_slug', 'post-format-image');
INSERT INTO `wp_postmeta` VALUES ('1213', '575', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1214', '575', '_wp_trash_meta_time', '1482945289');
INSERT INTO `wp_postmeta` VALUES ('1215', '575', '_wp_desired_post_slug', 'post-format-quote');
INSERT INTO `wp_postmeta` VALUES ('1216', '579', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1217', '579', '_wp_trash_meta_time', '1482945290');
INSERT INTO `wp_postmeta` VALUES ('1218', '579', '_wp_desired_post_slug', 'post-format-status');
INSERT INTO `wp_postmeta` VALUES ('1219', '1005', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1220', '1005', '_wp_trash_meta_time', '1482945291');
INSERT INTO `wp_postmeta` VALUES ('1221', '1005', '_wp_desired_post_slug', 'post-format-video-videopress');
INSERT INTO `wp_postmeta` VALUES ('1222', '582', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1223', '582', '_wp_trash_meta_time', '1482945291');
INSERT INTO `wp_postmeta` VALUES ('1224', '582', '_wp_desired_post_slug', 'post-format-video');
INSERT INTO `wp_postmeta` VALUES ('1225', '587', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1226', '587', '_wp_trash_meta_time', '1482945292');
INSERT INTO `wp_postmeta` VALUES ('1227', '587', '_wp_desired_post_slug', 'post-format-audio');
INSERT INTO `wp_postmeta` VALUES ('1228', '168', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1229', '168', '_wp_trash_meta_time', '1482945292');
INSERT INTO `wp_postmeta` VALUES ('1230', '168', '_wp_desired_post_slug', 'many-categories');
INSERT INTO `wp_postmeta` VALUES ('1231', '167', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('1232', '167', '_wp_trash_meta_time', '1482945295');
INSERT INTO `wp_postmeta` VALUES ('1233', '167', '_wp_desired_post_slug', 'many-tags');
INSERT INTO `wp_postmeta` VALUES ('1234', '1363', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1235', '1363', '_edit_lock', '1482945360:1');
INSERT INTO `wp_postmeta` VALUES ('1238', '1363', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1239', '1363', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1240', '1363', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1241', '1363', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1242', '1363', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1243', '1363', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1244', '1365', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1245', '1365', '_edit_lock', '1482945448:1');
INSERT INTO `wp_postmeta` VALUES ('1246', '1365', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('1247', '1365', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1248', '1365', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1249', '1365', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1250', '1365', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1251', '1365', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1252', '1365', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1253', '1367', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1254', '1367', '_edit_lock', '1482946235:1');
INSERT INTO `wp_postmeta` VALUES ('1257', '1367', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1258', '1367', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1259', '1367', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1260', '1367', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1261', '1367', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1262', '1367', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1263', '1369', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1264', '1369', '_edit_lock', '1482946260:1');
INSERT INTO `wp_postmeta` VALUES ('1267', '1369', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1268', '1369', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1269', '1369', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1270', '1369', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1271', '1369', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1272', '1369', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1273', '1371', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1274', '1371', '_edit_lock', '1482946289:1');
INSERT INTO `wp_postmeta` VALUES ('1277', '1371', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1278', '1371', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1279', '1371', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1280', '1371', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1281', '1371', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1282', '1371', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1283', '1373', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1286', '1373', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1287', '1373', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1288', '1373', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1289', '1373', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1290', '1373', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1291', '1373', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1292', '1373', '_edit_lock', '1482946306:1');
INSERT INTO `wp_postmeta` VALUES ('1340', '1381', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1341', '1381', '_edit_lock', '1482947005:1');
INSERT INTO `wp_postmeta` VALUES ('1342', '1381', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('1343', '1381', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1344', '1381', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1345', '1381', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1346', '1381', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1347', '1381', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1348', '1381', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1349', '1383', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1350', '1383', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('1351', '1383', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1352', '1383', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1353', '1383', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1354', '1383', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1355', '1383', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1356', '1383', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1357', '1383', '_edit_lock', '1482947038:1');
INSERT INTO `wp_postmeta` VALUES ('1358', '1385', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1361', '1385', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1362', '1385', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1363', '1385', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1364', '1385', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1365', '1385', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1366', '1385', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1367', '1385', '_edit_lock', '1482947057:1');
INSERT INTO `wp_postmeta` VALUES ('1368', '1387', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1369', '1387', '_edit_lock', '1482947069:1');
INSERT INTO `wp_postmeta` VALUES ('1372', '1387', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1373', '1387', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1374', '1387', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1375', '1387', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1376', '1387', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1377', '1387', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1378', '1389', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1381', '1389', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1382', '1389', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1383', '1389', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1384', '1389', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1385', '1389', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1386', '1389', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1387', '1389', '_edit_lock', '1482947082:1');
INSERT INTO `wp_postmeta` VALUES ('1388', '1391', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1391', '1391', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1392', '1391', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1393', '1391', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1394', '1391', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1395', '1391', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1396', '1391', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1397', '1391', '_edit_lock', '1483073653:1');
INSERT INTO `wp_postmeta` VALUES ('1488', '1403', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1489', '1403', '_edit_lock', '1482947608:1');
INSERT INTO `wp_postmeta` VALUES ('1490', '1403', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('1491', '1403', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1492', '1403', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1493', '1403', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1494', '1403', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1495', '1403', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1496', '1403', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1497', '1405', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1498', '1405', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('1499', '1405', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1500', '1405', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1501', '1405', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1502', '1405', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1503', '1405', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1504', '1405', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1505', '1405', '_edit_lock', '1482912516:1');
INSERT INTO `wp_postmeta` VALUES ('1506', '1407', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1507', '1407', '_edit_lock', '1482947693:1');
INSERT INTO `wp_postmeta` VALUES ('1508', '1407', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('1509', '1407', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1510', '1407', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1511', '1407', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1512', '1407', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1513', '1407', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1514', '1407', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1515', '1409', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1516', '1409', '_edit_lock', '1482912631:1');
INSERT INTO `wp_postmeta` VALUES ('1517', '1409', '_wp_page_template', 'templages/thong-tin-doan-thanh-nien-so.php');
INSERT INTO `wp_postmeta` VALUES ('1518', '1409', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1519', '1409', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1520', '1409', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1521', '1409', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1522', '1409', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1523', '1409', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1596', '1419', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1597', '1419', '_edit_lock', '1482950388:1');
INSERT INTO `wp_postmeta` VALUES ('1600', '1419', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1601', '1419', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1602', '1419', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1603', '1419', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1604', '1419', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1605', '1419', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1606', '1421', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1607', '1421', '_edit_lock', '1483076020:1');
INSERT INTO `wp_postmeta` VALUES ('1608', '1421', '_wp_page_template', 'templages/thong-tin-doan-thanh-nien-so.php');
INSERT INTO `wp_postmeta` VALUES ('1609', '1421', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1610', '1421', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1611', '1421', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1612', '1421', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1613', '1421', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1614', '1421', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1617', '1423', '_wp_attached_file', '2016/12/2OYErLAZ.jpg');
INSERT INTO `wp_postmeta` VALUES ('1618', '1423', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:20:\"2016/12/2OYErLAZ.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"2OYErLAZ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"2OYErLAZ-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('1619', '1424', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1620', '1424', '_edit_lock', '1482912027:1');
INSERT INTO `wp_postmeta` VALUES ('1621', '1424', '_wp_page_template', 'templages/thong-tin-hoi-lien-hiep-thanh-nien-viet-nam-so.php');
INSERT INTO `wp_postmeta` VALUES ('1622', '1424', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1623', '1424', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1624', '1424', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1625', '1424', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1626', '1424', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1627', '1424', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1628', '1409', '_wp_trash_meta_status', 'future');
INSERT INTO `wp_postmeta` VALUES ('1629', '1409', '_wp_trash_meta_time', '1482912774');
INSERT INTO `wp_postmeta` VALUES ('1630', '1409', '_wp_desired_post_slug', 'hoat-dong-co-so');
INSERT INTO `wp_postmeta` VALUES ('1631', '1430', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1632', '1430', '_edit_lock', '1483076088:1');
INSERT INTO `wp_postmeta` VALUES ('1633', '1430', '_wp_page_template', 'templages/thong-tin-hoat-dong-co-so.php');
INSERT INTO `wp_postmeta` VALUES ('1634', '1430', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1635', '1430', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1636', '1430', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1637', '1430', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1638', '1430', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1639', '1430', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1649', '1433', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1650', '1433', '_edit_lock', '1482913365:1');
INSERT INTO `wp_postmeta` VALUES ('1651', '1433', '_wp_page_template', 'templages/hoc-tap-theo-bac-van-ban-trien-khai.php');
INSERT INTO `wp_postmeta` VALUES ('1652', '1433', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1653', '1433', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1654', '1433', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1655', '1433', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1656', '1433', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1657', '1433', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1658', '1435', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1659', '1435', '_edit_lock', '1482913596:1');
INSERT INTO `wp_postmeta` VALUES ('1660', '1435', '_wp_page_template', 'templages/hoc-tap-theo-bac-nhung-mau-chuyen-ve-bac.php');
INSERT INTO `wp_postmeta` VALUES ('1661', '1435', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1662', '1435', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1663', '1435', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1664', '1435', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1665', '1435', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1666', '1435', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1667', '1437', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1668', '1437', '_edit_lock', '1482913971:1');
INSERT INTO `wp_postmeta` VALUES ('1669', '1437', '_wp_page_template', 'templages/hoc-tap-theo-bac-nhung-tam-guong-tieu-bieu.php');
INSERT INTO `wp_postmeta` VALUES ('1670', '1437', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1671', '1437', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1672', '1437', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1673', '1437', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1674', '1437', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1675', '1437', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1676', '1439', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1677', '1439', '_edit_lock', '1482914263:1');
INSERT INTO `wp_postmeta` VALUES ('1678', '1439', '_wp_page_template', 'templages/hoc-tap-theo-bac-nhung-thanh-nien-tieu-bieu.php');
INSERT INTO `wp_postmeta` VALUES ('1679', '1439', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1680', '1439', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1681', '1439', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1682', '1439', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1683', '1439', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1684', '1439', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1685', '1441', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1686', '1441', '_edit_lock', '1482914892:1');
INSERT INTO `wp_postmeta` VALUES ('1687', '1441', '_wp_page_template', 'templages/hoc-tap-theo-bac-hinh-anh-ve-bac.php');
INSERT INTO `wp_postmeta` VALUES ('1688', '1441', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1689', '1441', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1690', '1441', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1691', '1441', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1692', '1441', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1693', '1441', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1694', '1443', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1695', '1443', '_edit_lock', '1482915254:1');
INSERT INTO `wp_postmeta` VALUES ('1696', '1443', '_wp_page_template', 'templages/hoc-tap-theo-bac-video-ve-bac.php');
INSERT INTO `wp_postmeta` VALUES ('1697', '1443', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1698', '1443', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1699', '1443', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1700', '1443', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1701', '1443', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1702', '1443', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1703', '1445', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('1704', '1445', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('1705', '1445', '_menu_item_object_id', '1443');
INSERT INTO `wp_postmeta` VALUES ('1706', '1445', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('1707', '1445', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('1708', '1445', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('1709', '1445', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('1710', '1445', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('1711', '1445', '_menu_item_orphaned', '1482916219');
INSERT INTO `wp_postmeta` VALUES ('1712', '1446', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('1713', '1446', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('1714', '1446', '_menu_item_object_id', '1441');
INSERT INTO `wp_postmeta` VALUES ('1715', '1446', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('1716', '1446', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('1717', '1446', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('1718', '1446', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('1719', '1446', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('1720', '1446', '_menu_item_orphaned', '1482916219');
INSERT INTO `wp_postmeta` VALUES ('1721', '1447', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('1722', '1447', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('1723', '1447', '_menu_item_object_id', '1439');
INSERT INTO `wp_postmeta` VALUES ('1724', '1447', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('1725', '1447', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('1726', '1447', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('1727', '1447', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('1728', '1447', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('1729', '1447', '_menu_item_orphaned', '1482916219');
INSERT INTO `wp_postmeta` VALUES ('1730', '1448', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('1731', '1448', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('1732', '1448', '_menu_item_object_id', '1437');
INSERT INTO `wp_postmeta` VALUES ('1733', '1448', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('1734', '1448', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('1735', '1448', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('1736', '1448', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('1737', '1448', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('1738', '1448', '_menu_item_orphaned', '1482916220');
INSERT INTO `wp_postmeta` VALUES ('1739', '1449', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('1740', '1449', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('1741', '1449', '_menu_item_object_id', '1435');
INSERT INTO `wp_postmeta` VALUES ('1742', '1449', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('1743', '1449', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('1744', '1449', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('1745', '1449', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('1746', '1449', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('1747', '1449', '_menu_item_orphaned', '1482916220');
INSERT INTO `wp_postmeta` VALUES ('1748', '1450', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('1749', '1450', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('1750', '1450', '_menu_item_object_id', '1433');
INSERT INTO `wp_postmeta` VALUES ('1751', '1450', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('1752', '1450', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('1753', '1450', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('1754', '1450', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('1755', '1450', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('1756', '1450', '_menu_item_orphaned', '1482916220');
INSERT INTO `wp_postmeta` VALUES ('1757', '1451', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('1758', '1451', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('1759', '1451', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('1760', '1451', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('1761', '1451', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('1762', '1451', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('1763', '1451', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('1764', '1451', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('1765', '1451', '_edit_lock', '1482916123:1');
INSERT INTO `wp_postmeta` VALUES ('2054', '1485', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2055', '1485', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2056', '1485', '_menu_item_object_id', '1365');
INSERT INTO `wp_postmeta` VALUES ('2057', '1485', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2058', '1485', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2059', '1485', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2060', '1485', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2061', '1485', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2063', '1486', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2064', '1486', '_menu_item_menu_item_parent', '1485');
INSERT INTO `wp_postmeta` VALUES ('2065', '1486', '_menu_item_object_id', '1383');
INSERT INTO `wp_postmeta` VALUES ('2066', '1486', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2067', '1486', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2068', '1486', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2069', '1486', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2070', '1486', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2072', '1487', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2073', '1487', '_menu_item_menu_item_parent', '1485');
INSERT INTO `wp_postmeta` VALUES ('2074', '1487', '_menu_item_object_id', '1381');
INSERT INTO `wp_postmeta` VALUES ('2075', '1487', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2076', '1487', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2077', '1487', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2078', '1487', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2079', '1487', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2081', '1488', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2082', '1488', '_menu_item_menu_item_parent', '1487');
INSERT INTO `wp_postmeta` VALUES ('2083', '1488', '_menu_item_object_id', '1405');
INSERT INTO `wp_postmeta` VALUES ('2084', '1488', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2085', '1488', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2086', '1488', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2087', '1488', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2088', '1488', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2090', '1489', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2091', '1489', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2092', '1489', '_menu_item_object_id', '1403');
INSERT INTO `wp_postmeta` VALUES ('2093', '1489', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2094', '1489', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2095', '1489', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2096', '1489', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2097', '1489', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2099', '1490', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2100', '1490', '_menu_item_menu_item_parent', '1489');
INSERT INTO `wp_postmeta` VALUES ('2101', '1490', '_menu_item_object_id', '1421');
INSERT INTO `wp_postmeta` VALUES ('2102', '1490', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2103', '1490', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2104', '1490', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2105', '1490', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2106', '1490', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2108', '1491', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2109', '1491', '_menu_item_menu_item_parent', '1489');
INSERT INTO `wp_postmeta` VALUES ('2110', '1491', '_menu_item_object_id', '1407');
INSERT INTO `wp_postmeta` VALUES ('2111', '1491', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2112', '1491', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2113', '1491', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2114', '1491', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2115', '1491', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2117', '1492', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2118', '1492', '_menu_item_menu_item_parent', '1489');
INSERT INTO `wp_postmeta` VALUES ('2119', '1492', '_menu_item_object_id', '1295');
INSERT INTO `wp_postmeta` VALUES ('2120', '1492', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2121', '1492', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2122', '1492', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2123', '1492', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2124', '1492', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2126', '1493', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2127', '1493', '_menu_item_menu_item_parent', '1489');
INSERT INTO `wp_postmeta` VALUES ('2128', '1493', '_menu_item_object_id', '1286');
INSERT INTO `wp_postmeta` VALUES ('2129', '1493', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2130', '1493', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2131', '1493', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2132', '1493', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2133', '1493', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2135', '1494', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2136', '1494', '_menu_item_menu_item_parent', '1489');
INSERT INTO `wp_postmeta` VALUES ('2137', '1494', '_menu_item_object_id', '1290');
INSERT INTO `wp_postmeta` VALUES ('2138', '1494', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2139', '1494', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2140', '1494', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2141', '1494', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2142', '1494', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2144', '1495', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2145', '1495', '_menu_item_menu_item_parent', '1489');
INSERT INTO `wp_postmeta` VALUES ('2146', '1495', '_menu_item_object_id', '1293');
INSERT INTO `wp_postmeta` VALUES ('2147', '1495', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2148', '1495', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2149', '1495', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2150', '1495', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2151', '1495', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2153', '1496', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2154', '1496', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2155', '1496', '_menu_item_object_id', '1451');
INSERT INTO `wp_postmeta` VALUES ('2156', '1496', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2157', '1496', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2158', '1496', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2159', '1496', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2160', '1496', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2162', '1497', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2163', '1497', '_menu_item_menu_item_parent', '1496');
INSERT INTO `wp_postmeta` VALUES ('2164', '1497', '_menu_item_object_id', '1433');
INSERT INTO `wp_postmeta` VALUES ('2165', '1497', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2166', '1497', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2167', '1497', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2168', '1497', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2169', '1497', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2171', '1499', '_wp_attached_file', '2016/12/banner.jpg');
INSERT INTO `wp_postmeta` VALUES ('2172', '1499', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:200;s:4:\"file\";s:18:\"2016/12/banner.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"banner-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('2173', '1498', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2174', '1498', '_edit_lock', '1482930978:1');
INSERT INTO `wp_postmeta` VALUES ('2175', '1501', '_wp_attached_file', '2016/12/gallery_1_1397041846.jpeg');
INSERT INTO `wp_postmeta` VALUES ('2176', '1501', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:257;s:4:\"file\";s:33:\"2016/12/gallery_1_1397041846.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"gallery_1_1397041846-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"gallery_1_1397041846-300x129.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('2177', '1502', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2178', '1502', '_edit_lock', '1482929871:1');
INSERT INTO `wp_postmeta` VALUES ('2179', '1503', '_wp_attached_file', '2016/12/logo.png');
INSERT INTO `wp_postmeta` VALUES ('2180', '1503', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:126;s:4:\"file\";s:16:\"2016/12/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x126.png\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('2181', '1504', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2182', '1504', '_edit_lock', '1482931671:1');
INSERT INTO `wp_postmeta` VALUES ('2183', '1506', '_wp_attached_file', '2016/12/SinhVienIT.Net-1410195-header3copy.jpg');
INSERT INTO `wp_postmeta` VALUES ('2184', '1506', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:200;s:4:\"file\";s:46:\"2016/12/SinhVienIT.Net-1410195-header3copy.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"SinhVienIT.Net-1410195-header3copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"SinhVienIT.Net-1410195-header3copy-300x67.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"SinhVienIT.Net-1410195-header3copy-768x171.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES ('2185', '1508', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2186', '1508', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2187', '1508', '_menu_item_object_id', '1389');
INSERT INTO `wp_postmeta` VALUES ('2188', '1508', '_menu_item_object', 'post');
INSERT INTO `wp_postmeta` VALUES ('2189', '1508', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2190', '1508', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2191', '1508', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2192', '1508', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2193', '1508', '_menu_item_orphaned', '1483072955');
INSERT INTO `wp_postmeta` VALUES ('2194', '1509', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2195', '1509', '_menu_item_menu_item_parent', '1487');
INSERT INTO `wp_postmeta` VALUES ('2196', '1509', '_menu_item_object_id', '1369');
INSERT INTO `wp_postmeta` VALUES ('2197', '1509', '_menu_item_object', 'post');
INSERT INTO `wp_postmeta` VALUES ('2198', '1509', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2199', '1509', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2200', '1509', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2201', '1509', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2203', '1510', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2204', '1510', '_menu_item_menu_item_parent', '1487');
INSERT INTO `wp_postmeta` VALUES ('2205', '1510', '_menu_item_object_id', '1371');
INSERT INTO `wp_postmeta` VALUES ('2206', '1510', '_menu_item_object', 'post');
INSERT INTO `wp_postmeta` VALUES ('2207', '1510', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2208', '1510', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2209', '1510', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2210', '1510', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2212', '1511', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2213', '1511', '_menu_item_menu_item_parent', '1487');
INSERT INTO `wp_postmeta` VALUES ('2214', '1511', '_menu_item_object_id', '1391');
INSERT INTO `wp_postmeta` VALUES ('2215', '1511', '_menu_item_object', 'post');
INSERT INTO `wp_postmeta` VALUES ('2216', '1511', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2217', '1511', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2218', '1511', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2219', '1511', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2221', '1512', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2222', '1512', '_menu_item_menu_item_parent', '1486');
INSERT INTO `wp_postmeta` VALUES ('2223', '1512', '_menu_item_object_id', '1389');
INSERT INTO `wp_postmeta` VALUES ('2224', '1512', '_menu_item_object', 'post');
INSERT INTO `wp_postmeta` VALUES ('2225', '1512', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2226', '1512', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2227', '1512', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2228', '1512', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2230', '1513', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2231', '1513', '_menu_item_menu_item_parent', '1486');
INSERT INTO `wp_postmeta` VALUES ('2232', '1513', '_menu_item_object_id', '1387');
INSERT INTO `wp_postmeta` VALUES ('2233', '1513', '_menu_item_object', 'post');
INSERT INTO `wp_postmeta` VALUES ('2234', '1513', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2235', '1513', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2236', '1513', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2237', '1513', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2239', '1514', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2240', '1514', '_menu_item_menu_item_parent', '1486');
INSERT INTO `wp_postmeta` VALUES ('2241', '1514', '_menu_item_object_id', '1385');
INSERT INTO `wp_postmeta` VALUES ('2242', '1514', '_menu_item_object', 'post');
INSERT INTO `wp_postmeta` VALUES ('2243', '1514', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2244', '1514', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2245', '1514', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2246', '1514', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2248', '1515', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2249', '1515', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2250', '1515', '_menu_item_object_id', '1443');
INSERT INTO `wp_postmeta` VALUES ('2251', '1515', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2252', '1515', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2253', '1515', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2254', '1515', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2255', '1515', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2256', '1515', '_menu_item_orphaned', '1483073944');
INSERT INTO `wp_postmeta` VALUES ('2257', '1516', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2258', '1516', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2259', '1516', '_menu_item_object_id', '1441');
INSERT INTO `wp_postmeta` VALUES ('2260', '1516', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2261', '1516', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2262', '1516', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2263', '1516', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2264', '1516', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2265', '1516', '_menu_item_orphaned', '1483073945');
INSERT INTO `wp_postmeta` VALUES ('2266', '1517', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2267', '1517', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2268', '1517', '_menu_item_object_id', '1439');
INSERT INTO `wp_postmeta` VALUES ('2269', '1517', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2270', '1517', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2271', '1517', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2272', '1517', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2273', '1517', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2274', '1517', '_menu_item_orphaned', '1483073945');
INSERT INTO `wp_postmeta` VALUES ('2275', '1518', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2276', '1518', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2277', '1518', '_menu_item_object_id', '1437');
INSERT INTO `wp_postmeta` VALUES ('2278', '1518', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2279', '1518', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2280', '1518', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2281', '1518', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2282', '1518', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2283', '1518', '_menu_item_orphaned', '1483073946');
INSERT INTO `wp_postmeta` VALUES ('2284', '1519', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2285', '1519', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2286', '1519', '_menu_item_object_id', '1435');
INSERT INTO `wp_postmeta` VALUES ('2287', '1519', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2288', '1519', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2289', '1519', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2290', '1519', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2291', '1519', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2292', '1519', '_menu_item_orphaned', '1483073946');
INSERT INTO `wp_postmeta` VALUES ('2293', '1520', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2294', '1520', '_menu_item_menu_item_parent', '1496');
INSERT INTO `wp_postmeta` VALUES ('2295', '1520', '_menu_item_object_id', '1443');
INSERT INTO `wp_postmeta` VALUES ('2296', '1520', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2297', '1520', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2298', '1520', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2299', '1520', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2300', '1520', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2302', '1521', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2303', '1521', '_menu_item_menu_item_parent', '1496');
INSERT INTO `wp_postmeta` VALUES ('2304', '1521', '_menu_item_object_id', '1441');
INSERT INTO `wp_postmeta` VALUES ('2305', '1521', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2306', '1521', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2307', '1521', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2308', '1521', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2309', '1521', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2311', '1522', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2312', '1522', '_menu_item_menu_item_parent', '1496');
INSERT INTO `wp_postmeta` VALUES ('2313', '1522', '_menu_item_object_id', '1439');
INSERT INTO `wp_postmeta` VALUES ('2314', '1522', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2315', '1522', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2316', '1522', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2317', '1522', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2318', '1522', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2320', '1523', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2321', '1523', '_menu_item_menu_item_parent', '1496');
INSERT INTO `wp_postmeta` VALUES ('2322', '1523', '_menu_item_object_id', '1437');
INSERT INTO `wp_postmeta` VALUES ('2323', '1523', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2324', '1523', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2325', '1523', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2326', '1523', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2327', '1523', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2329', '1524', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2330', '1524', '_menu_item_menu_item_parent', '1496');
INSERT INTO `wp_postmeta` VALUES ('2331', '1524', '_menu_item_object_id', '1435');
INSERT INTO `wp_postmeta` VALUES ('2332', '1524', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2333', '1524', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2334', '1524', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2335', '1524', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2336', '1524', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2338', '1525', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2339', '1525', '_edit_lock', '1483074808:1');
INSERT INTO `wp_postmeta` VALUES ('2340', '1525', '_wp_page_template', 'templages/doan-truong-cao-dang-nghe-thanh-pho.php');
INSERT INTO `wp_postmeta` VALUES ('2341', '1525', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('2342', '1525', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('2343', '1525', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('2344', '1525', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('2345', '1525', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('2346', '1525', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('2347', '1529', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2348', '1529', '_edit_lock', '1483075269:1');
INSERT INTO `wp_postmeta` VALUES ('2349', '1529', '_wp_page_template', 'templages/doan-truong-hermann-gmeiner.php');
INSERT INTO `wp_postmeta` VALUES ('2350', '1529', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('2351', '1529', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('2352', '1529', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('2353', '1529', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('2354', '1529', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('2355', '1529', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('2356', '1284', '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES ('2357', '1284', '_wp_trash_meta_time', '1483076386');
INSERT INTO `wp_postmeta` VALUES ('2358', '1284', '_wp_desired_post_slug', 'van-ban-1');
INSERT INTO `wp_postmeta` VALUES ('2359', '1531', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2360', '1531', '_edit_lock', '1483076562:1');
INSERT INTO `wp_postmeta` VALUES ('2361', '1531', 'sdm_description', '');
INSERT INTO `wp_postmeta` VALUES ('2362', '1531', 'sdm_upload', '');
INSERT INTO `wp_postmeta` VALUES ('2363', '1531', 'sdm_item_dispatch', null);
INSERT INTO `wp_postmeta` VALUES ('2364', '1531', 'sdm_upload_thumbnail', '');
INSERT INTO `wp_postmeta` VALUES ('2365', '1531', 'sdm_count_offset', '0');
INSERT INTO `wp_postmeta` VALUES ('2366', '1531', 'sdm_item_file_size', '');
INSERT INTO `wp_postmeta` VALUES ('2367', '1531', 'sdm_item_version', '');
INSERT INTO `wp_postmeta` VALUES ('2368', '1534', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2369', '1534', 'field_58665a4cfa963', 'a:14:{s:3:\"key\";s:19:\"field_58665a4cfa963\";s:5:\"label\";s:8:\"Url Link\";s:4:\"name\";s:8:\"url_link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:36:\"Nhập đường dẫn file download\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}');
INSERT INTO `wp_postmeta` VALUES ('2372', '1534', 'position', 'normal');
INSERT INTO `wp_postmeta` VALUES ('2373', '1534', 'layout', 'default');
INSERT INTO `wp_postmeta` VALUES ('2374', '1534', 'hide_on_screen', '');
INSERT INTO `wp_postmeta` VALUES ('2375', '1534', '_edit_lock', '1483103977:1');
INSERT INTO `wp_postmeta` VALUES ('2379', '1534', 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"file_download\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}');
INSERT INTO `wp_postmeta` VALUES ('2380', '1538', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2381', '1538', '_edit_lock', '1483104312:1');
INSERT INTO `wp_postmeta` VALUES ('2382', '1538', 'url_link', 'https://docs.google.com/document/d/1Actr-0wbE6_epyhfcYWRZTr6-NU4HKKE8fpCDH4MW8E/edit');
INSERT INTO `wp_postmeta` VALUES ('2383', '1538', '_url_link', 'field_58665a4cfa963');
INSERT INTO `wp_postmeta` VALUES ('2384', '1539', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2385', '1539', '_edit_lock', '1483104483:1');
INSERT INTO `wp_postmeta` VALUES ('2386', '1540', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2387', '1540', '_edit_lock', '1483104754:1');
INSERT INTO `wp_postmeta` VALUES ('2388', '1540', '_wp_page_template', 'templages/van-ban-thanh-doan.php');
INSERT INTO `wp_postmeta` VALUES ('2389', '1540', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('2390', '1540', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('2391', '1540', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('2392', '1540', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('2393', '1540', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('2394', '1540', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('2395', '1542', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2396', '1542', '_edit_lock', '1483105177:1');
INSERT INTO `wp_postmeta` VALUES ('2397', '1542', '_wp_page_template', 'templages/van-ban-so.php');
INSERT INTO `wp_postmeta` VALUES ('2398', '1542', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('2399', '1542', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('2400', '1542', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('2401', '1542', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('2402', '1542', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('2403', '1542', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('2404', '1544', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2405', '1544', '_edit_lock', '1483105209:1');
INSERT INTO `wp_postmeta` VALUES ('2406', '1544', '_wp_page_template', 'templages/dang-uy-so.php');
INSERT INTO `wp_postmeta` VALUES ('2407', '1544', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('2408', '1544', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('2409', '1544', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('2410', '1544', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('2411', '1544', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('2412', '1544', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('2413', '1546', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('2414', '1546', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES ('2415', '1546', 'vsw_pmvw_video_source', 'YouTube');
INSERT INTO `wp_postmeta` VALUES ('2416', '1546', 'vsw_pmvw_video_id', '');
INSERT INTO `wp_postmeta` VALUES ('2417', '1546', 'vsw_pmvw_video_width', '');
INSERT INTO `wp_postmeta` VALUES ('2418', '1546', 'vsw_pmvw_video_height', '');
INSERT INTO `wp_postmeta` VALUES ('2419', '1546', 'vsw_pmvw_video_caption', '');
INSERT INTO `wp_postmeta` VALUES ('2420', '1546', 'vsw_pmvw_video_autoplay', '0');
INSERT INTO `wp_postmeta` VALUES ('2421', '1546', '_edit_lock', '1483105266:1');
INSERT INTO `wp_postmeta` VALUES ('2422', '1548', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2423', '1548', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2424', '1548', '_menu_item_object_id', '1546');
INSERT INTO `wp_postmeta` VALUES ('2425', '1548', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2426', '1548', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2427', '1548', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2428', '1548', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2429', '1548', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2431', '1549', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2432', '1549', '_menu_item_menu_item_parent', '1548');
INSERT INTO `wp_postmeta` VALUES ('2433', '1549', '_menu_item_object_id', '1544');
INSERT INTO `wp_postmeta` VALUES ('2434', '1549', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2435', '1549', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2436', '1549', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2437', '1549', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2438', '1549', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2440', '1550', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2441', '1550', '_menu_item_menu_item_parent', '1548');
INSERT INTO `wp_postmeta` VALUES ('2442', '1550', '_menu_item_object_id', '1542');
INSERT INTO `wp_postmeta` VALUES ('2443', '1550', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2444', '1550', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2445', '1550', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2446', '1550', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2447', '1550', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2449', '1551', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2450', '1551', '_menu_item_menu_item_parent', '1548');
INSERT INTO `wp_postmeta` VALUES ('2451', '1551', '_menu_item_object_id', '1540');
INSERT INTO `wp_postmeta` VALUES ('2452', '1551', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2453', '1551', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2454', '1551', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2455', '1551', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2456', '1551', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2458', '1552', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2459', '1552', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES ('2460', '1552', '_menu_item_object_id', '1544');
INSERT INTO `wp_postmeta` VALUES ('2461', '1552', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2462', '1552', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2463', '1552', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2464', '1552', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2465', '1552', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2466', '1552', '_menu_item_orphaned', '1483105473');
INSERT INTO `wp_postmeta` VALUES ('2467', '1553', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2468', '1553', '_menu_item_menu_item_parent', '1548');
INSERT INTO `wp_postmeta` VALUES ('2469', '1553', '_menu_item_object_id', '1297');
INSERT INTO `wp_postmeta` VALUES ('2470', '1553', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2471', '1553', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2472', '1553', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2473', '1553', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2474', '1553', '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES ('2476', '1554', '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES ('2477', '1554', '_menu_item_menu_item_parent', '1548');
INSERT INTO `wp_postmeta` VALUES ('2478', '1554', '_menu_item_object_id', '1300');
INSERT INTO `wp_postmeta` VALUES ('2479', '1554', '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES ('2480', '1554', '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES ('2481', '1554', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES ('2482', '1554', '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES ('2483', '1554', '_menu_item_url', '');

-- ----------------------------
-- Table structure for `wp_posts`
-- ----------------------------
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=1555 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_posts
-- ----------------------------
INSERT INTO `wp_posts` VALUES ('1', '1', '2016-12-21 04:28:38', '2016-12-21 04:28:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2016-12-28 17:13:40', '2016-12-28 17:13:40', '', '0', 'http://doanso.abc/?p=1', '0', 'post', '', '1');
INSERT INTO `wp_posts` VALUES ('2', '1', '2016-12-21 04:28:38', '2016-12-21 04:28:38', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://doanso.abc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2016-12-28 17:11:38', '2016-12-28 17:11:38', '', '0', 'http://doanso.abc/?page_id=2', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('6', '1', '2016-12-21 04:36:47', '2016-12-21 04:36:47', '<blockquote>Joomla! - the dynamic portal engine and content management system</blockquote>', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-12-28 17:13:35', '2016-12-28 17:13:35', '', '0', 'http://doanso.abc/?p=6', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('7', '1', '2016-12-21 04:36:47', '2016-12-21 04:36:47', '<blockquote>Joomla! - the dynamic portal engine and content management system</blockquote>', '', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-12-21 04:36:47', '2016-12-21 04:36:47', '', '6', 'http://doanso.abc/2016/12/21/6-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('28', '1', '2016-12-21 04:39:24', '2016-12-21 04:39:24', 'Posts in this category test markup tags and styles.', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-12-21 04:39:24', '2016-12-21 04:39:24', '', '0', 'http://doanso.abc/2016/12/21/', '35', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('131', '1', '2013-01-04 09:38:05', '2013-01-04 15:38:05', 'This content, comments, pingbacks, and trackbacks should not be visible until the password is entered.', 'Password Protected (the password is \"enter\")', '', 'trash', 'open', 'open', 'enter', 'password-protected__trashed', '', '', '2016-12-28 17:14:44', '2016-12-28 17:14:44', '', '0', 'http://wpthemetestdata.wordpress.com/2007/09/04/test-with-secret-password/', '0', 'post', '', '1');
INSERT INTO `wp_posts` VALUES ('133', '1', '2013-01-05 09:00:23', '2013-01-05 15:00:23', 'This post has no title, but it still must link to the single post view somehow.\n\nThis is typically done by placing the permalink on the post date.', '', '', 'trash', 'closed', 'closed', '', 'no-title__trashed', '', '', '2016-12-28 17:14:27', '2016-12-28 17:14:27', '', '0', 'http://wpthemetestdata.wordpress.com/2007/09/04/14/', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('134', '1', '2013-01-06 09:39:56', '2013-01-06 15:39:56', '', 'No Content', '', 'trash', 'open', 'open', '', 'no-content__trashed', '', '', '2016-12-28 17:14:17', '2016-12-28 17:14:17', '', '0', 'http://wpthemetestdata.wordpress.com/2007/09/04/this-post-has-no-body/', '0', 'post', '', '1');
INSERT INTO `wp_posts` VALUES ('149', '1', '2013-01-03 10:11:37', '2013-01-03 16:11:37', 'This post tests comments in the following ways.\n<ul>\n	<li>Threaded comments up to 10 levels deep</li>\n	<li>Paginated comments (set <em><strong>Settings &gt; Discussion &gt; Break comments into pages</strong></em> to <em><strong>5</strong></em> top level comments per page)</li>\n	<li>Comment markup / formatting</li>\n	<li>Comment images</li>\n	<li>Comment videos</li>\n	<li>Author comments</li>\n	<li>Gravatars and default fallbacks</li>\n</ul>\n&nbsp;', 'Comments', '', 'trash', 'open', 'closed', '', 'comments__trashed', '', '', '2016-12-28 17:14:44', '2016-12-28 17:14:44', '', '0', 'http://wpthemetestdata.wordpress.com/2007/09/04/comment-test/', '0', 'post', '', '21');
INSERT INTO `wp_posts` VALUES ('151', '1', '2013-01-01 10:17:18', '2013-01-01 16:17:18', 'This post has many pingpacks and trackbacks.\n\nThere are a few ways to list them.\n<ol>\n	<li>Above the comments</li>\n	<li>Below the comments</li>\n	<li>Included within the normal flow of comments</li>\n</ol>', 'Pingbacks And Trackbacks', '', 'trash', 'closed', 'closed', '', 'pingbacks-an-trackbacks__trashed', '', '', '2016-12-28 17:14:45', '2016-12-28 17:14:45', '', '0', 'http://wpthemetestdata.wordpress.com/2007/09/04/many-trackbacks/', '0', 'post', '', '5');
INSERT INTO `wp_posts` VALUES ('152', '1', '2013-01-02 10:21:15', '2013-01-02 16:21:15', 'This post has its comments, pingbacks, and trackbacks disabled.\n\nThere should be no comment reply form or any pingbacks and trackbacks listed.', 'Comments Disabled', '', 'trash', 'closed', 'closed', '', 'comments-disabled__trashed', '', '', '2016-12-28 17:14:45', '2016-12-28 17:14:45', '', '0', 'http://wpthemetestdata.wordpress.com/2007/09/04/no-comments/', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('167', '1', '2012-11-01 01:00:34', '2012-11-01 06:00:34', 'This post has many tags.', 'Many Tags', '', 'trash', 'closed', 'closed', '', 'many-tags__trashed', '', '', '2016-12-28 17:14:55', '2016-12-28 17:14:55', '', '0', 'http://wpthemetestdata.wordpress.com/2007/11/24/many-tags/', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('168', '1', '2012-11-02 02:00:03', '2012-11-02 07:00:03', 'This post has many categories.', 'Many Categories', '', 'trash', 'closed', 'closed', '', 'many-categories__trashed', '', '', '2016-12-28 17:14:52', '2016-12-28 17:14:52', '', '0', 'http://wpthemetestdata.wordpress.com/2007/11/24/many-categories/', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('188', '1', '2013-01-08 10:00:20', '2013-01-08 16:00:20', 'Post Page 1\n\n<!--nextpage-->\n\nPost Page 2\n\n<!--nextpage-->\n\nPost Page 3', 'Paginated', '', 'trash', 'open', 'open', '', 'paginated__trashed', '', '', '2016-12-28 17:14:13', '2016-12-28 17:14:13', '', '0', 'http://noeltest.wordpress.com/?p=188', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('418', '1', '2050-01-01 12:00:18', '2050-01-01 18:00:18', 'This post is scheduled to be published in the future.\n\nIt should not be displayed by the theme.', 'Scheduled', '', 'trash', 'open', 'closed', '', 'scheduled__trashed', '', '', '2016-12-28 17:13:33', '2016-12-28 17:13:33', '', '0', 'http://wpthemetestdata.wordpress.com/?p=418', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('555', '1', '2012-12-10 10:00:14', '2012-12-10 16:00:14', '[gallery]\n\n<!--nextpage-->\n\nYou can use this page to test the Theme\'s handling of the[gallery]\n\nshortcode, including the <code>columns</code> parameter, from 1 to 10 columns. Themes are only required to support the default setting (3 columns), so this page is entirely optional.\n<h2>One Column</h2>\n[gallery columns=\"1\"]\n<h2>Two Columns</h2>\n[gallery columns=\"2\"]\n<h2>Three Columns</h2>\n[gallery columns=\"3\"]\n<h2>Four Columns</h2>\n[gallery columns=\"4\"]\n<h2>Five Columns</h2>\n[gallery columns=\"5\"]\n<h2>Six Columns</h2>\n[gallery columns=\"6\"]\n<h2>Seven Columns</h2>\n[gallery columns=\"7\"]\n<h2>Eight Columns</h2>\n[gallery columns=\"8\"]\n<h2>Nine Columns</h2>\n[gallery columns=\"9\"]\n<h2>Ten Columns</h2>\n[gallery columns=\"10\"]', 'Post Format: Gallery', '', 'trash', 'open', 'open', '', 'post-format-gallery__trashed', '', '', '2016-12-28 17:14:46', '2016-12-28 17:14:46', '', '0', 'http://wpthemetestdata.wordpress.com/?p=555', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('559', '1', '2012-12-09 09:00:54', '2012-12-09 15:00:54', 'We fundamentally believe that our customers are more interested in a simple, attractive, and functional WordPress theme than they are having 12 color schemes to choose from, and a fancy slider with 8 transition effects.\n\nIf you pick out a WordPress theme like you pick out drapes, you’re doing something wrong.', 'Post Format: Aside', '', 'trash', 'open', 'open', '', 'post-format-aside__trashed', '', '', '2016-12-28 17:14:47', '2016-12-28 17:14:47', '', '0', 'http://wpthemetestdata.wordpress.com/?p=559', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('562', '1', '2012-12-08 08:00:31', '2012-12-08 14:00:31', 'John: Are we still meeting for breakfast this morning?\n\nJohn: Where is the rest of the team? I\'ve been here since 3:00am.\n\nTom: Umm... We actually sleep. Go back to bed, dude.\n\nJohn: Fuuuuuuuuuuuu\n\nTom: Fine. But if I show up, I am not wearing pants.', 'Post Format: Chat', '', 'trash', 'open', 'open', '', 'post-format-chat__trashed', '', '', '2016-12-28 17:14:48', '2016-12-28 17:14:48', '', '0', 'http://wpthemetestdata.wordpress.com/?p=562', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('565', '1', '2012-12-07 07:00:53', '2012-12-07 13:00:53', '<a title=\"Video Game Inspired Mural [Pics, Videos]\" href=\"http://wpdaily.co/mural/\" target=\"_blank\">8BIT\'s Office - Video Game Inspired Mural</a>', 'Post Format: Link', '', 'trash', 'open', 'open', '', 'post-format-link__trashed', '', '', '2016-12-28 17:14:48', '2016-12-28 17:14:48', '', '0', 'http://wpthemetestdata.wordpress.com/?p=565', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('568', '1', '2012-12-05 05:00:39', '2012-12-05 11:00:39', '<dl class=\"wp-caption aligncenter\" id=\"attachment_612\" style=\"width: 650px;\"><dt class=\"wp-caption-dt\"></dt></dl><img class=\"alignnone size-full wp-image-967\" alt=\"Unicorn Wallpaper\" src=\"http://wptest.io/demo/wp-content/uploads/2012/12/unicorn-wallpaper.jpg\" width=\"1600\" height=\"1200\" />\n\nI really love this wallpaper. It makes me think fondly of <a title=\"Chris Ames\" href=\"http://chrisam.es/\" target=\"_blank\">Chris Ames</a>.', 'Post Format: Image', '', 'trash', 'open', 'open', '', 'post-format-image__trashed', '', '', '2016-12-28 17:14:49', '2016-12-28 17:14:49', '', '0', 'http://wpthemetestdata.wordpress.com/?p=568', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('575', '1', '2012-12-04 04:00:15', '2012-12-04 10:00:15', '<blockquote>I suggest a new strategy to you... Let the Wookie win.\n\n<a title=\"Let The Wookie Win\" href=\"http://www.youtube.com/watch?feature=player_detailpage&amp;v=mO6M4ngKRp0#t=30s\" target=\"_blank\">C-3PO</a></blockquote>', 'Post Format: Quote', '', 'trash', 'open', 'open', '', 'post-format-quote__trashed', '', '', '2016-12-28 17:14:49', '2016-12-28 17:14:49', '', '0', 'http://wpthemetestdata.wordpress.com/?p=575', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('579', '1', '2012-12-03 03:00:24', '2012-12-03 09:00:24', 'I\'ve been thinking a lot about spandex today.', 'Post Format: Status', '', 'trash', 'open', 'open', '', 'post-format-status__trashed', '', '', '2016-12-28 17:14:50', '2016-12-28 17:14:50', '', '0', 'http://wpthemetestdata.wordpress.com/?p=579', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('582', '1', '2012-12-02 02:00:58', '2012-12-02 08:00:58', 'http://www.youtube.com/watch?v=nwe-H6l4beM\n\nThe official music video of \"Rise Up\" from <a title=\"Eddy Music\" href=\"http://eddymusic.com/\" target=\"_blank\">Eddy\'s</a> <a title=\"Eddy - Start An Uproar! EP\" href=\"http://bit.ly/bVmAyI\" target=\"_blank\">Start An Uproar!</a> EP.\n\nLearn more about <a title=\"WordPress Embeds\" href=\"http://codex.wordpress.org/Embeds\" target=\"_blank\">WordPress Embeds</a>.', 'Post Format: Video', '', 'trash', 'open', 'open', '', 'post-format-video__trashed', '', '', '2016-12-28 17:14:52', '2016-12-28 17:14:52', '', '0', 'http://wpthemetestdata.wordpress.com/?p=582', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('587', '1', '2012-12-01 01:00:44', '2012-12-01 07:00:44', 'Link:\n\n<a href=\"http://wptest.io/demo/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3\">Eddy - Need (Remix)</a>\n\nShortcode:\n\n[audio http://wptest.io/demo/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3]', 'Post Format: Audio', '', 'trash', 'open', 'open', '', 'post-format-audio__trashed', '', '', '2016-12-28 17:14:52', '2016-12-28 17:14:52', '', '0', 'http://wpthemetestdata.wordpress.com/?p=587', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('674', '1', '2012-12-06 06:00:19', '2012-12-06 12:00:19', '[caption id=\"attachment_963\" align=\"alignnone\" width=\"1131\"]<img class=\" wp-image-963\" title=\"Triforce Wallpaper\" alt=\"Triforce Wallpaper\" src=\"http://wptest.io/demo/wp-content/uploads/2012/12/triforce-wallpaper.jpg\" width=\"1131\" height=\"707\" /> It\'s dangerous to go alone! Take this.[/caption]', 'Post Format: Image (Caption)', '', 'trash', 'open', 'open', '', 'post-format-image-caption__trashed', '', '', '2016-12-28 17:14:48', '2016-12-28 17:14:48', '', '0', 'http://wpthemetestdata.wordpress.com/?p=674', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('861', '1', '2013-01-05 10:00:49', '2013-01-05 16:00:49', 'Verify that:\n<ul>\n	<li>The post title renders the word \"with\" in <em>italics</em> and the word \"markup\" in <strong>bold</strong>.</li>\n	<li>The post title markup should be removed from the browser window / tab.</li>\n</ul>', 'Title With Markup', '', 'trash', 'open', 'open', '', 'title-with-markup__trashed', '', '', '2016-12-28 17:14:25', '2016-12-28 17:14:25', '', '0', 'http://wptest.io/demo/?p=861', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('867', '1', '2013-01-05 11:00:20', '2013-01-05 17:00:20', 'Putting special characters in the title should have no adverse effect on the layout or functionality.\n\nSpecial characters in the post title have been known to cause issues with JavaScript when it is minified, especially in the admin when editing the post itself (ie. issues with metaboxes, media upload, etc.).', 'Title With Special Characters ~`!@#$%^&*()-_=+{}[]/\\;:\'\"?,.>', '', 'trash', 'open', 'open', '', 'title-with-special-characters__trashed', '', '', '2016-12-28 17:14:23', '2016-12-28 17:14:23', '', '0', 'http://wptest.io/demo/?p=867', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('877', '1', '2013-01-05 12:00:59', '2013-01-05 18:00:59', 'Super/Duper/Long/NonBreaking/Path/Name/To/A/File/That/Is/Way/Deep/Down/In/Some/Mysterious/Remote/Desolate/Part/Of/The/Operating/System/To/A/File/That/Just/So/Happens/To/Be/Strangely/Named/Supercalifragilisticexpialidocious.txt\n\nA few things to check for:\n<ul>\n	<li>Non-breaking text in the title, content, and comments should have no adverse effects on layout or functionality.</li>\n	<li>Check the browser window / tab title.</li>\n	<li>If you are a plugin or widget developer, check that this text does not break anything.</li>\n</ul>\nThe following CSS properties will help you support non-breaking text.\n<pre>-ms-word-wrap: break-word;\nword-wrap: break-word;</pre>', 'Super/Duper/Long/NonBreaking/Path/Name/To/A/File/That/Is/Way/Deep/Down/In/Some/Mysterious/Remote/Desolate/Part/Of/The/Operating/System/To/A/File/That/Just/So/Happens/To/Be/Strangely/Named/Supercalifragilisticexpialidocious.txt', '', 'trash', 'open', 'open', '', 'non-breaking-text__trashed', '', '', '2016-12-28 17:14:19', '2016-12-28 17:14:19', '', '0', 'http://wptest.io/demo/?p=877', '0', 'post', '', '1');
INSERT INTO `wp_posts` VALUES ('895', '1', '2013-01-09 09:00:39', '2013-01-09 15:00:39', '<h3>Default</h3>\nThis is a paragraph. It should not have any alignment of any kind. It should just flow like you would normally expect. Nothing fancy. Just straight up text, free flowing, with love. Completely neutral and not picking a side or sitting on the fence. It just is. It just freaking is. It likes where it is. It does not feel compelled to pick a side. Leave him be. It will just be better that way. Trust me.\n<h3>Left Align</h3>\n<p style=\"text-align: left;\">This is a paragraph. It is left aligned. Because of this, it is a bit more liberal in it\'s views. It\'s favorite color is green. Left align tends to be more eco-friendly, but it provides no concrete evidence that it really is. Even though it likes share the wealth evenly, it leaves the equal distribution up to justified alignment.</p>\n\n<h3>Center Align</h3>\n<p style=\"text-align: center;\">This is a paragraph. It is center aligned. Center is, but nature, a fence sitter. A flip flopper. It has a difficult time making up its mind. It wants to pick a side. Really, it does. It has the best intentions, but it tends to complicate matters more than help. The best you can do is try to win it over and hope for the best. I hear center align does take bribes.</p>\n\n<h3>Right Align</h3>\n<p style=\"text-align: right;\">This is a paragraph. It is right aligned. It is a bit more conservative in it\'s views. It\'s prefers to not be told what to do or how to do it. Right align totally owns a slew of guns and loves to head to the range for some practice. Which is cool and all. I mean, it\'s a pretty good shot from at least four or five football fields away. Dead on. So boss.</p>\n\n<h3>Justify Align</h3>\n<p style=\"text-align: justify;\">This is a paragraph. It is justify aligned. It gets really mad when people associate it with Justin Timberlake. Typically, justified is pretty straight laced. It likes everything to be in it\'s place and not all cattywampus like the rest of the aligns. I am not saying that makes it better than the rest of the aligns, but it does tend to put off more of an elitist attitude.</p>', 'Text Alignment', '', 'trash', 'open', 'open', '', 'text-alignment__trashed', '', '', '2016-12-28 17:14:11', '2016-12-28 17:14:11', '', '0', 'http://wptest.io/demo/?p=895', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('903', '1', '2013-01-10 20:15:40', '2013-01-11 02:15:40', 'Welcome to image alignment! The best way to demonstrate the ebb and flow of the various image positioning options is to nestle them snuggly among an ocean of words. Grab a paddle and let\'s get started.\n\nOn the topic of alignment, it should be noted that users can choose from the options of <em>None</em>, <em>Left</em>, <em>Right, </em>and <em>Center</em>. In addition, they also get the options of <em>Thumbnail</em>, <em>Medium</em>, <em>Large</em> &amp; <em>Fullsize</em>.\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-906 aligncenter\" title=\"Image Alignment 580x300\" alt=\"Image Alignment 580x300\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-580x300.jpg\" width=\"580\" height=\"300\" /></p>\nThe image above happens to be <em><strong>centered</strong></em>.\n\n<strong><img class=\"size-full wp-image-904 alignleft\" title=\"Image Alignment 150x150\" alt=\"Image Alignment 150x150\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-150x150.jpg\" width=\"150\" height=\"150\" /></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n<img class=\"alignnone  wp-image-907\" title=\"Image Alignment 1200x400\" alt=\"Image Alignment 1200x400\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg\" width=\"1200\" height=\"400\" />\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n<img class=\"size-full wp-image-905 alignright\" title=\"Image Alignment 300x200\" alt=\"Image Alignment 300x200\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-300x200.jpg\" width=\"300\" height=\"200\" />\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd just when you thought we were done, we\'re going to do them all over again with captions!\n\n[caption id=\"attachment_906\" align=\"aligncenter\" width=\"580\"]<img class=\"size-full wp-image-906  \" title=\"Image Alignment 580x300\" alt=\"Image Alignment 580x300\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-580x300.jpg\" width=\"580\" height=\"300\" /> Look at 580x300 getting some <a title=\"Image Settings\" href=\"http://en.support.wordpress.com/images/image-settings/\">caption</a> love.[/caption]\n\nThe image above happens to be <em><strong>centered</strong></em>. The caption also has a link in it, just to see if it does anything funky.\n\n[caption id=\"attachment_904\" align=\"alignleft\" width=\"150\"]<img class=\"size-full wp-image-904  \" title=\"Image Alignment 150x150\" alt=\"Image Alignment 150x150\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-150x150.jpg\" width=\"150\" height=\"150\" /> Itty-bitty caption.[/caption]\n\n<strong></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n[caption id=\"attachment_907\" align=\"alignnone\" width=\"1200\"]<img class=\" wp-image-907\" title=\"Image Alignment 1200x400\" alt=\"Image Alignment 1200x400\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg\" width=\"1200\" height=\"400\" /> Massive image comment for your eyeballs.[/caption]\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n[caption id=\"attachment_905\" align=\"alignright\" width=\"300\"]<img class=\"size-full wp-image-905 \" title=\"Image Alignment 300x200\" alt=\"Image Alignment 300x200\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-300x200.jpg\" width=\"300\" height=\"200\" /> Feels good to be right all the time.[/caption]\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd that\'s a wrap, yo! You survived the tumultuous waters of alignment. Image alignment achievement unlocked!', 'Image Alignment', '', 'trash', 'open', 'open', '', 'image-alignment__trashed', '', '', '2016-12-28 17:14:09', '2016-12-28 17:14:09', '', '0', 'http://wptest.io/demo/?p=903', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('919', '1', '2013-01-11 20:22:19', '2013-01-12 02:22:19', '<h2>Headings</h2>\n<h1>Header one</h1>\n<h2>Header two</h2>\n<h3>Header three</h3>\n<h4>Header four</h4>\n<h5>Header five</h5>\n<h6>Header six</h6>\n<h2>Blockquotes</h2>\nSingle line blockquote:\n<blockquote>Stay hungry. Stay foolish.</blockquote>\nMulti line blockquote with a cite reference:\n<blockquote>People think focus means saying yes to the thing you\'ve got to focus on. But that\'s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I\'m actually as proud of the things we haven\'t done as the things I have done. Innovation is saying no to 1,000 things. <cite>Steve Jobs - Apple Worldwide Developers\' Conference, 1997</cite></blockquote>\n<h2>Tables</h2>\n<table>\n<tbody>\n<tr>\n<th>Employee</th>\n<th class=\"views\">Salary</th>\n<th></th>\n</tr>\n<tr class=\"odd\">\n<td><a href=\"http://john.do/\">John Saddington</a></td>\n<td>$1</td>\n<td>Because that\'s all Steve Job\' needed for a salary.</td>\n</tr>\n<tr class=\"even\">\n<td><a href=\"http://tommcfarlin.com/\">Tom McFarlin</a></td>\n<td>$100K</td>\n<td>For all the blogging he does.</td>\n</tr>\n<tr class=\"odd\">\n<td><a href=\"http://jarederickson.com/\">Jared Erickson</a></td>\n<td>$100M</td>\n<td>Pictures are worth a thousand words, right? So Tom x 1,000.</td>\n</tr>\n<tr class=\"even\">\n<td><a href=\"http://chrisam.es/\">Chris Ames</a></td>\n<td>$100B</td>\n<td>With hair like that?! Enough said...</td>\n</tr>\n</tbody>\n</table>\n<h2>Definition Lists</h2>\n<dl><dt>Definition List Title</dt><dd>Definition list division.</dd><dt>Startup</dt><dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd><dt>#dowork</dt><dd>Coined by Rob Dyrdek and his personal body guard Christopher \"Big Black\" Boykins, \"Do Work\" works as a self motivator, to motivating your friends.</dd><dt>Do It Live</dt><dd>I\'ll let Bill O\'Reilly will <a title=\"We\'ll Do It Live\" href=\"https://www.youtube.com/watch?v=O_HyZ5aW76c\">explain</a> this one.</dd></dl>\n<h2>Unordered Lists (Nested)</h2>\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n<h2>Ordered List (Nested)</h2>\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n<h2>HTML Tags</h2>\nThese supported tags come from the WordPress.com code <a title=\"Code\" href=\"http://en.support.wordpress.com/code/\">FAQ</a>.\n\n<strong>Address Tag</strong>\n\n<address>1 Infinite Loop\nCupertino, CA 95014\nUnited States</address><strong>Anchor Tag (aka. Link)</strong>\n\nThis is an example of a <a title=\"Apple\" href=\"http://apple.com\">link</a>.\n\n<strong>Abbreviation Tag</strong>\n\nThe abbreviation <abbr title=\"Seriously\">srsly</abbr> stands for \"seriously\".\n\n<strong>Acronym Tag</strong>\n\nThe acronym <acronym title=\"For The Win\">ftw</acronym> stands for \"for the win\".\n\n<strong>Big Tag</strong>\n\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\n\n<strong>Cite Tag</strong>\n\n\"Code is poetry.\" --<cite>Automattic</cite>\n\n<strong>Code Tag</strong>\n\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\n\n<strong>Delete Tag</strong>\n\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\n\n<strong>Emphasize Tag</strong>\n\nThe emphasize tag should <em>italicize</em> text.\n\n<strong>Insert Tag</strong>\n\nThis tag should denote <ins>inserted</ins> text.\n\n<strong>Keyboard Tag</strong>\n\nThis scarsly known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Preformatted Tag</strong>\n\nThis tag styles large blocks of code.\n<pre>.post-title {\n	margin: 0 0 5px;\n	font-weight: bold;\n	font-size: 38px;\n	line-height: 1.2;\n}</pre>\n<strong>Quote Tag</strong>\n\n<q>Developers, developers, developers...</q> --Steve Ballmer\n\n<strong>Strong Tag</strong>\n\nThis tag shows <strong>bold<strong> text.</strong></strong>\n\n<strong>Subscript Tag</strong>\n\nGetting our science styling on with H<sub>2</sub>O, which should push the \"2\" down.\n\n<strong>Superscript Tag</strong>\n\nStill sticking with science and Albert Einstein\'s E = MC<sup>2</sup>, which should lift the \"2\" up.\n\n<strong>Teletype Tag</strong>\n\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Variable Tag</strong>\n\nThis allows you to denote <var>variables</var>.', 'Markup And Formatting', '', 'trash', 'open', 'open', '', 'markup-and-formatting__trashed', '', '', '2016-12-28 17:14:06', '2016-12-28 17:14:06', '', '0', 'http://wptest.io/demo/?p=919', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('922', '1', '2013-03-16 01:03:21', '2013-03-16 01:03:21', 'This post is drafted and not published yet.\n\nIt should not be displayed by the theme.', 'Draft', '', 'trash', 'open', 'open', '', '__trashed-2', '', '', '2016-12-28 17:13:38', '2016-12-28 17:13:38', '', '0', 'http://wptest.io/demo/?p=922', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('946', '1', '2012-12-11 11:00:11', '2012-12-11 17:00:11', '<strong>This is an example of a standard post format</strong>.\n\nInspiration is a spark. A flash of light. Ignition. But without the proper mixture of oxygen and fuel, inspiration both lives and dies in the same instant. My life, my experiences, my research; these things are fertile soil for the great blog posts hidden within me. I carry them always and they are present when I sit down to do my work.\n\nBut all too often, it’s a struggle. The raw material is there, but the inspiration is not. The oxygen is abundant, but the fuel is scarce. And I’m left wondering, “How?”\n\nHow do I harvest? How do I sift and pan? How do I mine the caverns within me for intellectual and emotional gems? How do I… write?\n\nOr perhaps a better question is, how do you? Yes, <em>you</em>, my kindred blog reader. Surely, <em>you</em> are similar. Surely, <em>you’ve</em> wrestled the Great Muse down to the dusty earth, and won.\n\nI know this: it starts before I sit down to type. Great posts begin with significant life challenges. With weighty problems to solve. With an urgent need or a mature discontent with the way things are today. Yes, I think all great posts begin before words are written.\n\nSo get up, reader. Walk away from your keyboard, and live.\n\nOnly then can you give life… to words.', 'Post Format: Standard', '', 'trash', 'open', 'open', '', 'post-format-standard__trashed', '', '', '2016-12-28 17:14:46', '2016-12-28 17:14:46', '', '0', 'http://wptest.io/demo/?p=946', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('993', '1', '2013-03-15 14:38:08', '2013-03-15 19:38:08', 'This is the post content.', 'Excerpt', 'This is a post excerpt.', 'trash', 'open', 'open', '', 'excerpt__trashed', '', '', '2016-12-28 17:14:04', '2016-12-28 17:14:04', '', '0', 'http://wptest.io/demo/?p=993', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('996', '1', '2013-03-15 14:41:11', '2013-03-15 19:41:11', 'This content is before the <a title=\"The More Tag\" href=\"http://en.support.wordpress.com/splitting-content/more-tag/\" target=\"_blank\">more tag</a>.\n\nRight after this sentence should be a \"continue reading\" button of some sort.\n\n<!--more-->\n\nAnd this content is after the more tag.', 'More Tag', '', 'trash', 'open', 'open', '', 'more-tag__trashed', '', '', '2016-12-28 17:14:02', '2016-12-28 17:14:02', '', '0', 'http://wptest.io/demo/?p=996', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1000', '1', '2013-03-15 14:48:32', '2013-03-15 19:48:32', 'Nested and mixed lists are an interesting beast. It\'s a corner case to make sure that\n<ul>\n	<li>Lists within lists do not break the ordered list numbering order</li>\n	<li>Your list styles go deep enough</li>\n</ul>\n<h3>Ordered - Unordered - Ordered</h3>\n<ol>\n	<li>ordered item</li>\n	<li>ordered item\n<ul>\n	<li><strong>unordered</strong></li>\n	<li><strong>unordered</strong>\n<ol>\n	<li>ordered item</li>\n	<li>ordered item</li>\n</ol>\n</li>\n</ul>\n</li>\n	<li>ordered item</li>\n	<li>ordered item</li>\n</ol>\n<h3>Ordered - Unordered - Unordered</h3>\n<ol>\n	<li>ordered item</li>\n	<li>ordered item\n<ul>\n	<li><strong>unordered</strong></li>\n	<li><strong>unordered</strong>\n<ul>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>\n</li>\n</ul>\n</li>\n	<li>ordered item</li>\n	<li>ordered item</li>\n</ol>\n<h3>Unordered - Ordered - Unordered</h3>\n<ul>\n	<li>unordered item</li>\n	<li>unordered item\n<ol>\n	<li>ordered</li>\n	<li>ordered\n<ul>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>\n</li>\n</ol>\n</li>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>\n<h3>Unordered - Unordered - Ordered</h3>\n<ul>\n	<li>unordered item</li>\n	<li>unordered item\n<ul>\n	<li>unordered</li>\n	<li>unordered\n<ol>\n	<li><strong>ordered item</strong></li>\n	<li><strong>ordered item</strong></li>\n</ol>\n</li>\n</ul>\n</li>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>', 'Nested And Mixed Lists', '', 'trash', 'open', 'open', '', 'nested-and-mixed-lists__trashed', '', '', '2016-12-28 17:13:59', '2016-12-28 17:13:59', '', '0', 'http://wptest.io/demo/?p=1000', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1005', '1', '2012-12-02 03:00:34', '2012-12-02 09:00:34', '[wpvideo tFnqC9XQ w=680]\n\n<a title=\"VideoPress Plugin for WordPress\" href=\"http://videopress.com/\" target=\"_blank\">VideoPress</a>, especially as a video post format, usually provides some unique styling issues.\n\nYou will need to install <a title=\"Jetpack for WordPress\" href=\"http://jetpack.me/\" target=\"_blank\">Jetpack</a> or <a title=\"Slim Jetpack\" href=\"http://wordpress.org/extend/plugins/slimjetpack/\" target=\"_blank\">Slim Jetpack</a> plugin to turn the shortcode into a viewable video.', 'Post Format: Video (VideoPress)', '', 'trash', 'open', 'open', '', 'post-format-video-videopress__trashed', '', '', '2016-12-28 17:14:51', '2016-12-28 17:14:51', '', '0', 'http://wptest.io/demo/?p=1005', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1011', '1', '2013-03-15 15:15:12', '2013-03-15 20:15:12', 'This post should display a <a title=\"Featured Images\" href=\"http://en.support.wordpress.com/featured-images/#setting-a-featured-image\" target=\"_blank\">featured image</a>, if the theme <a title=\"Post Thumbnails\" href=\"http://codex.wordpress.org/Post_Thumbnails\" target=\"_blank\">supports it</a>.\n\nNon-square images can provide some unique styling issues.\n\nThis post tests a horizontal featured image.', 'Featured Image (Horizontal)', '', 'trash', 'open', 'open', '', 'featured-image-horizontal__trashed', '', '', '2016-12-28 17:13:57', '2016-12-28 17:13:57', '', '0', 'http://wptest.io/demo/?p=1011', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1016', '1', '2013-03-15 15:36:32', '2013-03-15 20:36:32', 'This post should display a <a title=\"Featured Images\" href=\"http://en.support.wordpress.com/featured-images/#setting-a-featured-image\" target=\"_blank\">featured image</a>, if the theme <a title=\"Post Thumbnails\" href=\"http://codex.wordpress.org/Post_Thumbnails\" target=\"_blank\">supports it</a>.\n\nNon-square images can provide some unique styling issues.\n\nThis post tests a vertical featured image.', 'Featured Image (Vertical)', '', 'trash', 'open', 'open', '', 'featured-image-vertical__trashed', '', '', '2016-12-28 17:13:54', '2016-12-28 17:13:54', '', '0', 'http://wptest.io/demo/?p=1016', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1027', '1', '2013-03-15 15:47:16', '2013-03-15 20:47:16', 'https://twitter.com/carlsmith/status/258214236126322689\n\nThis post tests WordPress\' <a title=\"Twitter Embeds\" href=\"http://en.support.wordpress.com/twitter/twitter-embeds/\" target=\"_blank\">Twitter Embeds</a> feature.', 'Twitter Embeds', '', 'trash', 'open', 'open', '', 'twitter-embeds__trashed', '', '', '2016-12-28 17:13:52', '2016-12-28 17:13:52', '', '0', 'http://wptest.io/demo/?p=1027', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1031', '1', '2013-03-15 17:23:27', '2013-03-15 22:23:27', 'This is a test for Jetpack\'s Tiled Gallery.\n\nYou can install <a title=\"Jetpack for WordPress\" href=\"http://jetpack.me/\" target=\"_blank\">Jetpack</a> or <a title=\"Slim Jetpack\" href=\"http://wordpress.org/extend/plugins/slimjetpack/\" target=\"_blank\">Slim Jetpack</a> to test it out.\n\n[gallery type=\"rectangular\" columns=\"4\" ids=\"1261,1038,1039,1040,1041,1042\" orderby=\"rand\"]\n\nThis is some text after the Tiled Gallery just to make sure that everything spaces nicely.', 'Tiled Gallery', '', 'trash', 'open', 'open', '', 'tiled-gallery__trashed', '', '', '2016-12-28 17:13:50', '2016-12-28 17:13:50', '', '0', 'http://wptest.io/demo/?p=1031', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1062', '1', '2013-03-15 17:48:51', '2013-03-15 22:48:51', '<iframe src=\"http://astore.amazon.com/iogiea09-20\" height=\"4000\" width=\"100%\" frameborder=\"0\" scrolling=\"no\"></iframe>', 'Amazon Store', '', 'trash', 'open', 'open', '', 'amazon-store__trashed', '', '', '2016-12-28 17:09:53', '2016-12-28 17:09:53', '', '0', 'http://wptest.io/demo/?page_id=1062', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1064', '1', '2013-03-15 17:56:11', '2013-03-15 22:56:11', 'Note that you will probably want to test this page in conjunction with the <strong>Blog</strong> page.\n\nTo test this page:\n<ul>\n	<li>Navigate to <strong><em>Settings &gt; Reading</em></strong> in the WordPress admin.</li>\n	<li>Then use the settings in the screenshot below.</li>\n</ul>\n<img class=\"alignnone size-full wp-image-1071\" alt=\"Static Pages\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/static-pages.png\" width=\"1390\" height=\"1022\" />\n\nA few things to check once this is done.\n<ul>\n	<li>Navigating to the root URL loads this page.</li>\n	<li>The site title should be an <code>H1</code> and the page title should be an <code>H2</code> (if displayed).</li>\n	<li>Check that the browser window / tab name is what you intend it to show.</li>\n	<li>If your theme displays breadcrumbs, they should probably not show when this page is the front page.</li>\n</ul>', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2013-03-15 17:56:11', '2013-03-15 22:56:11', '', '0', 'http://wptest.io/demo/?page_id=1064', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1066', '1', '2013-03-15 17:59:55', '2013-03-15 22:59:55', 'Note that you will probably want to test this page in conjunction with the <strong>Home</strong> page.\n\nTo test this page:\n<ul>\n	<li>Navigate to <strong><em>Settings &gt; Reading</em></strong> in the WordPress admin.</li>\n	<li>Then use the settings in the screenshot below.</li>\n</ul>\n<img class=\"alignnone size-full wp-image-1071\" alt=\"Static Pages\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/static-pages.png\" width=\"1390\" height=\"1022\" />\n\nA few things to check once this is done.\n<ul>\n	<li>Navigating to the Blog page does <strong>not</strong> display this page. It should display blog posts.</li>\n	<li>Check that the browser window / tab name is what you intend it to show.</li>\n	<li>If your theme displays breadcrumbs, they should probably not show when this is the posts page.</li>\n</ul>', 'Blog', '', 'trash', 'open', 'open', '', 'blog__trashed', '', '', '2016-12-28 17:10:01', '2016-12-28 17:10:01', '', '0', 'http://wptest.io/demo/?page_id=1066', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1075', '1', '2013-03-15 18:15:14', '2013-03-15 23:15:14', 'This page has its comments, pingbacks, and trackbacks disabled.\n\nThere should be no comment reply form or any pingbacks and trackbacks listed.', 'Page Comments Disabled', '', 'trash', 'closed', 'closed', '', 'page-comments-disabled__trashed', '', '', '2016-12-28 17:11:25', '2016-12-28 17:11:25', '', '0', 'http://wptest.io/demo/?page_id=1075', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1077', '1', '2013-03-15 18:16:08', '2013-03-15 23:16:08', 'This post has its comments, pingbacks, and trackbacks enabled.\n\nIf your theme support comments on pages, then they should show up below.', 'Page Comments', '', 'trash', 'open', 'open', '', 'page-comments__trashed', '', '', '2016-12-28 17:11:22', '2016-12-28 17:11:22', '', '0', 'http://wptest.io/demo/?page_id=1077', '0', 'page', '', '1');
INSERT INTO `wp_posts` VALUES ('1080', '1', '2013-03-15 18:19:23', '2013-03-15 23:19:23', 'Welcome to image alignment! The best way to demonstrate the ebb and flow of the various image positioning options is to nestle them snuggly among an ocean of words. Grab a paddle and let\'s get started.\n\nOn the topic of alignment, it should be noted that users can choose from the options of <em>None</em>, <em>Left</em>, <em>Right, </em>and <em>Center</em>. In addition, they also get the options of <em>Thumbnail</em>, <em>Medium</em>, <em>Large</em> &amp; <em>Fullsize</em>.\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-906 aligncenter\" title=\"Image Alignment 580x300\" alt=\"Image Alignment 580x300\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-580x300.jpg\" width=\"580\" height=\"300\" /></p>\nThe image above happens to be <em><strong>centered</strong></em>.\n\n<strong><img class=\"size-full wp-image-904 alignleft\" title=\"Image Alignment 150x150\" alt=\"Image Alignment 150x150\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-150x150.jpg\" width=\"150\" height=\"150\" /></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n<img class=\"alignnone  wp-image-907\" title=\"Image Alignment 1200x400\" alt=\"Image Alignment 1200x400\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg\" width=\"1200\" height=\"400\" />\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n<img class=\"size-full wp-image-905 alignright\" title=\"Image Alignment 300x200\" alt=\"Image Alignment 300x200\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-300x200.jpg\" width=\"300\" height=\"200\" />\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd just when you thought we were done, we\'re going to do them all over again with captions!\n\n[caption id=\"attachment_906\" align=\"aligncenter\" width=\"580\"]<img class=\"size-full wp-image-906  \" title=\"Image Alignment 580x300\" alt=\"Image Alignment 580x300\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-580x300.jpg\" width=\"580\" height=\"300\" /> Look at 580x300 getting some <a title=\"Image Settings\" href=\"http://en.support.wordpress.com/images/image-settings/\">caption</a> love.[/caption]\n\nThe image above happens to be <em><strong>centered</strong></em>. The caption also has a link in it, just to see if it does anything funky.\n\n[caption id=\"attachment_904\" align=\"alignleft\" width=\"150\"]<img class=\"size-full wp-image-904  \" title=\"Image Alignment 150x150\" alt=\"Image Alignment 150x150\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-150x150.jpg\" width=\"150\" height=\"150\" /> Itty-bitty caption.[/caption]\n\n<strong></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n[caption id=\"attachment_907\" align=\"alignnone\" width=\"1200\"]<img class=\" wp-image-907\" title=\"Image Alignment 1200x400\" alt=\"Image Alignment 1200x400\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg\" width=\"1200\" height=\"400\" /> Massive image comment for your eyeballs.[/caption]\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n[caption id=\"attachment_905\" align=\"alignright\" width=\"300\"]<img class=\"size-full wp-image-905 \" title=\"Image Alignment 300x200\" alt=\"Image Alignment 300x200\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-300x200.jpg\" width=\"300\" height=\"200\" /> Feels good to be right all the time.[/caption]\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd that\'s a wrap, yo! You survived the tumultuous waters of alignment. Image alignment achievement unlocked!', 'Page Image Alignment', '', 'trash', 'open', 'open', '', 'page-image-alignment__trashed', '', '', '2016-12-28 17:11:29', '2016-12-28 17:11:29', '', '0', 'http://wptest.io/demo/?page_id=1080', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1083', '1', '2013-03-15 18:20:05', '2013-03-15 23:20:05', '<h2>Headings</h2>\n<h1>Header one</h1>\n<h2>Header two</h2>\n<h3>Header three</h3>\n<h4>Header four</h4>\n<h5>Header five</h5>\n<h6>Header six</h6>\n<h2>Blockquotes</h2>\nSingle line blockquote:\n<blockquote>Stay hungry. Stay foolish.</blockquote>\nMulti line blockquote with a cite reference:\n<blockquote>People think focus means saying yes to the thing you\'ve got to focus on. But that\'s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I\'m actually as proud of the things we haven\'t done as the things I have done. Innovation is saying no to 1,000 things. <cite>Steve Jobs - Apple Worldwide Developers\' Conference, 1997</cite></blockquote>\n<h2>Tables</h2>\n<table>\n<tbody>\n<tr>\n<th>Employee</th>\n<th class=\"views\">Salary</th>\n<th></th>\n</tr>\n<tr class=\"odd\">\n<td><a href=\"http://john.do/\">John Saddington</a></td>\n<td>$1</td>\n<td>Because that\'s all Steve Job\' needed for a salary.</td>\n</tr>\n<tr class=\"even\">\n<td><a href=\"http://tommcfarlin.com/\">Tom McFarlin</a></td>\n<td>$100K</td>\n<td>For all the blogging he does.</td>\n</tr>\n<tr class=\"odd\">\n<td><a href=\"http://jarederickson.com/\">Jared Erickson</a></td>\n<td>$100M</td>\n<td>Pictures are worth a thousand words, right? So Tom x 1,000.</td>\n</tr>\n<tr class=\"even\">\n<td><a href=\"http://chrisam.es/\">Chris Ames</a></td>\n<td>$100B</td>\n<td>With hair like that?! Enough said...</td>\n</tr>\n</tbody>\n</table>\n<h2>Definition Lists</h2>\n<dl><dt>Definition List Title</dt><dd>Definition list division.</dd><dt>Startup</dt><dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd><dt>#dowork</dt><dd>Coined by Rob Dyrdek and his personal body guard Christopher \"Big Black\" Boykins, \"Do Work\" works as a self motivator, to motivating your friends.</dd><dt>Do It Live</dt><dd>I\'ll let Bill O\'Reilly will <a title=\"We\'ll Do It Live\" href=\"https://www.youtube.com/watch?v=O_HyZ5aW76c\">explain</a> this one.</dd></dl>\n<h2>Unordered Lists (Nested)</h2>\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n<h2>Ordered List (Nested)</h2>\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n<h2>HTML Tags</h2>\nThese supported tags come from the WordPress.com code <a title=\"Code\" href=\"http://en.support.wordpress.com/code/\">FAQ</a>.\n\n<strong>Address Tag</strong>\n\n<address>1 Infinite Loop\nCupertino, CA 95014\nUnited States</address><strong>Anchor Tag (aka. Link)</strong>\n\nThis is an example of a <a title=\"Apple\" href=\"http://apple.com\">link</a>.\n\n<strong>Abbreviation Tag</strong>\n\nThe abbreviation <abbr title=\"Seriously\">srsly</abbr> stands for \"seriously\".\n\n<strong>Acronym Tag</strong>\n\nThe acronym <acronym title=\"For The Win\">ftw</acronym> stands for \"for the win\".\n\n<strong>Big Tag</strong>\n\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\n\n<strong>Cite Tag</strong>\n\n\"Code is poetry.\" --<cite>Automattic</cite>\n\n<strong>Code Tag</strong>\n\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\n\n<strong>Delete Tag</strong>\n\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\n\n<strong>Emphasize Tag</strong>\n\nThe emphasize tag should <em>italicize</em> text.\n\n<strong>Insert Tag</strong>\n\nThis tag should denote <ins>inserted</ins> text.\n\n<strong>Keyboard Tag</strong>\n\nThis scarsly known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Preformatted Tag</strong>\n\nThis tag styles large blocks of code.\n<pre>.post-title {\n	margin: 0 0 5px;\n	font-weight: bold;\n	font-size: 38px;\n	line-height: 1.2;\n}</pre>\n<strong>Quote Tag</strong>\n\n<q>Developers, developers, developers...</q> --Steve Ballmer\n\n<strong>Strong Tag</strong>\n\nThis tag shows <strong>bold<strong> text.</strong></strong>\n\n<strong>Subscript Tag</strong>\n\nGetting our science styling on with H<sub>2</sub>O, which should push the \"2\" down.\n\n<strong>Superscript Tag</strong>\n\nStill sticking with science and Albert Einstein\'s E = MC<sup>2</sup>, which should lift the \"2\" up.\n\n<strong>Teletype Tag</strong>\n\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Variable Tag</strong>\n\nThis allows you to denote <var>variables</var>.', 'Page Markup And Formatting', '', 'trash', 'open', 'open', '', 'page-markup-and-formatting__trashed', '', '', '2016-12-28 17:11:31', '2016-12-28 17:11:31', '', '0', 'http://wptest.io/demo/?page_id=1083', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1086', '1', '2013-03-15 18:21:12', '2013-03-15 23:21:12', '<a title=\"WP Test - The Best Tests For WordPress\" href=\"http://wptest.io\" target=\"_blank\">WP Test</a> is a fantastically exhaustive set of test data to measure the integrity of your plugins and themes.\n\nThe foundation of these tests are derived from <a title=\"Theme Unit Test\" href=\"http://codex.wordpress.org/Theme_Unit_Test\" target=\"_blank\">WordPress’ Theme Unit Test Codex</a> data. It’s paired with lessons learned from over three years of theme and plugin support, and baffling corner cases, to create a potent cocktail of simulated, quirky user content.\n\nThe word \"comprehensive\" was purposely left off this description. It\'s not. There will always be something new squarely scenario to test. That\'s where you come in. <a title=\"Contact\" href=\"http://wptest.io/contact/\">Let us know</a> of a test we\'re not covering. We\'d love to squash it.\n\nLet’s make WordPress testing easier and resilient together.', 'About', '', 'trash', 'open', 'open', '', 'about__trashed', '', '', '2016-12-28 17:09:49', '2016-12-28 17:09:49', '', '0', 'http://wptest.io/demo/?page_id=1086', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1088', '1', '2013-03-15 18:24:09', '2013-03-15 23:24:09', 'This page the a parent page.\n\nIt contains child pages.', 'Parent Page', '', 'trash', 'open', 'open', '', 'parent-page__trashed', '', '', '2016-12-28 17:11:34', '2016-12-28 17:11:34', '', '0', 'http://wptest.io/demo/?page_id=1088', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1090', '1', '2013-03-15 18:25:40', '2013-03-15 23:25:40', 'This is a child page.', 'Child Page 01', '', 'trash', 'open', 'open', '', 'child-page-01__trashed', '', '', '2016-12-28 17:11:50', '2016-12-28 17:11:50', '', '1088', 'http://wptest.io/demo/?page_id=1090', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1092', '1', '2013-03-15 18:25:51', '2013-03-15 23:25:51', 'This is a child page.', 'Child Page 02', '', 'trash', 'open', 'closed', '', 'child-page-02__trashed', '', '', '2016-12-28 17:11:50', '2016-12-28 17:11:50', '', '1088', 'http://wptest.io/demo/?page_id=1092', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1094', '1', '2013-03-15 18:26:23', '2013-03-15 23:26:23', 'This is a child page.\n\nAnd, just for fun, it also contains a child page (aka. a grandchild page).', 'Child Page 03', '', 'trash', 'open', 'closed', '', 'child-page-03__trashed', '', '', '2016-12-28 17:11:50', '2016-12-28 17:11:50', '', '1088', 'http://wptest.io/demo/?page_id=1094', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1096', '1', '2013-03-15 18:26:40', '2013-03-15 23:26:40', 'This is a child page.', 'Child Page 04', '', 'trash', 'open', 'open', '', 'child-page-04__trashed', '', '', '2016-12-28 17:11:51', '2016-12-28 17:11:51', '', '1088', 'http://wptest.io/demo/?page_id=1096', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1098', '1', '2013-03-15 18:27:40', '2013-03-15 23:27:40', 'This is a child page.', 'Child Page 05', '', 'trash', 'open', 'open', '', 'child-page-05__trashed', '', '', '2016-12-28 17:11:51', '2016-12-28 17:11:51', '', '1088', 'http://wptest.io/demo/?page_id=1098', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1105', '1', '2013-03-15 18:28:48', '2013-03-15 23:28:48', 'This is a grandchild page.', 'Grandchild Page', '', 'trash', 'open', 'open', '', 'grandchild-page__trashed', '', '', '2016-12-28 17:11:51', '2016-12-28 17:11:51', '', '1094', 'http://wptest.io/demo/?page_id=1102', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1241', '1', '2013-01-07 07:07:21', '2013-01-07 13:07:21', 'This is a sticky post.\n\nThere are a few things to verify:\n<ul>\n	<li>The sticky post should be distinctly recognizable in some way in comparison to normal posts. You can style the <code>.sticky</code> class if you are using the <a title=\"WordPress Codex post_class() Function\" href=\"http://codex.wordpress.org/Function_Reference/post_class\" target=\"_blank\">post_class()</a> function to generate your post classes, which is a best practice.</li>\n	<li>They should show at the very top of the blog index page, even though they could be several posts back chronologically.</li>\n	<li>They should still show up again in their chronologically correct postion in time, but without the sticky indicator.</li>\n	<li>If you have a plugin or widget that lists popular posts or comments, make sure that this sticky post is not always at the top of those lists unless it really is popular.</li>\n</ul>', 'Sticky', '', 'trash', 'open', 'open', '', 'sticky__trashed', '', '', '2016-12-28 17:14:15', '2016-12-28 17:14:15', '', '0', 'http://wptest.io/demo/?p=1241', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1267', '1', '2016-12-22 05:14:51', '2016-12-22 05:14:51', '', 'banner-gioi-thieu', '', 'inherit', 'open', 'closed', '', 'banner-gioi-thieu', '', '', '2016-12-27 05:41:53', '2016-12-27 05:41:53', '', '0', 'http://doanso.abc/wp-content/uploads/2016/12/banner-gioi-thieu.jpg', '1', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('1270', '1', '2016-12-22 05:48:22', '2016-12-22 05:48:22', 'Nhằm tạo phong trào thi đua sôi nổi chào mừng Đại hội Đảng các cấp; kỷ niệm 84 năm ngày thành lập Đoàn TNCS Hồ Chí Minh; 40 năm ngày giải phóng miền Nam, thống nhất đất nước (30/4/1975 – 30/4/2015); 125 năm ngày sinh Chủ tịch Hồ Chí Minh (19/5/1890 -19/5/2015);\r\n\r\nPhát huy vai trò xung kích, tình nguyện của đoàn viên, thanh niên trong tham gia thực hiện nhiệm vụ chính trị tại đơn vị; thực hiện tốt chủ đề năm 2015 “Tuổi trẻ Thành phố Bác tự hào tiến bước dưới cờ Đảng”; Tăng cường chăm lo đời sống vật chất, tinh thần, tạo không khí ấm áp, vui tươi cho cô bác người khuyết tật đang được nuôi dưỡng tại Trung tâm. Với phương châm “Thiết thực – Sáng tạo – Hiệu quả - An toàn”.\r\n\r\nĐược sự đồng ý của cấp ủy – Ban Giám đốc Trung tâm bảo trợ người tàn tật Hiệp Bình Chánh, ngày 23/3/2015, Ban Chấp hành Chi Đoàn Trung tâm bảo trợ người tàn tật Hiệp Bình Chánh tổ chức Chương trình “Thắp sáng niềm tin” cho người khuyết tật đang được nuôi dưỡng tại Trung tâm cùng với sự tham gia của các bạn đoàn viên thanh niên các Chi đoàn: Phòng Chế độ bảo hiểm xã hội TP.HCM; Trung tâm Hỗ trợ Xã hội; Trung tâm Tư vấn cai nghiện ma túy và các cô bác người khuyết tật đang được nuôi dưỡng tại Trung tâm cùng tham dự chương trình “Thắp sáng niềm tin” năm 2015.\r\n\r\nNội dung chương trình rất ý nghĩa và xúc động thông qua việc “Thắp sáng niềm tin” cho những người khuyết tật có ý chí kiên cường và nghị lực sống mạnh mẽ, luôn mang trong mình một tinh thần lạc quan, yêu đời dù trong bất kỳ hoàn cảnh nào qua hình ảnh cụ thể của Đóa Hương Dương Lê Thanh Thúy – Công dân trẻ tiêu biểu TP.HCM năm 2006. Câu chuyện về những giây phút cuối đời của “công dân trẻ” TP. HCM – “đóa hướng dương” Lê Thanh Thúy đã làm lay động hàng vạn trái tim. Với mong muốn “Thắp sáng niềm tin” cho cô bác người khuyết tật và tiếp tục phát huy sức trẻ trong đoàn viên, thanh niên Sở Lao động – Thương binh và Xã hội TP.HCM nói chung và của đoàn viên, thanh niên Chi đoàn Trung tâm bảo trợ người tàn tật Hiệp Bình Chánh nói riêng; xung kích tham gia các hoạt động phục vụ cộng đồng, thiết thực hoàn thành nhiệm chính trị của đơn vị và của ngành.', 'Chương trình \"Thắp sáng ước mơ\" cho người khuyết tật tại Trung tâm BTNTT Hiệp Bình Chánh', 'Nhằm tạo phong trào thi đua sôi nổi chào mừng Đại hội Đảng các cấp; kỷ niệm 84 năm ngày thành lập Đoàn TNCS Hồ Chí Minh; 40 năm ngày giải phóng miền Nam, thống nhất đất nước (30/4/1975 – 30/4/2015)', 'publish', 'closed', 'closed', '', 'chuong-trinh-thap-sang-uoc-mo-cho-nguoi-khuyet-tat-tai-trung-tam-btntt-hiep-binh-chanh', '', '', '2016-12-22 05:56:23', '2016-12-22 05:56:23', '', '0', 'http://doanso.abc/?post_type=btxh1&#038;p=1270', '0', 'btxh1', '', '0');
INSERT INTO `wp_posts` VALUES ('1271', '1', '2016-12-22 05:48:13', '2016-12-22 05:48:13', '', '14729361_1329318950414210_3988608301551473084_n', '', 'inherit', 'open', 'closed', '', '14729361_1329318950414210_3988608301551473084_n', '', '', '2016-12-27 05:41:53', '2016-12-27 05:41:53', '', '1270', 'http://doanso.abc/wp-content/uploads/2016/12/14729361_1329318950414210_3988608301551473084_n.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('1272', '1', '2016-12-22 06:04:34', '2016-12-22 06:04:34', '<table class=\"contentpaneopen\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"top\">Chào mừng 85 năm ngày thành lập Đảng Cộng Sản Việt Nam, Khối BTXH1 và BTXH 02 tổ chức hoạt động giao lưu thể dục thể thao với các môn thi như Thi kéo co, Thi nhảy bao bố, đá banh,...thu hút 100 cán bộ Đoàn, đoàn viên tham gia với tổng kinh phí giải thưởng là 1.600.000 đ. Kết thúc Hội thi trao giải, các đơn vị đạt giải trao lại phần thưởng của đơn vị mình cho các em thiếu nhi có hoàn cảnh đặc biệt khó khăn tại Làng Thiếu niên Thủ Đức. Không khi tật vui tươi, nhộn nhịp và hào hứng của các đội tham gia tạo thành phong trào thi đua sôi nổi trong ĐVTN Sở và hỗ trợ kinh phí chăm lo cho các em rất ý nghĩa trong dịp Tết này!</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Hoạt động Hội thao giao lưu Khối BTXH mừng Đảng - mừng Xuân Ất Mùi 2015', 'Chào mừng 85 năm ngày thành lập Đảng Cộng Sản Việt Nam, Khối BTXH1 và BTXH 02 tổ chức hoạt động giao lưu thể dục thể thao với các môn thi như Thi kéo co, Thi nhảy bao bố, đá banh,...', 'publish', 'closed', 'closed', '', 'hoat-dong-hoi-thao-giao-luu-khoi-btxh-mung-dang-mung-xuan-at-mui-2015', '', '', '2016-12-22 06:04:34', '2016-12-22 06:04:34', '', '0', 'http://doanso.abc/?post_type=btxh1&#038;p=1272', '0', 'btxh1', '', '0');
INSERT INTO `wp_posts` VALUES ('1273', '1', '2016-12-22 06:07:00', '2016-12-22 06:07:00', '<strong>THẮP SÁNG ƯỚC MƠ – LỄ TUYÊN DƯƠNG HỌC VIÊN</strong>\r\n\r\n<strong>ĐẠT THÀNH TÍCH HỌC TẬP TỐT NĂM HỌC 2013 – 2014</strong>\r\n\r\nNhằm khuyến khích, động viên các học viên tại Trung tâm tiếp tục đạt được những thành tích cao trong học tập và lao động, ngày 10/7/2014, Chi đoàn Trung tâm Bảo trợ - Dạy nghề và Tạo việc làm cho người tàn tật TP.HCM đã tổ chức chương trình “Thắp sáng ước mơ - Lễ tuyên dương học viên đạt thành tích học tập tốt năm học 2013-2014” cho 157 em học viên các lớp Bổ túc văn hóa, các lớp nghề và các em đang làm việc tại xưởng lao động hòa nhập ESAT với tổng kinh phí gần 11.000.000 đồng.', 'Chi đoàn Trung tâm BTDN và TVL cho người Tàn tật \"Thắp sáng ước mơ - Tuyên dương học viên học tập tốt năm học 2013-2014', 'Nhằm khuyến khích, động viên các học viên tại Trung tâm tiếp tục đạt được những thành tích cao trong học tập và lao động, ngày 10/7/2014, Chi đoàn Trung tâm Bảo trợ - Dạy nghề', 'publish', 'closed', 'closed', '', 'chi-doan-trung-tam-btdn-va-tvl-cho-nguoi-tan-tat-thap-sang-uoc-mo-tuyen-duong-hoc-vien-hoc-tap-tot-nam-hoc-2013-2014', '', '', '2016-12-22 06:07:00', '2016-12-22 06:07:00', '', '0', 'http://doanso.abc/?post_type=btxh1&#038;p=1273', '0', 'btxh1', '', '0');
INSERT INTO `wp_posts` VALUES ('1274', '1', '2016-12-22 06:09:41', '2016-12-22 06:09:41', 'Ngày 06 tháng 05 năm 2014, trong không khí tưng bừng của cả nước chào mừng 60 năm chiến thắng Điện Biên Phủ (07/05/1954-07/05/2014), Chi đoàn Trung tâm nuôi dưỡng bảo trợ trẻ em Linh Xuân tổ chức hội thi “Âm vang Điện Biên – Hào khí tuổi trẻ” cho toàn thể các đoàn viên thanh niên của Chi đoàn.\r\n\r\nThông qua 2 phần thi: trắc nghiệm (30 câu hỏi), hái hoa dân chủ (10 câu hỏi) các đoàn viên được củng cố kiến thức, nâng cao sự hiểu biết về chiến dịch Điện Biên Phủ; các tấm gương anh hùng liệt sĩ tiêu biểu trong chiến thắng Điện Biên; cuộc đời và sự nghiệp, những cống hiến to lớn của Đại tướng Võ Nguyên Giáp đối với dân tộc ta. Hội thi đã tạo ra sân chơi sân chơi lành mạnh, bổ ích cho đoàn viên thanh niên thể hiện tài năng và sự hiểu biết về lịch sử dân tộc.', 'Chi đoàn Trung tâm nuôi dưỡng bảo trợ trẻ em Linh Xuân tổ chức hội thi “Âm vang Điện Biên – Hào khí tuổi trẻ”', 'Ngày 06 tháng 05 năm 2014, trong không khí tưng bừng của cả nước chào mừng 60 năm chiến thắng Điện Biên Phủ (07/05/1954-07/05/2014), Chi đoàn Trung tâm nuôi dưỡng bảo trợ trẻ em Linh Xuân tổ chức hội thi “Âm vang Điện Biên – Hào khí tuổi trẻ” cho toàn thể các đoàn viên thanh niên của Chi đoàn.', 'publish', 'closed', 'closed', '', 'chi-doan-trung-tam-nuoi-duong-bao-tro-tre-em-linh-xuan-to-chuc-hoi-thi-am-vang-dien-bien-hao-khi-tuoi-tre', '', '', '2016-12-22 06:09:41', '2016-12-22 06:09:41', '', '0', 'http://doanso.abc/?post_type=btxh1&#038;p=1274', '0', 'btxh1', '', '0');
INSERT INTO `wp_posts` VALUES ('1275', '1', '2016-12-22 06:10:58', '2016-12-22 06:10:58', '<strong>TẶNG ÁO CHO HỌC VIÊN ESAT</strong>\r\n\r\n<strong>CÓ HOÀN CẢNH KHÓ KHĂN NĂM 2014</strong>\r\n\r\nNhằm thực hiện chương trình công tác Đoàn và phong trào Thanh thiếu nhi năm 2014 chủ đề “Năm Thanh niên tình nguyện” và hưởng ứng chủ đề Tháng Thanh niên “Tuổi trẻ tham gia xây dựng văn minh đô thị”; đồng thời tạo điều kiện cho các em học viên có thêm những bộ quần áo mới và đẹp đến trường, Chi đoàn Trung tâm Bảo trợ - Dạy nghề và Tạo việc làm cho người tàn tật TP.HCM đã phát động Thư ngỏ vận động, quyên góp quần áo cũ tặng cho các em học viên có hoàn cảnh khó khăn và đã nhận được sự ủng hộ từ CBVC, đoàn viên thanh niên, các mạnh thường quân hơn 200 bộ quần áo cũ và 50 bộ quần áo thun mới do Đại đức Thích Hải chơn trao tặng.\r\n\r\nNgày 16/5/2014, Chi đoàn Trung tâm đã tổ chức chương trình “Tặng áo cho các em học viên ESAT có hoàn cảnh khó khăn” năm 2014 cho 50 em học viên khó khăn đang làm việc tại xưởng lao động hòa nhập ESAT. Thông qua chương trình, Chi đoàn Trung tâm mong muốn chia sẻ với các em đang làm việc tại Xưởng ESAT một phần khó khăn trong cuộc sống; tuy những bộ quần áo gửi đến các em với số lượng còn ít, chất lượng chưa được tốt lắm, nhưng hy vọng đây là nguồn khích lệ, động viên tinh thần các em vượt qua khó khăn và nỗ lực hết mình trong công việc, góp phần giúp ích cho gia đình và xã hội.', 'Trung tâm BTDN và TVL cho Người Tàn tật với hoạt động tặng áo cho học viên ESAT có hoàn cảnh khó khăn năm 2014', 'Nhằm thực hiện chương trình công tác Đoàn và phong trào Thanh thiếu nhi năm 2014 chủ đề “Năm Thanh niên tình nguyện” và hưởng ứng chủ đề Tháng Thanh niên “Tuổi trẻ tham gia xây dựng văn minh đô thị”;', 'publish', 'closed', 'closed', '', 'trung-tam-btdn-va-tvl-cho-nguoi-tan-tat-voi-hoat-dong-tang-ao-cho-hoc-vien-esat-co-hoan-canh-kho-khan-nam-2014', '', '', '2016-12-22 06:10:58', '2016-12-22 06:10:58', '', '0', 'http://doanso.abc/?post_type=btxh1&#038;p=1275', '0', 'btxh1', '', '0');
INSERT INTO `wp_posts` VALUES ('1276', '1', '2016-12-22 06:35:54', '2016-12-22 06:35:54', '“Hành trình thanh niên tình nguyện” tại Trung tâm BTXH Bình Đức', '“Hành trình thanh niên tình nguyện” tại Trung tâm BTXH Bình Đức', '“Hành trình thanh niên tình nguyện” tại Trung tâm BTXH Bình Đức', 'publish', 'closed', 'closed', '', 'hanh-trinh-thanh-nien-tinh-nguyen-tai-trung-tam-btxh-binh-duc', '', '', '2016-12-22 06:35:54', '2016-12-22 06:35:54', '', '0', 'http://doanso.abc/?post_type=btxh2&#038;p=1276', '0', 'btxh2', '', '0');
INSERT INTO `wp_posts` VALUES ('1277', '1', '2016-12-22 06:36:05', '2016-12-22 06:36:05', '“Hành trình thanh niên tình nguyện” tại Trung tâm BTXH Bình Đức', '“Hành trình thanh niên tình nguyện” tại Trung tâm BTXH Bình Đức', '“Hành trình thanh niên tình nguyện” tại Trung tâm BTXH Bình Đức', 'publish', 'closed', 'closed', '', 'hanh-trinh-thanh-nien-tinh-nguyen-tai-trung-tam-btxh-binh-duc-2', '', '', '2016-12-22 06:36:05', '2016-12-22 06:36:05', '', '0', 'http://doanso.abc/?post_type=btxh2&#038;p=1277', '0', 'btxh2', '', '0');
INSERT INTO `wp_posts` VALUES ('1280', '1', '2016-12-24 18:28:41', '2016-12-24 18:28:41', '<table class=\"contentpaneopen\">\r\n<tbody>\r\n<tr>\r\n<td class=\"contentheading\" width=\"100%\">\"Tuổi trẻ khối HCSN-TH Xung kích, sáng tạo trong cải cách hành chính, thi đua học tập, năng động và hội nhập”.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '\"Tuổi trẻ khối HCSN-TH Xung kích, sáng tạo trong cải cách hành chính, thi đua học tập, năng động và hội nhập”.', '\"Tuổi trẻ khối HCSN-TH Xung kích, sáng tạo trong cải cách hành chính, thi đua học tập, năng động và hội nhập”.', 'publish', 'closed', 'closed', '', 'tuoi-tre-khoi-hcsn-th-xung-kich-sang-tao-trong-cai-cach-hanh-chinh-thi-dua-hoc-tap-nang-dong-va-hoi-nhap', '', '', '2016-12-24 18:28:41', '2016-12-24 18:28:41', '', '0', 'http://doanso.abc/?post_type=hcsn_dn_truonghoc&#038;p=1280', '0', 'hcsn_dn_truonghoc', '', '0');
INSERT INTO `wp_posts` VALUES ('1281', '1', '2016-12-24 18:34:50', '2016-12-24 18:34:50', '<table class=\"contentpaneopen\">\r\n<tbody>\r\n<tr>\r\n<td class=\"contentheading\" width=\"100%\">\"Tuổi trẻ khối HCSN-TH Xung kích, sáng tạo trong cải cách hành chính, thi đua học tập, năng động và hội nhập”.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '\"Tuổi trẻ khối HCSN-TH Xung kích, sáng tạo trong cải cách hành chính, thi đua học tập, năng động và hội nhập”.', '\"Tuổi trẻ khối HCSN-TH Xung kích, sáng tạo trong cải cách hành chính, thi đua học tập, năng động và hội nhập”.', 'publish', 'closed', 'closed', '', 'tuoi-tre-khoi-hcsn-th-xung-kich-sang-tao-trong-cai-cach-hanh-chinh-thi-dua-hoc-tap-nang-dong-va-hoi-nhap', '', '', '2016-12-24 18:34:57', '2016-12-24 18:34:57', '', '0', 'http://doanso.abc/?post_type=05_06&#038;p=1281', '0', '05_06', '', '0');
INSERT INTO `wp_posts` VALUES ('1282', '1', '2016-12-25 00:52:14', '2016-12-25 00:52:14', '', 'Link download1', '', 'trash', 'closed', 'closed', '', 'link-download1__trashed', '', '', '2016-12-25 00:57:32', '2016-12-25 00:57:32', '', '0', 'http://doanso.abc/?post_type=sdm_downloads&#038;p=1282', '0', 'sdm_downloads', '', '0');
INSERT INTO `wp_posts` VALUES ('1283', '1', '2016-12-25 00:56:49', '2016-12-25 00:56:49', '', 'Link download1', '', 'inherit', 'closed', 'closed', '', '1282-autosave-v1', '', '', '2016-12-25 00:56:49', '2016-12-25 00:56:49', '', '1282', 'http://doanso.abc/2016/12/25/1282-autosave-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1284', '1', '2016-12-25 01:01:22', '2016-12-25 01:01:22', '', 'Văn bản 1', '', 'trash', 'closed', 'closed', '', 'van-ban-1__trashed', '', '', '2016-12-30 05:39:46', '2016-12-30 05:39:46', '', '0', 'http://doanso.abc/?post_type=sdm_downloads&#038;p=1284', '0', 'sdm_downloads', '', '0');
INSERT INTO `wp_posts` VALUES ('1285', '1', '2016-12-25 01:08:28', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-25 01:08:28', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?post_type=acpt_content_type&p=1285', '0', 'acpt_content_type', '', '0');
INSERT INTO `wp_posts` VALUES ('1286', '1', '2016-12-24 18:22:49', '2016-12-24 18:22:49', '', 'btxh1', '', 'publish', 'closed', 'closed', '', 'danh-muc-btxh1', '', '', '2016-12-26 03:11:43', '2016-12-26 03:11:43', '', '0', 'http://doanso.abc/?page_id=1286', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1287', '1', '2016-12-24 18:22:49', '2016-12-24 18:22:49', '', '0506', '', 'inherit', 'closed', 'closed', '', '1286-revision-v1', '', '', '2016-12-24 18:22:49', '2016-12-24 18:22:49', '', '1286', 'http://doanso.abc/2016/12/24/1286-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1288', '1', '2016-12-25 08:57:28', '2016-12-25 08:57:28', '', 'btxh1', '', 'inherit', 'closed', 'closed', '', '1286-revision-v1', '', '', '2016-12-25 08:57:28', '2016-12-25 08:57:28', '', '1286', 'http://doanso.abc/2016/12/25/1286-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1289', '1', '2016-12-26 03:54:59', '2016-12-26 03:54:59', '', 'btxh2', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-12-26 04:06:23', '2016-12-26 04:06:23', '', '0', 'http://doanso.abc/?page_id=1289', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1290', '1', '2016-12-26 03:55:49', '2016-12-26 03:55:49', '', 'btxh2', '', 'publish', 'closed', 'closed', '', 'danh-muc-btxh2', '', '', '2016-12-26 03:55:49', '2016-12-26 03:55:49', '', '0', 'http://doanso.abc/?page_id=1290', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1291', '1', '2016-12-26 03:55:49', '2016-12-26 03:55:49', '', 'btxh2', '', 'inherit', 'closed', 'closed', '', '1290-revision-v1', '', '', '2016-12-26 03:55:49', '2016-12-26 03:55:49', '', '1290', 'http://doanso.abc/2016/12/26/1290-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1292', '1', '2016-12-26 04:06:23', '2016-12-26 04:06:23', '', 'btxh2', '', 'inherit', 'closed', 'closed', '', '1289-revision-v1', '', '', '2016-12-26 04:06:23', '2016-12-26 04:06:23', '', '1289', 'http://doanso.abc/2016/12/26/1289-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1293', '1', '2016-12-26 04:08:22', '2016-12-26 04:08:22', '', 'hcsn', '', 'publish', 'closed', 'closed', '', 'danh-muc-hcsn', '', '', '2016-12-26 04:08:22', '2016-12-26 04:08:22', '', '0', 'http://doanso.abc/?page_id=1293', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1294', '1', '2016-12-26 04:08:22', '2016-12-26 04:08:22', '', 'hcsn', '', 'inherit', 'closed', 'closed', '', '1293-revision-v1', '', '', '2016-12-26 04:08:22', '2016-12-26 04:08:22', '', '1293', 'http://doanso.abc/2016/12/26/1293-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1295', '1', '2016-12-26 04:13:33', '2016-12-26 04:13:33', '', '0506', '', 'publish', 'closed', 'closed', '', 'danh-muc-0506', '', '', '2016-12-26 04:13:33', '2016-12-26 04:13:33', '', '0', 'http://doanso.abc/?page_id=1295', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1296', '1', '2016-12-26 04:13:33', '2016-12-26 04:13:33', '', '0506', '', 'inherit', 'closed', 'closed', '', '1295-revision-v1', '', '', '2016-12-26 04:13:33', '2016-12-26 04:13:33', '', '1295', 'http://doanso.abc/2016/12/26/1295-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1297', '1', '2016-12-26 04:48:15', '2016-12-26 04:48:15', '', 'văn bản đoàn sở', '', 'publish', 'closed', 'closed', '', 'van-ban-doan-so', '', '', '2016-12-26 05:21:46', '2016-12-26 05:21:46', '', '0', 'http://doanso.abc/?page_id=1297', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1298', '1', '2016-12-26 04:48:15', '2016-12-26 04:48:15', '', 'văn bản đoàn sở', '', 'inherit', 'closed', 'closed', '', '1297-revision-v1', '', '', '2016-12-26 04:48:15', '2016-12-26 04:48:15', '', '1297', 'http://doanso.abc/2016/12/26/1297-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1299', '1', '2016-12-26 05:26:13', '2016-12-26 05:26:13', '', 'văn bản hội sở', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2016-12-27 03:40:28', '2016-12-27 03:40:28', '', '0', 'http://doanso.abc/?page_id=1299', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1300', '1', '2016-12-26 05:26:42', '2016-12-26 05:26:42', '', 'văn bản hội sở', '', 'publish', 'closed', 'closed', '', 'van-ban-hoi-so', '', '', '2016-12-26 05:26:42', '2016-12-26 05:26:42', '', '0', 'http://doanso.abc/?page_id=1300', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1301', '1', '2016-12-26 05:26:42', '2016-12-26 05:26:42', '', 'văn bản hội sở', '', 'inherit', 'closed', 'closed', '', '1300-revision-v1', '', '', '2016-12-26 05:26:42', '2016-12-26 05:26:42', '', '1300', 'http://doanso.abc/2016/12/26/1300-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1302', '1', '2016-12-27 03:40:28', '2016-12-27 03:40:28', '', 'văn bản hội sở', '', 'inherit', 'closed', 'closed', '', '1299-revision-v1', '', '', '2016-12-27 03:40:28', '2016-12-27 03:40:28', '', '1299', 'http://doanso.abc/2016/12/27/1299-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1303', '1', '2016-12-27 04:02:21', '2016-12-27 04:02:21', '', 'New Slider', '', 'publish', 'closed', 'closed', '', 'new-slider', '', '', '2016-12-27 05:41:53', '2016-12-27 05:41:53', '', '0', 'http://doanso.abc/?post_type=ml-slider&#038;p=1303', '0', 'ml-slider', '', '0');
INSERT INTO `wp_posts` VALUES ('1304', '1', '2016-12-27 04:56:30', '2016-12-27 04:56:30', '', 'lịch làm việc của văn phòng đoàn', '', 'publish', 'closed', 'closed', '', 'lich-lam-viec-cua-van-phong-doan', '', '', '2016-12-27 04:56:30', '2016-12-27 04:56:30', '', '0', 'http://doanso.abc/?page_id=1304', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1305', '1', '2016-12-27 04:56:30', '2016-12-27 04:56:30', '', 'lịch làm việc của văn phòng đoàn', '', 'inherit', 'closed', 'closed', '', '1304-revision-v1', '', '', '2016-12-27 04:56:30', '2016-12-27 04:56:30', '', '1304', 'http://doanso.abc/2016/12/27/1304-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1306', '1', '2016-12-27 05:55:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-27 05:55:15', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?post_type=ps_promotion&p=1306', '0', 'ps_promotion', '', '0');
INSERT INTO `wp_posts` VALUES ('1309', '1', '2016-12-28 17:09:49', '2016-12-28 17:09:49', '<a title=\"WP Test - The Best Tests For WordPress\" href=\"http://wptest.io\" target=\"_blank\">WP Test</a> is a fantastically exhaustive set of test data to measure the integrity of your plugins and themes.\n\nThe foundation of these tests are derived from <a title=\"Theme Unit Test\" href=\"http://codex.wordpress.org/Theme_Unit_Test\" target=\"_blank\">WordPress’ Theme Unit Test Codex</a> data. It’s paired with lessons learned from over three years of theme and plugin support, and baffling corner cases, to create a potent cocktail of simulated, quirky user content.\n\nThe word \"comprehensive\" was purposely left off this description. It\'s not. There will always be something new squarely scenario to test. That\'s where you come in. <a title=\"Contact\" href=\"http://wptest.io/contact/\">Let us know</a> of a test we\'re not covering. We\'d love to squash it.\n\nLet’s make WordPress testing easier and resilient together.', 'About', '', 'inherit', 'closed', 'closed', '', '1086-revision-v1', '', '', '2016-12-28 17:09:49', '2016-12-28 17:09:49', '', '1086', 'http://doanso.abc/2016/12/28/1086-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1310', '1', '2016-12-28 17:09:53', '2016-12-28 17:09:53', '<iframe src=\"http://astore.amazon.com/iogiea09-20\" height=\"4000\" width=\"100%\" frameborder=\"0\" scrolling=\"no\"></iframe>', 'Amazon Store', '', 'inherit', 'closed', 'closed', '', '1062-revision-v1', '', '', '2016-12-28 17:09:53', '2016-12-28 17:09:53', '', '1062', 'http://doanso.abc/2016/12/28/1062-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1311', '1', '2016-12-28 17:10:01', '2016-12-28 17:10:01', 'Note that you will probably want to test this page in conjunction with the <strong>Home</strong> page.\n\nTo test this page:\n<ul>\n	<li>Navigate to <strong><em>Settings &gt; Reading</em></strong> in the WordPress admin.</li>\n	<li>Then use the settings in the screenshot below.</li>\n</ul>\n<img class=\"alignnone size-full wp-image-1071\" alt=\"Static Pages\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/static-pages.png\" width=\"1390\" height=\"1022\" />\n\nA few things to check once this is done.\n<ul>\n	<li>Navigating to the Blog page does <strong>not</strong> display this page. It should display blog posts.</li>\n	<li>Check that the browser window / tab name is what you intend it to show.</li>\n	<li>If your theme displays breadcrumbs, they should probably not show when this is the posts page.</li>\n</ul>', 'Blog', '', 'inherit', 'closed', 'closed', '', '1066-revision-v1', '', '', '2016-12-28 17:10:01', '2016-12-28 17:10:01', '', '1066', 'http://doanso.abc/2016/12/28/1066-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1312', '1', '2016-12-28 17:11:22', '2016-12-28 17:11:22', 'This post has its comments, pingbacks, and trackbacks enabled.\n\nIf your theme support comments on pages, then they should show up below.', 'Page Comments', '', 'inherit', 'closed', 'closed', '', '1077-revision-v1', '', '', '2016-12-28 17:11:22', '2016-12-28 17:11:22', '', '1077', 'http://doanso.abc/2016/12/28/1077-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1313', '1', '2016-12-28 17:11:25', '2016-12-28 17:11:25', 'This page has its comments, pingbacks, and trackbacks disabled.\n\nThere should be no comment reply form or any pingbacks and trackbacks listed.', 'Page Comments Disabled', '', 'inherit', 'closed', 'closed', '', '1075-revision-v1', '', '', '2016-12-28 17:11:25', '2016-12-28 17:11:25', '', '1075', 'http://doanso.abc/2016/12/28/1075-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1314', '1', '2016-12-28 17:11:29', '2016-12-28 17:11:29', 'Welcome to image alignment! The best way to demonstrate the ebb and flow of the various image positioning options is to nestle them snuggly among an ocean of words. Grab a paddle and let\'s get started.\n\nOn the topic of alignment, it should be noted that users can choose from the options of <em>None</em>, <em>Left</em>, <em>Right, </em>and <em>Center</em>. In addition, they also get the options of <em>Thumbnail</em>, <em>Medium</em>, <em>Large</em> &amp; <em>Fullsize</em>.\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-906 aligncenter\" title=\"Image Alignment 580x300\" alt=\"Image Alignment 580x300\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-580x300.jpg\" width=\"580\" height=\"300\" /></p>\nThe image above happens to be <em><strong>centered</strong></em>.\n\n<strong><img class=\"size-full wp-image-904 alignleft\" title=\"Image Alignment 150x150\" alt=\"Image Alignment 150x150\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-150x150.jpg\" width=\"150\" height=\"150\" /></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n<img class=\"alignnone  wp-image-907\" title=\"Image Alignment 1200x400\" alt=\"Image Alignment 1200x400\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg\" width=\"1200\" height=\"400\" />\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n<img class=\"size-full wp-image-905 alignright\" title=\"Image Alignment 300x200\" alt=\"Image Alignment 300x200\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-300x200.jpg\" width=\"300\" height=\"200\" />\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd just when you thought we were done, we\'re going to do them all over again with captions!\n\n[caption id=\"attachment_906\" align=\"aligncenter\" width=\"580\"]<img class=\"size-full wp-image-906  \" title=\"Image Alignment 580x300\" alt=\"Image Alignment 580x300\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-580x300.jpg\" width=\"580\" height=\"300\" /> Look at 580x300 getting some <a title=\"Image Settings\" href=\"http://en.support.wordpress.com/images/image-settings/\">caption</a> love.[/caption]\n\nThe image above happens to be <em><strong>centered</strong></em>. The caption also has a link in it, just to see if it does anything funky.\n\n[caption id=\"attachment_904\" align=\"alignleft\" width=\"150\"]<img class=\"size-full wp-image-904  \" title=\"Image Alignment 150x150\" alt=\"Image Alignment 150x150\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-150x150.jpg\" width=\"150\" height=\"150\" /> Itty-bitty caption.[/caption]\n\n<strong></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n[caption id=\"attachment_907\" align=\"alignnone\" width=\"1200\"]<img class=\" wp-image-907\" title=\"Image Alignment 1200x400\" alt=\"Image Alignment 1200x400\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg\" width=\"1200\" height=\"400\" /> Massive image comment for your eyeballs.[/caption]\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n[caption id=\"attachment_905\" align=\"alignright\" width=\"300\"]<img class=\"size-full wp-image-905 \" title=\"Image Alignment 300x200\" alt=\"Image Alignment 300x200\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-300x200.jpg\" width=\"300\" height=\"200\" /> Feels good to be right all the time.[/caption]\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd that\'s a wrap, yo! You survived the tumultuous waters of alignment. Image alignment achievement unlocked!', 'Page Image Alignment', '', 'inherit', 'closed', 'closed', '', '1080-revision-v1', '', '', '2016-12-28 17:11:29', '2016-12-28 17:11:29', '', '1080', 'http://doanso.abc/2016/12/28/1080-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1315', '1', '2016-12-28 17:11:31', '2016-12-28 17:11:31', '<h2>Headings</h2>\n<h1>Header one</h1>\n<h2>Header two</h2>\n<h3>Header three</h3>\n<h4>Header four</h4>\n<h5>Header five</h5>\n<h6>Header six</h6>\n<h2>Blockquotes</h2>\nSingle line blockquote:\n<blockquote>Stay hungry. Stay foolish.</blockquote>\nMulti line blockquote with a cite reference:\n<blockquote>People think focus means saying yes to the thing you\'ve got to focus on. But that\'s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I\'m actually as proud of the things we haven\'t done as the things I have done. Innovation is saying no to 1,000 things. <cite>Steve Jobs - Apple Worldwide Developers\' Conference, 1997</cite></blockquote>\n<h2>Tables</h2>\n<table>\n<tbody>\n<tr>\n<th>Employee</th>\n<th class=\"views\">Salary</th>\n<th></th>\n</tr>\n<tr class=\"odd\">\n<td><a href=\"http://john.do/\">John Saddington</a></td>\n<td>$1</td>\n<td>Because that\'s all Steve Job\' needed for a salary.</td>\n</tr>\n<tr class=\"even\">\n<td><a href=\"http://tommcfarlin.com/\">Tom McFarlin</a></td>\n<td>$100K</td>\n<td>For all the blogging he does.</td>\n</tr>\n<tr class=\"odd\">\n<td><a href=\"http://jarederickson.com/\">Jared Erickson</a></td>\n<td>$100M</td>\n<td>Pictures are worth a thousand words, right? So Tom x 1,000.</td>\n</tr>\n<tr class=\"even\">\n<td><a href=\"http://chrisam.es/\">Chris Ames</a></td>\n<td>$100B</td>\n<td>With hair like that?! Enough said...</td>\n</tr>\n</tbody>\n</table>\n<h2>Definition Lists</h2>\n<dl><dt>Definition List Title</dt><dd>Definition list division.</dd><dt>Startup</dt><dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd><dt>#dowork</dt><dd>Coined by Rob Dyrdek and his personal body guard Christopher \"Big Black\" Boykins, \"Do Work\" works as a self motivator, to motivating your friends.</dd><dt>Do It Live</dt><dd>I\'ll let Bill O\'Reilly will <a title=\"We\'ll Do It Live\" href=\"https://www.youtube.com/watch?v=O_HyZ5aW76c\">explain</a> this one.</dd></dl>\n<h2>Unordered Lists (Nested)</h2>\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n<h2>Ordered List (Nested)</h2>\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n<h2>HTML Tags</h2>\nThese supported tags come from the WordPress.com code <a title=\"Code\" href=\"http://en.support.wordpress.com/code/\">FAQ</a>.\n\n<strong>Address Tag</strong>\n\n<address>1 Infinite Loop\nCupertino, CA 95014\nUnited States</address><strong>Anchor Tag (aka. Link)</strong>\n\nThis is an example of a <a title=\"Apple\" href=\"http://apple.com\">link</a>.\n\n<strong>Abbreviation Tag</strong>\n\nThe abbreviation <abbr title=\"Seriously\">srsly</abbr> stands for \"seriously\".\n\n<strong>Acronym Tag</strong>\n\nThe acronym <acronym title=\"For The Win\">ftw</acronym> stands for \"for the win\".\n\n<strong>Big Tag</strong>\n\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\n\n<strong>Cite Tag</strong>\n\n\"Code is poetry.\" --<cite>Automattic</cite>\n\n<strong>Code Tag</strong>\n\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\n\n<strong>Delete Tag</strong>\n\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\n\n<strong>Emphasize Tag</strong>\n\nThe emphasize tag should <em>italicize</em> text.\n\n<strong>Insert Tag</strong>\n\nThis tag should denote <ins>inserted</ins> text.\n\n<strong>Keyboard Tag</strong>\n\nThis scarsly known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Preformatted Tag</strong>\n\nThis tag styles large blocks of code.\n<pre>.post-title {\n	margin: 0 0 5px;\n	font-weight: bold;\n	font-size: 38px;\n	line-height: 1.2;\n}</pre>\n<strong>Quote Tag</strong>\n\n<q>Developers, developers, developers...</q> --Steve Ballmer\n\n<strong>Strong Tag</strong>\n\nThis tag shows <strong>bold<strong> text.</strong></strong>\n\n<strong>Subscript Tag</strong>\n\nGetting our science styling on with H<sub>2</sub>O, which should push the \"2\" down.\n\n<strong>Superscript Tag</strong>\n\nStill sticking with science and Albert Einstein\'s E = MC<sup>2</sup>, which should lift the \"2\" up.\n\n<strong>Teletype Tag</strong>\n\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Variable Tag</strong>\n\nThis allows you to denote <var>variables</var>.', 'Page Markup And Formatting', '', 'inherit', 'closed', 'closed', '', '1083-revision-v1', '', '', '2016-12-28 17:11:31', '2016-12-28 17:11:31', '', '1083', 'http://doanso.abc/2016/12/28/1083-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1316', '1', '2016-12-28 17:11:34', '2016-12-28 17:11:34', 'This page the a parent page.\n\nIt contains child pages.', 'Parent Page', '', 'inherit', 'closed', 'closed', '', '1088-revision-v1', '', '', '2016-12-28 17:11:34', '2016-12-28 17:11:34', '', '1088', 'http://doanso.abc/2016/12/28/1088-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1317', '1', '2016-12-28 17:11:38', '2016-12-28 17:11:38', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://doanso.abc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-28 17:11:38', '2016-12-28 17:11:38', '', '2', 'http://doanso.abc/2016/12/28/2-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1318', '1', '2016-12-28 17:11:50', '2016-12-28 17:11:50', 'This is a child page.', 'Child Page 01', '', 'inherit', 'closed', 'closed', '', '1090-revision-v1', '', '', '2016-12-28 17:11:50', '2016-12-28 17:11:50', '', '1090', 'http://doanso.abc/2016/12/28/1090-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1319', '1', '2016-12-28 17:11:50', '2016-12-28 17:11:50', 'This is a child page.', 'Child Page 02', '', 'inherit', 'closed', 'closed', '', '1092-revision-v1', '', '', '2016-12-28 17:11:50', '2016-12-28 17:11:50', '', '1092', 'http://doanso.abc/2016/12/28/1092-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1320', '1', '2016-12-28 17:11:50', '2016-12-28 17:11:50', 'This is a child page.\n\nAnd, just for fun, it also contains a child page (aka. a grandchild page).', 'Child Page 03', '', 'inherit', 'closed', 'closed', '', '1094-revision-v1', '', '', '2016-12-28 17:11:50', '2016-12-28 17:11:50', '', '1094', 'http://doanso.abc/2016/12/28/1094-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1321', '1', '2016-12-28 17:11:51', '2016-12-28 17:11:51', 'This is a child page.', 'Child Page 04', '', 'inherit', 'closed', 'closed', '', '1096-revision-v1', '', '', '2016-12-28 17:11:51', '2016-12-28 17:11:51', '', '1096', 'http://doanso.abc/2016/12/28/1096-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1322', '1', '2016-12-28 17:11:51', '2016-12-28 17:11:51', 'This is a child page.', 'Child Page 05', '', 'inherit', 'closed', 'closed', '', '1098-revision-v1', '', '', '2016-12-28 17:11:51', '2016-12-28 17:11:51', '', '1098', 'http://doanso.abc/2016/12/28/1098-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1323', '1', '2016-12-28 17:11:51', '2016-12-28 17:11:51', 'This is a grandchild page.', 'Grandchild Page', '', 'inherit', 'closed', 'closed', '', '1105-revision-v1', '', '', '2016-12-28 17:11:51', '2016-12-28 17:11:51', '', '1105', 'http://doanso.abc/2016/12/28/1105-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1324', '1', '2016-12-28 17:11:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-28 17:11:58', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?page_id=1324', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1325', '1', '2016-12-28 17:13:33', '2016-12-28 17:13:33', 'This post is scheduled to be published in the future.\n\nIt should not be displayed by the theme.', 'Scheduled', '', 'inherit', 'closed', 'closed', '', '418-revision-v1', '', '', '2016-12-28 17:13:33', '2016-12-28 17:13:33', '', '418', 'http://doanso.abc/2016/12/28/418-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1326', '1', '2016-12-28 17:13:38', '2016-12-28 17:13:38', 'This post is drafted and not published yet.\n\nIt should not be displayed by the theme.', 'Draft', '', 'inherit', 'closed', 'closed', '', '922-revision-v1', '', '', '2016-12-28 17:13:38', '2016-12-28 17:13:38', '', '922', 'http://doanso.abc/2016/12/28/922-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1327', '1', '2016-12-28 17:13:40', '2016-12-28 17:13:40', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-12-28 17:13:40', '2016-12-28 17:13:40', '', '1', 'http://doanso.abc/2016/12/28/1-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1328', '1', '2016-12-28 17:13:50', '2016-12-28 17:13:50', 'This is a test for Jetpack\'s Tiled Gallery.\n\nYou can install <a title=\"Jetpack for WordPress\" href=\"http://jetpack.me/\" target=\"_blank\">Jetpack</a> or <a title=\"Slim Jetpack\" href=\"http://wordpress.org/extend/plugins/slimjetpack/\" target=\"_blank\">Slim Jetpack</a> to test it out.\n\n[gallery type=\"rectangular\" columns=\"4\" ids=\"1261,1038,1039,1040,1041,1042\" orderby=\"rand\"]\n\nThis is some text after the Tiled Gallery just to make sure that everything spaces nicely.', 'Tiled Gallery', '', 'inherit', 'closed', 'closed', '', '1031-revision-v1', '', '', '2016-12-28 17:13:50', '2016-12-28 17:13:50', '', '1031', 'http://doanso.abc/2016/12/28/1031-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1329', '1', '2016-12-28 17:13:52', '2016-12-28 17:13:52', 'https://twitter.com/carlsmith/status/258214236126322689\n\nThis post tests WordPress\' <a title=\"Twitter Embeds\" href=\"http://en.support.wordpress.com/twitter/twitter-embeds/\" target=\"_blank\">Twitter Embeds</a> feature.', 'Twitter Embeds', '', 'inherit', 'closed', 'closed', '', '1027-revision-v1', '', '', '2016-12-28 17:13:52', '2016-12-28 17:13:52', '', '1027', 'http://doanso.abc/2016/12/28/1027-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1330', '1', '2016-12-28 17:13:54', '2016-12-28 17:13:54', 'This post should display a <a title=\"Featured Images\" href=\"http://en.support.wordpress.com/featured-images/#setting-a-featured-image\" target=\"_blank\">featured image</a>, if the theme <a title=\"Post Thumbnails\" href=\"http://codex.wordpress.org/Post_Thumbnails\" target=\"_blank\">supports it</a>.\n\nNon-square images can provide some unique styling issues.\n\nThis post tests a vertical featured image.', 'Featured Image (Vertical)', '', 'inherit', 'closed', 'closed', '', '1016-revision-v1', '', '', '2016-12-28 17:13:54', '2016-12-28 17:13:54', '', '1016', 'http://doanso.abc/2016/12/28/1016-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1331', '1', '2016-12-28 17:13:57', '2016-12-28 17:13:57', 'This post should display a <a title=\"Featured Images\" href=\"http://en.support.wordpress.com/featured-images/#setting-a-featured-image\" target=\"_blank\">featured image</a>, if the theme <a title=\"Post Thumbnails\" href=\"http://codex.wordpress.org/Post_Thumbnails\" target=\"_blank\">supports it</a>.\n\nNon-square images can provide some unique styling issues.\n\nThis post tests a horizontal featured image.', 'Featured Image (Horizontal)', '', 'inherit', 'closed', 'closed', '', '1011-revision-v1', '', '', '2016-12-28 17:13:57', '2016-12-28 17:13:57', '', '1011', 'http://doanso.abc/2016/12/28/1011-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1332', '1', '2016-12-28 17:13:59', '2016-12-28 17:13:59', 'Nested and mixed lists are an interesting beast. It\'s a corner case to make sure that\n<ul>\n	<li>Lists within lists do not break the ordered list numbering order</li>\n	<li>Your list styles go deep enough</li>\n</ul>\n<h3>Ordered - Unordered - Ordered</h3>\n<ol>\n	<li>ordered item</li>\n	<li>ordered item\n<ul>\n	<li><strong>unordered</strong></li>\n	<li><strong>unordered</strong>\n<ol>\n	<li>ordered item</li>\n	<li>ordered item</li>\n</ol>\n</li>\n</ul>\n</li>\n	<li>ordered item</li>\n	<li>ordered item</li>\n</ol>\n<h3>Ordered - Unordered - Unordered</h3>\n<ol>\n	<li>ordered item</li>\n	<li>ordered item\n<ul>\n	<li><strong>unordered</strong></li>\n	<li><strong>unordered</strong>\n<ul>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>\n</li>\n</ul>\n</li>\n	<li>ordered item</li>\n	<li>ordered item</li>\n</ol>\n<h3>Unordered - Ordered - Unordered</h3>\n<ul>\n	<li>unordered item</li>\n	<li>unordered item\n<ol>\n	<li>ordered</li>\n	<li>ordered\n<ul>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>\n</li>\n</ol>\n</li>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>\n<h3>Unordered - Unordered - Ordered</h3>\n<ul>\n	<li>unordered item</li>\n	<li>unordered item\n<ul>\n	<li>unordered</li>\n	<li>unordered\n<ol>\n	<li><strong>ordered item</strong></li>\n	<li><strong>ordered item</strong></li>\n</ol>\n</li>\n</ul>\n</li>\n	<li>unordered item</li>\n	<li>unordered item</li>\n</ul>', 'Nested And Mixed Lists', '', 'inherit', 'closed', 'closed', '', '1000-revision-v1', '', '', '2016-12-28 17:13:59', '2016-12-28 17:13:59', '', '1000', 'http://doanso.abc/2016/12/28/1000-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1333', '1', '2016-12-28 17:14:02', '2016-12-28 17:14:02', 'This content is before the <a title=\"The More Tag\" href=\"http://en.support.wordpress.com/splitting-content/more-tag/\" target=\"_blank\">more tag</a>.\n\nRight after this sentence should be a \"continue reading\" button of some sort.\n\n<!--more-->\n\nAnd this content is after the more tag.', 'More Tag', '', 'inherit', 'closed', 'closed', '', '996-revision-v1', '', '', '2016-12-28 17:14:02', '2016-12-28 17:14:02', '', '996', 'http://doanso.abc/2016/12/28/996-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1334', '1', '2016-12-28 17:14:04', '2016-12-28 17:14:04', 'This is the post content.', 'Excerpt', 'This is a post excerpt.', 'inherit', 'closed', 'closed', '', '993-revision-v1', '', '', '2016-12-28 17:14:04', '2016-12-28 17:14:04', '', '993', 'http://doanso.abc/2016/12/28/993-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1335', '1', '2016-12-28 17:14:06', '2016-12-28 17:14:06', '<h2>Headings</h2>\n<h1>Header one</h1>\n<h2>Header two</h2>\n<h3>Header three</h3>\n<h4>Header four</h4>\n<h5>Header five</h5>\n<h6>Header six</h6>\n<h2>Blockquotes</h2>\nSingle line blockquote:\n<blockquote>Stay hungry. Stay foolish.</blockquote>\nMulti line blockquote with a cite reference:\n<blockquote>People think focus means saying yes to the thing you\'ve got to focus on. But that\'s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I\'m actually as proud of the things we haven\'t done as the things I have done. Innovation is saying no to 1,000 things. <cite>Steve Jobs - Apple Worldwide Developers\' Conference, 1997</cite></blockquote>\n<h2>Tables</h2>\n<table>\n<tbody>\n<tr>\n<th>Employee</th>\n<th class=\"views\">Salary</th>\n<th></th>\n</tr>\n<tr class=\"odd\">\n<td><a href=\"http://john.do/\">John Saddington</a></td>\n<td>$1</td>\n<td>Because that\'s all Steve Job\' needed for a salary.</td>\n</tr>\n<tr class=\"even\">\n<td><a href=\"http://tommcfarlin.com/\">Tom McFarlin</a></td>\n<td>$100K</td>\n<td>For all the blogging he does.</td>\n</tr>\n<tr class=\"odd\">\n<td><a href=\"http://jarederickson.com/\">Jared Erickson</a></td>\n<td>$100M</td>\n<td>Pictures are worth a thousand words, right? So Tom x 1,000.</td>\n</tr>\n<tr class=\"even\">\n<td><a href=\"http://chrisam.es/\">Chris Ames</a></td>\n<td>$100B</td>\n<td>With hair like that?! Enough said...</td>\n</tr>\n</tbody>\n</table>\n<h2>Definition Lists</h2>\n<dl><dt>Definition List Title</dt><dd>Definition list division.</dd><dt>Startup</dt><dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd><dt>#dowork</dt><dd>Coined by Rob Dyrdek and his personal body guard Christopher \"Big Black\" Boykins, \"Do Work\" works as a self motivator, to motivating your friends.</dd><dt>Do It Live</dt><dd>I\'ll let Bill O\'Reilly will <a title=\"We\'ll Do It Live\" href=\"https://www.youtube.com/watch?v=O_HyZ5aW76c\">explain</a> this one.</dd></dl>\n<h2>Unordered Lists (Nested)</h2>\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n<h2>Ordered List (Nested)</h2>\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n<h2>HTML Tags</h2>\nThese supported tags come from the WordPress.com code <a title=\"Code\" href=\"http://en.support.wordpress.com/code/\">FAQ</a>.\n\n<strong>Address Tag</strong>\n\n<address>1 Infinite Loop\nCupertino, CA 95014\nUnited States</address><strong>Anchor Tag (aka. Link)</strong>\n\nThis is an example of a <a title=\"Apple\" href=\"http://apple.com\">link</a>.\n\n<strong>Abbreviation Tag</strong>\n\nThe abbreviation <abbr title=\"Seriously\">srsly</abbr> stands for \"seriously\".\n\n<strong>Acronym Tag</strong>\n\nThe acronym <acronym title=\"For The Win\">ftw</acronym> stands for \"for the win\".\n\n<strong>Big Tag</strong>\n\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\n\n<strong>Cite Tag</strong>\n\n\"Code is poetry.\" --<cite>Automattic</cite>\n\n<strong>Code Tag</strong>\n\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\n\n<strong>Delete Tag</strong>\n\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\n\n<strong>Emphasize Tag</strong>\n\nThe emphasize tag should <em>italicize</em> text.\n\n<strong>Insert Tag</strong>\n\nThis tag should denote <ins>inserted</ins> text.\n\n<strong>Keyboard Tag</strong>\n\nThis scarsly known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Preformatted Tag</strong>\n\nThis tag styles large blocks of code.\n<pre>.post-title {\n	margin: 0 0 5px;\n	font-weight: bold;\n	font-size: 38px;\n	line-height: 1.2;\n}</pre>\n<strong>Quote Tag</strong>\n\n<q>Developers, developers, developers...</q> --Steve Ballmer\n\n<strong>Strong Tag</strong>\n\nThis tag shows <strong>bold<strong> text.</strong></strong>\n\n<strong>Subscript Tag</strong>\n\nGetting our science styling on with H<sub>2</sub>O, which should push the \"2\" down.\n\n<strong>Superscript Tag</strong>\n\nStill sticking with science and Albert Einstein\'s E = MC<sup>2</sup>, which should lift the \"2\" up.\n\n<strong>Teletype Tag</strong>\n\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Variable Tag</strong>\n\nThis allows you to denote <var>variables</var>.', 'Markup And Formatting', '', 'inherit', 'closed', 'closed', '', '919-revision-v1', '', '', '2016-12-28 17:14:06', '2016-12-28 17:14:06', '', '919', 'http://doanso.abc/2016/12/28/919-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1336', '1', '2016-12-28 17:14:09', '2016-12-28 17:14:09', 'Welcome to image alignment! The best way to demonstrate the ebb and flow of the various image positioning options is to nestle them snuggly among an ocean of words. Grab a paddle and let\'s get started.\n\nOn the topic of alignment, it should be noted that users can choose from the options of <em>None</em>, <em>Left</em>, <em>Right, </em>and <em>Center</em>. In addition, they also get the options of <em>Thumbnail</em>, <em>Medium</em>, <em>Large</em> &amp; <em>Fullsize</em>.\n<p style=\"text-align: center;\"><img class=\"size-full wp-image-906 aligncenter\" title=\"Image Alignment 580x300\" alt=\"Image Alignment 580x300\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-580x300.jpg\" width=\"580\" height=\"300\" /></p>\nThe image above happens to be <em><strong>centered</strong></em>.\n\n<strong><img class=\"size-full wp-image-904 alignleft\" title=\"Image Alignment 150x150\" alt=\"Image Alignment 150x150\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-150x150.jpg\" width=\"150\" height=\"150\" /></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n<img class=\"alignnone  wp-image-907\" title=\"Image Alignment 1200x400\" alt=\"Image Alignment 1200x400\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg\" width=\"1200\" height=\"400\" />\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n<img class=\"size-full wp-image-905 alignright\" title=\"Image Alignment 300x200\" alt=\"Image Alignment 300x200\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-300x200.jpg\" width=\"300\" height=\"200\" />\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd just when you thought we were done, we\'re going to do them all over again with captions!\n\n[caption id=\"attachment_906\" align=\"aligncenter\" width=\"580\"]<img class=\"size-full wp-image-906  \" title=\"Image Alignment 580x300\" alt=\"Image Alignment 580x300\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-580x300.jpg\" width=\"580\" height=\"300\" /> Look at 580x300 getting some <a title=\"Image Settings\" href=\"http://en.support.wordpress.com/images/image-settings/\">caption</a> love.[/caption]\n\nThe image above happens to be <em><strong>centered</strong></em>. The caption also has a link in it, just to see if it does anything funky.\n\n[caption id=\"attachment_904\" align=\"alignleft\" width=\"150\"]<img class=\"size-full wp-image-904  \" title=\"Image Alignment 150x150\" alt=\"Image Alignment 150x150\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-150x150.jpg\" width=\"150\" height=\"150\" /> Itty-bitty caption.[/caption]\n\n<strong></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>. <strong></strong>\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n[caption id=\"attachment_907\" align=\"alignnone\" width=\"1200\"]<img class=\" wp-image-907\" title=\"Image Alignment 1200x400\" alt=\"Image Alignment 1200x400\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg\" width=\"1200\" height=\"400\" /> Massive image comment for your eyeballs.[/caption]\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n[caption id=\"attachment_905\" align=\"alignright\" width=\"300\"]<img class=\"size-full wp-image-905 \" title=\"Image Alignment 300x200\" alt=\"Image Alignment 300x200\" src=\"http://wptest.io/demo/wp-content/uploads/2013/03/image-alignment-300x200.jpg\" width=\"300\" height=\"200\" /> Feels good to be right all the time.[/caption]\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd that\'s a wrap, yo! You survived the tumultuous waters of alignment. Image alignment achievement unlocked!', 'Image Alignment', '', 'inherit', 'closed', 'closed', '', '903-revision-v1', '', '', '2016-12-28 17:14:09', '2016-12-28 17:14:09', '', '903', 'http://doanso.abc/2016/12/28/903-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1337', '1', '2016-12-28 17:14:11', '2016-12-28 17:14:11', '<h3>Default</h3>\nThis is a paragraph. It should not have any alignment of any kind. It should just flow like you would normally expect. Nothing fancy. Just straight up text, free flowing, with love. Completely neutral and not picking a side or sitting on the fence. It just is. It just freaking is. It likes where it is. It does not feel compelled to pick a side. Leave him be. It will just be better that way. Trust me.\n<h3>Left Align</h3>\n<p style=\"text-align: left;\">This is a paragraph. It is left aligned. Because of this, it is a bit more liberal in it\'s views. It\'s favorite color is green. Left align tends to be more eco-friendly, but it provides no concrete evidence that it really is. Even though it likes share the wealth evenly, it leaves the equal distribution up to justified alignment.</p>\n\n<h3>Center Align</h3>\n<p style=\"text-align: center;\">This is a paragraph. It is center aligned. Center is, but nature, a fence sitter. A flip flopper. It has a difficult time making up its mind. It wants to pick a side. Really, it does. It has the best intentions, but it tends to complicate matters more than help. The best you can do is try to win it over and hope for the best. I hear center align does take bribes.</p>\n\n<h3>Right Align</h3>\n<p style=\"text-align: right;\">This is a paragraph. It is right aligned. It is a bit more conservative in it\'s views. It\'s prefers to not be told what to do or how to do it. Right align totally owns a slew of guns and loves to head to the range for some practice. Which is cool and all. I mean, it\'s a pretty good shot from at least four or five football fields away. Dead on. So boss.</p>\n\n<h3>Justify Align</h3>\n<p style=\"text-align: justify;\">This is a paragraph. It is justify aligned. It gets really mad when people associate it with Justin Timberlake. Typically, justified is pretty straight laced. It likes everything to be in it\'s place and not all cattywampus like the rest of the aligns. I am not saying that makes it better than the rest of the aligns, but it does tend to put off more of an elitist attitude.</p>', 'Text Alignment', '', 'inherit', 'closed', 'closed', '', '895-revision-v1', '', '', '2016-12-28 17:14:11', '2016-12-28 17:14:11', '', '895', 'http://doanso.abc/2016/12/28/895-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1338', '1', '2016-12-28 17:14:13', '2016-12-28 17:14:13', 'Post Page 1\n\n<!--nextpage-->\n\nPost Page 2\n\n<!--nextpage-->\n\nPost Page 3', 'Paginated', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2016-12-28 17:14:13', '2016-12-28 17:14:13', '', '188', 'http://doanso.abc/2016/12/28/188-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1339', '1', '2016-12-28 17:14:15', '2016-12-28 17:14:15', 'This is a sticky post.\n\nThere are a few things to verify:\n<ul>\n	<li>The sticky post should be distinctly recognizable in some way in comparison to normal posts. You can style the <code>.sticky</code> class if you are using the <a title=\"WordPress Codex post_class() Function\" href=\"http://codex.wordpress.org/Function_Reference/post_class\" target=\"_blank\">post_class()</a> function to generate your post classes, which is a best practice.</li>\n	<li>They should show at the very top of the blog index page, even though they could be several posts back chronologically.</li>\n	<li>They should still show up again in their chronologically correct postion in time, but without the sticky indicator.</li>\n	<li>If you have a plugin or widget that lists popular posts or comments, make sure that this sticky post is not always at the top of those lists unless it really is popular.</li>\n</ul>', 'Sticky', '', 'inherit', 'closed', 'closed', '', '1241-revision-v1', '', '', '2016-12-28 17:14:15', '2016-12-28 17:14:15', '', '1241', 'http://doanso.abc/2016/12/28/1241-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1340', '1', '2016-12-28 17:14:17', '2016-12-28 17:14:17', '', 'No Content', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2016-12-28 17:14:17', '2016-12-28 17:14:17', '', '134', 'http://doanso.abc/2016/12/28/134-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1341', '1', '2016-12-28 17:14:19', '2016-12-28 17:14:19', 'Super/Duper/Long/NonBreaking/Path/Name/To/A/File/That/Is/Way/Deep/Down/In/Some/Mysterious/Remote/Desolate/Part/Of/The/Operating/System/To/A/File/That/Just/So/Happens/To/Be/Strangely/Named/Supercalifragilisticexpialidocious.txt\n\nA few things to check for:\n<ul>\n	<li>Non-breaking text in the title, content, and comments should have no adverse effects on layout or functionality.</li>\n	<li>Check the browser window / tab title.</li>\n	<li>If you are a plugin or widget developer, check that this text does not break anything.</li>\n</ul>\nThe following CSS properties will help you support non-breaking text.\n<pre>-ms-word-wrap: break-word;\nword-wrap: break-word;</pre>', 'Super/Duper/Long/NonBreaking/Path/Name/To/A/File/That/Is/Way/Deep/Down/In/Some/Mysterious/Remote/Desolate/Part/Of/The/Operating/System/To/A/File/That/Just/So/Happens/To/Be/Strangely/Named/Supercalifragilisticexpialidocious.txt', '', 'inherit', 'closed', 'closed', '', '877-revision-v1', '', '', '2016-12-28 17:14:19', '2016-12-28 17:14:19', '', '877', 'http://doanso.abc/2016/12/28/877-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1342', '1', '2016-12-28 17:14:23', '2016-12-28 17:14:23', 'Putting special characters in the title should have no adverse effect on the layout or functionality.\n\nSpecial characters in the post title have been known to cause issues with JavaScript when it is minified, especially in the admin when editing the post itself (ie. issues with metaboxes, media upload, etc.).', 'Title With Special Characters ~`!@#$%^&*()-_=+{}[]/\\;:\'\"?,.>', '', 'inherit', 'closed', 'closed', '', '867-revision-v1', '', '', '2016-12-28 17:14:23', '2016-12-28 17:14:23', '', '867', 'http://doanso.abc/2016/12/28/867-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1343', '1', '2016-12-28 17:14:25', '2016-12-28 17:14:25', 'Verify that:\n<ul>\n	<li>The post title renders the word \"with\" in <em>italics</em> and the word \"markup\" in <strong>bold</strong>.</li>\n	<li>The post title markup should be removed from the browser window / tab.</li>\n</ul>', 'Title With Markup', '', 'inherit', 'closed', 'closed', '', '861-revision-v1', '', '', '2016-12-28 17:14:25', '2016-12-28 17:14:25', '', '861', 'http://doanso.abc/2016/12/28/861-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1344', '1', '2016-12-28 17:14:27', '2016-12-28 17:14:27', 'This post has no title, but it still must link to the single post view somehow.\n\nThis is typically done by placing the permalink on the post date.', '', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2016-12-28 17:14:27', '2016-12-28 17:14:27', '', '133', 'http://doanso.abc/2016/12/28/133-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1345', '1', '2016-12-28 17:14:44', '2016-12-28 17:14:44', 'This content, comments, pingbacks, and trackbacks should not be visible until the password is entered.', 'Password Protected (the password is \"enter\")', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2016-12-28 17:14:44', '2016-12-28 17:14:44', '', '131', 'http://doanso.abc/2016/12/28/131-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1346', '1', '2016-12-28 17:14:44', '2016-12-28 17:14:44', 'This post tests comments in the following ways.\n<ul>\n	<li>Threaded comments up to 10 levels deep</li>\n	<li>Paginated comments (set <em><strong>Settings &gt; Discussion &gt; Break comments into pages</strong></em> to <em><strong>5</strong></em> top level comments per page)</li>\n	<li>Comment markup / formatting</li>\n	<li>Comment images</li>\n	<li>Comment videos</li>\n	<li>Author comments</li>\n	<li>Gravatars and default fallbacks</li>\n</ul>\n&nbsp;', 'Comments', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2016-12-28 17:14:44', '2016-12-28 17:14:44', '', '149', 'http://doanso.abc/2016/12/28/149-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1347', '1', '2016-12-28 17:14:45', '2016-12-28 17:14:45', 'This post has its comments, pingbacks, and trackbacks disabled.\n\nThere should be no comment reply form or any pingbacks and trackbacks listed.', 'Comments Disabled', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2016-12-28 17:14:45', '2016-12-28 17:14:45', '', '152', 'http://doanso.abc/2016/12/28/152-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1348', '1', '2016-12-28 17:14:45', '2016-12-28 17:14:45', 'This post has many pingpacks and trackbacks.\n\nThere are a few ways to list them.\n<ol>\n	<li>Above the comments</li>\n	<li>Below the comments</li>\n	<li>Included within the normal flow of comments</li>\n</ol>', 'Pingbacks And Trackbacks', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2016-12-28 17:14:45', '2016-12-28 17:14:45', '', '151', 'http://doanso.abc/2016/12/28/151-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1349', '1', '2016-12-28 17:14:46', '2016-12-28 17:14:46', '<strong>This is an example of a standard post format</strong>.\n\nInspiration is a spark. A flash of light. Ignition. But without the proper mixture of oxygen and fuel, inspiration both lives and dies in the same instant. My life, my experiences, my research; these things are fertile soil for the great blog posts hidden within me. I carry them always and they are present when I sit down to do my work.\n\nBut all too often, it’s a struggle. The raw material is there, but the inspiration is not. The oxygen is abundant, but the fuel is scarce. And I’m left wondering, “How?”\n\nHow do I harvest? How do I sift and pan? How do I mine the caverns within me for intellectual and emotional gems? How do I… write?\n\nOr perhaps a better question is, how do you? Yes, <em>you</em>, my kindred blog reader. Surely, <em>you</em> are similar. Surely, <em>you’ve</em> wrestled the Great Muse down to the dusty earth, and won.\n\nI know this: it starts before I sit down to type. Great posts begin with significant life challenges. With weighty problems to solve. With an urgent need or a mature discontent with the way things are today. Yes, I think all great posts begin before words are written.\n\nSo get up, reader. Walk away from your keyboard, and live.\n\nOnly then can you give life… to words.', 'Post Format: Standard', '', 'inherit', 'closed', 'closed', '', '946-revision-v1', '', '', '2016-12-28 17:14:46', '2016-12-28 17:14:46', '', '946', 'http://doanso.abc/2016/12/28/946-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1350', '1', '2016-12-28 17:14:46', '2016-12-28 17:14:46', '[gallery]\n\n<!--nextpage-->\n\nYou can use this page to test the Theme\'s handling of the[gallery]\n\nshortcode, including the <code>columns</code> parameter, from 1 to 10 columns. Themes are only required to support the default setting (3 columns), so this page is entirely optional.\n<h2>One Column</h2>\n[gallery columns=\"1\"]\n<h2>Two Columns</h2>\n[gallery columns=\"2\"]\n<h2>Three Columns</h2>\n[gallery columns=\"3\"]\n<h2>Four Columns</h2>\n[gallery columns=\"4\"]\n<h2>Five Columns</h2>\n[gallery columns=\"5\"]\n<h2>Six Columns</h2>\n[gallery columns=\"6\"]\n<h2>Seven Columns</h2>\n[gallery columns=\"7\"]\n<h2>Eight Columns</h2>\n[gallery columns=\"8\"]\n<h2>Nine Columns</h2>\n[gallery columns=\"9\"]\n<h2>Ten Columns</h2>\n[gallery columns=\"10\"]', 'Post Format: Gallery', '', 'inherit', 'closed', 'closed', '', '555-revision-v1', '', '', '2016-12-28 17:14:46', '2016-12-28 17:14:46', '', '555', 'http://doanso.abc/2016/12/28/555-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1351', '1', '2016-12-28 17:14:47', '2016-12-28 17:14:47', 'We fundamentally believe that our customers are more interested in a simple, attractive, and functional WordPress theme than they are having 12 color schemes to choose from, and a fancy slider with 8 transition effects.\n\nIf you pick out a WordPress theme like you pick out drapes, you’re doing something wrong.', 'Post Format: Aside', '', 'inherit', 'closed', 'closed', '', '559-revision-v1', '', '', '2016-12-28 17:14:47', '2016-12-28 17:14:47', '', '559', 'http://doanso.abc/2016/12/28/559-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1352', '1', '2016-12-28 17:14:48', '2016-12-28 17:14:48', 'John: Are we still meeting for breakfast this morning?\n\nJohn: Where is the rest of the team? I\'ve been here since 3:00am.\n\nTom: Umm... We actually sleep. Go back to bed, dude.\n\nJohn: Fuuuuuuuuuuuu\n\nTom: Fine. But if I show up, I am not wearing pants.', 'Post Format: Chat', '', 'inherit', 'closed', 'closed', '', '562-revision-v1', '', '', '2016-12-28 17:14:48', '2016-12-28 17:14:48', '', '562', 'http://doanso.abc/2016/12/28/562-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1353', '1', '2016-12-28 17:14:48', '2016-12-28 17:14:48', '<a title=\"Video Game Inspired Mural [Pics, Videos]\" href=\"http://wpdaily.co/mural/\" target=\"_blank\">8BIT\'s Office - Video Game Inspired Mural</a>', 'Post Format: Link', '', 'inherit', 'closed', 'closed', '', '565-revision-v1', '', '', '2016-12-28 17:14:48', '2016-12-28 17:14:48', '', '565', 'http://doanso.abc/2016/12/28/565-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1354', '1', '2016-12-28 17:14:48', '2016-12-28 17:14:48', '[caption id=\"attachment_963\" align=\"alignnone\" width=\"1131\"]<img class=\" wp-image-963\" title=\"Triforce Wallpaper\" alt=\"Triforce Wallpaper\" src=\"http://wptest.io/demo/wp-content/uploads/2012/12/triforce-wallpaper.jpg\" width=\"1131\" height=\"707\" /> It\'s dangerous to go alone! Take this.[/caption]', 'Post Format: Image (Caption)', '', 'inherit', 'closed', 'closed', '', '674-revision-v1', '', '', '2016-12-28 17:14:48', '2016-12-28 17:14:48', '', '674', 'http://doanso.abc/2016/12/28/674-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1355', '1', '2016-12-28 17:14:49', '2016-12-28 17:14:49', '<dl class=\"wp-caption aligncenter\" id=\"attachment_612\" style=\"width: 650px;\"><dt class=\"wp-caption-dt\"></dt></dl><img class=\"alignnone size-full wp-image-967\" alt=\"Unicorn Wallpaper\" src=\"http://wptest.io/demo/wp-content/uploads/2012/12/unicorn-wallpaper.jpg\" width=\"1600\" height=\"1200\" />\n\nI really love this wallpaper. It makes me think fondly of <a title=\"Chris Ames\" href=\"http://chrisam.es/\" target=\"_blank\">Chris Ames</a>.', 'Post Format: Image', '', 'inherit', 'closed', 'closed', '', '568-revision-v1', '', '', '2016-12-28 17:14:49', '2016-12-28 17:14:49', '', '568', 'http://doanso.abc/2016/12/28/568-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1356', '1', '2016-12-28 17:14:49', '2016-12-28 17:14:49', '<blockquote>I suggest a new strategy to you... Let the Wookie win.\n\n<a title=\"Let The Wookie Win\" href=\"http://www.youtube.com/watch?feature=player_detailpage&amp;v=mO6M4ngKRp0#t=30s\" target=\"_blank\">C-3PO</a></blockquote>', 'Post Format: Quote', '', 'inherit', 'closed', 'closed', '', '575-revision-v1', '', '', '2016-12-28 17:14:49', '2016-12-28 17:14:49', '', '575', 'http://doanso.abc/2016/12/28/575-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1357', '1', '2016-12-28 17:14:50', '2016-12-28 17:14:50', 'I\'ve been thinking a lot about spandex today.', 'Post Format: Status', '', 'inherit', 'closed', 'closed', '', '579-revision-v1', '', '', '2016-12-28 17:14:50', '2016-12-28 17:14:50', '', '579', 'http://doanso.abc/2016/12/28/579-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1358', '1', '2016-12-28 17:14:51', '2016-12-28 17:14:51', '[wpvideo tFnqC9XQ w=680]\n\n<a title=\"VideoPress Plugin for WordPress\" href=\"http://videopress.com/\" target=\"_blank\">VideoPress</a>, especially as a video post format, usually provides some unique styling issues.\n\nYou will need to install <a title=\"Jetpack for WordPress\" href=\"http://jetpack.me/\" target=\"_blank\">Jetpack</a> or <a title=\"Slim Jetpack\" href=\"http://wordpress.org/extend/plugins/slimjetpack/\" target=\"_blank\">Slim Jetpack</a> plugin to turn the shortcode into a viewable video.', 'Post Format: Video (VideoPress)', '', 'inherit', 'closed', 'closed', '', '1005-revision-v1', '', '', '2016-12-28 17:14:51', '2016-12-28 17:14:51', '', '1005', 'http://doanso.abc/2016/12/28/1005-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1359', '1', '2016-12-28 17:14:52', '2016-12-28 17:14:52', 'http://www.youtube.com/watch?v=nwe-H6l4beM\n\nThe official music video of \"Rise Up\" from <a title=\"Eddy Music\" href=\"http://eddymusic.com/\" target=\"_blank\">Eddy\'s</a> <a title=\"Eddy - Start An Uproar! EP\" href=\"http://bit.ly/bVmAyI\" target=\"_blank\">Start An Uproar!</a> EP.\n\nLearn more about <a title=\"WordPress Embeds\" href=\"http://codex.wordpress.org/Embeds\" target=\"_blank\">WordPress Embeds</a>.', 'Post Format: Video', '', 'inherit', 'closed', 'closed', '', '582-revision-v1', '', '', '2016-12-28 17:14:52', '2016-12-28 17:14:52', '', '582', 'http://doanso.abc/2016/12/28/582-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1360', '1', '2016-12-28 17:14:52', '2016-12-28 17:14:52', 'Link:\n\n<a href=\"http://wptest.io/demo/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3\">Eddy - Need (Remix)</a>\n\nShortcode:\n\n[audio http://wptest.io/demo/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3]', 'Post Format: Audio', '', 'inherit', 'closed', 'closed', '', '587-revision-v1', '', '', '2016-12-28 17:14:52', '2016-12-28 17:14:52', '', '587', 'http://doanso.abc/2016/12/28/587-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1361', '1', '2016-12-28 17:14:52', '2016-12-28 17:14:52', 'This post has many categories.', 'Many Categories', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2016-12-28 17:14:52', '2016-12-28 17:14:52', '', '168', 'http://doanso.abc/2016/12/28/168-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1362', '1', '2016-12-28 17:14:55', '2016-12-28 17:14:55', 'This post has many tags.', 'Many Tags', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2016-12-28 17:14:55', '2016-12-28 17:14:55', '', '167', 'http://doanso.abc/2016/12/28/167-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1363', '1', '2016-12-28 17:18:02', '2016-12-28 17:18:02', 'đây là post ví dụ', 'đây là post ví dụ', '', 'publish', 'open', 'open', '', 'day-la-post-vi-du', '', '', '2016-12-28 17:18:02', '2016-12-28 17:18:02', '', '0', 'http://doanso.abc/?p=1363', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1364', '1', '2016-12-28 17:18:02', '2016-12-28 17:18:02', 'đây là post ví dụ', 'đây là post ví dụ', '', 'inherit', 'closed', 'closed', '', '1363-revision-v1', '', '', '2016-12-28 17:18:02', '2016-12-28 17:18:02', '', '1363', 'http://doanso.abc/2016/12/28/1363-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1365', '1', '2016-12-28 17:19:41', '2016-12-28 17:19:41', '', 'Tổng quan', '', 'publish', 'closed', 'closed', '', 'tong-quan', '', '', '2016-12-28 17:19:41', '2016-12-28 17:19:41', '', '0', 'http://doanso.abc/?page_id=1365', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1366', '1', '2016-12-28 17:19:41', '2016-12-28 17:19:41', '', 'Tổng quan', '', 'inherit', 'closed', 'closed', '', '1365-revision-v1', '', '', '2016-12-28 17:19:41', '2016-12-28 17:19:41', '', '1365', 'http://doanso.abc/2016/12/28/1365-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1367', '1', '2016-12-28 17:32:54', '2016-12-28 17:32:54', '<b>Đoàn thanh niên Sở LĐTB&amp;XH</b>', 'Giới thiệu về Đoàn thanh niên Sở.', '', 'publish', 'open', 'open', '', 'gioi-thieu-ve-doan-thanh-nien-so', '', '', '2016-12-28 17:32:54', '2016-12-28 17:32:54', '', '0', 'http://doanso.abc/?p=1367', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1368', '1', '2016-12-28 17:32:54', '2016-12-28 17:32:54', '<b>Đoàn thanh niên Sở LĐTB&amp;XH</b>', 'Giới thiệu về Đoàn thanh niên Sở.', '', 'inherit', 'closed', 'closed', '', '1367-revision-v1', '', '', '2016-12-28 17:32:54', '2016-12-28 17:32:54', '', '1367', 'http://doanso.abc/2016/12/28/1367-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1369', '1', '2016-12-28 17:33:11', '2016-12-28 17:33:11', '<span style=\"font-weight: 400;\">Danh sách BTV-BCH Đoàn Sở nhiệm kỳ 2012 – 2017</span>', 'Danh sách BTV-BCH Đoàn Sở nhiệm kỳ 2012 – 2017', '', 'publish', 'open', 'open', '', 'danh-sach-btv-bch-doan-so-nhiem-ky-2012-2017', '', '', '2016-12-28 17:33:11', '2016-12-28 17:33:11', '', '0', 'http://doanso.abc/?p=1369', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1370', '1', '2016-12-28 17:33:11', '2016-12-28 17:33:11', '<span style=\"font-weight: 400;\">Danh sách BTV-BCH Đoàn Sở nhiệm kỳ 2012 – 2017</span>', 'Danh sách BTV-BCH Đoàn Sở nhiệm kỳ 2012 – 2017', '', 'inherit', 'closed', 'closed', '', '1369-revision-v1', '', '', '2016-12-28 17:33:11', '2016-12-28 17:33:11', '', '1369', 'http://doanso.abc/2016/12/28/1369-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1371', '1', '2016-12-28 17:33:34', '2016-12-28 17:33:34', '<span style=\"font-weight: 400;\">Danh sách các cơ sở Đoàn trực thuộc</span>', 'Danh sách các cơ sở Đoàn trực thuộc', '', 'publish', 'open', 'open', '', 'danh-sach-cac-co-so-doan-truc-thuoc', '', '', '2016-12-28 17:33:34', '2016-12-28 17:33:34', '', '0', 'http://doanso.abc/?p=1371', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1372', '1', '2016-12-28 17:33:34', '2016-12-28 17:33:34', '<span style=\"font-weight: 400;\">Danh sách các cơ sở Đoàn trực thuộc</span>', 'Danh sách các cơ sở Đoàn trực thuộc', '', 'inherit', 'closed', 'closed', '', '1371-revision-v1', '', '', '2016-12-28 17:33:34', '2016-12-28 17:33:34', '', '1371', 'http://doanso.abc/2016/12/28/1371-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1373', '1', '2016-12-28 17:33:57', '2016-12-28 17:33:57', '<span style=\"font-weight: 400;\">Danh bạ liên hệ</span>', 'Danh bạ liên hệ', '', 'publish', 'open', 'open', '', 'danh-ba-lien-he', '', '', '2016-12-28 17:34:03', '2016-12-28 17:34:03', '', '0', 'http://doanso.abc/?p=1373', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1374', '1', '2016-12-28 17:33:57', '2016-12-28 17:33:57', '', 'Danh bạ liên hệ', '', 'inherit', 'closed', 'closed', '', '1373-revision-v1', '', '', '2016-12-28 17:33:57', '2016-12-28 17:33:57', '', '1373', 'http://doanso.abc/2016/12/28/1373-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1375', '1', '2016-12-28 17:34:03', '2016-12-28 17:34:03', '<span style=\"font-weight: 400;\">Danh bạ liên hệ</span>', 'Danh bạ liên hệ', '', 'inherit', 'closed', 'closed', '', '1373-revision-v1', '', '', '2016-12-28 17:34:03', '2016-12-28 17:34:03', '', '1373', 'http://doanso.abc/2016/12/28/1373-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1381', '1', '2016-12-28 17:45:47', '2016-12-28 17:45:47', '', 'Tổng quan Đoàn thanh niên Sở LĐTB&XH', '', 'publish', 'closed', 'closed', '', 'tong-quan-doan-thanh-nien-so-ldtbxh', '', '', '2016-12-28 17:45:47', '2016-12-28 17:45:47', '', '0', 'http://doanso.abc/?page_id=1381', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1382', '1', '2016-12-28 17:45:47', '2016-12-28 17:45:47', '', 'Tổng quan Đoàn thanh niên Sở LĐTB&XH', '', 'inherit', 'closed', 'closed', '', '1381-revision-v1', '', '', '2016-12-28 17:45:47', '2016-12-28 17:45:47', '', '1381', 'http://doanso.abc/2016/12/28/1381-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1383', '1', '2016-12-28 17:45:58', '2016-12-28 17:45:58', '', 'Tổng quan Hội LHTN Việt Nam Sở LĐTB&XH', '', 'publish', 'closed', 'closed', '', 'tong-quan-hoi-lhtn-viet-nam-so-ldtbxh', '', '', '2016-12-28 17:45:58', '2016-12-28 17:45:58', '', '0', 'http://doanso.abc/?page_id=1383', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1384', '1', '2016-12-28 17:45:58', '2016-12-28 17:45:58', '', 'Tổng quan Hội LHTN Việt Nam Sở LĐTB&XH', '', 'inherit', 'closed', 'closed', '', '1383-revision-v1', '', '', '2016-12-28 17:45:58', '2016-12-28 17:45:58', '', '1383', 'http://doanso.abc/2016/12/28/1383-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1385', '1', '2016-12-28 17:46:33', '2016-12-28 17:46:33', '', 'Giới thiệu về Hội Sở.', '', 'publish', 'open', 'open', '', 'gioi-thieu-ve-hoi-so', '', '', '2016-12-28 17:46:33', '2016-12-28 17:46:33', '', '0', 'http://doanso.abc/?p=1385', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1386', '1', '2016-12-28 17:46:33', '2016-12-28 17:46:33', '', 'Giới thiệu về Hội Sở.', '', 'inherit', 'closed', 'closed', '', '1385-revision-v1', '', '', '2016-12-28 17:46:33', '2016-12-28 17:46:33', '', '1385', 'http://doanso.abc/2016/12/28/1385-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1387', '1', '2016-12-28 17:46:50', '2016-12-28 17:46:50', '', 'Danh sách Ủy ban Hội Sở nhiệm kỳ 2016 – 2019', '', 'publish', 'open', 'open', '', 'danh-sach-uy-ban-hoi-so-nhiem-ky-2016-2019', '', '', '2016-12-28 17:46:50', '2016-12-28 17:46:50', '', '0', 'http://doanso.abc/?p=1387', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1388', '1', '2016-12-28 17:46:50', '2016-12-28 17:46:50', '', 'Danh sách Ủy ban Hội Sở nhiệm kỳ 2016 – 2019', '', 'inherit', 'closed', 'closed', '', '1387-revision-v1', '', '', '2016-12-28 17:46:50', '2016-12-28 17:46:50', '', '1387', 'http://doanso.abc/2016/12/28/1387-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1389', '1', '2016-12-28 17:47:01', '2016-12-28 17:47:01', '', 'Danh sách các cơ sở Hội trực thuộc', '', 'publish', 'open', 'open', '', 'danh-sach-cac-co-so-hoi-truc-thuoc', '', '', '2016-12-28 17:47:01', '2016-12-28 17:47:01', '', '0', 'http://doanso.abc/?p=1389', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1390', '1', '2016-12-28 17:47:01', '2016-12-28 17:47:01', '', 'Danh sách các cơ sở Hội trực thuộc', '', 'inherit', 'closed', 'closed', '', '1389-revision-v1', '', '', '2016-12-28 17:47:01', '2016-12-28 17:47:01', '', '1389', 'http://doanso.abc/2016/12/28/1389-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1391', '1', '2016-12-28 17:47:10', '2016-12-28 17:47:10', '', 'Danh bạ liên hệ', '', 'publish', 'open', 'open', '', 'danh-ba-lien-he-2', '', '', '2016-12-28 17:47:10', '2016-12-28 17:47:10', '', '0', 'http://doanso.abc/?p=1391', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1392', '1', '2016-12-28 17:47:10', '2016-12-28 17:47:10', '', 'Danh bạ liên hệ', '', 'inherit', 'closed', 'closed', '', '1391-revision-v1', '', '', '2016-12-28 17:47:10', '2016-12-28 17:47:10', '', '1391', 'http://doanso.abc/2016/12/28/1391-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1403', '1', '2016-12-28 17:55:47', '2016-12-28 17:55:47', '', 'Thông tin hoạt động', '', 'publish', 'closed', 'closed', '', 'thong-tin-hoat-dong', '', '', '2016-12-28 17:55:47', '2016-12-28 17:55:47', '', '0', 'http://doanso.abc/?page_id=1403', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1404', '1', '2016-12-28 17:55:47', '2016-12-28 17:55:47', '', 'Thông tin hoạt động', '', 'inherit', 'closed', 'closed', '', '1403-revision-v1', '', '', '2016-12-28 17:55:47', '2016-12-28 17:55:47', '', '1403', 'http://doanso.abc/2016/12/28/1403-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1405', '1', '2016-12-28 17:56:13', '2016-12-28 17:56:13', '', 'Đoàn Thanh niên Sở', '', 'publish', 'closed', 'closed', '', 'doan-thanh-nien-so', '', '', '2016-12-28 17:56:13', '2016-12-28 17:56:13', '', '0', 'http://doanso.abc/?page_id=1405', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1406', '1', '2016-12-28 17:56:13', '2016-12-28 17:56:13', '', 'Đoàn Thanh niên Sở', '', 'inherit', 'closed', 'closed', '', '1405-revision-v1', '', '', '2016-12-28 17:56:13', '2016-12-28 17:56:13', '', '1405', 'http://doanso.abc/2016/12/28/1405-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1407', '1', '2016-12-28 17:57:08', '2016-12-28 17:57:08', '', 'Hội LHTN Việt Nam Sở', '', 'publish', 'closed', 'closed', '', 'hoi-lhtn-viet-nam-so', '', '', '2016-12-28 17:57:08', '2016-12-28 17:57:08', '', '0', 'http://doanso.abc/?page_id=1407', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1408', '1', '2016-12-28 17:57:08', '2016-12-28 17:57:08', '', 'Hội LHTN Việt Nam Sở', '', 'inherit', 'closed', 'closed', '', '1407-revision-v1', '', '', '2016-12-28 17:57:08', '2016-12-28 17:57:08', '', '1407', 'http://doanso.abc/2016/12/28/1407-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1409', '1', '2016-12-28 17:57:24', '2016-12-28 17:57:24', '', 'Thông tin Hoạt động cơ sở', '', 'trash', 'closed', 'closed', '', 'hoat-dong-co-so__trashed', '', '', '2016-12-28 08:12:54', '2016-12-28 08:12:54', '', '0', 'http://doanso.abc/?page_id=1409', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1410', '1', '2016-12-28 17:57:24', '2016-12-28 17:57:24', '', 'Hoạt động cơ sở', '', 'inherit', 'closed', 'closed', '', '1409-revision-v1', '', '', '2016-12-28 17:57:24', '2016-12-28 17:57:24', '', '1409', 'http://doanso.abc/2016/12/28/1409-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1419', '1', '2016-12-28 18:34:36', '2016-12-28 18:34:36', '<a href=\"http://doansoldtbxhhcm.com/index.php?option=com_content&amp;view=article&amp;id=934:ngay-hi-hin-mau-nhan-o-2016-vi-ch-trai-tim-khe-mnh-hin-mau-cu-ngi&amp;catid=19:thong-tin-chung&amp;Itemid=170\">Ngày hội hiến máu nhân đạo 2016 với chủ đề “Trái tim khỏe mạnh – Hiến máu cứu người”</a>', 'Ngày hội hiến máu nhân đạo 2016 với chủ đề “Trái tim khỏe mạnh – Hiến máu cứu người”', '', 'publish', 'open', 'open', '', 'ngay-hoi-hien-mau-nhan-dao-2016-voi-chu-de-trai-tim-khoe-manh-hien-mau-cuu-nguoi', '', '', '2016-12-28 18:39:47', '2016-12-28 18:39:47', '', '0', 'http://doanso.abc/?p=1419', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1420', '1', '2016-12-28 18:34:36', '2016-12-28 18:34:36', '<a href=\"http://doansoldtbxhhcm.com/index.php?option=com_content&amp;view=article&amp;id=934:ngay-hi-hin-mau-nhan-o-2016-vi-ch-trai-tim-khe-mnh-hin-mau-cu-ngi&amp;catid=19:thong-tin-chung&amp;Itemid=170\">Ngày hội hiến máu nhân đạo 2016 với chủ đề “Trái tim khỏe mạnh – Hiến máu cứu người”</a>', 'Ngày hội hiến máu nhân đạo 2016 với chủ đề “Trái tim khỏe mạnh – Hiến máu cứu người”', '', 'inherit', 'closed', 'closed', '', '1419-revision-v1', '', '', '2016-12-28 18:34:36', '2016-12-28 18:34:36', '', '1419', 'http://doanso.abc/2016/12/28/1419-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1421', '1', '2016-12-28 18:36:27', '2016-12-28 18:36:27', '', 'Thông tin Đoàn Thanh niên Sở', '', 'publish', 'closed', 'closed', '', 'thong-tin-doan-thanh-nien-so', '', '', '2016-12-30 05:35:55', '2016-12-30 05:35:55', '', '0', 'http://doanso.abc/?page_id=1421', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1422', '1', '2016-12-28 18:36:27', '2016-12-28 18:36:27', '', 'Thông tin Đoàn Thanh niên Sở', '', 'inherit', 'closed', 'closed', '', '1421-revision-v1', '', '', '2016-12-28 18:36:27', '2016-12-28 18:36:27', '', '1421', 'http://doanso.abc/2016/12/28/1421-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1423', '1', '2016-12-28 07:55:05', '2016-12-28 07:55:05', '', '2OYErLAZ', '', 'inherit', 'open', 'closed', '', '2oyerlaz', '', '', '2016-12-28 07:55:05', '2016-12-28 07:55:05', '', '0', 'http://doanso.abc/wp-content/uploads/2016/12/2OYErLAZ.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('1424', '1', '2016-12-28 08:02:37', '2016-12-28 08:02:37', '', 'Thông tin hội liên hiệp thanh niên việt nam sở', '', 'publish', 'closed', 'closed', '', 'thong-tin-hoi-lien-hiep-thanh-nien-viet-nam-so', '', '', '2016-12-28 08:02:44', '2016-12-28 08:02:44', '', '0', 'http://doanso.abc/?page_id=1424', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1425', '1', '2016-12-28 08:02:37', '2016-12-28 08:02:37', '', 'Thông tin hội liên hiệp thanh niên việt nam sở', '', 'inherit', 'closed', 'closed', '', '1424-revision-v1', '', '', '2016-12-28 08:02:37', '2016-12-28 08:02:37', '', '1424', 'http://doanso.abc/2016/12/28/1424-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1426', '1', '2016-12-28 08:11:26', '2016-12-28 08:11:26', '', 'Thông tin Hoạt động cơ sở', '', 'inherit', 'closed', 'closed', '', '1409-revision-v1', '', '', '2016-12-28 08:11:26', '2016-12-28 08:11:26', '', '1409', 'http://doanso.abc/2016/12/28/1409-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1427', '1', '2016-12-28 08:11:35', '2016-12-28 08:11:35', '', 'Thông tin Hoạt động cơ sở', '', 'inherit', 'closed', 'closed', '', '1409-revision-v1', '', '', '2016-12-28 08:11:35', '2016-12-28 08:11:35', '', '1409', 'http://doanso.abc/2016/12/28/1409-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1428', '1', '2016-12-28 08:12:21', '2016-12-28 08:12:21', '', 'Thông tin Hoạt động cơ sở', '', 'inherit', 'closed', 'closed', '', '1409-revision-v1', '', '', '2016-12-28 08:12:21', '2016-12-28 08:12:21', '', '1409', 'http://doanso.abc/2016/12/28/1409-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1429', '1', '2016-12-28 08:12:54', '2016-12-28 08:12:54', '', 'Thông tin Hoạt động cơ sở', '', 'inherit', 'closed', 'closed', '', '1409-revision-v1', '', '', '2016-12-28 08:12:54', '2016-12-28 08:12:54', '', '1409', 'http://doanso.abc/2016/12/28/1409-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1430', '1', '2016-12-28 08:13:37', '2016-12-28 08:13:37', '', 'Thông tin Hoạt động cơ sở', '', 'publish', 'closed', 'closed', '', 'thong-tin-hoat-dong-co-so', '', '', '2016-12-30 05:36:23', '2016-12-30 05:36:23', '', '0', 'http://doanso.abc/?page_id=1430', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1431', '1', '2016-12-28 08:13:37', '2016-12-28 08:13:37', '', 'Thông tin Hoạt động cơ sở', '', 'inherit', 'closed', 'closed', '', '1430-revision-v1', '', '', '2016-12-28 08:13:37', '2016-12-28 08:13:37', '', '1430', 'http://doanso.abc/2016/12/28/1430-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1433', '1', '2016-12-28 08:24:58', '2016-12-28 08:24:58', '', 'Học tập và làm theo Bác - Văn bản triển khai', '', 'publish', 'closed', 'closed', '', 'hoc-tap-va-lam-theo-bac-van-ban-trien-khai', '', '', '2016-12-28 08:24:58', '2016-12-28 08:24:58', '', '0', 'http://doanso.abc/?page_id=1433', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1434', '1', '2016-12-28 08:24:58', '2016-12-28 08:24:58', '', 'Học tập và làm theo Bác - Văn bản triển khai', '', 'inherit', 'closed', 'closed', '', '1433-revision-v1', '', '', '2016-12-28 08:24:58', '2016-12-28 08:24:58', '', '1433', 'http://doanso.abc/2016/12/28/1433-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1435', '1', '2016-12-28 08:26:36', '2016-12-28 08:26:36', '', 'Học tập và làm theo Bác - Những mẫu chuyện về Bác', '', 'publish', 'closed', 'closed', '', 'hoc-tap-va-lam-theo-bac-nhung-mau-chuyen-ve-bac', '', '', '2016-12-28 08:28:53', '2016-12-28 08:28:53', '', '0', 'http://doanso.abc/?page_id=1435', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1436', '1', '2016-12-28 08:26:36', '2016-12-28 08:26:36', '', 'Học tập và làm theo Bác - Những mẫu chuyện về Bác', '', 'inherit', 'closed', 'closed', '', '1435-revision-v1', '', '', '2016-12-28 08:26:36', '2016-12-28 08:26:36', '', '1435', 'http://doanso.abc/2016/12/28/1435-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1437', '1', '2016-12-28 08:31:36', '2016-12-28 08:31:36', '', 'Học tập và làm theo Bác - Những tấm gương tiêu biểu', '', 'publish', 'closed', 'closed', '', 'hoc-tap-va-lam-theo-bac-nhung-tam-guong-tieu-bieu', '', '', '2016-12-28 08:35:02', '2016-12-28 08:35:02', '', '0', 'http://doanso.abc/?page_id=1437', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1438', '1', '2016-12-28 08:31:36', '2016-12-28 08:31:36', '', 'Học tập và làm theo Bác - Những tấm gương tiêu biểu', '', 'inherit', 'closed', 'closed', '', '1437-revision-v1', '', '', '2016-12-28 08:31:36', '2016-12-28 08:31:36', '', '1437', 'http://doanso.abc/2016/12/28/1437-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1439', '1', '2016-12-28 08:39:48', '2016-12-28 08:39:48', '', 'Học tập và làm theo lời Bác - Gương thanh niên tiên tiến làm theo lời Bác', '', 'publish', 'closed', 'closed', '', 'hoc-tap-va-lam-theo-loi-bac-guong-thanh-nien-tien-tien-lam-theo-loi-bac', '', '', '2016-12-28 08:39:48', '2016-12-28 08:39:48', '', '0', 'http://doanso.abc/?page_id=1439', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1440', '1', '2016-12-28 08:39:48', '2016-12-28 08:39:48', '', 'Học tập và làm theo lời Bác - Gương thanh niên tiên tiến làm theo lời Bác', '', 'inherit', 'closed', 'closed', '', '1439-revision-v1', '', '', '2016-12-28 08:39:48', '2016-12-28 08:39:48', '', '1439', 'http://doanso.abc/2016/12/28/1439-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1441', '1', '2016-12-28 08:47:52', '2016-12-28 08:47:52', '', 'Học tập và làm theo Bác - Hình ảnh về Bác', '', 'publish', 'closed', 'closed', '', 'hoc-tap-va-lam-theo-bac-hinh-anh-ve-bac', '', '', '2016-12-28 08:48:43', '2016-12-28 08:48:43', '', '0', 'http://doanso.abc/?page_id=1441', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1442', '1', '2016-12-28 08:47:52', '2016-12-28 08:47:52', '', 'Học tập và làm theo Bác - Hình ảnh về Bác', '', 'inherit', 'closed', 'closed', '', '1441-revision-v1', '', '', '2016-12-28 08:47:52', '2016-12-28 08:47:52', '', '1441', 'http://doanso.abc/2016/12/28/1441-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1443', '1', '2016-12-28 08:50:56', '2016-12-28 08:50:56', '', 'Học tập và làm theo Bác - Video về Bác', '', 'publish', 'closed', 'closed', '', 'hoc-tap-va-lam-theo-bac-video-ve-bac', '', '', '2016-12-28 08:50:56', '2016-12-28 08:50:56', '', '0', 'http://doanso.abc/?page_id=1443', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1444', '1', '2016-12-28 08:50:56', '2016-12-28 08:50:56', '', 'Học tập và làm theo Bác - Video về Bác', '', 'inherit', 'closed', 'closed', '', '1443-revision-v1', '', '', '2016-12-28 08:50:56', '2016-12-28 08:50:56', '', '1443', 'http://doanso.abc/2016/12/28/1443-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1445', '1', '2016-12-28 09:10:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-28 09:10:19', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1445', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1446', '1', '2016-12-28 09:10:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-28 09:10:19', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1446', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1447', '1', '2016-12-28 09:10:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-28 09:10:19', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1447', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1448', '1', '2016-12-28 09:10:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-28 09:10:19', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1448', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1449', '1', '2016-12-28 09:10:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-28 09:10:20', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1449', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1450', '1', '2016-12-28 09:10:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-28 09:10:20', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1450', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1451', '1', '2016-12-28 09:11:02', '2016-12-28 09:11:02', '', 'Học tập và làm theo lời Bác', '', 'publish', 'closed', 'closed', '', 'hoc-tap-va-lam-theo-loi-bac', '', '', '2016-12-28 09:11:02', '2016-12-28 09:11:02', '', '0', 'http://doanso.abc/?page_id=1451', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1452', '1', '2016-12-28 09:11:02', '2016-12-28 09:11:02', '', 'Học tập và làm theo lời Bác', '', 'inherit', 'closed', 'closed', '', '1451-revision-v1', '', '', '2016-12-28 09:11:02', '2016-12-28 09:11:02', '', '1451', 'http://doanso.abc/2016/12/28/1451-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1485', '1', '2016-12-28 09:21:42', '2016-12-28 09:21:42', ' ', '', '', 'publish', 'closed', 'closed', '', '1485', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1485', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1486', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1486', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1486', '2', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1487', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1487', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1487', '6', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1488', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1488', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1488', '7', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1489', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1489', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1489', '11', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1490', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1490', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1490', '12', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1491', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1491', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1491', '13', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1492', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', '', 'Khối cai nghiện ma túy', '', 'publish', 'closed', 'closed', '', '1492', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1492', '14', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1493', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', '', 'Khối bảo trợ xã hội 1', '', 'publish', 'closed', 'closed', '', '1493', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1493', '15', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1494', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', '', 'Khối bảo trợ xã hội 2', '', 'publish', 'closed', 'closed', '', '1494', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1494', '16', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1495', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', '', 'Khối hành chính sự nghiệp', '', 'publish', 'closed', 'closed', '', '1495', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1495', '17', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1496', '1', '2016-12-28 09:21:43', '2016-12-28 09:21:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1496', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1496', '18', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1497', '1', '2016-12-28 09:21:44', '2016-12-28 09:21:44', '', 'Văn bản triển khai', '', 'publish', 'closed', 'closed', '', 'hoc-tap-va-lam-theo-bac-van-ban-trien-khai-2', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1497', '19', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1498', '1', '2016-12-28 12:36:47', '2016-12-28 12:36:47', '<img class=\"alignnone  wp-image-1501\" src=\"http://doanso.abc/wp-content/uploads/2016/12/gallery_1_1397041846-300x129.jpeg\" alt=\"\" width=\"600\" height=\"181\" />', 'banner1', '', 'publish', 'closed', 'closed', '', 'banner1', '', '', '2016-12-28 12:55:57', '2016-12-28 12:55:57', '', '0', 'http://doanso.abc/?post_type=banner&#038;p=1498', '0', 'banner', '', '0');
INSERT INTO `wp_posts` VALUES ('1499', '1', '2016-12-28 12:34:33', '2016-12-28 12:34:33', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2016-12-28 12:34:33', '2016-12-28 12:34:33', '', '1498', 'http://doanso.abc/wp-content/uploads/2016/12/banner.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('1500', '1', '2016-12-28 12:52:53', '2016-12-28 12:52:53', '', 'banner1', '', 'inherit', 'closed', 'closed', '', '1498-autosave-v1', '', '', '2016-12-28 12:52:53', '2016-12-28 12:52:53', '', '1498', 'http://doanso.abc/2016/12/28/1498-autosave-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1501', '1', '2016-12-28 12:53:20', '2016-12-28 12:53:20', '', 'gallery_1_1397041846', '', 'inherit', 'open', 'closed', '', 'gallery_1_1397041846', '', '', '2016-12-28 12:53:20', '2016-12-28 12:53:20', '', '1498', 'http://doanso.abc/wp-content/uploads/2016/12/gallery_1_1397041846.jpeg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('1502', '1', '2016-12-28 13:00:09', '2016-12-28 13:00:09', '<img class=\"alignnone  wp-image-1503\" src=\"http://doanso.abc/wp-content/uploads/2016/12/logo.png\" alt=\"\" width=\"357\" height=\"180\" />', 'logo', '', 'publish', 'closed', 'closed', '', 'logo', '', '', '2016-12-28 13:00:09', '2016-12-28 13:00:09', '', '0', 'http://doanso.abc/?post_type=banner&#038;p=1502', '0', 'banner', '', '0');
INSERT INTO `wp_posts` VALUES ('1503', '1', '2016-12-28 12:59:53', '2016-12-28 12:59:53', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-12-28 12:59:53', '2016-12-28 12:59:53', '', '1502', 'http://doanso.abc/wp-content/uploads/2016/12/logo.png', '0', 'attachment', 'image/png', '0');
INSERT INTO `wp_posts` VALUES ('1504', '1', '2016-12-28 13:22:57', '2016-12-28 13:22:57', '<img class=\"alignnone size-full wp-image-1506\" src=\"http://doanso.abc/wp-content/uploads/2016/12/SinhVienIT.Net-1410195-header3copy.jpg\" alt=\"\" width=\"900\" height=\"200\" />', 'banner 2', '', 'publish', 'closed', 'closed', '', 'banner-2', '', '', '2016-12-28 13:27:50', '2016-12-28 13:27:50', '', '0', 'http://doanso.abc/?post_type=banner&#038;p=1504', '0', 'banner', '', '0');
INSERT INTO `wp_posts` VALUES ('1505', '1', '2016-12-28 13:25:33', '2016-12-28 13:25:33', '', 'banner 2', '', 'inherit', 'closed', 'closed', '', '1504-autosave-v1', '', '', '2016-12-28 13:25:33', '2016-12-28 13:25:33', '', '1504', 'http://doanso.abc/2016/12/28/1504-autosave-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1506', '1', '2016-12-28 13:27:01', '2016-12-28 13:27:01', '', 'SinhVienIT.Net---1410195-header3copy', '', 'inherit', 'open', 'closed', '', 'sinhvienit-net-1410195-header3copy', '', '', '2016-12-28 13:27:01', '2016-12-28 13:27:01', '', '1504', 'http://doanso.abc/wp-content/uploads/2016/12/SinhVienIT.Net-1410195-header3copy.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_posts` VALUES ('1507', '1', '2016-12-30 04:40:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-12-30 04:40:39', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1507', '0', 'post', '', '0');
INSERT INTO `wp_posts` VALUES ('1508', '1', '2016-12-30 04:42:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-30 04:42:35', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1508', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1509', '1', '2016-12-30 04:43:22', '2016-12-30 04:43:22', ' ', '', '', 'publish', 'closed', 'closed', '', '1509', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1509', '8', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1510', '1', '2016-12-30 04:45:37', '2016-12-30 04:45:37', ' ', '', '', 'publish', 'closed', 'closed', '', '1510', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1510', '9', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1511', '1', '2016-12-30 04:51:13', '2016-12-30 04:51:13', ' ', '', '', 'publish', 'closed', 'closed', '', '1511', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1511', '10', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1512', '1', '2016-12-30 04:52:30', '2016-12-30 04:52:30', ' ', '', '', 'publish', 'closed', 'closed', '', '1512', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1512', '3', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1513', '1', '2016-12-30 04:52:30', '2016-12-30 04:52:30', ' ', '', '', 'publish', 'closed', 'closed', '', '1513', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1513', '5', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1514', '1', '2016-12-30 04:52:30', '2016-12-30 04:52:30', ' ', '', '', 'publish', 'closed', 'closed', '', '1514', '', '', '2016-12-30 13:44:49', '2016-12-30 13:44:49', '', '0', 'http://doanso.abc/?p=1514', '4', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1515', '1', '2016-12-30 04:59:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-30 04:59:04', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1515', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1516', '1', '2016-12-30 04:59:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-30 04:59:05', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1516', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1517', '1', '2016-12-30 04:59:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-30 04:59:05', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1517', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1518', '1', '2016-12-30 04:59:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-30 04:59:05', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1518', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1519', '1', '2016-12-30 04:59:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-30 04:59:06', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1519', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1520', '1', '2016-12-30 05:01:27', '2016-12-30 05:01:27', '', 'Video về Bác', '', 'publish', 'closed', 'closed', '', 'video-ve-bac', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1520', '24', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1521', '1', '2016-12-30 05:01:27', '2016-12-30 05:01:27', '', 'Hình ảnh về Bác', '', 'publish', 'closed', 'closed', '', 'hinh-anh-ve-bac', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1521', '23', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1522', '1', '2016-12-30 05:01:26', '2016-12-30 05:01:26', '', 'Gương thanh niên tiên tiến làm theo lời Bác', '', 'publish', 'closed', 'closed', '', 'guong-thanh-nien-tien-tien-lam-theo-loi-bac', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1522', '22', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1523', '1', '2016-12-30 05:01:26', '2016-12-30 05:01:26', '', 'Những tấm gương tiêu biểu', '', 'publish', 'closed', 'closed', '', 'nhung-tam-guong-tieu-bieu', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1523', '21', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1524', '1', '2016-12-30 05:01:26', '2016-12-30 05:01:26', '', 'Những mẫu chuyện về Bác', '', 'publish', 'closed', 'closed', '', 'nhung-mau-chuyen-ve-bac', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1524', '20', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1525', '1', '2016-12-30 05:15:07', '2016-12-30 05:15:07', '', 'Đoàn Trường Cao đẳng nghề thành phố', '', 'publish', 'closed', 'closed', '', 'doan-truong-cao-dang-nghe-thanh-pho', '', '', '2016-12-30 05:15:07', '2016-12-30 05:15:07', '', '0', 'http://doanso.abc/?page_id=1525', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1526', '1', '2016-12-30 05:15:07', '2016-12-30 05:15:07', '', 'Đoàn Trường Cao đẳng nghề thành phố', '', 'inherit', 'closed', 'closed', '', '1525-revision-v1', '', '', '2016-12-30 05:15:07', '2016-12-30 05:15:07', '', '1525', 'http://doanso.abc/2016/12/30/1525-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1527', '1', '2016-12-30 05:15:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-30 05:15:53', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?page_id=1527', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1528', '1', '2016-12-30 05:15:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-30 05:15:54', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?page_id=1528', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1529', '1', '2016-12-30 05:18:22', '2016-12-30 05:18:22', '', 'ĐOÀN TRƯỜNG CAO ĐẲNG HERMANN GMEINER', '', 'publish', 'closed', 'closed', '', 'doan-truong-cao-dang-hermann-gmeiner', '', '', '2016-12-30 05:23:32', '2016-12-30 05:23:32', '', '0', 'http://doanso.abc/?page_id=1529', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1530', '1', '2016-12-30 05:18:22', '2016-12-30 05:18:22', '', 'ĐOÀN TRƯỜNG CAO ĐẲNG HERMANN GMEINER', '', 'inherit', 'closed', 'closed', '', '1529-revision-v1', '', '', '2016-12-30 05:18:22', '2016-12-30 05:18:22', '', '1529', 'http://doanso.abc/2016/12/30/1529-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1531', '1', '2016-12-30 05:40:03', '2016-12-30 05:40:03', '', 'Văn bản đoàn sở', '', 'publish', 'closed', 'closed', '', 'van-ban-doan-so', '', '', '2016-12-30 05:40:07', '2016-12-30 05:40:07', '', '0', 'http://doanso.abc/?post_type=sdm_downloads&#038;p=1531', '0', 'sdm_downloads', '', '0');
INSERT INTO `wp_posts` VALUES ('1532', '1', '2016-12-30 12:57:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-30 12:57:38', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?post_type=acf&p=1532', '0', 'acf', '', '0');
INSERT INTO `wp_posts` VALUES ('1533', '1', '2016-12-30 12:58:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-30 12:58:16', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?post_type=acf&p=1533', '0', 'acf', '', '0');
INSERT INTO `wp_posts` VALUES ('1534', '1', '2016-12-30 13:01:05', '2016-12-30 13:01:05', '', 'Url Download', '', 'publish', 'closed', 'closed', '', 'acf_url-download', '', '', '2016-12-30 13:04:57', '2016-12-30 13:04:57', '', '0', 'http://doanso.abc/?post_type=acf&#038;p=1534', '0', 'acf', '', '0');
INSERT INTO `wp_posts` VALUES ('1535', '1', '2016-12-30 13:01:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-30 13:01:13', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?post_type=file_download&p=1535', '0', 'file_download', '', '0');
INSERT INTO `wp_posts` VALUES ('1536', '1', '2016-12-30 13:03:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-30 13:03:40', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?post_type=file_download&p=1536', '0', 'file_download', '', '0');
INSERT INTO `wp_posts` VALUES ('1537', '1', '2016-12-30 13:07:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-30 13:07:36', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?post_type=file_download&p=1537', '0', 'file_download', '', '0');
INSERT INTO `wp_posts` VALUES ('1538', '1', '2016-12-30 13:09:18', '2016-12-30 13:09:18', 'Văn bản mới của Đoàn Sở', 'Văn bản mới của Đoàn Sở', '', 'publish', 'closed', 'closed', '', 'van-ban-moi-cua-doan-so', '', '', '2016-12-30 13:09:18', '2016-12-30 13:09:18', '', '0', 'http://doanso.abc/?post_type=file_download&#038;p=1538', '0', 'file_download', '', '0');
INSERT INTO `wp_posts` VALUES ('1539', '1', '2016-12-30 13:28:03', '0000-00-00 00:00:00', '', 'Văn bản mới của Hội Sở', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-30 13:28:03', '2016-12-30 13:28:03', '', '0', 'http://doanso.abc/?post_type=file_download&#038;p=1539', '0', 'file_download', '', '0');
INSERT INTO `wp_posts` VALUES ('1540', '1', '2016-12-30 13:34:56', '2016-12-30 13:34:56', '', 'Văn bản Thành Đoàn', '', 'publish', 'closed', 'closed', '', 'van-ban-thanh-doan', '', '', '2016-12-30 13:34:56', '2016-12-30 13:34:56', '', '0', 'http://doanso.abc/?page_id=1540', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1541', '1', '2016-12-30 13:34:56', '2016-12-30 13:34:56', '', 'Văn bản Thành Đoàn', '', 'inherit', 'closed', 'closed', '', '1540-revision-v1', '', '', '2016-12-30 13:34:56', '2016-12-30 13:34:56', '', '1540', 'http://doanso.abc/2016/12/30/1540-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1542', '1', '2016-12-30 13:35:15', '2016-12-30 13:35:15', '', 'Văn bản Sở', '', 'publish', 'closed', 'closed', '', 'van-ban-so', '', '', '2016-12-30 13:41:57', '2016-12-30 13:41:57', '', '0', 'http://doanso.abc/?page_id=1542', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1543', '1', '2016-12-30 13:35:15', '2016-12-30 13:35:15', '', 'Văn bản Sở', '', 'inherit', 'closed', 'closed', '', '1542-revision-v1', '', '', '2016-12-30 13:35:15', '2016-12-30 13:35:15', '', '1542', 'http://doanso.abc/2016/12/30/1542-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1544', '1', '2016-12-30 13:42:25', '2016-12-30 13:42:25', '', 'Văn bản Đảng Ủy Sở', '', 'publish', 'closed', 'closed', '', 'van-ban-dang-uy-so', '', '', '2016-12-30 13:42:25', '2016-12-30 13:42:25', '', '0', 'http://doanso.abc/?page_id=1544', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1545', '1', '2016-12-30 13:42:25', '2016-12-30 13:42:25', '', 'Văn bản Đảng Ủy Sở', '', 'inherit', 'closed', 'closed', '', '1544-revision-v1', '', '', '2016-12-30 13:42:25', '2016-12-30 13:42:25', '', '1544', 'http://doanso.abc/2016/12/30/1544-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1546', '1', '2016-12-30 13:43:26', '2016-12-30 13:43:26', '', 'Văn bản - Tài liệu', '', 'publish', 'closed', 'closed', '', 'van-ban-tai-lieu', '', '', '2016-12-30 13:43:26', '2016-12-30 13:43:26', '', '0', 'http://doanso.abc/?page_id=1546', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('1547', '1', '2016-12-30 13:43:26', '2016-12-30 13:43:26', '', 'Văn bản - Tài liệu', '', 'inherit', 'closed', 'closed', '', '1546-revision-v1', '', '', '2016-12-30 13:43:26', '2016-12-30 13:43:26', '', '1546', 'http://doanso.abc/2016/12/30/1546-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `wp_posts` VALUES ('1548', '1', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', 'Văn bản – Tài liệu', '', 'publish', 'closed', 'closed', '', 'van-ban-tai-lieu', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1548', '25', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1549', '1', '2016-12-30 13:44:51', '2016-12-30 13:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '1549', '', '', '2016-12-30 13:44:51', '2016-12-30 13:44:51', '', '0', 'http://doanso.abc/?p=1549', '27', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1550', '1', '2016-12-30 13:44:51', '2016-12-30 13:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '1550', '', '', '2016-12-30 13:44:51', '2016-12-30 13:44:51', '', '0', 'http://doanso.abc/?p=1550', '28', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1551', '1', '2016-12-30 13:44:50', '2016-12-30 13:44:50', ' ', '', '', 'publish', 'closed', 'closed', '', '1551', '', '', '2016-12-30 13:44:50', '2016-12-30 13:44:50', '', '0', 'http://doanso.abc/?p=1551', '26', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1552', '1', '2016-12-30 13:44:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-30 13:44:32', '0000-00-00 00:00:00', '', '0', 'http://doanso.abc/?p=1552', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1553', '1', '2016-12-30 13:44:52', '2016-12-30 13:44:52', ' ', '', '', 'publish', 'closed', 'closed', '', '1553', '', '', '2016-12-30 13:44:52', '2016-12-30 13:44:52', '', '0', 'http://doanso.abc/?p=1553', '30', 'nav_menu_item', '', '0');
INSERT INTO `wp_posts` VALUES ('1554', '1', '2016-12-30 13:44:51', '2016-12-30 13:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '1554', '', '', '2016-12-30 13:44:51', '2016-12-30 13:44:51', '', '0', 'http://doanso.abc/?p=1554', '29', 'nav_menu_item', '', '0');

-- ----------------------------
-- Table structure for `wp_sdm_downloads`
-- ----------------------------
DROP TABLE IF EXISTS `wp_sdm_downloads`;
CREATE TABLE `wp_sdm_downloads` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `post_id` mediumint(9) NOT NULL,
  `post_title` mediumtext NOT NULL,
  `file_url` mediumtext NOT NULL,
  `visitor_ip` mediumtext NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visitor_country` mediumtext NOT NULL,
  `visitor_name` mediumtext NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_sdm_downloads
-- ----------------------------
INSERT INTO `wp_sdm_downloads` VALUES ('1', '1282', 'Link download1', 'http://www.w3schools.com/css/css_list.asp', '127.0.0.1', '2016-12-25 00:52:43', '', 'admin');

-- ----------------------------
-- Table structure for `wp_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_term_relationships
-- ----------------------------
INSERT INTO `wp_term_relationships` VALUES ('1', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('6', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('131', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('133', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('134', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('149', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('151', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('152', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '43', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '44', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '45', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '46', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '47', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '48', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '49', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '50', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '51', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '52', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '53', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '54', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '55', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '56', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '57', '0');
INSERT INTO `wp_term_relationships` VALUES ('167', '58', '0');
INSERT INTO `wp_term_relationships` VALUES ('168', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('188', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('418', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('555', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('555', '62', '0');
INSERT INTO `wp_term_relationships` VALUES ('559', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('559', '63', '0');
INSERT INTO `wp_term_relationships` VALUES ('562', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('562', '64', '0');
INSERT INTO `wp_term_relationships` VALUES ('565', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('565', '65', '0');
INSERT INTO `wp_term_relationships` VALUES ('568', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('568', '66', '0');
INSERT INTO `wp_term_relationships` VALUES ('575', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('575', '67', '0');
INSERT INTO `wp_term_relationships` VALUES ('579', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('579', '68', '0');
INSERT INTO `wp_term_relationships` VALUES ('582', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('582', '69', '0');
INSERT INTO `wp_term_relationships` VALUES ('587', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('587', '70', '0');
INSERT INTO `wp_term_relationships` VALUES ('674', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('674', '66', '0');
INSERT INTO `wp_term_relationships` VALUES ('861', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('867', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('877', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('895', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('903', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('919', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('922', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('946', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('993', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('996', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1000', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1005', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1005', '69', '0');
INSERT INTO `wp_term_relationships` VALUES ('1011', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1016', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1027', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1031', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1241', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1267', '73', '0');
INSERT INTO `wp_term_relationships` VALUES ('1271', '73', '0');
INSERT INTO `wp_term_relationships` VALUES ('1282', '71', '0');
INSERT INTO `wp_term_relationships` VALUES ('1284', '71', '0');
INSERT INTO `wp_term_relationships` VALUES ('1363', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1367', '76', '0');
INSERT INTO `wp_term_relationships` VALUES ('1369', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1371', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1373', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1385', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1387', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1389', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1391', '1', '0');
INSERT INTO `wp_term_relationships` VALUES ('1419', '77', '0');
INSERT INTO `wp_term_relationships` VALUES ('1485', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1486', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1487', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1488', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1489', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1490', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1491', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1492', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1493', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1494', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1495', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1496', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1497', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1509', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1510', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1511', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1512', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1513', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1514', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1520', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1521', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1522', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1523', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1524', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1531', '71', '0');
INSERT INTO `wp_term_relationships` VALUES ('1538', '89', '0');
INSERT INTO `wp_term_relationships` VALUES ('1548', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1549', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1550', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1551', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1553', '86', '0');
INSERT INTO `wp_term_relationships` VALUES ('1554', '86', '0');

-- ----------------------------
-- Table structure for `wp_term_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_term_taxonomy
-- ----------------------------
INSERT INTO `wp_term_taxonomy` VALUES ('1', '1', 'category', '', '0', '8');
INSERT INTO `wp_term_taxonomy` VALUES ('43', '43', 'post_tag', 'Tags posts about 8BIT.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('44', '44', 'post_tag', 'Tags posts about Articles.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('45', '45', 'post_tag', 'Tags posts about #dowork.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('46', '46', 'post_tag', 'Tags posts about fail.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('47', '47', 'post_tag', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('48', '48', 'post_tag', 'Tags posts about fun.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('49', '49', 'post_tag', 'Tags posts about love.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('50', '50', 'post_tag', 'Tags posts about motherships.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('51', '51', 'post_tag', 'Tags posts about articles you must read.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('52', '52', 'post_tag', 'Tags posts about that nailed it.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('53', '53', 'post_tag', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('54', '54', 'post_tag', 'Tags posts about success.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('55', '55', 'post_tag', 'Tags posts about swagger.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('56', '56', 'post_tag', 'Tags posts about tags. #inception', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('57', '57', 'post_tag', 'Tags posts about things that cannot be unseen.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('58', '58', 'post_tag', 'Tags posts about WordPress.', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('62', '62', 'post_format', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('63', '63', 'post_format', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('64', '64', 'post_format', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('65', '65', 'post_format', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('66', '66', 'post_format', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('67', '67', 'post_format', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('68', '68', 'post_format', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('69', '69', 'post_format', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('70', '70', 'post_format', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('71', '71', 'sdm_categories', '', '0', '1');
INSERT INTO `wp_term_taxonomy` VALUES ('72', '72', 'sdm_categories', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('73', '73', 'ml-slider', '', '0', '1');
INSERT INTO `wp_term_taxonomy` VALUES ('74', '74', 'sdm_categories', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('75', '75', 'promotion-categories', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('76', '76', 'category', '', '0', '1');
INSERT INTO `wp_term_taxonomy` VALUES ('77', '77', 'category', '', '0', '1');
INSERT INTO `wp_term_taxonomy` VALUES ('78', '78', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('79', '79', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('80', '80', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('81', '81', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('82', '82', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('83', '83', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('84', '84', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('85', '85', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('86', '86', 'nav_menu', '', '0', '30');
INSERT INTO `wp_term_taxonomy` VALUES ('87', '87', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('88', '88', 'category', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('89', '89', 'danh_muc_tai_lieu', '', '0', '1');
INSERT INTO `wp_term_taxonomy` VALUES ('90', '90', 'danh_muc_tai_lieu', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('91', '91', 'danh_muc_tai_lieu', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('92', '92', 'danh_muc_tai_lieu', '', '0', '0');
INSERT INTO `wp_term_taxonomy` VALUES ('93', '93', 'danh_muc_tai_lieu', '', '0', '0');

-- ----------------------------
-- Table structure for `wp_termmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_termmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_terms`
-- ----------------------------
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_terms
-- ----------------------------
INSERT INTO `wp_terms` VALUES ('1', 'Uncategorized', 'uncategorized', '0');
INSERT INTO `wp_terms` VALUES ('43', '8BIT', '8bit', '0');
INSERT INTO `wp_terms` VALUES ('44', 'Articles', 'articles', '0');
INSERT INTO `wp_terms` VALUES ('45', 'dowork', 'dowork', '0');
INSERT INTO `wp_terms` VALUES ('46', 'Fail', 'fail', '0');
INSERT INTO `wp_terms` VALUES ('47', 'FTW', 'ftw', '0');
INSERT INTO `wp_terms` VALUES ('48', 'Fun', 'fun', '0');
INSERT INTO `wp_terms` VALUES ('49', 'Love', 'love', '0');
INSERT INTO `wp_terms` VALUES ('50', 'Mothership', 'mothership', '0');
INSERT INTO `wp_terms` VALUES ('51', 'Must Read', 'mustread', '0');
INSERT INTO `wp_terms` VALUES ('52', 'Nailed It', 'nailedit', '0');
INSERT INTO `wp_terms` VALUES ('53', 'Pictures', 'pictures', '0');
INSERT INTO `wp_terms` VALUES ('54', 'Success', 'success', '0');
INSERT INTO `wp_terms` VALUES ('55', 'Swagger', 'swagger', '0');
INSERT INTO `wp_terms` VALUES ('56', 'Tags', 'tags', '0');
INSERT INTO `wp_terms` VALUES ('57', 'Unseen', 'unseen', '0');
INSERT INTO `wp_terms` VALUES ('58', 'WordPress', 'wordpress', '0');
INSERT INTO `wp_terms` VALUES ('62', 'Gallery', 'post-format-gallery', '0');
INSERT INTO `wp_terms` VALUES ('63', 'Aside', 'post-format-aside', '0');
INSERT INTO `wp_terms` VALUES ('64', 'Chat', 'post-format-chat', '0');
INSERT INTO `wp_terms` VALUES ('65', 'Link', 'post-format-link', '0');
INSERT INTO `wp_terms` VALUES ('66', 'Image', 'post-format-image', '0');
INSERT INTO `wp_terms` VALUES ('67', 'Quote', 'post-format-quote', '0');
INSERT INTO `wp_terms` VALUES ('68', 'Status', 'post-format-status', '0');
INSERT INTO `wp_terms` VALUES ('69', 'Video', 'post-format-video', '0');
INSERT INTO `wp_terms` VALUES ('70', 'Audio', 'post-format-audio', '0');
INSERT INTO `wp_terms` VALUES ('71', 'Văn bản Đoàn Sở', 'van-ban-doan-so', '0');
INSERT INTO `wp_terms` VALUES ('72', 'Văn bản Hội Sở', 'van-ban-hoi-so', '0');
INSERT INTO `wp_terms` VALUES ('73', '1303', '1303', '0');
INSERT INTO `wp_terms` VALUES ('74', 'Lịch làm việc của văn phòng Đoàn', 'lich-lam-viec-van-phong-doan', '0');
INSERT INTO `wp_terms` VALUES ('75', 'sss1', 'sss1', '0');
INSERT INTO `wp_terms` VALUES ('76', 'Tổng quan', 'tong-quan', '0');
INSERT INTO `wp_terms` VALUES ('77', 'Thông tin Đoàn Thanh niên Sở', 'doan-thanh-nien-so', '0');
INSERT INTO `wp_terms` VALUES ('78', 'Thông tin Hội Liên Hiệp Thanh Niên Việt Nam Sở', 'thong-tin-hoi-lien-hiep-thanh-nien-viet-nam-so', '0');
INSERT INTO `wp_terms` VALUES ('79', 'Thông tin hoạt động cơ sở', 'thong-tin-hoat-dong-co-so', '0');
INSERT INTO `wp_terms` VALUES ('80', 'Học tập theo Bác - văn bản triển khai', 'hoc-tap-theo-bac-van-ban-trien-khai', '0');
INSERT INTO `wp_terms` VALUES ('81', 'Học tập theo Bác - Những mẫu chuyện về Bác', 'hoc-tap-theo-bac-nhung-mau-chuyen-ve-bac', '0');
INSERT INTO `wp_terms` VALUES ('82', 'Học tập theo Bác - Những tấm gương tiêu biểu', 'hoc-tap-theo-bac-nhung-tam-guong-tieu-bieu', '0');
INSERT INTO `wp_terms` VALUES ('83', 'Học tập theo Bác - Gương thanh niên tiên tiến theo lời Bác', 'hoc-tap-theo-bac-guong-thanh-nien-tien-tien-theo-loi-bac', '0');
INSERT INTO `wp_terms` VALUES ('84', 'Học tập theo Bác- Hình ảnh về Bác', 'hoc-tap-theo-bac-hinh-anh-ve-bac', '0');
INSERT INTO `wp_terms` VALUES ('85', 'Học tập theo Bác- Video về Bác', 'hoc-tap-theo-bac-video-ve-bac', '0');
INSERT INTO `wp_terms` VALUES ('86', 'Menu Chính', 'menu-chinh', '0');
INSERT INTO `wp_terms` VALUES ('87', 'Đoàn Trường Cao đẳng nghề thành phố', 'doan-truong-cao-dang-nghe-thanh-pho', '0');
INSERT INTO `wp_terms` VALUES ('88', 'Đoàn Trường Hermann Gmeiner', 'doan-truong-hermann-gmeiner', '0');
INSERT INTO `wp_terms` VALUES ('89', 'Văn bản Đoàn Sở', 'van-ban-doan-so', '0');
INSERT INTO `wp_terms` VALUES ('90', 'Văn bản Hội Sở', 'van-ban-hoi-so', '0');
INSERT INTO `wp_terms` VALUES ('91', 'Văn bản Thành Đoàn', 'van-ban-thanh-doan', '0');
INSERT INTO `wp_terms` VALUES ('92', 'Văn bản Sở', 'van-ban-so', '0');
INSERT INTO `wp_terms` VALUES ('93', 'Văn bản Đảng Ủy Sở', 'van-ban-dang-uy-so', '0');

-- ----------------------------
-- Table structure for `wp_tsw_log`
-- ----------------------------
DROP TABLE IF EXISTS `wp_tsw_log`;
CREATE TABLE `wp_tsw_log` (
  `IP` varchar(17) NOT NULL,
  `Time` int(11) NOT NULL,
  `IS_BOT` tinyint(1) NOT NULL,
  `IS_HIT` tinyint(1) NOT NULL,
  PRIMARY KEY (`IP`,`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_tsw_log
-- ----------------------------
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482625630', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482625695', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482625722', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482625775', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482625862', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482626265', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482626306', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482626359', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482626742', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627138', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627409', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627417', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627435', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627439', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627676', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627707', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627711', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627907', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627918', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482627932', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482656258', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482656262', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482656296', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482657182', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482720394', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482720873', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482720971', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482720981', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482721732', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482721766', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482721771', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482721775', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723062', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723096', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723130', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723196', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723465', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723532', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723619', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723661', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723754', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723782', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723797', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723849', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723856', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723861', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482723879', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724064', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724068', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724072', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724078', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724085', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724122', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724555', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724930', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724950', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724967', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724975', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482724983', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725027', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725081', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725085', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725126', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725353', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725425', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725522', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725616', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725809', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482725843', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482727987', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482728666', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482729246', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482729451', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482729505', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482729568', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482729595', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482729658', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482729662', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482729709', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730005', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730044', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730050', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730082', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730116', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730241', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730427', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730435', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730439', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730449', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730504', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730514', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730706', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730710', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730727', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730731', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730742', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482730748', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482809770', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810031', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810122', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810159', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810237', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810290', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810294', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810308', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810314', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810329', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810334', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810505', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810572', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482810613', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811006', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811155', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811192', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811438', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811447', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811602', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811633', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811649', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811663', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811776', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811921', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482811966', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482812345', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482812630', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482813554', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482813667', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482814665', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482814747', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482814752', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482814764', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482814802', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482815120', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482816274', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482816451', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482816481', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482816596', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482816968', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482816986', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817038', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817095', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817103', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817148', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817178', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817340', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817504', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817688', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817712', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817716', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482817785', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482818183', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482818187', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482818263', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482894521', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482894579', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482894720', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482894794', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482895120', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482895152', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482895183', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482895202', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482895234', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482897603', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482897665', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482897731', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482898735', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482898817', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482898914', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482899048', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482899075', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482899274', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482899321', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482899663', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482899731', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482899833', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482899877', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482899941', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482900419', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482900785', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482900838', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482900896', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482900902', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482901072', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482901479', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482901531', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482901595', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482901733', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482901810', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482943359', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482943842', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944033', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944118', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944336', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944346', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944371', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944410', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944559', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944635', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944958', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944967', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944978', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482944995', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482945077', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482945301', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482945486', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482946419', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482946504', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482946528', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482946533', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482947432', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948072', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948088', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948245', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948326', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948416', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948536', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948686', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948835', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948845', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948849', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948858', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948913', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948925', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948929', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948982', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948994', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482948998', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482949181', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482949186', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482949191', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482950317', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482950402', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482950413', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482950418', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951045', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951214', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951220', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951227', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951344', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951353', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951369', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951424', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951428', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951495', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951500', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951600', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951644', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951741', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1482951752', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483070405', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483070486', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483071064', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483071189', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483071219', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483071602', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483074093', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483074890', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483074911', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483075104', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483075437', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483075443', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483075806', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483075888', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483075925', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483075943', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076127', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076159', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076185', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076271', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076350', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076411', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076429', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076589', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076593', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076605', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076609', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076723', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076750', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076932', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076968', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483076983', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483103478', '0', '1');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483103487', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483104127', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483104151', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483104167', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483104237', '0', '0');
INSERT INTO `wp_tsw_log` VALUES ('127.0.0.1', '1483105493', '0', '1');

-- ----------------------------
-- Table structure for `wp_usermeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_usermeta
-- ----------------------------
INSERT INTO `wp_usermeta` VALUES ('1', '1', 'nickname', 'admin');
INSERT INTO `wp_usermeta` VALUES ('2', '1', 'first_name', '');
INSERT INTO `wp_usermeta` VALUES ('3', '1', 'last_name', '');
INSERT INTO `wp_usermeta` VALUES ('4', '1', 'description', '');
INSERT INTO `wp_usermeta` VALUES ('5', '1', 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES ('6', '1', 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES ('7', '1', 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES ('8', '1', 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES ('9', '1', 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES ('10', '1', 'locale', '');
INSERT INTO `wp_usermeta` VALUES ('11', '1', 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES ('12', '1', 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES ('13', '1', 'dismissed_wp_pointers', '');
INSERT INTO `wp_usermeta` VALUES ('14', '1', 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES ('15', '1', 'session_tokens', 'a:2:{s:64:\"e33bd8d3b13d9c141a8f4d88c5c94ddf9b5552db8f0bc7a8a60a52843a80d8f7\";a:4:{s:10:\"expiration\";i:1483504121;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:134:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/58.3.138 Chrome/52.3.2743.138 Safari/537.36\";s:5:\"login\";i:1482294521;}s:64:\"da2c592af03a79dcb6385e5d9985bbe92bd30de82c8f7a7b1c66a079839c5a9d\";a:4:{s:10:\"expiration\";i:1483083963;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:134:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/58.3.138 Chrome/52.3.2743.138 Safari/537.36\";s:5:\"login\";i:1482911163;}}');
INSERT INTO `wp_usermeta` VALUES ('16', '1', 'wp_dashboard_quick_press_last_post_id', '1507');
INSERT INTO `wp_usermeta` VALUES ('17', '1', 'wp_user-settings', 'libraryContent=browse&mfold=o&advImgDetails=show&editor=tinymce&imgsize=full');
INSERT INTO `wp_usermeta` VALUES ('18', '1', 'wp_user-settings-time', '1482931666');
INSERT INTO `wp_usermeta` VALUES ('19', '1', 'closedpostboxes_05_06', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES ('20', '1', 'metaboxhidden_05_06', 'a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES ('21', '1', 'nav_menu_recently_edited', '86');
INSERT INTO `wp_usermeta` VALUES ('22', '1', 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES ('23', '1', 'metaboxhidden_nav-menus', 'a:9:{i:0;s:31:\"add-post-type-acpt_content_type\";i:1;s:19:\"add-post-type-btxh1\";i:2;s:19:\"add-post-type-btxh2\";i:3;s:31:\"add-post-type-hcsn_dn_truonghoc\";i:4;s:19:\"add-post-type-05_06\";i:5;s:27:\"add-post-type-sdm_downloads\";i:6;s:12:\"add-post_tag\";i:7;s:18:\"add-sdm_categories\";i:8;s:12:\"add-sdm_tags\";}');
INSERT INTO `wp_usermeta` VALUES ('24', '1', 'closedpostboxes_page', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES ('25', '1', 'metaboxhidden_page', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES ('26', '1', 'closedpostboxes_post', 'a:1:{i:0;s:34:\"vsw_post_meta_video_widget_setting\";}');
INSERT INTO `wp_usermeta` VALUES ('27', '1', 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES ('28', '1', 'closedpostboxes_file_download', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES ('29', '1', 'metaboxhidden_file_download', 'a:0:{}');

-- ----------------------------
-- Table structure for `wp_users`
-- ----------------------------
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wp_users
-- ----------------------------
INSERT INTO `wp_users` VALUES ('1', 'admin', '$P$BMXujTfCOnsvQlkNJfmyff8ue37THl1', 'admin', 'cuong.dh8c@gmail.com', '', '2016-12-21 04:28:38', '', '0', 'admin');
