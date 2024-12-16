# Heroku Reverse Proxy with Caddy
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)



for wordpress reverse proxy, open your wp-config.php. after PHP tag opening at the beginning of the file, add these lines of code:
````
<?php
// Proxy Configuration
define('PROXY_DOMAIN', 'wahidin-proxy.herokuapp.com'); // Update with your proxy domain (no http/s or trailing slash)

// Server and Cookie Settings
define('COOKIE_DOMAIN', PROXY_DOMAIN);
define('SITECOOKIEPATH', '.');

// Handle Forwarded IP
if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    $_SERVER['REMOTE_ADDR'] = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR'])[0];
}

// Override Server Variables
$_SERVER['HTTP_HOST'] = PROXY_DOMAIN;
$_SERVER['REMOTE_ADDR'] = 'https://' . PROXY_DOMAIN;
$_SERVER['SERVER_ADDR'] = PROXY_DOMAIN;

// Set HTTPS if Forwarded Proto is HTTPS
if ($_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https') {
    $_SERVER['HTTPS'] = 'on';
}

// WordPress URL Configuration
define('WP_HOME', 'https://' . PROXY_DOMAIN);
define('WP_SITEURL', 'https://' . PROXY_DOMAIN);
````
