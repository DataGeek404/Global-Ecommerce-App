<?php
session_start();
include("includes/db.php");
include("pesapal_config.php");
include("payment_function.php");
$customer_email = $_SESSION['customer_email'];
$get_customer = "select * from customers where customer_email='$customer_email'";
$run_customer = mysqli_query($con, $get_customer);
$row_customer = mysqli_fetch_array($run_customer);
$customer_id = $row_customer['customer_id'];
$email_address = $row_customer['customer_email'];
$phone_number = $_POST['phone_number'];
$customer_name = $row_customer['customer_name'];
$total_amount = $_POST['total_amount'];
//find if the is space in the name and divide it into two one for first name and the other for last name
$names = explode(" ", $customer_name);
$first_name = $names[0];
$last_name = $names[1];
$middlename = $names[2];
if ($pesapal_sandbox == 'yes') {
  $apiUrl = "https://cybqa.pesapal.com/pesapalv3/api/Auth/RequestToken";
  $ipnRegistrationUrl = "https://cybqa.pesapal.com/pesapalv3/api/URLSetup/RegisterIPN";
  $submitOrderUrl = "https://cybqa.pesapal.com/pesapalv3/api/Transactions/SubmitOrderRequest";
} elseif ($pesapal_sandbox == 'no') {
  $apiUrl = "https://pay.pesapal.com/v3/api/Auth/RequestToken"; // Live URL
  $submitOrderUrl = "https://pay.pesapal.com/v3/api/Transactions/SubmitOrderRequest";
  $ipnRegistrationUrl = "https://pay.pesapal.com/v3/api/URLSetup/RegisterIPN";
}
$headers = [
  "Accept: application/json",
  "Content-Type: application/json"
];
$data = [
  "consumer_key" => $pesapal_consumer_key,
  "consumer_secret" => $pesapal_consumer_secret
];
$ch = curl_init($apiUrl);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
$response = curl_exec($ch);
$httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
curl_close($ch);
$data = json_decode($response);
if (isset($data->token)) {
  $token = $data->token;
  //REGISTER IPN
  $headers = array(
    "Accept: application/json",
    "Content-Type: application/json",
    "Authorization: Bearer $token"
  );
  $data = array(
    "url" => "$callbackurl",
    "ipn_notification_type" => "POST"
  );
  $ch = curl_init($ipnRegistrationUrl);
  curl_setopt($ch, CURLOPT_POST, 1);
  curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
  curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  $response = curl_exec($ch);
  $responseCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
  curl_close($ch);
  $data = json_decode($response);
  //INTIATE PAYMENT
  if (isset($data->ipn_id)) {
    $ipn_id = $data->ipn_id;
    $merchantreference = rand(1, 1000000000000000000);
    $headers = array(
      "Accept: application/json",
      "Content-Type: application/json",
      "Authorization: Bearer $token"
    );
    $data = array(
      "id" => "$merchantreference",
      "currency" => "KES",
      "amount" => $total_amount,
      "description" => "Payment description goes here",
      "callback_url" => "$callbackurl",
      "notification_id" => "$ipn_id",
      "branch" => "$branch",
      "billing_address" => array(
        "email_address" => "$email_address",
        "phone_number" => "$phone_number",
        "country_code" => "KE",
        "first_name" => "$first_name",
        "middle_name" => "$middlename",
        "last_name" => "$last_name",
        "line_1" => "Pesapal Limited",
        "line_2" => "",
        "city" => "",
        "state" => "",
        "postal_code" => "",
        "zip_code" => ""
      )
    );
    $ch = curl_init($submitOrderUrl);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    $responseCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);
    $data = json_decode($response);
    if (isset($data->redirect_url)) {
      $order_tracking_id = $data->order_tracking_id;
      $redirect_url = $data->redirect_url;
      insertPaymentRequest($customer_id, $total_amount, $phone_number, $merchantreference, $order_tracking_id);
      echo "<script>window.open('$redirect_url','_self')</script>";
    } else {
      echo "<script>alert('Payment Failed, Please try again')</script>";
      echo "<script>window.open('checkout.php','_self')</script>";
    }
  } else {
    echo "<script>alert('ipn_id not found')</script>";
    echo "<script>window.open('checkout.php','_self')</script>";
  }
} else {
  echo "<script>alert('Payment Failed, Please try again')</script>";
  echo "<script>window.open('checkout.php','_self')</script>";
}
