<?php

function logIn(): void
{
    if (count($_POST) > 0) {
        $isSuccess = 0;
        $conn = mysqli_connect("localhost", "root", "", "urbanstore");
        $userName = $_POST['userName'];
        $result = mysqli_query($conn, "SELECT * FROM `users` WHERE userName = '" . $userName . "'");

        while ($row = $result->fetch_assoc()) {
            if (!empty($row)) {
                $hashedPassword = $row["password"];
                if (password_verify($_POST["password"], $hashedPassword)) { // present Desalt and rehash
                    $isSuccess = 1;
                }
            }
        }
        if ($isSuccess == 0 && $userName != "") {
            $_SESSION['message'] = "Invalid Username or Password";
        } else {
            $result = mysqli_query($conn, "SELECT * FROM `users` WHERE userName = '" . $userName . "'");
            $userArray = mysqli_fetch_array($result);
            $_SESSION['AuthSession'] = true;
            $_SESSION['displayName'] = $userArray['displayName'];
            $_SESSION['userRole'] = $userArray['role'];
            $_SESSION['message'] = "Login Successful Redirecting";
            $_SESSION['userName'] = $userName;
            header("refresh:2;url=AccountView.php");

        }
    }
}
