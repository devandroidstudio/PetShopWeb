<?php 
	//ket noi toi database

	$servername = 'localhost';
	$username = 'root';
	$password = '01012001Hien';
	$dbname = 'shop';

	//connect database
	$conn = mysqli_connect($servername, $username, $password, $dbname);
 
	//check
	if(!$conn){
		echo 'loi ket noi ' . mysqli_connect_error(); 
	}
	// else{
	// 	echo 'ket noi thanh cong';
	// }


	//thanh toan VNPAY
		date_default_timezone_set('Asia/Ho_Chi_Minh');

		$vnp_TmnCode = "1ZTXEO8D"; //Website ID in VNPAY System
		$vnp_HashSecret = "ZBZGTCIBGWKFPDYXJWGTOXYXVQYTKZSG"; //Secret key
		$vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
		$vnp_Returnurl = "http://localhost:8333/shopthucung/index.php?page=vnpay_return";
		$vnp_apiUrl = "http://sandbox.vnpayment.vn/merchant_webapi/merchant.html";
		
		
		
		//Config input format
		//Expire
		$startTime = date("YmdHis");
		$expire = date('YmdHis',strtotime('+15 minutes',strtotime($startTime)));
