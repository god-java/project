<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#coin_charge_next{width:1260px; height:1000px; margin: 50px auto;}
#banner{width:100%; height:300px;}
#select_coin{width:70%; height:80px; margin:10px auto; text-align:center; line-height:80px; border-top:1px solid #D8D8D8; border-bottom:1px solid #D8D8D8;}
#select_coin span{margin-left:30px;}
#select_coin span:first-child{background:#D8D8D8;}
#select_coin span:nth-child(2){}
#select_coin span:nth-child(3){font-size:18px; font-weight:bold;}
#select_coin span:nth-child(4){margin:0; font-weight:bold;}
#select_coin span:nth-child(5){font-weight:bold;}

#pay_method{width:70%; height:500px; margin:0 auto;}
#cart_pay{width:100%; height:300px;}
#cart_pay div{width:170px; height:80px; margin-left:30px; display:inline-block; border:1px solid #D8D8D8; box-shadow:2px 2px 2px #D8D8D8;}
#pay_img{width:100%; height:100%; cursor:pointer;}
#pay_div{ -webkit-transition-duration:0.7s; position:relative;}
#pay_div:hover{-webkit-transform:rotate(5deg); opacity:0.8;}
</style>
</head>
<body>
	<div id="coin_charge_next">
		<div id="banner">
			<img src="resources/main_img/banner-payment-summer2018.jpg" style="width:100%; height:100%;">
		</div>
		<div id="select_coin">
			<span>선택상품</span>
			<span><img src="resources/icon/${cdto.coin_image }" style="width:60px; height:50px; position: relative; top:15px;"></span>
			<span>${cdto.quantity }</span><span>코인</span>
			<span>${cdto.coin_content }</span>
		</div>
		
		<div id="pay_method">
			<div id="cart_pay">
				<p>신용카드/간편결제</p>
				<div id="pay_div">
					<a href="coin_charge_ok?coin_num=${cdto.coin_num }" id="pay_img_a">
						<img src="resources/icon/payment-card.png" id="pay_img">
					</a>
				</div>
				<div id="pay_div">
					<img src="resources/icon/payment-kpay.png" id="pay_img">
				</div>
				<div id="pay_div">
					<img src="resources/icon/payment-payco.png" id="pay_img">
				</div>
			</div>
		</div>
	</div>
</body>
</html>