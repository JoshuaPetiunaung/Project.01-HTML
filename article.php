<?php
session_start();
if (!isset($_SESSION['login_user'])) {
    header("location: login.php");
    die();
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "project";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $stmt = $conn->prepare("SELECT title, content FROM articles WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $stmt->bind_result($title, $content);
    $stmt->fetch();
    $stmt->close();
} else {
    header("Location: index.html");
    exit();
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="blogs.css">
    <title><?php echo htmlspecialchars($title); ?></title>
</head>
<body>
    <header>
        <img src="—Pngtree—keyboard piano electronic piano_4519739.png" class="small-image" alt="Piano Image">
        <h1><?php echo htmlspecialchars($title); ?></h1>
    </header>
    <main>
        <article class="fade-in">
            <h2><?php echo htmlspecialchars($title); ?></h2>
            <p><?php echo $content; ?></p>
        </article>
    </main>
    <br>
    <a href="blog.php">Kembali</a>
</body>
</html>
