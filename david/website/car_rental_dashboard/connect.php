<!DOCTYPE html>
<html lang="en">
<!-- bootstrap -->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<head>
    <meta charset="UTF-8">
    <title>Classwork_PHP_DAY03</title>
    <!-- metatags -->
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
    <meta name="author" content="KarlBockerer">
</head>
<body>
<?php

class MySQL
{
    public function connected($host, $username, $password, $db_name)
    {
        $conn = mysqli_connect($host, $username, $password, $db_name)
                 or die("Couldn't connect");
        return $conn;
    }
    public function run_query($set_table_name,$conn)
    {
        $query =mysqli_query($conn,'SELECT * FROM '.$set_table_name);
        if(!$query){
            echo "Query error";
        }
        return $query;
    }
    public function fetch_a($run_query)
    {
        $rq = $run_query->fetch_all(MYSQLI_ASSOC);
        if(!$rq){
            echo "fetch error";
        }
        return $rq;

    }
    public function fetch_r($run_query)
    {
        $rq = mysqli_fetch_assoc($run_query);
        if(!$rq){
            echo "fetch error";
        }
        return $rq;

    }
    public function foreach($fetch, $colum)
    {
        echo "<form method='post' action='connect.php'>";
        echo "<table class=\"table\">";
        echo   "<tr>";
        $x = count($colum);
        for ($i = 0; $i < $x; $i++) {
            echo "<th scope='col-span'>$colum[$i]</th>";
        }
        echo "<th scope='col'>Edit</th>";
        echo "<th scope='col'>Delete</th>";


        echo "</tr>";
        foreach ($fetch as $row) {
            $s = count($colum);
            echo "<tr>";
            for ($i = 0; $i < $s; $i++) {

                echo "<td>" . $row['' . $colum[$i] . ''] . "</td>";
            }
            echo "<td><input value='Edit' type='submit' name='edit' class='btn btn-light'></td>";
            echo "<td><input value='Delete' type='submit' name='delete' class='btn btn-light'></td>";

            echo "</tr>";
        }
        echo "</table>";
        echo "</form>";
        if (isset($_POST['edit'])) {
            echo "hahaha";

        }
    }

}

$connect = new MySQL();
$conn= $connect->connected('localhost','root', 'Ac1213aB','cr09_david_carrental');
$query = $connect->run_query('customer', $conn);
$fetch = $connect->fetch_a($query);

$array = array('first_name','last_name', 'email','address','city');


$connect->foreach($fetch, $array);



?>

</body>
</html>