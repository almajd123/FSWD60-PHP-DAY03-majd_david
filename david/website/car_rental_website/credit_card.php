<!DOCTYPE html>
<html lang="en">
<head>
<?php include 'insertdb.php';
?>
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
    <a class="navbar-brand text-primary" href="insertdb.php">register<i class="" aria-hidden="true"></i>Car 2 Fun</a>
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link btn-dark text-primary " href="login.php">Login</a>
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
<br/>
<div class="jumbotron" id="main">
<h2 class="text-primary">Customer Details:</h2><br/>
    <form action="register.php" method="POST">
        <div class="row">
            <div class="col" align="right" >
                <label id="city-label">Creditcard Number:</label>
            </div>
            <div class="col" align="left">
                <input type="text" name="credit_card_nr" required placeholder="eg. 1234 2123 2132 2133">
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col" align="right" >
                <label id="city-label">Expire Date:</label>
            </div>
            <div class="col" align="left">
                <input type="text" name="expire_date"  required placeholder="eg. Bockerer">
            </div>
        </div>
        <br/>


        <input type="submit" name="submit" value="SUBMIT">
    </form>
   </div>
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