<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#rank{width:1260px; height:1000px; margin:30px auto;}
#cate{width:100%; height:70px;}
#cate ul{width:100%; height:100%; display:flex; flex-direction:row;}
#cate ul li{width:10%; height:100%; border:1px solid #D8D8D8; border-left:none; list-style:none; line-height:70px; text-align:center;}
#cate ul li:first-child{border-left:1px solid #D8D8D8; }
#cate a{display: block; width:100%; height:100%; -webkit-transition-duration:0.2s}
#a_tag:hover{background:#817EE4; font-size:18px; color:white;}

#tlist_body{width:100%; margin-top:20px;}
#tlist_div{width:17.5%; height:400px; margin-left:25px; margin-top:50px; display:inline-block;}
#tlist_img{width:100%; height:250px; overflow:hidden;}
#tlist_cate{width:100%; height:20px; line-height:20px;}
#tlist_title{width:100%; height:30px; line-height:30px;}
#main_img:hover{-webkit-transform:scale(1.03);}

#rank_1,#rank_1 div,#rank_1 span{background:#010123; color:white;}

</style>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	var star_score=${star_score}
	var i = 0.0
	var interval = setInterval(function(){
		if(i>=star_score-0.1){
			clearInterval(interval)
			
		}
		$("#star_score").html(i.toFixed(1))
		$("#red_star").css({'width':7.28*i+'%'})  
		
		i=i+0.1
	},10)
})
</script>
	<div id="rank" style="position:relative;">
			<div style="width:100%; height:100px; line-height:100px;">
				<span style="margin-left:5px; font-size:20px; font-weight:bolder;">랭킹</span>
				<span style="margin-left:5px; font-size:13px; font-weight:bold; color:#D8D8D8;">RANKING</span>
			</div>
			<div id="cate">
				<ul>
					<li>
						<a href="rank?type=all&cate_num=1" id="a_tag">전체</a>  
					</li>
					<c:forEach var="clist" items="${clist }">
							<li>
								<a href="rank?type=cate&cate_num=${clist.cate_num }" id="a_tag">${clist.cate_name }</a>  
							</li>
					</c:forEach>
				</ul>
			</div>
			<c:if test="${type=='all' }">
			<div id="tlist_body">
			<c:set var="rank" value="1"/>
				<c:forEach var="tlist" items="${tlist }">
					<c:if test="${rank==1 }">
						<div id="rank_1" style="width:60%; height:350px; border:1px solid gray; display:flex; float:left; flex-direction:row; overflow:hidden;">
							<div style="width:30%; height:100%:">
								<img src="resources/toon_main_img/${tlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
							</div>
							<div style="width:70%; height:100%:">
								<div style="width:100%; height:60px; background:black;">
									<div style="width:60px; height:60px; background:red; font-size:20px; text-align:center; line-height:60px;">1위</div>
								</div>
								<div style="width:100%; height:240px;">
									<div style="width:90%; height:90%; margin:0 auto; margin-top:5%;">
										<div style="width:100%; height:50%; display:flex; flex-direction:row;">
											<div style="width:70%; height:100%;">
												<span style="font-size:30px; position:relative; top:0;">${tlist.toon_title }</span><br>
												<span>글/그림 : ${tlist.toon_writer }/${tlist.toon_painter }</span>
											</div>
											
											<div style="width:30%; height:100%; position:relative;">
												<div id="star_score" style=" width:90px; height:90px; position:absolute; font-size:25px; left:10%; top:-8%; line-height:90px; text-align:center; border-radius:100%; border:2px solid red;">
													
												</div>
												<div style="width:100%; height:16px; position:absolute; right:3%; bottom:0; ">
													<div style="width:100%; height:16px; float:left; position:absolute; left:12.5%; overflow:hidden; background:url(resources/icon/stars-md.png) no-repeat 0 0;">
													</div>
													<div id="red_star" style="width:0px; height:16px; float:left; position:absolute; left:12.5%; overflow:hidden; background:url(resources/icon/stars-md.png) no-repeat 0 -16px;">
													</div>
												</div>
											</div>
										</div>
										<div style="width:100%; height:50%;">
											<div style="width:90%; height:90%; margin:0 auto; margin-top:5%;">
												${tlist.toon_info }
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				
					<c:if test="${rank==2 || rank==3 }">
						<div id="tlist_div" style="height:350px; display:inline-block; float:left; position:relative; top:-50px;">
							<div id="tlist_img" style="height:350px;">
								<a href="episode_page?toon_num=${tlist.toon_num }">
									<img src="resources/toon_main_img/${tlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
								</a>
							</div>
							
							<div style="position:absolute; text-align:center; color:white; top:0; left:0; width:50px; height:50px; background:red; line-height:50px; font-size:20px">
								${rank }위
							</div>
							<div style="position:absolute; width:100%; height:50px; background:rgba(0,0,0,0.5); left:0; bottom:0; color:white;">
								<div style="width:90%; height:90%; margin:0 auto; margin-top:5%;">
									<span style="width:100%; display:block; font-size:11px;">${tlist.toon_title }</span>
									<span style="width:100%; display:block; font-size:11px; color:#817EE4;">${tlist.cate_name }</span>
								</div>
							</div>
						</div>
					</c:if>
					
					
					
					<c:if test="${rank>3 }">
						<div id="tlist_div">
							<div id="tlist_img">
								<a href="episode_page?toon_num=${tlist.toon_num }">
									<img src="resources/toon_main_img/${tlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
								</a>
							</div>
							<div style="width:100%; height:50px; display:flex; flex-direction:row;">
								<div style="width:50px; height:100%; background:rgba(0,0,0,0.2); line-height:50px; text-align:center; font-size:20px;">
									${rank }위
								</div>
								<div style="width:70%; height:100%;">
									<div style="width:90%; height:90%; margin:0 auto; margin-top:5%;">
										<div style="width:100%;">${tlist.toon_title }</div>
										<div style="width:100%;"><span>${tlist.cate_name }</span></div>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<c:set var="rank" value="${rank+1 }"/>
				</c:forEach>
			</div>
		</c:if>
		
		<c:if test="${type!='all' }">
		<c:if test="${tlist.size()>0 }">
			<c:set var="rank" value="1"/>
			<c:forEach var="tlist" items="${tlist }">
				<div id="tlist_div">
							<div id="tlist_img">
								<a href="episode_page?toon_num=${tlist.toon_num }">
									<img src="resources/toon_main_img/${tlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
								</a>
							</div>
							<div style="width:100%; height:50px; display:flex; flex-direction:row;">
								<div style="width:50px; height:100%; background:rgba(0,0,0,0.2); line-height:50px; text-align:center; font-size:20px;">
									${rank }위
								</div>
								<div style="width:70%; height:100%;">
									<div style="width:90%; height:90%; margin:0 auto; margin-top:5%;">
										<div style="width:100%;">${tlist.toon_title }</div>
										<div style="width:100%;"><span>${tlist.cate_name }</span></div>
									</div>
								</div>
							</div>
						</div>
				<c:set var="rank" value="${rank+1 }"/>
			</c:forEach>
		</c:if>
		</c:if>
		
		
	</div>
</body>
</html>