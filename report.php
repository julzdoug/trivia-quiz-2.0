<?php
session_start();
include "includes/data-collector.php";
?>
<?php

$totalPoints = 0;

foreach ($_SESSION as $name => $value) {
    if (str_contains($name, 'question-')) {
        if (isset($value["single-choice"])) {
            $points = intval($value["single-choice"]);
            $totalPoints = $totalPoints + $points;
        }
    }
}

$maxPoints = $_SESSION["quiz"]["questionNum"];

?>
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
    <div class="container d-flex justify-content-center align-items-md-center mt-5 mb-5 ">
        <div class="row">
            <?php include "includes/picturemain.php" ?>
            <div class="col-sm-4 mt-3">
                <?php echo $totalPoints; ?><br>
                out of possible
                <div class="col-sm-4 col mt-3">
                    <?php echo $maxPoints; ?> points
                </div>
            </div>
        </div>
        <div class="container d-flex justify-content-center align-items-md-center mt-5 mb-5 ">
            <div class="d-flex align-items-center pt-3">
                <div class="ml-auto mr-sm-5">
                    <a class="btn btn-primary" href="index.php" role="button">New Quiz</a>
                </div>
            </div>
        </div>
    </div>
    <?php include "includes/footer.php" ?>
</body>

</html>