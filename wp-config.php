<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'doanso');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '_ww6{$QT-+o}I/T}-$f7=1;NY+wr582%|,5Zn|EcGntdR@-9qDacwc_&RyB$NHf*');
define('SECURE_AUTH_KEY',  'ozVcPVH5np9+n*<mUWGy(H=ut[yMp<qI31H[9Br]>{4A3C^KF;K~q/V&[xf;tPC<');
define('LOGGED_IN_KEY',    'a{@rA!^Ybfog]6yKyK!y bb4gxtR*+O&&=iH!qgjlC>#d{!,rj@>yjEBZFW)~%wl');
define('NONCE_KEY',        '_j &<p`mlaN{=-v%grN7+A4`*T?WG=50Y-%^MF=DH9i7/.HY.7Atty~-spHV7D*9');
define('AUTH_SALT',        'j95>/fRb3A0Q%]P-~:wQR6wDr>h6VlT`F1;>J(kT4i&>BR:pkbj(sbNh_R2#lV<n');
define('SECURE_AUTH_SALT', '@H]_:h*K^P@oX|kG[JU[p;(.<@|e/?7CU;h|74+HujtB.dbL~UR/Y[$AZ8D1#zBb');
define('LOGGED_IN_SALT',   'N:+]>c)p0n9vEjbCy~Z@/Z17_3~`vr46eBlM|Qgwq-H;`1V6`wDL=okq3?Z9AuTj');
define('NONCE_SALT',       '0jM(  ~q?@86uFst^[RyA+%+(y?n<I]KLz0#k~]~{j75e9l6d;5$j(b@p}Xo+M#$');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
