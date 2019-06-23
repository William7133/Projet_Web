<?php

session_start();

if (
    !isset($_SESSION['is_logged_in']) ||
    $_SESSION['is_logged_in'] === false
) {
    header('Location: http://'.$_SERVER['HTTP_HOST'].'/admin/login.php');
    exit();
}
