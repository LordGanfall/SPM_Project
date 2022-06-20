<?php


echo "Cart quantity is:" . $_POST['x'];
$x = $_POST['x'];

$cart_num = 1;
while ($cart_num <= $x) {
    echo "<br>" . $_POST['cmd'];
    echo "<br>" . $_POST['business'];
    echo "<br>" . $_POST['upload'];
    echo "<br>" . $_POST['item_name_'.$cart_num];
    echo "<br>" . $_POST['item_number_'.$cart_num];
    echo "<br>" . $_POST['amount_'.$cart_num];
    echo "<br>" . $_POST['quantity_'.$cart_num];
    echo "<br>" . $_POST['return'];
    echo "<br>" . $_POST['cancel_return'];
    echo "<br>" . $_POST['currency_code'];
    echo "<br>" . $_POST['custom'];
    $cart_num++;
}
