<?php


$servername = "localhost";
$username = "root";
$password = "Ac1213aB";
$dbname = "cr09_david_carrental";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

if(isset($_POST['submit'])) {
    $first_name2 = mysqli_real_escape_string($conn, $_POST["firstname"]);
    $last_name2 = mysqli_real_escape_string($conn, $_POST["lastname"]);
    $email2 = mysqli_real_escape_string($conn, $_POST['email']);
    $pass2 = mysqli_real_escape_string($conn, $_POST['pass']);
    $address2 = mysqli_real_escape_string($conn, $_POST['address']);
    $city2 = mysqli_real_escape_string($conn, $_POST['city']);
    $zip_code2 = mysqli_real_escape_string($conn, $_POST['zip_code']);
    $sql = "INSERT INTO customer (first_name, last_name, email, pass, address, city, zip_code)
        VALUES ('" . $first_name2 . "', '" . $last_name2 . "', '" . $email2 . "', '" . $pass2 . "', '" . $address2 . "','" . $city2 . "','" . $zip_code2 . "')";
    mysqli_query($conn, $sql);
    echo "New User created.";
}

?>