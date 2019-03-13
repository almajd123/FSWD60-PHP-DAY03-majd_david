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
  <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Sign In</h5>
            <form class="form-signin">
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                </div>
                </br>
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>

              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
              <hr class="my-4">
              <button class="btn btn-google btn-block text-uppercase" type="submit"><i class="fa fa-google"></i> Sign in with Google</button>
              <button class="btn btn-facebook btn-block text-uppercase" type="submit"><i class="fa fa-facebook-f"></i> Sign in with Facebook</button>
            </form>
          </div>
        </div>
      </div>
    </div>
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