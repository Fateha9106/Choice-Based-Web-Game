<?php

    $dbcon = mysqli_connect("localhost", "root", "", "gameapi");

    if (!empty($_GET)){
        if (isset($_GET['next'])){
            if ($_GET['next'] == 'true'){
                $challengeid = $_GET['nextid'];
                $query = "SELECT * FROM challenge WHERE cid = '{$challengeid}'";
                $challengedata = getOneData($dbcon, $query, "Query failed trying to fetch next challenge data.");
                // echo $jsondata=json_encode($data);
                printchallenge($challengedata);
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


<?php
    function printchallenge($data){
?>

    <h3 style="color: #DBD1B7;"><?php echo $data["title"]; ?></h3>
    <hr style="width:50%; border-top: 2px dotted  #DBD1B7;">
    <p style="font-size: 15px; color: #DBD1B7;"><?php echo $data['description']; ?></p>
    <h4 style="color: #DBD1B7;">WHAT DO YOU WANT TO DO?</h4>

    <div class="option">
        <?php
            $no_option = $data["option_no"];
            for ($i = 1; $i <= $no_option; $i++){
         ?>
         <div class="option1">
            <h3 id="<?php echo "option" ?>" ><?php echo $data["option".$i]; ?></h3>
        </div>
        <?php } ?>
    </div>
<?php
    }
 ?>
