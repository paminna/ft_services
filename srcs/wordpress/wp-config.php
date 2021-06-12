<?php

/** Имя базы данных для WordPress */
define( 'DB_NAME', 'Wordpress' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'user' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '123' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'mysql-svc:3306' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

define( 'AUTH_KEY',         ',W-jjwZi,@Is?7hs1gl=3LhPTfh&;$m5' );
define( 'SECURE_AUTH_KEY',  '6N9%W9l8rE№.1;G76eBD73jjm!i+%!p3' );
define( 'LOGGED_IN_KEY',    '&I1ROFOhME=1r2s:4KNLVxf=^UgjyX__' );
define( 'NONCE_KEY',        '#T=2,D,H*Rvb62E3SK=s38;9*?gMdrXm' );
define( 'AUTH_SALT',        'Gs&of&oL*96eKB6R7PWJ,bgysm!!!TP?' );
define( 'SECURE_AUTH_SALT', 'g#svSp|IsNRH=eN3A|i=1C63l$&s&XB9' );
define( 'LOGGED_IN_SALT',   'gs#s1aey,tdAF9?xHjma:175|LoIq16,' );
define( 'NONCE_SALT',       '5;an_D530m:LCbU99./.@D|z,n=z!Q!5' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';