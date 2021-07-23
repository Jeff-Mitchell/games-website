<?php
include('conn.php');
header('Content-Type: application/json');

//display all parameter
if (isset($_GET['all'])) {
    $query = "SELECT * FROM web_allgames";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//get game at rank # parameter
if (isset($_GET['rank'])) {
    $rank = $_GET['rank'];
    $query = "SELECT * FROM web_allgames WHERE id = $rank";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//get all games with year # parameter
if (isset($_GET['year'])) {
    $year = $_GET['year'];
    $query = "SELECT * FROM web_allgames WHERE year = $year";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//get top 10 games with year # parameter
if (isset($_GET['topyear'])) {
    $topyear = $_GET['topyear'];
    $query = "SELECT * FROM web_allgames WHERE year = $topyear LIMIT 10";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//get games with genre # parameter
if (isset($_GET['genre'])) {
    $genre = $_GET['genre'];
    $query = "SELECT * FROM web_allgames WHERE genre = '$genre'";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//gets top # games parameter
if (isset($_GET['top'])) {
    $top = $_GET['top'];
    $query = "SELECT * FROM web_allgames WHERE id <= $top";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns all games with eu sales greater than parameter
if (isset($_GET['eusales'])) {
    $eusales = $_GET['eusales'];
    $query = "SELECT * FROM web_allgames WHERE eusales >= $eusales";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns all games with na sales greater than parameter
if (isset($_GET['nasales'])) {
    $nasales = $_GET['nasales'];
    $query = "SELECT * FROM web_allgames WHERE nasales >= $nasales";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns all games with jp sales greater than parameter
if (isset($_GET['jpsales'])) {
    $jpsales = $_GET['jpsales'];
    $query = "SELECT * FROM web_allgames WHERE jpsales >= $jpsales";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns all games with global sales greater than parameter
if (isset($_GET['globalsales'])) {
    $globalsales = $_GET['globalsales'];
    $query = "SELECT * FROM web_allgames WHERE globalsales >= $globalsales";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns all platforms parameter
if (isset($_GET['platforms'])) {
    $platforms = $_GET['platforms'];
    $query = "SELECT * FROM web_topplatforms";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns all publishers parameter
if (isset($_GET['publishers'])) {
    $publishers = $_GET['publishers'];
    $query = "SELECT * FROM web_toppublishers";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns top 20 games ordered by na sales parameter
if (isset($_GET['topnasales'])) {
    $topnasales = $_GET['topnasales'];
    $query = "SELECT * FROM web_allgames ORDER BY web_allgames.nasales DESC LIMIT 20";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns top 20 games ordered by eu sales parameter
if (isset($_GET['topeusales'])) {
    $topeusales = $_GET['topeusales'];
    $query = "SELECT * FROM web_allgames ORDER BY web_allgames.eusales DESC LIMIT 20";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns top 20 games ordered by jp sales parameter
if (isset($_GET['topjpsales'])) {
    $topjpsales = $_GET['topjpsales'];
    $query = "SELECT * FROM web_allgames ORDER BY web_allgames.jpsales DESC LIMIT 20";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//returns top 20 games ordered by global sales parameter
if (isset($_GET['topglobalsales'])) {
    $topglobalsales = $_GET['topglobalsales'];
    $query = "SELECT * FROM web_allgames ORDER BY web_allgames.globalsales DESC LIMIT 20";
    $result = $conn->query($query);
    $dataset = array();
    while ($row = $result->fetch_assoc()) {
        $dataset[] = $row;
    }
    echo json_encode($dataset);
}

//delete game at id # parameter
if (isset($_GET['delete'])) {
    $delete = $_GET['delete'];
    $query = "DELETE FROM web_allgames WHERE id = $delete";
    $result = $conn->query($query);
    echo "Deleted Game With ID = $delete";
}

//add new game using api in the form: "rank+name+platform+year+genre+publisher+nasales+eusales+jpsales+globalsales"
if (isset($_GET['newgame'])) {
    $newgame = $_GET['newgame'];
    $game = preg_split("/[\s]+/", $newgame);

    $rank = $game[0];
    $name = $game[1];
    $platform = $game[2];
    $year = $game[3];
    $genre = $game[4];
    $publisher = $game[5];
    $nasales = $game[6];
    $eusales = $game[7];
    $jpsales = $game[8];
    $globalsales = $game[9];

    $query = "INSERT INTO `web_allgames` (`rank`, `name`, `platform`, `year`, `genre`, `publisher`, `nasales`, `eusales`, `jpsales`, `globalsales`) VALUES ('$rank', '$name', '$platform', '$year', '$genre', '$publisher', '$nasales', '$eusales', '$jpsales', '$globalsales')";
    $result = $conn->query($query);
    echo "Added New Game: $name to the database";
}
