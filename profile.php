<?php
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);

session_start();
// session is not set
if (!isset($_SESSION["uid"])) {
    header("location:index.php");
}
// include "header.php";

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BAG-US ONLINE STORE</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script src="js/jquery2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="main.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="shortcut icon" href="https://www.pngrepo.com/png/36280/180/shopping-bag.png" type="image/x-icon">
    <link rel="icon" href="https://www.pngrepo.com/png/36280/180/shopping-bag.png" type="image/x-icon">

<body>

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar navbar-header">
                <a href="index.php?page=index" style="font-family: 'Lobster', cursive; font-size:xx-large; color: wheat;" class="navbar-brand"><img style="display: inline-block;" src="https://www.pngrepo.com/png/36280/180/shopping-bag.png" width="50px" height="50px" alt=""> BagUs Store</a>

            </div>
            <ul class="nav navbar-nav" style="margin-left:500px">
                
                <li style="width:400px;padding-top: 20px;"><input type="text" class="form-control" id="search"></li>
                <li style="top:10px;left:20px; padding-top: 10px;"><button class="btn btn-primary" id="search_btn">Search</button></li>
            </ul>
            <!-- cert -->
            <ul class="nav navbar-nav navbar-right" style="margin-top:8px;">

                <li> <a href="cart.php" id="cart_container" class="dropdown-toggle"><i class="fas fa-cart-plus"></i>Cart
                        <!-- <span class="badge">0</span>  -->
                    </a>

                </li>

                <li > <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fas fa-sign-in-alt"></i><?php echo $_SESSION["name"]; ?></a>
                    <!--signin dropdown -->
                    <ul class="dropdown-menu" >
                        <li><a href="logout.php" style="text-decoration:none; color:blue;">Logout</a></li>
                        <li class="divider"></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>

    <!-- side-->
    <p><br /></p>
    <p><br /></p>
    <p><br /></p>


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2">

                <div id="get_category">

                </div>


                <div id="get_brand">

                </div>

            </div>

            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12" id="product_img">
                    </div>
                </div>
                <div class="panel panel-warning">
                    <div style="background-color: #333; font-family: Lobster; color:wheat; font-size:x-large;" class="panel-heading">Products</div>
                    <div class="panel-body">
                        <div id="get_product">
                            <!--here we get product details from ajax -->

                        </div>


                    </div>
                    <div class="panel-footer">&copy;2017</div>
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <center>
                    <ul class="pagination" id="pageno">
                        <li><a href="#">1</a></li>

                </center>
            </div>
        </div>

    </div>

</body>

</html>