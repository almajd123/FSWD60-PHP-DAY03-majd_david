<?php
class connect
{
    public function connect_db($srv_n, $usr_n, $pass, $db_n)
{
  $conn = mysqli_connect($srv_n, $usr_n, $pass, $db_n);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    return "Connected successfully \n";

}
}
class form
{
    public function if_isset($btn, $do)
    {
        if(isset($_POST['$btn'])) {
            $do;
            }

    }
    public function insert_db($table_n, $a )
    {
        if ($a == 0){
            $sql = "INSERT INTO $table_n (first_name, last_name, email, pass, address, city, zip_code)
            VALUES ('" . $first_name2 . "', '" . $last_name2 . "', '" . $email2 . "', '" . $pass2 . "', '" . $address2 . "','" . $city2 . "','" . $zip_code2 . "')";
            mysqli_query($conn, $sql);
            echo "New User created.";
        }

    }
}

$myconnection = new connect();
$myconnection->connect_db(localhost,root,Ac1213aB, cr09_david_carrental)
?>