<?php

    $con = mysqli_connect("localhost", "root", "", "gameapi");

    if (!empty($_GET)){
        if (isset($_GET['result'])){
            $result = $_GET["result"];
            $challengeid = $_GET["cid"];
            $query = "SELECT result{$result} FROM challenge WHERE cid = '{$challengeid}'";
            printresult(getOneData($con, $query, "Query failed trying to get the result.")['result'.$result]);
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
    function printresult($data){
  ?>

 <div class="image-challenge">

 </div>
 <div class="challenge-content-div">
     <div class="result-div">
         <div class="result-content">
             <div class="text-center">
                 <h3 style="color: #DBD1B7;"> <b>RESULT</b> </h3>
                 <hr style="width:50%; border-top: 2px dotted  #DBD1B7;">
                 <p style="font-size: 15px; color: #000000;"><?php echo $data; ?></p>
                 <div class="continue-button">
                     <button id="success-button" type="button"  class="btn btn-primary btn-lg">Continue</button>
                 </div>
             </div>
         </div>
     </div>
 </div>
<?php } ?>
