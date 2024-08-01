<?php

include("includes/db.php");

require_once('vendor/autoload.php');

$select_payment_settings = "select * from payment_settings";

$run_payment_settings = mysqli_query($con, $select_payment_settings);

$row_payment_settings = mysqli_fetch_array($run_payment_settings);

$stripe_secret_key = $row_payment_settings['stripe_secret_key'];

$stripe_publishable_key = $row_payment_settings['stripe_publishable_key'];

$stripe_currency_code = $row_payment_settings['stripe_currency_code'];

$stripe = array(
  "secret_key"      => "$stripe_secret_key",
  "publishable_key" => "$stripe_publishable_key",
  "currency_code"   => "$stripe_currency_code"
);

\Stripe\Stripe::setApiKey($stripe['secret_key']);

?>