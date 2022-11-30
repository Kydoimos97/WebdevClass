<?php
// database connection
function dbConnect(): void
{
    global $product;
    global $user;
    global $conn;
    global $id;

    $id = substr($_SERVER['REQUEST_URI'], strpos($_SERVER['REQUEST_URI'], "=") + 1);
    $conn = mysqli_connect("localhost", "root", "", "urbanstore");

    // Get product data
    $result = mysqli_query($conn, "SELECT * FROM `product` WHERE id = '" . $id . "'");
    $product = mysqli_fetch_array($result);

    //Get user points
    $result = mysqli_query($conn, "SELECT * FROM `users` WHERE userName = '" . $_SESSION['userName'] . "'");
    $user = mysqli_fetch_array($result);
}

function placeHolder(): void
{
    global $product;
    global $user;
    if ($product['name'] == null | empty($product['name'])) {
        $product['name'] = "gift product";
    }

    if ($product['brand'] == null | empty($product['brand'])) {
        $product['brand'] = "";
    }
}

// images
function imageGetter(): void
{
    global $conn;
    global $image;
    global $id;

    $result = mysqli_query($conn, "SELECT img_src FROM `images` where name_ref = '" . $id . "'");
    $image = mysqli_fetch_array($result)['img_src'];
}


function addCartFunc(): void
{
    global $conn;
    global $user;
    global $id;

    $id = substr($_SERVER['REQUEST_URI'], strpos($_SERVER['REQUEST_URI'], "=") + 1);

    $result = mysqli_query($conn, "SELECT * FROM cart WHERE productid = $id and userid = '" . $user['userId'] . "'");

    if (!empty($result) && $result->num_rows > 0) {
        $result = mysqli_fetch_array($result);
        $quantity = strval(intval($result['quantity']) + 1);

        $result = mysqli_query($conn, "UPDATE cart SET quantity =  $quantity WHERE productid = $id and userid = '" . $user['userId'] . "'");
    } else {
        $user_id = $user['userId'];
        $result = mysqli_query($conn, "INSERT INTO cart (userid, productid, quantity) VALUES ($user_id, $id , 1)");
    }
}

