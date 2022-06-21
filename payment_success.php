<?php
//ini_set('display_startup_errors',1);
//ini_set('display_errors',1);
//error_reporting(-1);

session_start();
// session is not set
if (!isset($_SESSION["uid"])) {
    header("location:index.php?page=index");
}
$uid = $_SESSION["uid"];
$trx_id = $_POST['tx'];
$total = $_POST['total'];

include "db.php";
$query = "DELETE FROM cart WHERE user_id = '$uid'";
$result = mysqli_query($con, $query);
$con->close();


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
    <script src="./js/jquery2.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="main.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="shortcut icon" href="https://www.pngrepo.com/png/36280/180/shopping-bag.png" type="image/x-icon">
    <link rel="icon" href="https://www.pngrepo.com/png/36280/180/shopping-bag.png" type="image/x-icon">

    <style>
        table tr td {
            padding: 10px;
        }
    </style>
</head>

<body>

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar navbar-header">
                <a href="index.php?page=index" style="font-family: 'Lobster', cursive; font-size:xx-large; color: wheat;" class="navbar-brand"><img style="display: inline-block;" src="https://www.pngrepo.com/png/36280/180/shopping-bag.png" width="50px" height="50px" alt=""> BagUs Store</a>
            </div>
         
        </div>
    </div>

    <p><br /></p>
    <p><br /></p>
    <p><br /></p>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="panel panel-primary">
                    <div class="panel-heading"></div>
                    <div class="panel-body">
                        <h1 style="font-family: 'Lobster', cursive;">Thankyou For Your Orders</h1>
                        <p>Hello <?php echo $_SESSION["name"]; ?> Your payment process is successfully done. <br>
                            Total paid is <b>RM <?= $total ?></b> & Transaction Id is <b><?php echo $trx_id; ?></b><br />
                            you can continue shopping :D <br />
                        </p> <br>
                        <a href="index.php" class="btn btn-success btn-lg">Continue Shopping</a>
                        <hr />
                    </div>
                    <div class="panel-headifooter"></div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>


</body>

</html>