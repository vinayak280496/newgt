<?php 
include "conn.php";

$id = $_POST['employee_id'];

if($_POST["employee_id"] > 0){


  $checkRecord = mysqli_query($con,"SELECT * FROM posts WHERE id= '" . $_POST["employee_id"] . "'");
  $totalrows = mysqli_num_rows($checkRecord);

  if($totalrows > 0){
    
    $query = "DELETE FROM posts WHERE id= '" . $_POST["employee_id"] . "'";
    mysqli_query($con,$query);
    echo 1;
    exit;
  }
}

echo 0;
exit;