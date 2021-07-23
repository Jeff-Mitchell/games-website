<?php
    $passw = "hp2B3G4JMnLbTtyp";        
    $username = "jmitchell25";
    $db = "jmitchell25";
    $host = "lamp-19.eeecs.qub.ac.uk";

    $conn = new mysqli($host, $username, $passw, $db);

    if($conn->connect_error){
        echo "not connected".$conn->connect_error;
    }else{
        //echo "connection to DB found.";
    }
?>