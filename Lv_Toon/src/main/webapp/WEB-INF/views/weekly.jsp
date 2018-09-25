<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#weekly{width:1260px; margin:0 auto; height:1000px;}
#day{width:100%; height:70px;}
#day ul{width:100%; height:100%; display:flex; flex-direction:row;}
#day ul li{width:12.5%; height:100%; border:1px solid #D8D8D8; border-left:none; list-style:none; line-height:70px; text-align:center;}
#day ul li:first-child{border-left:1px solid #D8D8D8; }
#day a{display: block; width:100%; height:100%; -webkit-transition-duration:0.2s}
#a_tag:hover{background:#817EE4; font-size:18px; color:white;}


#tlist_body{width:100%; margin-top:50px;}
#tlist_div{width:22%; height:400px; margin-left:25px; margin-top:50px; display:inline-block;}
#tlist_img{width:100%; height:350px; overflow:hidden;}
#tlist_cate{width:100%; height:20px; line-height:20px;}
#tlist_title{width:100%; height:30px; line-height:30px;}
#main_img:hover{-webkit-transform:scale(1.03);}
</style>
</head>
<body>
	<div id="weekly">
		<div style="width:100%; height:100px; line-height:100px;">
			<span style="margin-left:5px; font-size:20px; font-weight:bolder;">주간연재</span>
			<span style="margin-left:5px; font-size:13px; font-weight:bold; color:#D8D8D8;">WEEKLYWEBTOON</span>
		</div>
		<div style="width:100%; height:50px; line-height:50px; text-align:right;">
			<a href="weekly_all" style="font-size:15px; font-weight:bold; margin-right:20px;">
				전체보기
			</a>
			<a href="#" style="font-size:25px; font-weight:900; color:#817EE4; margin-right:10px;">
				요일별 보기
			</a>
		</div>
		<div id="day">
			<ul>
				<li>
					<a href="#">신작</a>
				</li>
				<c:forEach var="dlist" items="${dlist }">
					<c:if test="${dlist.today_status=='today' }">
						<li id="today_li" style="backgorund:#D8D8D8; border: 1px solid #817EE4;">
							<a href="weekly?today_param=${dlist.today }" id="a_tag">${dlist.today }</a>
							<label for="today_li" style="width:55px; height:20px; font-size:13px; line-height:20px; position:relative; top:-80px; border:1px solid #817EE4; background:#817EE4; color:white; font-weight:bold; border-radius:10px;">TODAY</label>
						</li>
					</c:if>
					<c:if test="${dlist.today_status!='today' }">
						<li>
							<a href="weekly?today_param=${dlist.today }" id="a_tag">${dlist.today }</a>
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		<div id="tlist_body">
			<c:forEach var="tlist" items="${tlist }">
				<div id="tlist_div">
					<div id="tlist_img">
						<a href="episode_page?toon_num=${tlist.toon_num }">
							<img src="resources/toon_main_img/${tlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
						</a>
					</div>
					<div id="tlist_cate">
						<span style="font-weight:bold; font-size:12px; margin-left:10px;">${tlist.cate_name }</span>
					</div>
					<div id="tlist_title">
						<span style="font-weight:bold; margin-left:10px;">${tlist.toon_title }</span>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>