<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
class PaymentController extends Controller
{
    //TODO:Payment
    public function vnpay_payment()
    {
        dd(Cart::content());
        $vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        $vnp_Returnurl = "http://gkcomputer.com/checkout";
        $vnp_TmnCode = "SJ2TDXGL"; //Mã website tại VNPAY 
        $vnp_HashSecret = "SSXAFWDTAAVKSVHEHWWKQLWWJSTRKBRF"; //Chuỗi bí mật

        $vnp_TxnRef = $_POST['order_id']; //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = $_POST['order_desc'];
        $vnp_OrderType = $_POST['order_type'];
        $vnp_Amount = $_POST['amount'] * 100;
        $vnp_Locale = $_POST['language'];
        $vnp_BankCode = $_POST['bank_code'];
        $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
        //Add Params of 2.0.1 Version
        $vnp_ExpireDate = $_POST['txtexpire'];


        


        $inputData = array(
            "vnp_Version" => "2.1.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
            "vnp_ExpireDate" => $vnp_ExpireDate

        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }

        //var_dump($inputData);
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
            } else {
                $hashdata .= urlencode($key) . "=" . urlencode($value);
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            $vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret); //  
            $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
        }
       return redirect($vnp_Url);
    }
}
