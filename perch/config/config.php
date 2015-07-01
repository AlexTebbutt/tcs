<?php
    define('PERCH_LICENSE_KEY', 'P21501-GQR823-AYC613-SNY586-QWU027');

    define("PERCH_DB_USERNAME", 'tcs_rebuild');
    define("PERCH_DB_PASSWORD", 'cookiemonster');
    define("PERCH_DB_SERVER", "localhost");
    define("PERCH_DB_DATABASE", "tcs_rebuild");
    define("PERCH_DB_PREFIX", "perch2_");
    
    define('PERCH_TZ', 'UTC');

    define('PERCH_EMAIL_FROM', 'alex@ifnotwhynot.com');
    define('PERCH_EMAIL_FROM_NAME', 'Alex Tebbutt');

    define('PERCH_LOGINPATH', '/perch');
    define('PERCH_PATH', str_replace(DIRECTORY_SEPARATOR.'config', '', __DIR__));
    define('PERCH_CORE', PERCH_PATH.DIRECTORY_SEPARATOR.'core');

    define('PERCH_RESFILEPATH', PERCH_PATH . DIRECTORY_SEPARATOR . 'resources');
    define('PERCH_RESPATH', PERCH_LOGINPATH . '/resources');
    
    define('PERCH_HTML5', true);