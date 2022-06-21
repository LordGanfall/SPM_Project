<?php
session_start();

echo "Cart quantity is:" . $_POST['x'];
$x = $_POST['x'];

$cart_num = 1;
while ($cart_num <= $x) {
    $amount[$x] = $_POST['amount_' . $cart_num];
    $quantity[$x] = $_POST['amount_' . $cart_num];
    $qunatity[$x] = $_POST['amount_' . $cart_num];


    // echo "<br>" . $_POST['cmd'];
    // echo "<br>" . $_POST['business'];
    // echo "<br>" . $_POST['upload'];
    // echo "<br>" . $_POST['item_name_' . $cart_num];
    // echo "<br>" . $_POST['item_number_' . $cart_num];
    // echo "<br>" . $_POST['amount_' . $cart_num];
    // echo "<br>" . $_POST['quantity_' . $cart_num];
    // echo "<br>" . $_POST['return'];
    // echo "<br>" . $_POST['cancel_return'];
    // echo "<br>" . $_POST['currency_code'];
    // echo "<br>" . $_POST['custom'];
    // echo "<br>" . $_POST['total'];
    $cart_num++;
}
$total = $_POST['total'];
$length = 8;
$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
$string = '';

for ($i = 0; $i < $length; $i++) {
    $string .= $characters[mt_rand(0, strlen($characters) - 1)];
}











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
</head>




<body>

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar navbar-header">
                <a href="index.php?page=index" style="font-family: 'Lobster', cursive; font-size:xx-large; color: wheat;" class="navbar-brand"><img style="display: inline-block;" src="https://www.pngrepo.com/png/36280/180/shopping-bag.png" width="50px" height="50px" alt=""> BagUs Store</a>

            </div>

            <!-- cert -->
            <ul class="nav navbar-nav navbar-right" style="margin-top:8px;">

                <li> <a href="cart.php" id="cart_container" class="dropdown-toggle"><i class="fas fa-cart-plus"></i>Cart
                        <!-- <span class="badge">0</span>  -->
                    </a>

                </li>

                <li> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fas fa-sign-in-alt"></i><?php echo $_SESSION["name"]; ?></a>
                    <!--signin dropdown -->
                    <ul class="dropdown-menu">
                        <li><a href="logout.php" style="text-decoration:none; color:blue;">Logout</a></li>
                        <li class="divider"></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
    <form action="payment_success.php" method="post">

        <div style="display: flex; justify-content: center; margin-top: 200px;">

            <div class="cardcontainer panel-info" style="padding: 0 0 0 0;">
                <div class="panel-heading" style="padding: 50px;">
                    <h1>Confirm Your Payment</h1> <br>
                    <table>
                        <tr>
                            <td>
                                <h3>Your Total is </h3>
                            </td>
                            <td>
                                <h3>: RM&nbsp;<input name="total" style="background:transparent; border:none;" readonly type="text" value="<?= $total ?>"></h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3>Transaction Id </h3>
                            </td>
                            <td>
                                <h3>:&nbsp;<input name="tx" style="background:transparent; border:none;" readonly type="text" value="<?= $string ?>"></h3>
                            </td>
                        </tr>
                    </table>


                    <div class="first-row">
                        <div class="owner">
                            <h3>Name</h3>
                            <div class="input-field">
                                <input type="text" required>
                            </div>
                        </div>
                        <div class="cvv">
                            <h3>CVV</h3>
                            <div class="input-field">
                                <input type="password" placeholder="xxxx" required>
                            </div>
                        </div>
                    </div>
                    <div class="second-row">
                        <div class="card-number">
                            <h3>Card Number</h3>
                            <div class="input-field">
                                <input type="number" placeholder="xxxx-xxxx-xxxx-xxxx" required>
                            </div>
                        </div>
                    </div>
                    <div class="third-row">
                        <h3>Card Date</h3>
                        <div class="selection">
                            <div class="date">
                                <select name="months" id="months">
                                    <option value="Jan">Jan</option>
                                    <option value="Feb">Feb</option>
                                    <option value="Mar">Mar</option>
                                    <option value="Apr">Apr</option>
                                    <option value="May">May</option>
                                    <option value="Jun">Jun</option>
                                    <option value="Jul">Jul</option>
                                    <option value="Aug">Aug</option>
                                    <option value="Sep">Sep</option>
                                    <option value="Oct">Oct</option>
                                    <option value="Nov">Nov</option>
                                    <option value="Dec">Dec</option>
                                </select>
                                <select name="years" id="years">
                                    <option value="2020">2026</option>
                                    <option value="2020">2025</option>
                                    <option value="2020">2024</option>
                                    <option value="2020">2023</option>
                                    <option value="2020">2022</option>
                                </select>
                            </div>
                            <div class="cards">
                                <img src="https://cdn.discordapp.com/attachments/973959772611166268/988751888491089930/mc.png" alt="">
                                <img src="https://cdn.discordapp.com/attachments/973959772611166268/988751888721788968/pp.png" alt="">
                                <img src="https://cdn.discordapp.com/attachments/973959772611166268/988751888902152232/vi.png   " alt="">
                            </div>
                        </div>
                    </div>
                    <div style="margin: 50px;"></div>
                    <button type="submit" class="btn btn-primary btn-block" class="pay">Confirm</button>
                    <div style="margin: 2px;"></div>
                    <a class="btn btn-danger btn-block" href="cancel.php" class="pay">Cancel</a>
                    <div style="margin: -20px;"></div>

                </div>
            </div>
        </div>
    </form>

</body>

</html>