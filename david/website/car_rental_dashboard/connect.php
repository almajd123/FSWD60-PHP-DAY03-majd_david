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
        echo "<table style=\"width:100%\">";
        echo   "<tr>";
        $x = count($colum);
        for ($i = 0; $i < $x; $i++) {
            echo "<th>'$colum[$i]'</th>";
        }
        echo "</tr>";
        foreach ($fetch as $row) {
            $s = count($colum);
            echo "<tr>";
            for ($i = 0; $i < $s; $i++) {

                echo "<td>" . $row['' . $colum[$i] . ''] . "</td>";
            }
            echo "</tr>";
        }
        echo "</table>";
    }

}

$connect = new MySQL();
$conn= $connect->connected('localhost','root', 'Ac1213aB','cr09_david_carrental');
$query = $connect->run_query('customer', $conn);
$fetch = $connect->fetch_a($query);

$array = array('first_name','last_name', 'email','address','city');


$connect->foreach($fetch, $array);









?>

