<?php

session_start();

function accountCheck(array $userData): void
{
    if ($_POST['updateUser'] == "Submit") {
        $setString = "";
        foreach ($userData as $key => $value) {
            if (!is_integer($key)) {
                if (!empty($_POST[$key])) {
                    if (!in_array($key, array("userId", "userName", "displayName", "points", "password", "state"))) {
                        if ($value != $_POST[$key]) {
                            if (strlen($setString > 0)) {
                                $setString = $setString . " , $key = \"$_POST[$key]\"";
                            } else {
                                $setString = "$key = \"$_POST[$key]\"";
                            }
                        }
                    }

                    if ($key == "password") {
                        if (!empty($_POST['password'])) {
                            $passHash = passChecker($_POST['password'], $_POST['passwordConfirm']);
                            if ($passHash != "false") {
                                $setString = "$key = \"$passHash\"";
                            } else {
                                global $passFlag;
                                $passFlag = false;
                            }

                        }
                    } elseif ($key == "state") {
                        if ($value != $_POST[$key]) {
                            if (strlen($setString > 0)) {
                                $setString = $setString . " , $key = \"$_POST[$key]\"";
                            } else {
                                $setString = "$key = \"$_POST[$key]\"";
                            }
                        }
                    }
                } else {
                    $_SESSION["message"] = "Empty " . ucfirst($key) . " value detected please try again" . $value . $_POST[$key];
                }
            }
        }

        global $passFlag;
        if (strlen($setString > 0) | $passFlag != false) {
            $userName = $_SESSION['searchName'];
            $sqlString = "UPDATE users SET $setString WHERE userName = " . "\"$userName\"";
            $conn = mysqli_connect("localhost", "root", "", "urbanstore");
            $result = mysqli_query($conn, $sqlString);
            if ($result) {
//                $_SESSION["message"] = "Update Successful";
                $_SESSION["message"] = "User Sucesfully Updated";
            } else {
                $_SESSION["message"] = "Database connection error occurred please try again";
            }
        } elseif ($passFlag == false) {

        } else {
            $_SESSION["message"] = "No values changed";
        }
        header("Refresh:0");
    }
}


function passChecker(string $passWord, string $confirmPass): string
{

    $uppercaseFlag = preg_match('@[A-Z].*[A-Z]@', $passWord); // Two Upper case needed
    $lowercaseFLag = preg_match('@[a-z].*[A-Z]@', $passWord); // Two lower case needed
    $numberFlag = preg_match('@[0-9].*[0-9]@', $passWord);
    $specialCharsFlag = preg_match('@[^\w].*[^\w]@', $passWord);
    $lengthFlag = strlen($passWord) > 10;

    if (!$uppercaseFlag || !$lowercaseFLag || !$numberFlag || !$specialCharsFlag || !$lengthFlag) {
        $_SESSION['message'] = "Password needs at least 2 uppercase, lowercase, numbers, and special characters.";
        return "false";
    } else {
        if ($passWord != $confirmPass) {
            $_SESSION['message'] = "Passwords do not match";
            return "false";
        } else {
            return password_hash($passWord, PASSWORD_DEFAULT);
        }
    }
}

