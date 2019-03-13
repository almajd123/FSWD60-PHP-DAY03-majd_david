<!DOCTYPE html>
<html lang="en">
<head>

    <title>Car rental Service</title>

    <!-- metatags -->
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
    <meta name="author" content="KarlBockerer">
    <!-- css style sheet -->
    <link rel="stylesheet" type="text/css" href="style.css">
    <!-- google fonts-->
   <link href="https://fonts.googleapis.com/css?family=Roboto+Mono" rel="stylesheet"> 
    <!-- bootstrap -->
     <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>
<body class="bg-dark">
<nav id="nav-bar" class="navbar navbar-dark bg-dark sticky-top">
    <a class="navbar-brand text-primary" href="index.php"><i class="" aria-hidden="true"></i>Car 2 Fun</a>
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link btn-dark text-primary" href="login.php">Login</a>
        </li>
        <li class="nav-item">
            <a class="nav-link btn-dark text-primary" href="rent.php">Rent</a>
        </li>
        <li class="nav-item">
            <a class="nav-link btn-dark text-primary" href="register.php">Register</a>
        </li>
    </ul>
</nav>
<div class="container">
  <h1 class="text-primary" id="title">Rent a Car</h1>
  <p id="description"  >Please fill out the form below to enquire about renting a Car.</p>
</br>
<div class="jumbotron" id="main">

        
    <h2 class="text-primary">Rent Details:</h2>
    <p id="details">Please specify a Car at a pickup Location and a pickup Datetime.</p></br>
      <div class="row">
        <div class="col" align="right">
       <label for="completion">Your Car at Location:</label>
        </div>
        <div class="col" align="left" required id="dropdown">
            <select required name="completion"  >

                <?php
                $dbhost = 'localhost';
                $dbuser = 'root';
                $dbpass = 'Ac1213aB';
                $dbname = 'cr09_david_carrental';
                $conn = @mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);


                $sql = 'select cars.license_pl_nr, car_details.model_name, car_details.brand, car_details.color, car_details.ps,
                                                         car_details.build_year, car_details.purchase_date, agencys.name, agencys.address, agencys.city, agencys.zip_code 
                                                    from cars
                                                    inner join car_details on cars.fk_car_de_id = car_details.car_de_id
                                                    inner join cars_parked on cars.car_id = cars_parked.fk_car_id
                                                    inner join agencys on cars_parked.fk_age_id = agencys.age_id
                                                    union
                                                    select cars.license_pl_nr, car_details.model_name, car_details.brand, car_details.color, car_details.ps,
                                                           car_details.build_year, car_details.purchase_date, agencys.name, agencys.address, agencys.city, agencys.zip_code
                                                    from cars_parked
                                                    inner join agencys on cars_parked.fk_age_id = agencys.age_id
                                                    inner join cars on cars_parked.fk_car_id = cars.car_id
                                                    inner join car_details on cars.fk_car_de_id = car_details.car_de_id';
                $query = mysqli_query($conn, $sql);
                $result = $query->fetch_all(MYSQLI_ASSOC);

                foreach ($result as $row){
                    echo "<option>" . $row['license_pl_nr']. " ".$row['model_name']." ".$row['brand'].
                        " ".$row['color']." ".$row['name']." ".$row['address'].
                        " ".$row['city']." ".$row['zip_code']."</option>";
                }
?>

            </select> 
        </div>
      </div>
    </br>
      
     <div class="row">
        <div class="col" align="right">
          <label for="pickup_datetime" id="number-label">Your Pickup Datetime:</label>
        </div>
        <div class="col" align="left">
           <input type="text" name="pickup_datetime"  id="pickup_datetime" required placeholder="eg. 2019/07/19 14:30 " >
        </div>
      </div>
    </br>

        <input type="submit" value="Submit" id="submit">
  </div>
</form>

</body>
 <footer>
    <div id="by">
    <div class="container text-primary"><p style="font-size: 120%">Coded by Karl Bockerer</p>
      <a href="https://github.com/kbockerer" target="_blank" class="footer-link">
        <i class="fa fa-github fa-2x" aria-hidden="true"></i></a>
    </div>
</div>
  </footer>
</html>