<?php

$host = "localhost";
$user = "root";
$password = "";
$databaseName = "bsis3b";

$connection = new mysqli($host, $user, $password, $databaseName);

$query= "SELECT * from account_info";
$result = mysqli_query($connection, $query);

$username = $_POST['username'];
$password = $_POST['password'];

While ($row = mysqli_fetch_array ($result)) {

    if ($username == $row['username'] && $password == $row['password']) {
       echo "<script> alert('correct')</script>";
       header('location: home.php');
    
    } else{
        echo "<script> 
        alert('Incorrect Email or Password');
        window.location='Index.php'
        </script>";
    }
}

?>