<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<?php
session_start();
include("includes/db.php");
include("umspay_config.php");
include("payment_function.php");

$customer_email = $_SESSION['customer_email'];
$get_customer = "select * from customers where customer_email='$customer_email'";
$run_customer = mysqli_query($con, $get_customer);
$row_customer = mysqli_fetch_array($run_customer);
$customer_id = $row_customer['customer_id'];
$email_address = $row_customer['customer_email'];
$phone = $row_customer['customer_contact'];
$customer_name = $row_customer['customer_name'];


$total_amount = $_POST['total_amount'];
$phone_number = $_POST['phone_number'];
$reference = mt_rand();
$payload = json_encode(array(
  "api_key" => $api_key,
  "email" => $email,
  'account_id' => $account_id,
  "amount" => $total_amount,
  "msisdn" => $phone_number,
  "reference" => $reference,
));
$curl = curl_init();
curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.umeskiasoftwares.com/api/v1/intiatestk',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => $payload,
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json',
  ),
));
$response = curl_exec($curl);
curl_close($curl);
$data = json_decode($response);
if (isset($data->success) && $data->success == "200") {
  $transaction_request_id = $data->tranasaction_request_id ?? null;
  // insert into payments_requests
  insertPaymentRequest($customer_id, $total_amount, $phone_number, $reference, $transaction_request_id);
?>
  <script>
    document.addEventListener('DOMContentLoaded', (event) => {
      const checkoutId = "<?php echo $transaction_request_id; ?>";
      let isPaymentVerified = false; // Add a flag to track the payment verification status

      console.log(checkoutId);
      Swal.fire({
        title: '<strong>Processing Payment</strong>',
        html: '<div style="font-size: 1.2em; color: #555;">Please wait...</div>',
        allowOutsideClick: false,
        didOpen: () => {
          Swal.showLoading();
          verifyTransaction(checkoutId);
        },
        customClass: {
          popup: 'custom-swal-popup',
          title: 'custom-swal-title',
          htmlContainer: 'custom-swal-html'
        },
        backdrop: `
                  rgba(0,0,123,0.4)
                  left top
                  no-repeat
                `,
        showClass: {
          popup: 'animated fadeInDown faster'
        },
        hideClass: {
          popup: 'animated fadeOutUp faster'
        }
      });

      function verifyTransaction(checkoutId) {
        const interval = setInterval(() => {
          if (!isPaymentVerified) {
            axios.post('verify_umspay.php', {
                tranasaction_request_id: checkoutId
              })
              .then(response => {
                console.log(response.data);
                if (response.data.status === 'success') {
                  console.log(response.data.message);
                  isPaymentVerified = true; // Set the flag to true when payment is successful
                  clearInterval(interval);
                  Swal.fire('Success', 'Payment verified successfully!', 'success');
                  setTimeout(() => {
                    window.location.href = 'customer/my_account.php?my_orders';
                  }, 1000);
                } else if (response.data.status === 'failed') {
                  console.log(response.data.message);
                  if (response.data.message !== 'Unknown error' && response.data.message !== 'Pending') {
                    Swal.fire('Failed', response.data.message, 'error');
                    clearInterval(interval);
                    window.location.href = 'checkout.php';
                   
                  }
                } else if (response.data.status === 'pending') {
                  console.log('Payment still pending...');
                }
              })
              .catch(error => {
                clearInterval(interval);
                Swal.fire('Error', 'Something went wrong during verification!', 'error');
              });
          }
        }, 2000);
      }
    });
  </script>

<?php
} else {
  echo "<script>alert('Payment Failed, Please try again')</script>";
  echo "<script>window.open('checkout.php','_self')</script>";
}
