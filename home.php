<?php
// ===== BiteSafe Starter: home.php =====
declare(strict_types=1);
require_once _DIR_ . '/init.php';
require_login();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>BiteSafe - Home</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="card">
    <h2>Welcome</h2>
    <p class="helper">You are logged in as <strong><?php echo htmlspecialchars($_SESSION['user_name']); ?></strong></p>
    <a href="logout.php" class="btn btn-primary">Logout</a>
  </div>
</body>
</html>