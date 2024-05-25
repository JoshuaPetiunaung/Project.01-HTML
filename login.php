<?php
session_start();

if (isset($_SESSION['login_user'])) {
    header("location: index.html");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include "config.php";

    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT id, password FROM users WHERE username = '$username'";
    $result = mysqli_query($db, $sql);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    $count = mysqli_num_rows($result);

    if ($count == 1 && password_verify($password, $row['password'])) {
        $_SESSION['login_user'] = $username;
        header("location: index.html");
        exit;
    } else {
        $error = "Nama pengguna atau kata sandi salah.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="loreg.css">
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="form-group">
            <label>Username</label>
            <input type="text" name="username" required>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" required>
        </div>
        <div class="form-group">
            <button type="submit">Login</button>
        </div>
        <?php
        if (isset($error)) {
            echo '<div class="error-message">' . $error . '</div>';
        }
        ?>
    </form>
    <p>Belum punya akun? <a href="register.php">Daftar disini</a>.</p>
</div>
</body>
</html>
