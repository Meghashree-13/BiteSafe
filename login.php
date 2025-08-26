<?php
require_once _DIR_ . '/init.php';
// If already logged in, redirect to home
if (!empty($_SESSION['user_id'])) {
    header("Location: home.php");
    exit;
}

$error = "";
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = trim($_POST['email'] ?? '');
    $password = $_POST['password'] ?? '';

    if ($email && $password) {
        $stmt = $pdo->prepare("SELECT id, password_hash FROM users WHERE email = ?");
        $stmt->execute([$email]);
        $user = $stmt->fetch();

    if ($user && password_verify($password, $user['password_hash'])) {
        $_SESSION['user_id'] = $user['id'];
            secure_session_regenerate();
            header("Location: home.php");
exit;
    }else {
            $error = "Invalid email or password.";
    }
    } else {
        $error = "Please fill all fields.";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BiteSafe | Login</title>
  <link rel="stylesheet" href="style.css">
<style>
    body {
      background: url('bg1.jpeg') no-repeat center center/cover;
      height: 100vh;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: Arial, sans-serif;
}
    .card {
      background: rgba(255,255,255,0.9);
      padding: 2rem;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.2);
      width: 300px;
    }
   .form-group {
      margin-bottom: 1rem;
   }
       label {
      display: block;
      margin-bottom: 0.5rem;
      font-weight: bold;
       }
           input {
      width: 100%;
      padding: 0.5rem;
      border: 1px solid #ccc;
      border-radius: 6px;
           }
       .btn {
      width: 100%;
      padding: 0.75rem;
      background: #007bff;
      border: none;
      color: white;
      border-radius: 6px;
      cursor: pointer;
       }
    .btn:hover {
      background: #0056b3;
    }
    .linkline {
      margin-top: 1rem;
      text-align: center;
    }
    .toggle {
      margin-top: 0.5rem;
      font-size: 0.9rem;

      cursor: pointer;
      background: none;
      border: none;
      color: #007bff;
    }
    .error {
      color: red;
      font-size: 0.9rem;
      margin-bottom: 1rem;
    }
  </style>
</head>
<body>
  <main class="card">
    <h2>Welcome back</h2>
    <p class="helper">Log in to continue BiteSafe</p>

    <?php if ($error): ?>
      <p class="error"><?= htmlspecialchars($error) ?></p>
    <?php endif; ?>

    <form action="login.php" method="POST" id="loginForm" novalidate>
      <div class="form-group">
        <label for="login_email">Email</label>
        <input id="login_email" name="email" type="email" placeholder="Enter your email" required />
      </div>

      <div class="form-group">
        <label for="login_password">Password</label>
        <div class="input-wrap">
          <input id="login_password" name="password" type="password" placeholder="Your password" required minlength="6" />
          <button type="button" class="toggle" id="toggleLoginPwd">Show</button>
        </div>
      </div>

      <button class="btn btn-primary" type="submit">Log In</button>
      <div class="linkline">New here? <a href="register.php">Create an account</a></div>
    </form>
  </main>

  <script>
    // Show/Hide password
    const lp = document.getElementById('login_password');
    const toggleBtn = document.getElementById('toggleLoginPwd');
    toggleBtn.onclick = () => {
      if (lp.type === 'password') {
        lp.type = 'text';
        toggleBtn.textContent = 'Hide';
      } else {
        lp.type = 'password';
        toggleBtn.textContent = 'Show';
      }
    };
  </script>
</body>
</html>
