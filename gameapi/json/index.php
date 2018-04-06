<?php
    header("Content-Type: application/json", true);
    $dbcon = mysqli_connect("localhost", "root", "", "gameapi");

    if (!empty($_GET)){
        if (isset($_GET['next'])){
            if ($_GET['next'] == 'true'){
                $challengeid = $_GET['nextid'];
                $query = "SELECT * FROM challenge WHERE cid = '{$challengeid}'";
                $challengedata = getOneData($dbcon, $query, "Query failed trying to fetch next challenge data.");
                echo $jsondata=json_encode($challengedata);
                // printchallenge($challengedata);
            }
        }
    }

    function getData($con, $query, $warning){
        $temp = mysqli_query($con, $query);
        if (!$temp){
            die($warning);
        }
        return $temp;
    }

    function getOneData($con, $query, $warning){
        $data = getData($con, $query, $warning);
        return mysqli_fetch_assoc($data);
    }

    function runquery($con, $query, $warning){
        $temp = mysqli_query($con, $query);
        if (!$temp){
            die($warning);
        }
    }

 ?>
