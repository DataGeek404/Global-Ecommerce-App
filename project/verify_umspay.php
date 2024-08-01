<?php
session_start();
include("includes/db.php");
include("umspay_config.php");
include("functions/functions.php");
include("payment_function.php");
header('Content-Type: application/json');
$data = json_decode(file_get_contents("php://input"));
$transaction_request_id = $data->tranasaction_request_id;
function sendTransactionStatusRequest($transaction_request_id, $api_key, $email)
{
  $payload = json_encode(array(
    "api_key" => $api_key,
    "email" => $email,
    "tranasaction_request_id" => $transaction_request_id,
  ));

  $curl = curl_init();
  curl_setopt_array($curl, array(
    CURLOPT_URL => 'https://api.umeskiasoftwares.com/api/v1/transactionstatus',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => $payload,
    CURLOPT_HTTPHEADER => array('Content-Type: application/json'),
  ));
  $response = curl_exec($curl);
  curl_close($curl);
  return json_decode($response);
}

if (!$transaction_request_id) {
  echo json_encode(['status' => 'error', 'message' => 'Transaction ID is required']);
  exit();
}

$rowTransaction = getTransactionRequest($transaction_request_id);
$customer_id = $rowTransaction['customer_id'];
$amount = $rowTransaction['amount'];
$phone_number = $rowTransaction['phone_number'];
$reference = $rowTransaction['reference'];

date_default_timezone_set("Africa/Nairobi");
$order_date = date("F d, Y h:i");
$invoice_no = mt_rand();
$response = sendTransactionStatusRequest($transaction_request_id, $api_key, $email);
if (isset($response->TransactionStatus) && $response->TransactionStatus == "Completed") {
  $payment_getway = 'pesapal';
  updatePaymentRequestStatus($transaction_request_id, 'completed');
  insertOrder($customer_id, $invoice_no, $amount, $order_date, $payment_getway);
  insertPayment($invoice_no, $amount, $reference, $payment_getway);
  removeCart();
  echo json_encode(['status' => 'success', 'message' => 'Transaction was successful']);
} else {
  if ($response->TransactionStatus == "Pending") {
    echo json_encode(['status' => 'pending', 'message' => 'Transaction is pending']);
  } else {
    updatePaymentRequestStatus($transaction_request_id, 'failed');
    echo json_encode(['status' => 'failed', 'message' => 'Transaction is ' . $response->TransactionStatus]);
  }
}
?>
