<?
//die($url_array);
define('SITE_ROOT', "..");
define('WWW_ROOT', SITE_ROOT . '/public');

define('DATA_DIR', SITE_ROOT . '/data');
define('LIB_DIR', SITE_ROOT . '/engine');
define('TPL_DIR', SITE_ROOT . '/templates');

define('ERROR_NOT_FOUND', 1);
define('ERROR_TEMPLATE_EMPTY', 2);

/* DB config */
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DB', 'home');

define('IMAGE_DIR',  '/img');
define('ICON_DIR',  IMAGE_DIR . '/icon');

define('SITE_TITLE', 'Урок 5');

require_once(LIB_DIR . '/functions.php');
require_once(LIB_DIR . '/db.php');
require_once(LIB_DIR . '/core.php');
require_once(LIB_DIR . '/log.php');