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
#my_page{width:1260px; height:1000px; margin:80px auto;}
#my_info{width:100%; height:100px; display:flex; flex-direction:row; background:#424242;}
#my_info div{width:23.3%; height:100%; border-right:1px solid gray;}
#my_info div:first-child{width:30%; height:100%; border-right:1px solid gray;}
#my_info div:last-child{border:none;}
#my_info strong{font-size:12px; font-weight:bold; color:silver;}
#my_info p{font-size:15px; font-weight:bold; color:white;}

#my_page_body{width:100%; height:700px; margin-top:30px; display:flex; flex-direction:row;}
#my_page_body div:first-child{width:17%; height:100%;}
#my_page_body div:last-child{width:83%; height:100%;}
#my_page_body p{margin-left:20px;}
#my_page_body p:first-child{font-weight:bolder;}
#my_page_body a{font-size:11px; color:gray;}
#info_modify_btn{width:100px; height:30px; border:1px solid #D8D8D8; background:white; font-size:12px; margin-top: 20px; -webkit-transition-duration:0.5s;}
#info_modify_btn:hover{background:black; color:white; font-weight:bolder;}

#charge_table{width:100%; border-collapse:collapse;}
#charge_table th{width:20%; border-bottom:2px solid #D8D8D8; border-top:2px solid black; height:40px; }
#charge_table td{width:20%; border-bottom:1px solid #D8D8D8; text-align:center; height:30px;}
</style>
</head>
<body>
	<div id="my_page">
		<div style="width:100%; height:100px; line-height:100px;">
			<span style="margin-left:5px; font-size:20px; font-weight:bolder;">마이 페이지</span>
			<span style="margin-left:5px; font-size:13px; font-weight:bold; color:#D8D8D8;">MY PAGE</span>
		</div>
		<div id="my_info">
			<div>
				<div style="width:80%; height:80%; margin-top:5%; margin-left:10%;">
					<strong>아이디</strong>
					<p>${email }</p>
				</div>
			</div>
			<div>
				<div style="width:80%; height:80%; margin-top:5%; margin-left:10%;">
					<strong>일반 코인</strong>
					<p>${coin }</p>
				</div>
			</div>
			<div>
				<div style="width:80%; height:80%; margin-top:5%; margin-left:10%;">
					<strong>보너스 코인</strong>
					<p>${coin }</p>
				</div>
			</div>
			<div>
				<div style="width:80%; height:80%; margin-top:5%; margin-left:10%;">
					<strong>ios 코인</strong>
					<p>0</p>
				</div>
			</div>
		</div>
		<div id="my_page_body">
			<div>
				<div style="width:90%; height:300px; margin:10px auto; border:1px solid #D8D8D8;">
					<div style="width:80%; height:70%; margin:auto; border-bottom:1px solid #D8D8D8;">
						<p>코인 내역</p>
						<p><a href="charge_list">적립 내역</a></p>
						<p><a href="use_list" style="color:#817EE4;">이용 내역</a></p>
						<br>
						<p style="font-weight:bolder;">소장 작품</p>
						<p><a href="my_library">내서재</a></p>
						<p><a href="zzim">찜목록</a></p>
					</div>
					<div style="width:80%; height:30%; margin:auto; text-align:center; line-height:90px;">
						<button id="info_modify_btn">정보수정</button>
					</div>
				</div>
			</div>
			<!-- 여기까지 공통 -->
			
			
			<script type="text/javascript">
			$(document).ready(function(){
				$(".next_ep_btn").click(function(){
					var toon_num = $(this).attr("param")
					var ep_num = $(this).attr("param2")
					ep_num=parseInt(ep_num+1)
					$.ajax({
						url : 'next_ep',
						data : {'toon_num' : toon_num,
								'ep_num' : ep_num
								},
						type : 'get',
						success : function(data){
							var res = data
							if(res==0){
								alert("다음 회차가 존재하지 않습니다.")
							}else{
								location.href="toon_detail?toon_num="+toon_num+"&ep_num="+ep_num
							}
						}
						
					})
				})
			})
			</script>
			
			
			<div>
				<div style="width:100%; height:50px; margin-top:10px;">
					<span style="margin-left:10px; font-size:20px;">이용내역</span>
				<div style="width:100%; height:100%; margin-top:30px;">
					<table id="charge_table">
						<tr>
							<th>내용</th>
							<th>회차정보</th>
							<th>사용일</th>
							<th>만료일</th>
							<th>상태</th>
						</tr>
						<c:forEach var="ulist" items="${ulist }">
							<tr>
								<td>${ulist.toon_title }</td>
								<td>${ulist.ep_num }</td>
								<td>${ulist.use_date.substring(0,10) }</td>
								<td>${ulist.exp_date.substring(0,10) }</td>
								<td>${ulist.use_status }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>