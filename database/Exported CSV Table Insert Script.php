<?php
$endpoint = "videogamesales.csv";
$contents = fopen($endpoint, "r");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Export CSV</title>
</head>

<body>
    <h1>Export Video Game Sales CSV</h1>

    <?php
    $row = 1;
    while (($row = fgetcsv($contents)) !== FALSE) {
        //print_r($row);

        $url = $row[0];

        if (empty($row[0])) {
            $row[0] = "<i>No rating data available</i>";
        }
        echo "<blockquote>
        <p>INSERT INTO `web_allgames` (`id`, `rank`, `name`, `platform`, `year`, `genre`, `publisher`, `nasales`, `eusales`, `jpsales`, `globalsales`) VALUES ('{$row[0]}', '{$row[1]}', '{$row[2]}', '{$row[3]}', '{$row[4]}', '{$row[5]}', '{$row[6]}', '{$row[7]}', '{$row[8]}', {$row[9]}, '{$row[10]}');</p>
        </blockquote>";
    }
    ?>
</body>

</html>