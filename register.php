<?php
require_once _DIR_ . '/init.php';

// If already logged in, redirect
if (!empty($_SESSION['user_id'])) {
    header("Location: home.php");
    exit;
}

$error = "";
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = trim($_POST['name'] ?? '');
    $email = trim($_POST['email'] ?? '');
    $password = $_POST['password'] ?? '';

if ($name && $email && $password ) {
         try {
            $hash = password_hash($password, PASSWORD_BCRYPT);
            $stmt = $pdo->prepare("INSERT INTO users (name, email, password_hash) VALUES (?, ?, ?)");
            $stmt->execute([$name, $email, $hash]);

            // Auto login after registration
            $_SESSION['user_id'] = $pdo->lastInsertId();
                secure_session_regenerate();
                header("Location: home.php");
                exit;
            } catch (PDOException $e) {
                if ($e->getCode() == 23000) { // duplicate entry
                    $error = "Email already exists.";
                } else {
                    $error = "Error: " . $e->getMessage();
            }
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
  <title>BiteSafe | Register</title>
  <link rel="stylesheet" href="style.css">
  <style>
    body{
        font-family: 'Poppins', sans-serif;
        background:url("bg1.jpeg") no-repeat center center/cover;
        height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
    }
    .main-wrapper {
display: flex;
    background: #fff;
border-radius:15px;
box-shadow: 0 10px 25px rgba(0,0,0,0.2);
overflow: hidden;
max-width: 800px;
width: 100%;
    }
.image-side {
background: url('bg.jpeg') no-repeat center center/cover;
width:50%;
min-height: 100%;
}
.container {
padding:40px;
width: 50%;
}
.container h2 {
text-align: center;
margin-bottom: 20px;
color: #333;
}
.helper{
    text-align:center;
    margin-bottom:20px;
    color:#666;
}
.form-group {
margin-bottom: 15px;
position:relative;
}
.form-group label {
display: block;
margin-bottom:5px;
font-weight: 600;
color: #444;
}
.form-group input {
width:100%;
padding:10px;
border: 1px solid #ddd;
border-radius: 8px;
outline:none;
transition: border-color 0.3s;
}
.form-group input:focus {
border-color:#2575fc;
}
.form-group button.toggle {
position: absolute;
right:10px;
top:35px;
background:transparent;
border:none;
color:#2575fc;
font-size:13px;
cursor:pointer;
}
button[type="submit"]{
width:100%;
padding:12px;
background:#2575fc;
border:none;
border-radius:8px;
color:#fff;
font-size:16px;
cursor: pointer;
transition: 0.3s;
}

button[type="submit"]:hover {
background: #1b5edb;
}
.login-link {
margin-top: 15px;
text-align: center;
}
.login-link a {
color: #2575fc;
text-decoration: none;
font-weight:600;
}
.login-link a:hover {
text-decoration: underline;
}
@media (max-width: 768px) {
.main-wrapper {
flex-direction:column;
}
.image-side {
width:100%;
height: 200px;
}
.container {
width: 100%;
}
}
</style>
</head>
<body>
  <div class="main-wrapper">
    <div class="image-side"></div>
    <div class="container">
    <h2>Register</h2>
    <p class="helper">Create an account to get started</p>
    <?php if ($error): ?>
      <p class="small" style="color:red;"><?= htmlspecialchars($error) ?></p>
    <?php endif; ?>

    <form method="post" action="">
      <div class="form-group input-wrap">
        <label for="name">Full Name</label>
        <input type="text" name="name" id="name" required>
      </div>

            <div class="form-group input-wrap">
        <label for="email">Email</label>
        <input type="email" name="email" id="email" required>
      </div>

            <div class="form-group input-wrap">
        <label for="password">Password</label>
        <input type="password" name="password" id="password" required>
        <button type="button" class="toggle" onclick="togglePassword('password', this)">Show</button>
    </div>

          <button type="submit">Register</button>
 </form>

    <div class="login-line">
      <p>Already have an account? <a href="login.php">Login</a></p>
    </div>
    </div>
    </div>
      <script>
    function togglePassword(fieldId, btn) {
      const input = document.getElementById(fieldId);
      if (input.type === 'password') {
        input.type = 'text';
        btn.textContent = 'Hide';
      } else {
        input.type = 'password';
        btn.textContent = 'Show';
      }
    }
</script>
</body>
</html>