<?php
$select_payment_settings = "select * from payment_settings";
$run_payment_settings = mysqli_query($con, $select_payment_settings);
$row_payment_settings = mysqli_fetch_array($run_payment_settings);
$api_key = $row_payment_settings['umspay_app_key'];
$email = $row_payment_settings['umspay_email'];
$account_id = $row_payment_settings['umspay_account_id'];