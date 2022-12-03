<?php

function logOut(): void // present unsetting
{
    unset($_SESSION["AuthSession"]);
    unset($_SESSION['userName']);
    unset($_SESSION['displayName']);
    session_unset();
    header("refresh:0;url=AccountLogin.php");
}