<?php
$select_payment_settings = "select * from payment_settings";
$run_payment_settings = mysqli_query($con, $select_payment_settings);
$row_payment_settings = mysqli_fetch_array($run_payment_settings);
$pesapal_consumer_key = $row_payment_settings['pesapal_consumer_key'];
$pesapal_consumer_secret = $row_payment_settings['pesapal_consumer_secret'];
$pesapal_sandbox = $row_payment_settings['pesapal_sandbox'];
//GET THE SITE URL
$site_url = "http://" . $_SERVER['HTTP_HOST']."/ECOM/project";
$callbackurl = $site_url . "/pesapal_ipn.php";
$branch = "";
