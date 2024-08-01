<?php

function getTransactionRequest($transaction_request_id)
{
  global $con;
  $getTransaction = "SELECT * FROM payments_requests WHERE tranasaction_request_id='$transaction_request_id'";
  $runTransaction = mysqli_query($con, $getTransaction);
  return mysqli_fetch_array($runTransaction);
}

function insertPaymentRequest($customer_id, $total_amount, $phone, $merchant_reference, $order_tracking_id)
{
    global $con;
    $insert_payment_request = "INSERT INTO payments_requests (customer_id, amount, phone_number, reference, tranasaction_request_id, status) 
                               VALUES ('$customer_id', '$total_amount', '$phone', '$merchant_reference', '$order_tracking_id', 'pending')";
    $run_payment_request = mysqli_query($con, $insert_payment_request);
    if (!$run_payment_request) {
        die("Error: " . mysqli_error($con));
    }
}



function updatePaymentRequestStatus($transaction_request_id, $status)
{
  global $con;
  $update_payment_request = "UPDATE payments_requests SET status='$status' WHERE tranasaction_request_id='$transaction_request_id'";
  mysqli_query($con, $update_payment_request);
}

function insertOrder($customer_id, $invoice_no, $amount, $order_date, $payment_method)
{
  global $con;
  $check_order = "SELECT * FROM orders WHERE customer_id='$customer_id' AND invoice_no='$invoice_no'";
  $run_check = mysqli_query($con, $check_order);
  if (mysqli_num_rows($run_check) == 0) {
    $insert_order = "INSERT INTO orders (customer_id, invoice_no, shipping_type, shipping_cost, payment_method, order_date, order_total, order_note, order_status) VALUES ('$customer_id', '$invoice_no', '', '', '$payment_method', '$order_date', '$amount', '', 'completed')";
    mysqli_query($con, $insert_order);
  }
}

function insertPayment($invoice_no, $amount, $reference, $payment_mode)
{
  global $con;
  $code = rand(1000, 9999);
  $payment_date = date("m/d/Y");
  $insert_payment = "INSERT INTO payments (invoice_no, amount, payment_mode, ref_no, code, payment_date) VALUES ('$invoice_no', '$amount', '$payment_mode', '$reference', '$code', '$payment_date')";
  mysqli_query($con, $insert_payment);
}

function removeCart()
{
  global $con;
  $ip_add = getRealUserIp();
  $delete_cart = "DELETE FROM cart WHERE ip_add='$ip_add'";
  mysqli_query($con, $delete_cart);
  //Remove  cart_meta
  $delete_cart_meta = "DELETE FROM cart_meta WHERE ip_add='$ip_add'";
  mysqli_query($con, $delete_cart_meta);
}