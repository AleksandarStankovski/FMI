<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Techno Visions</title>
    <link rel="shortcut icon" type="image/png" href="images/technoVisionSmallLogo.png">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles/jquery.fancybox.css">
    <link rel="stylesheet" type="text/css" href="styles/customStyles.css">
    <script type="text/javascript" src="scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.validate.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.pajinate.js"></script>
    <script type="text/javascript" src="scripts/jquery.fancybox.js"></script>
    <!-- Adding Google api -->
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript" src="scripts/customJS.js"></script>
</head>
<body>
    <div class="site-wrapper">
        <header class="site-header">
            <div class="container">
                <div class="row">
                    <div class="col-xs-6 col-sm-9 col-md-10 logo-container">
                        <h1><a href="index.php"><img src="images/technoVisionLogo.png" class="img-responsive" alt="Techno Vision"></a></h1>
                    </div>
                    <div class="col-xs-6 col-sm-3 col-md-2 header-col">
                        <div class="header-login-container">
                            <a class="grey-text-href" href="login.php"><i class="glyphicon glyphicon-user"></i> Вход</a>
                            <a id="shopping-cart-btn" class="grey-text-href test" href="shoppingCart.php"><i class="glyphicon glyphicon-shopping-cart shopping-cart-icon"></i></a>
                            <div class="hover-container shopping-cart-btn test">
                                <p>Имате <span class="bold-text">2</span> продукта в количката!</p>
                            </div>
                        </div>             
                        <form>
                            <div class="input-group">
                                <input type="text" class="form-control custom-xs search-input" name="search" placeholder="Търсене" autocomplete="off">
                                <span class="input-group-addon custom-group-xs"><i class="glyphicon glyphicon-search"></i></span>
                            </div>
                        </form>             
                    </div>
                </div>
            </div>
        </header>