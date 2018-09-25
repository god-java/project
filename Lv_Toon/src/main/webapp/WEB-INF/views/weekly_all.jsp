<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#weekly_all{width:1260px; margin:0 auto; height:1000px;}
#day{width:100%; height:70px;}
#day ul{width:100%; height:100%; display:flex; flex-direction:row;}
#day ul li{width:12.5%; height:100%; border:1px solid #D8D8D8; border-left:none; list-style:none; line-height:70px; text-align:center;}
#day ul li:first-child{border-left:1px solid #D8D8D8; }
#day a{display: block; width:100%; height:100%; -webkit-transition-duration:0.2s}
#a_tag:hover{background:#817EE4; font-size:18px; color:white;}

#tlist_body{width:80%; height:157.5px; margin:20px auto;}
#tlist_title{width:100%; height:20px; line-height:20px;}
#tlist_cate{width:100%; height:10px; line-height:10px;}
#tlist_top{width:100%; height:80%; overflow:hidden;}
#tlist_bottom{width:100%; height:20%; text-align:left;}
#tlist_title_a{font-weight:bold; font-size:12px; margin-left:2px;}
#tlist_cate_a{font-weight:bold; font-size:12px; margin-left:2px;}
#main_img{width:100%; height:100%; -webkit-transition-duration:0.5s;}
#main_img:hover{-webkit-transform:scale(1.2)}
</style>
</head>
<body>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".weekly").click(function(){
			$.ajax({
				url : 'today_info',
				type : 'get',
				success : function(data){
					var res = data
					location.href="weekly?today_param="+res
				}
			})
		})
	})
	</script>
	<div id="weekly_all">
		<div style="width:100%; height:100px; line-height:100px;">
			<span style="margin-left:5px; font-size:20px; font-weight:bolder;">주간연재</span>
			<span style="margin-left:5px; font-size:13px; font-weight:bold; color:#D8D8D8;">WEEKLYWEBTOON</span>
		</div>
		<div style="width:100%; height:50px; line-height:50px; text-align:right;">
			<a href="weekly_all" style="font-size:25px; font-weight:900; color:#817EE4; margin-right:10px;">
				전체보기
			</a>
			<a href="" id="weekly" class="weekly" style="font-size:15px; font-weight:bold; margin-right:20px;">
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
						<li id="today_li" style="backgorund:#D8D8D8; border: 2px solid #817EE4; border-bottom:none;">
							<a href="weekly?today_param=${dlist.today }" id="a_tag">${dlist.today }</a>
							<label for="today_li" style="width:55px; height:20px; font-size:13px; line-height:20px; position:relative; top:-80px; border:1px solid #817EE4; background:#817EE4; color:white; font-weight:bold; border-radius:10px;">TODAY</label>
							<div style="position:relative; width:100%; top:-20px; left:-2px; border:2px solid #817EE4; border-top:none; z-index:1;">
								<c:forEach var="today_list" items="${today_list }">
									<div id="tlist_body" style="margin-top:-1px;">
										<div id="tlist_top">
											<a href="episode_page?toon_num=${monday_list.toon_num }">
												<img src="resources/toon_main_img/${today_list.main_image }" id="main_img">
											</a>
										</div>
										<div id="tlist_bottom">
											<div id="tlist_title">
												<a href="episode_page?toon_num=${monday_list.toon_num }" id="tlist_title_a">${today_list.toon_title }</a>
											</div>
											<div id="tlist_cate">
												<a href="episode_page?toon_num=${monday_list.toon_num }" id="tlist_cate_a">${today_list.cate_name }</a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</li>
					</c:if>
					<c:if test="${dlist.today_status!='today' }">
						<li>
							<a href="weekly?today_param=${dlist.today }" id="a_tag">${dlist.today }</a>
							<div style="position:relative; width:100%; left:-1px; border:1px solid #D8D8D8;">
								<c:if test="${dlist.today=='월' }">
									<c:forEach var="monday_list" items="${monday_list }">
										<div id="tlist_body">
											<div id="tlist_top">
												<a href="episode_page?toon_num=${monday_list.toon_num }">
													<img src="resources/toon_main_img/${monday_list.main_image }" id="main_img">
												</a>
											</div>
											<div id="tlist_bottom">
												<div id="tlist_title">
													<a href="episode_page?toon_num=${monday_list.toon_num }" id="tlist_title_a">${monday_list.toon_title }</a>
												</div>
												<div id="tlist_cate">
													<a href="episode_page?toon_num=${monday_list.toon_num }" id="tlist_cate_a">${monday_list.cate_name }</a>
												</div>
												
											</div>
										</div>
									</c:forEach>
								</c:if>
								<c:if test="${dlist.today=='화' }">
									<c:forEach var="tuesday_list" items="${tuesday_list }">
										<div id="tlist_body">
											<div id="tlist_top">
												<a href="episode_page?toon_num=${tuesday_list.toon_num }">
													<img src="resources/toon_main_img/${tuesday_list.main_image }" id="main_img">
												</a>
											</div>
											<div id="tlist_bottom">
												<div id="tlist_title">
													<a href="episode_page?toon_num=${tuesday_list.toon_num }" id="tlist_title_a">${tuesday_list.toon_title }</a>
												</div>
												<div id="tlist_cate">
													<a href="episode_page?toon_num=${tuesday_list.toon_num }" id="tlist_cate_a">${tuesday_list.cate_name }</a>
												</div>
												
											</div>
										</div>
									</c:forEach>
								</c:if>
								<c:if test="${dlist.today=='수' }">
									<c:forEach var="wednesday_list" items="${wednesday_list }">
										<div id="tlist_body">
											<div id="tlist_top">
												<a href="episode_page?toon_num=${wednesday_list.toon_num }">
													<img src="resources/toon_main_img/${wednesday_list.main_image }" id="main_img">
												</a>
											</div>
											<div id="tlist_bottom">
												<div id="tlist_title">
													<a href="episode_page?toon_num=${wednesday_list.toon_num }" id="tlist_title_a">${wednesday_list.toon_title }</a>
												</div>
												<div id="tlist_cate">
													<a href="episode_page?toon_num=${wednesday_list.toon_num }" id="tlist_cate_a">${wednesday_list.cate_name }</a>
												</div>
												
											</div>
										</div>
									</c:forEach>
								</c:if>
								<c:if test="${dlist.today=='목' }">
									<c:forEach var="thursday_list" items="${thursday_list }">
										<div id="tlist_body">
											<div id="tlist_top">
												<a href="episode_page?toon_num=${thursday_list.toon_num }">
													<img src="resources/toon_main_img/${thursday_list.main_image }" id="main_img">
												</a>
											</div>
											<div id="tlist_bottom">
												<div id="tlist_title">
													<a href="episode_page?toon_num=${thursday_list.toon_num }" id="tlist_title_a">${thursday_list.toon_title }</a>
												</div>
												<div id="tlist_cate">
													<a href="episode_page?toon_num=${thursday_list.toon_num }" id="tlist_cate_a">${thursday_list.cate_name }</a>
												</div>
												
											</div>
										</div>
									</c:forEach>
								</c:if>
								<c:if test="${dlist.today=='금' }">
									<c:forEach var="wednesday_list" items="${friday_list }">
										<div id="tlist_body">
											<div id="tlist_top">
												<a href="episode_page?toon_num=${friday_list.toon_num }">
													<img src="resources/toon_main_img/${friday_list.main_image }" id="main_img">
												</a>
											</div>
											<div id="tlist_bottom">
												<div id="tlist_title">
													<a href="episode_page?toon_num=${friday_list.toon_num }" id="tlist_title_a">${friday_list.toon_title }</a>
												</div>
												<div id="tlist_cate">
													<a href="episode_page?toon_num=${friday_list.toon_num }" id="tlist_cate_a">${friday_list.cate_name }</a>
												</div>
												
											</div>
										</div>
									</c:forEach>
								</c:if>
								<c:if test="${dlist.today=='토' }">
									<c:forEach var="Saturday_list" items="${Saturday_list }">
										<div id="tlist_body">
											<div id="tlist_top">
												<a href="episode_page?toon_num=${Saturday_list.toon_num }">
													<img src="resources/toon_main_img/${Saturday_list.main_image }" id="main_img">
												</a>
											</div>
											<div id="tlist_bottom">
												<div id="tlist_title">
													<a href="episode_page?toon_num=${Saturday_list.toon_num }" id="tlist_title_a">${Saturday_list.toon_title }</a>
												</div>
												<div id="tlist_cate">
													<a href="episode_page?toon_num=${Saturday_list.toon_num }" id="tlist_cate_a">${Saturday_list.cate_name }</a>
												</div>
												
											</div>
										</div>
									</c:forEach>
								</c:if>
								<c:if test="${dlist.today=='일' }">
									<c:forEach var="sunday_list" items="${sunday_list }">
										<div id="tlist_body">
											<div id="tlist_top">
												<a href="episode_page?toon_num=${sunday_list.toon_num }">
													<img src="resources/toon_main_img/${sunday_list.main_image }" id="main_img">
												</a>
											</div>
											<div id="tlist_bottom">
												<div id="tlist_title">
													<a href="episode_page?toon_num=${sunday_list.toon_num }" id="tlist_title_a">${sunday_list.toon_title }</a>
												</div>
												<div id="tlist_cate">
													<a href="episode_page?toon_num=${sunday_list.toon_num }" id="tlist_cate_a">${sunday_list.cate_name }</a>
												</div>
												
											</div>
										</div>
									</c:forEach>
								</c:if>
							</div>
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>