<?php
session_start();
$_SESSION['table'] = "product";

$brandNames = array("Patagonia",  "Polo",  "Kirkland",  "Gucci",  "Nike",  "Levis",  "Patagonia",  "Gap",  "Lululemon",  "UnderArmor",  "Nordstrom",  "Hermes",  "Adidas",  "Puma",  "Armani");
$clothingtypes = array("Pants" ,"Jacket" ,"Sweater" ,"Shirt" ,"Shorts" ,"Vest" ,"Coat" ,"Suit");

try {
    $conn = $conn = mysqli_connect("localhost", "root", "", "urbanstore");
    $commands = file_get_contents("sqlProduct.sql");
    $result = mysqli_multi_query($conn, $commands);
    $_SESSION['returnCode'] = "Product Table Successfully Reset";
    sleep(1);

    $path = dirname(__DIR__, 2) . "\CSS\Images\Products";
    $dir = new DirectoryIterator($path);

    $conn = mysqli_connect("localhost", "root", "", "urbanstore");
    $sql = "DROP TABLE IF EXISTS product";
    $result = mysqli_query($conn, $sql);
    $sql = "CREATE TABLE `product`
(
    `id`    int(8)       NOT NULL,
    `name`  varchar(55),
    `type`  varchar(255) NOT NULL,
    `cost`  varchar(55)  NOT NULL,
    `brand` varchar(250)

)";

    $result = mysqli_query($conn, $sql);

    $counter = -1; // INDEX ERROR OFFSET FIX
    foreach ($dir as $fileinfo) {
        shuffle($brandNames);
        shuffle($clothingtypes);

        $inpName = $brandNames[0];
        $inpType = $clothingtypes[0];
        $displayName= $inpName . " " . $inpType;
        $inpPrice = rand(10,250);
        if (!$fileinfo->isDot() && $fileinfo != "null-product.png") {
            $sql = "INSERT INTO product (`id`, `name`, `type`, `cost`, `brand`) VALUES ('" . $counter . "', '" . $displayName . "', '" . $inpType . "', '" . $inpPrice . "', '" . $inpName . "')";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                $_SESSION['returnCode'] = "Table Successfully Created";
            } else {
                $_SESSION['returnCode'] = "An error occurred while updating table";
            }
        }
        $counter = $counter + 1;
    }

} catch (Exception $e) {
    $_SESSION['returnCode'] = "An error occurred while resetting product table";
}

header("location: ../../AdminPage.php");
