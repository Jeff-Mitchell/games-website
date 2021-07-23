<?php
header('Content-Type: application/json');

if (isset($_GET['auth'])) {
    include('conn.php');
    $apikey = $_GET['auth'];
    $checkapi = "SELECT * FROM api_auth WHERE api='$apikey'";
    $result = $conn->query($checkapi);

    $numofrows = $result->num_rows;
    if ($numofrows > 0) {
        include('apifunctions.php');
    } else {
        echo 'API key not valid';
    }
} else {
    echo 'Invalid request, query parameter needed';
}