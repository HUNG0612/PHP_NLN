<?php
include('../../config/config.php');

if (isset($_GET['cart_status']) && isset($_GET['code'])) {
    $code = $_GET['code'];
    $sql = mysqli_query($mysqli, "UPDATE cart SET cart_status=0 WHERE code_cart='" . $code . "'");
    header('Location: ../../index.php?action=quanlydonhang&query=lietke');
}
