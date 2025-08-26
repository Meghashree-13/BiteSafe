<?php
// ===== BiteSafe Starter: config.sample.php =====
$CONFIG = [
  'DB_HOST' => 'sqlXXX.epizy.com',         
  'DB_NAME' => 'epiz_XXXXXXXX_bitesafe',   
  'DB_USER' => 'epiz_XXXXXXXX',            
  'DB_PASS' => 'REPLACE_WITH_DB_PASSWORD',
  'display_errors' => false,              
  ];

  if ($CONFIG['display_errors']) {
  ini_set('display_errors', 1);
  ini_set('display_startup_errors', 1);
  error_reporting(E_ALL);
} else {
  ini_set('display_errors', 0);
      error_reporting(0);
}
