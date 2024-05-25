<?php
session_start();

if (isset($_SESSION['login_user'])) {
    header("location: index.html");
    exit;
}

$error = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include "config.php";

    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $check_username_query = "SELECT * FROM users WHERE username='$username'";
    $check_username_result = mysqli_query($db, $check_username_query);

    $check_email_query = "SELECT * FROM users WHERE email='$email'";
    $check_email_result = mysqli_query($db, $check_email_query);

    if (mysqli_num_rows($check_username_result) > 0 && mysqli_num_rows($check_email_result) > 0) {
        $error = "Email dan Username ini sudah digunakan!";
    } elseif (mysqli_num_rows($check_username_result) > 0) {
        $error = "Username ini sudah digunakan!";
    } elseif (mysqli_num_rows($check_email_result) > 0) {
        $error = "Email ini sudah digunakan!";
    } else {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        $sql = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$hashed_password')";
        $result = mysqli_query($db, $sql);

        if ($result) {
            header("location: login.php");
            exit;
        } else {
            $error = "Gagal melakukan registrasi. Silakan coba lagi.";
        }
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="loreg.css">
    <script src="register.js" defer></script>
</head>
<body>
<div class="register-container">
    <h2>Register</h2>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="form-group">
            <label>Username</label>
            <input type="text" name="username" required>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" required>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" required>
        </div>
        <div class="form-group">
            <button type="submit">Register</button>
        </div>
        <?php
        if (isset($error)) {
            echo '<div class="error-message">' . $error . '</div>';
        }
        ?>
    </form>
    <p>Sudah punya akun? <a href="login.php">Login disini</a>.</p>
</div>
</body>
</html>