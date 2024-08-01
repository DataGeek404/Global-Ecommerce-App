<?php
session_start();
include("includes/db.php");
include("functions/functions.php");
include("pesapal_config.php");
include("payment_function.php");
if (isset($_GET['OrderTrackingId']) && isset($_GET['OrderMerchantReference'])) {
  $OrderTrackingId = $_GET['OrderTrackingId'];
  $OrderMerchantReference = $_GET['OrderMerchantReference'];
  if ($pesapal_sandbox == 'yes') {
    $apiUrl = "https://cybqa.pesapal.com/pesapalv3/api/Auth/RequestToken";
    $getTransactionStatusUrl = "https://cybqa.pesapal.com/pesapalv3/api/Transactions/GetTransactionStatus?orderTrackingId=$OrderTrackingId";
  } elseif ($pesapal_sandbox == 'no') {
    $apiUrl = "https://pay.pesapal.com/v3/api/Auth/RequestToken";
    $getTransactionStatusUrl = "https://pay.pesapal.com/v3/api/Transactions/GetTransactionStatus?orderTrackingId=$OrderTrackingId";
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
  $token = $data->token;
  $headers = array(
    "Accept: application/json",
    "Content-Type: application/json",
    "Authorization: Bearer $token"
  );
  $ch = curl_init($getTransactionStatusUrl);
  curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  $response = curl_exec($ch);
  $responseCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
  curl_close($ch);
  $data = json_decode($response);
  $payment_status_description = $data->payment_status_description;
  $payment_status = $data->status_code;
  //   Pesapal status code representing the payment_status_description.
  // 0 - INVALID
  // 1 - COMPLETED
  // 2 - FAILED
  // 3 - REVERSED
  $rowTransaction = getTransactionRequest($OrderTrackingId);
  $customer_id = $rowTransaction['customer_id'];
  $amount = $rowTransaction['amount'];
  $phone_number = $rowTransaction['phone_number'];
  $reference = $rowTransaction['reference'];
  $invoice_no = mt_rand();
  $order_date = date("F d, Y h:i");
  if ($payment_status == 1) {
    $payment_getway = 'pesapal';
    updatePaymentRequestStatus($OrderTrackingId, 'completed');
    insertOrder($customer_id, $invoice_no, $amount, $order_date, $payment_getway);
    insertPayment($invoice_no, $amount, $reference, $payment_getway);
    removeCart();
    echo "<script>alert('Your payment was successful')</script>";
    echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";
  } elseif ($payment_status == 2) {
    updatePaymentRequestStatus($OrderTrackingId, 'failed');
    echo "<script>alert('Your payment was not successful')</script>";
    echo "<script>window.open('checkout.php','_self')</script>";
  } elseif ($payment_status == 3) {
    updatePaymentRequestStatus($OrderTrackingId, 'failed');
    echo "<script>alert('Your payment was reversed')</script>";
    echo "<script>window.open('checkout.php','_self')</script>";
  } elseif ($payment_status == 0) {
    updatePaymentRequestStatus($OrderTrackingId, 'failed');
    echo "<script>alert('Your payment was invalid')</script>";
    echo "<script>window.open('checkout.php','_self')</script>";
  } else {
    updatePaymentRequestStatus($OrderTrackingId, 'failed');
    echo "<script>alert('Your payment was not successful')</script>";
    echo "<script>window.open('checkout.php','_self')</script>";
  }
}
