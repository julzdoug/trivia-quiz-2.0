<?php
// building a connection to my SQL database using PDO Object
//Data according Docker-compose File

//connect to mySql using PHP PDO Object
$dbHost = getenv('DB_HOST');
$dbName = getenv('DB_NAME');
$dbUser = getenv('DB_USER');
$dbPassword = getenv('DB_PASSWORD');


$dbConnection = new PDO("mysql:host=$dbHost;dbname=$dbName",$dbUser,$dbPassword);

// error mode
$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// Query FUNCTIONS ---------------------------------------------------------------



function fetchQuestionByID($id, $dbConnection) {

    $sqlStatement = $dbConnection->query("SELECT * FROM `questions` WHERE `id` = $id");
    $row = $sqlStatement->fetch(PDO::FETCH_ASSOC);
    
    return $row; // schould show a table row with data to a specific question back

}
;
function fetchquestionIDSequence($topic, $questionNum, $dbConnection)
{
    $query = "SELECT `id` FROM `questions` WHERE `topic`='$topic' ORDER BY RAND() LIMIT $questionNum";
    $sqlStatement = $dbConnection->query($query);
    $row = $sqlStatement->fetchAll(PDO::FETCH_COLUMN, 0);

    return $row; // schould show a table row with data to a specific question back

}
;



?>
