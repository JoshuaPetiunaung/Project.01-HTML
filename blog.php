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

$sql = "SELECT id, title, excerpt FROM articles";
$result = $conn->query($sql);

$articles = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $articles[] = $row;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="blogs.css">
    <title>Blog</title>
</head>
<body>
    <header>
        <img src="—Pngtree—keyboard piano electronic piano_4519739.png" class="small-image" alt="Piano Image">
        <h1>BLOG</h1>
    </header>
    <main>
        <div class="articles-container">
            <?php foreach ($articles as $article): ?>
                <div class="article-box">
                    <h2><?php echo htmlspecialchars($article['title']); ?></h2>
                    <p><?php echo htmlspecialchars($article['excerpt']); ?></p>
                    <div class="read-more-container">
                        <a href="article.php?id=<?php echo $article['id']; ?>" class="read-more">Read More</a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </main>
    <footer>
        <p class="footer-text">Created by: JoshuaPetiunaung</p>
        <a href="index.html">Kembali</a>
    </footer>
</body>
</html>
