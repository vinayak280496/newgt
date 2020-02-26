<?php 
    $servername = "localhost";
$username = "root";
$password = "Vinu@123";
$dbname = "demo";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

    $rows=  mysqli_query($con, "select * from new");
?>


<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
* {
box-sizing: border-box;
}
body {
font-family: Roboto, Helvetica, sans-serif;
}
}
</style>
</head>
<body>

<h2>Employee Details</h2>
<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Address</th>
    <th>Department</th>
    <th>Salary</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>

  
   <?php
    while($rows = mysql_fetch_array($con))
        {
?>
<table class='display'>
    <tr>
      <td><b><?php echo $rows['id'] ?></td>
    <td><b><?php echo $rows['name'] ?></td>
    <td><b><?php echo $rows['address'] ?></td>
    <td><b><?php echo $rows['dept'] ?></td>
    <td><b><?php echo $rows['salary'] ?></td>
      <input type="button" id="edit_button1" value="Edit" class="edit" onclick="#">
      <input type="button" id="edit_button1" value="Delete" class="delete" onclick="#">
    </tr>
    </table>

    <?php
        }
    ?>
</table>
</body>
</html>

$conn->close();
?> 
