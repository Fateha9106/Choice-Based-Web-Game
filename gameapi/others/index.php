<?php

    if (!empty($_GET)){
        if (isset($_GET['type'])){
            if ($_GET['type'] == 'lostjob'){
                jobstrike();
            }
        }
    }

 ?>

 <?php
    function jobstrike (){
 ?>

 <div class="result-div" style="background-color: red;">
     <div class="result-content">
         <div class="text-center">
             <h3 style="color: #DBD1B7;"> <b>Lost Job</b> </h3>
             <hr style="width:50%; border-top: 2px dotted  #DBD1B7;">
             <p style="font-size: 15px; color: #000000;">Losing a job is pretty much losing everything for a independnet fresh graduate.
                 Anyways better luck next time.
            </p>
             <div class="continue-button">
                 <button id="dismiss-button" type="button"  class="btn btn-primary btn-lg">Continue</button>
             </div>
         </div>
     </div>
 </div>

<?php } ?>
