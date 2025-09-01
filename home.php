<?php
session_start();
if (!isset($_SESSION['user'])) {
    header("Location: login.html");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>BiteSafe | Home</title>
</head>
<body>
    <h1>Welcome, <?php echo $_SESSION['user']; ?>!</h1>
    <p>This website provides information about insect bite awareness.</p>
    <a href="insects.php">View Insects Info</a> | 
    <a href="logout.php">Logout</a>
</body>
</html>