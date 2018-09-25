<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#coin_charge{width:1260px; height:1000px; margin: 50px auto;}
#banner{width:100%; height:300px;}
#my_coin{width:70%; height:50px; margin:0 auto; margin-top:50px; border-bottom:1px solid #D8D8D8;}
#charge_table{width:70%; border-collapse:collapse; margin:10px auto;}
#charge_table tr td{height:80px; text-align:center; border-bottom:1px solid #D8D8D8;}
#charge_table tr td:first-child {width:10%;}
#charge_table tr td:nth-child(2) {width:10%;}
#charge_table tr td:nth-child(3) {width:45%; text-align:left;}
#charge_table tr td:nth-child(4) {width:10%; color:silver;}
#charge_table tr td:nth-child(5) {width:15%;}
#charge_table tr td:nth-child(6) {width:10%;}
#charge_tr{-webkit-transition-duration:0.3s;}
#charge_tr:hover{background:#EAEAEA;}
#charge_btn{width:80px; height:30px; border:1px solid black; border-radius:5px; color:white; font-weight:bold; background:black; -webkit-transition-duration:0.3s;}
#charge_btn:hover{color:black; background:white; border:1px solid #D8D8D8;}
</style>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$(".charge_btn").click(function(){
		var param = $(this).attr("param")
		location.href="coin_charge_next?coin_num="+param
	})
})
</script>
	<div id="coin_charge">
		<div id="banner">
			<img src="resources/main_img/banner-payment-summer2018.jpg" style="width:100%; height:100%;">
		</div>
		<div id="my_coin">
			<span>나의 보유 코인 : </span>
			<span style="color:red; font-size:18px;">0코인</span>
		</div>
		<table id="charge_table">
			<c:forEach var="clist" items="${clist }">
				<tr id="charge_tr">
					<td><img src="resources/icon/coin-5.png"></td>
					<td><span style="font-size:18px; font-weight:bold;">${clist.quantity }</span>코인</td>
					<td>${clist.coin_content }</td>
					<td style="text-decoration:line-through;">
						<fmt:formatNumber pattern="##,###" value="${clist.price }"/>원
					</td>
					<td>
						<span style="font-size:18px; font-weight:bold;">
							<fmt:formatNumber pattern="##,###" value="${clist.sale_price }"/>원
						</span>
					</td>
					<td>
						<button id="charge_btn" class="charge_btn"  param="${clist.coin_num }">충전하기</button>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>