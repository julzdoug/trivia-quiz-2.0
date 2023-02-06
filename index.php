<?php session_start(); ?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trivia Quiz</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>

<body class="bg-success stay" style="--bs-bg-opacity: .5;">
    <?php include "includes/header.php" ?>
    <div class="container d-flex justify-content-center mt-5 mb-5">
        <div class="row">
            <div class="col">
                <?php include "includes/video.php" ?>
                <div class="col-sm-4 col mt-3">
                    <?php include "includes/maindd.php" ?>
                </div>
            </div>
        </div>
    </div>
    <?php include "includes/footer.php" ?>
</body>
</html>