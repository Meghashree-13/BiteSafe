<?php
//include database connection
include 'db.php';
if($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect form inputs
    $name = mysqli_real_escape_string($conn, $_POST['name']);   // username
    $email = mysqli_real_escape_string($conn, $_POST['email']); // email
    $password = mysqli_real_escape_string($conn, $_POST['password']); // password

    // Hash the password for security
    $hashedPassword = password_hash($password, PASSWORD_BCRYPT);

    // Insert into database (note: username not name)
    $sql = "INSERT INTO users (username, email, password) 
            VALUES ('$name', '$email', '$hashedPassword')";

    if (mysqli_query($conn, $sql)) {
        echo "✅ Registration successful! <a href='login.html'>Login here</a>";
    } else {
        echo "❌ Error: " . mysqli_error($conn);
    }

    mysqli_close($conn);
}
?>