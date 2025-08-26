<?php
// ===== BiteSafe Starter: init.php =====
declare(strict_types=1);
session_start();
require_once _DIR_ . '/config.php';

try {
  $dsn = "mysql:host={$CONFIG['DB_HOST']};dbname={$CONFIG['DB_NAME']};charset=utf8mb4";
  $pdo = new PDO($dsn, $CONFIG['DB_USER'], $CONFIG['DB_PASS'], [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
  ]);
}
 catch (Throwable $e) {
  http_response_code(500);
  echo "<h1>Database connection failed</h1>";
  echo "<p>Please check config.php (host, name, user, pass).</p>";
exit;
 }

 function require_login(): void {
  if (empty($_SESSION['user_id'])) {
    header('Location: /login.php');
exit;
  }
}

function secure_session_regenerate(): void {
  if (session_status() === PHP_SESSION_ACTIVE) {
    session_regenerate_id(true);
  }
}