<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>${tdto.toon_title } - 레벨툰</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
	h5{font-size:16px; font-weight:bold; color:#5c5b5b;}
	#zzim_btn{width:100px; height:40px; background:white; color:#333; border-radius:5px; border:1px solid #9e9e9e; font-size:14px; letter-spacing:-1.5px; cursor:pointer; margin-left:10px; -webkit-transition-duration:0.5s;}
	#zzim_btn:hover{background:#e6e6e6; border:1px solid #adadad;}
	#upload_episode_btn{float:right; width:40px; height:40px; background:white; color:#333; border-radius:5px; border:1px solid #9e9e9e; font-size:20px; letter-spacing:-1.5px; cursor:pointer; margin-left:10px;}
	
	#view_ep_btn{width:330px; height:40px; background:#817EE4; color:white; border-radius:5px; border:1px solid #817EE4; font-size:14px; letter-spacing:-1.5px; cursor:pointer; -webkit-transition-duration:0.5s;}
	#view_ep_btn:hover{color:black; background:#C9C6FF; border:1px solid #C9C6FF;}
	#ep_info{width:100%; height:120px; line-height:120px; vertical-align:middle; text-align:center; margin-bottom:7px; background:#fcfcfc; cursor:pointer; -webkit-transition-duration:0.5s;}
	#ep_info:hover{background:#f4f4f4;}
	#thumb_div{width:200px; height:120px; float:left;}
	.thumb_img{width:100%; height:100%;}
	#share_fb_btn{width:100px; height:45px; color:#5995c8; background:white; border:1px solid #5995c8; border-radius:5px; font-size:18px; font-weight:300; -webkit-transition-duration:0.5s;}
	#share_fb_btn:hover{color:white; background:#5995c8;}
	#share_tw_btn{width:80px; height:45px; color:#27d4f3; background:white; border:1px solid #27d4f3; border-radius:5px; font-size:18px; font-weight:300; margin-left:8px; -webkit-transition-duration:0.5s;}
	#share_tw_btn:hover{color:white; background:#27d4f3;}
	#all_charge_btn{width:80px; font-weight:bold; color:white; height:30px; background:#c1c3d1; border:1px solid #b2b5c6; font-size:12px; -webkit-transition-duration:0.5s;}
	#all_charge_btn:hover{background:#a4a7bb; border:1px solid #8f93ac;}
	#order_btn{width:80px; font-weight:bold; color:#333; height:30px; background:white; border:1px solid #9e9e9e; font-size:12px; -webkit-transition-duration:0.5s;}
	#order_btn:hover{background:#e6e6e6; border:1px solid #adadad;}
	
	#ep_div{width:100%; margin-top:40px;}
	#ep_div_left{width:790px; float:left;}
	#ad_div{width:100%; height:100px; margin-bottom:20px;}
	
	#ep_list{width:100%; margin-top:7px;}
	.list_ep_num{float:left; width:90px; font-weight:400; font-size:30px;}
	.list_ep_title{float:left; width:215px; font-weight:300; text-align:left; padding-left:10px; font-size:15px;}
	.list_ep_star{float:left; width:80px; font-weight:200; font-size:15px;}
	.list_ep_upload_date{float:left; width:100px; font-weight:400; font-size:15px;}
	.list_ep_coin{float:left; width:90px; font-weight:400; font-size:15px;}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		alert("~~")
		$(document).on('click', '#upload_episode_btn', function(){
			var ep_num = ${elist.size()}
			location.href = "episode_upload?toon_num="+${tdto.toon_num}+"&ep_num="+ep_num
		})
		
		$(document).on('click', '#ep_info', function(){
         var ep_num = $(this).attr('param')
         var toon_num = $(this).attr('param2')
         var free = $(this).attr("param3")
         var view_coin = $(this).attr("param4")
         var my_coin = "${coin}"
         var member_num = "${member_num}"
        if(free=='x'){
				 if(member_num==""){
	        		 alert("로그인이 필요한 서비스 입니다.")
	        	 }else{
	        		 $.ajax({	
	 		        	url : 'find_use',
	 		        	type : 'get',
	 		        	data : {'member_num' : member_num,
	 		        		 	'toon_num' : toon_num,
	 		        		 	'ep_num' : ep_num
	 		        		 	},
	 		        	success : function(data){
	 		        		var res = data
	 		        		if(res==0){
	 		        			if(my_coin<view_coin){
	 					        	 if(confirm("코인이 부족합니다. 코인을 충전하시겠습니까?")==1){
	 					        		 location.href="coin_charge"
	 					        	 }else{
	 					        		 return false
	 					        	 }
	 			        		 }else{
	 			        			 if(confirm("유료 회차 입니다 코인으로 바로 결제하시겠습니까? (차감코인 : "+view_coin+")")==1){
	 					        		$.ajax({
	 					        			url : 'coin_subtract',
	 					        			type : 'get',
	 					        			data : {'member_num' : member_num,
	 					        					'view_coin' : view_coin,
	 					        					'toon_num' : toon_num,
	 					        					'ep_num' : ep_num
	 					        					},
	 					        			success : function(data){
	 					        				var res=data
	 					        				if(res==1){
	 					        					location.href = "toon_detail?toon_num="+toon_num+"&ep_num="+ep_num
	 					        				}else{
	 					        					return false
	 					        				}
	 					        			}
	 					        		
	 					        		})
	 					        	 }else{
	 					        		 return false
	 					        	 }
	 			        		 }
	 		        		}else{
	 		        			location.href = "toon_detail?toon_num="+toon_num+"&ep_num="+ep_num
	 		        		}
	 		        	}
	 					
	 				})
	 				
	        		 
	        	 }
	         return false
         }else{
        	 location.href = "toon_detail?toon_num="+toon_num+"&ep_num="+ep_num
         }
         
      })
		
		var ck_zzim = ${ck_zzim}
		if(ck_zzim == 1){
			$('#zzim_btn').css({'border' : '1px solid red', 'color' : 'red'})
		}
		
		var member_num = "${member_num}"
		$(document).on('click', '#zzim_btn', function(){
			var toon_num = ${tdto.toon_num}
			var member_num = "${member_num}"
			if(member_num == ""){
				alert("로그인 후 이용해 주세요.")
			}else if(ck_zzim == 0){
				$.ajax({
					url : 'add_zzim',
					type : 'post',
					data : {'toon_num' : toon_num,
							'member_num' : member_num},
					success : function(data){
						alert('찜 목록에 추가되었습니다.')
						$('#zzim_btn').css({'border' : '1px solid red', 'color' : 'red'})
					},
					error : function(error){
						alert('ㅜㅜ')
					}
				})
				ck_zzim = 1
			}else if(ck_zzim == 1){
				$.ajax({
					url : 'remove_zzim',
					type : 'post',
					data : {'toon_num' : toon_num,
							'member_num' : member_num},
					success : function(data){
						alert('찜 목록에서 삭제되었습니다.')
						$('#zzim_btn').css({'border' : '1px solid #9e9e9e', 'color' : '#333'})
					},
					error : function(error){
						alert('ㅜㅜ')
					}
				})
				ck_zzim = 0
			}
		})
	
		var order_swit = 0
		$(document).on('click', '#order_btn', function(){
			if(order_swit==0){ // desc 정렬
				order_swit = 1
			} else {
				order_swit = 0
			}
		})
	})
</script>
<body>
	<div id="" style="width:1260px; margin:0 auto;">
		<div id="toon_info" style="width:100%; height:390px; margin-top:40px;">
			<div style="float:left; width:280px; height:100%;">
				<img src="resources/toon_main_img/${tdto.main_image }" style="width:100%; height:100%;">
			</div>
			<div style="float:right; width:980px; height:100%; text-align:left; letter-spacing:-1.5px;">
				<div id="toon_title" style="padding:30px 50px;/* margin-top:20px; margin-bottom:20px; margin-left:50px; */">
					<h2 style="font-size:50px; font-weight:300; letter-spacing:-1.5px; margin:0;">${tdto.toon_title }</h2>					
				</div>
				<div id="toon_content" style="height:244px; font-size:10px; background:#fdfcfc; padding:10px 50px;">
					<div style="color:#9e9e9e; margin-top:10px;">
						글/그림 :
						<c:choose>
							<c:when test="${tdto.toon_writer == tdto.toon_painter }">
								${tdto.toon_writer }
							</c:when>
							<c:otherwise>
								${tdto.toon_writer } / ${tdto.toon_painter }
							</c:otherwise>
						</c:choose>
						&nbsp;&nbsp;&nbsp;&nbsp;
						장르 : ${tdto.cate_name }
					</div>
					<div style="letter-spacing:-1.5px;">
						<h5>작품정보</h5>
						<p style="height:80px;">
						${tdto.toon_info }
						</p>
					</div>
					<div id="btns" style="position:relative; width:100%;">
						<input type="button" id="view_ep_btn" value="무료로 첫화보기" style="">
						<button id="zzim_btn">
							<i class="far fa-heart" style="margin-right:5px;"></i> 찜하기
						</button>
						<button id="upload_episode_btn">
							+
						</button>
					</div>
				</div>
			</div>
		</div>
		<div id="ep_div">
			<div id="ep_div_left">
				<div id="ad_div">
					<img src="resources/ad_img/2018_09_13_15368318313371.png" style="width:100%; height:100%;">
				</div>
				<div style="width:100%; height:30px;">
					<h5 style="margin:0; float:left;">총 ${ep_count }화 연재중</h5>				
					<span style="float:right;">
						<input type="button" id="all_charge_btn" value="전체소장">
						<input type="button" id="order_btn" value="정렬변경">
					</span>
				</div>
				<div id="ep_list">
					<c:forEach var="elist" items="${elist }">
						<c:if test="${elist.saw_status=='o' }">
							<div id="ep_info" param="${elist.ep_num }" param2="${elist.toon_num }" param3="${elist.free }" param4="${elist.view_coin }" style="background:#EAEAEA;">
								<div id="thumb_div" style="position:relative;">
									<div class="thumb_img">
										<img id="ep_img" class="ep_img" src="resources/episode_main_img/${elist.ep_main_image }" style="width:100%; height:100%;">
										<c:if test="${elist.d_day>0 }">
											<span style="position:absolute; width:40px; height:20px; line-height:20px; font-weight:boler; top:0; left:0; color:white; background:rgba(0,0,0,0.8);">
												D-<span style="color:yellow">${elist.d_day }</span>
											</span>
										</c:if>
									</div>
								</div>						
								<div class="list_ep_num">${elist.ep_num }</div>
								<div class="list_ep_title">${elist.ep_title }</div>
								<div class="list_ep_star"><i class="fas fa-star" style="color:#333;"></i>&nbsp;${elist.ep_star_rating }</div>
								<div class="list_ep_upload_date">${elist.ep_upload_date }</div>
								<div class="list_ep_coin">
									<c:choose>
										<c:when test="${elist.free=='o' }">
											무료
										</c:when>
										<c:when test="${elist.free=='x' }">
											유료
										</c:when>
									</c:choose>
								</div>
							</div>	
						</c:if>
						<c:if test="${elist.saw_status!='o' }">
							<div id="ep_info" param="${elist.ep_num }" param2="${elist.toon_num }" param3="${elist.free }" param4="${elist.view_coin }">
								<div id="thumb_div" style="position:relative;">
									<div class="thumb_img">
										<img id="ep_img" class="ep_img" src="resources/episode_main_img/${elist.ep_main_image }" style="width:100%; height:100%;">
										<c:if test="${elist.d_day>0 }">
											<span style="position:absolute; width:40px; height:20px; line-height:20px; font-weight:boler; top:0; left:0; color:white; background:rgba(0,0,0,0.8);">
												D-<span style="color:yellow">${elist.d_day }</span>
											</span>
										</c:if>
									</div>
								</div>						
								<div class="list_ep_num">${elist.ep_num }</div>
								<div class="list_ep_title">${elist.ep_title }</div>
								<div class="list_ep_star"><i class="fas fa-star" style="color:#333;"></i>&nbsp;${elist.ep_star_rating }</div>
								<div class="list_ep_upload_date">${elist.ep_upload_date }</div>
								<div class="list_ep_coin">
									<c:choose>
										<c:when test="${elist.free=='o' }">
											무료
										</c:when>
										<c:when test="${elist.free=='x' }">
											유료
										</c:when>
									</c:choose>
								</div>
							</div>	
						</c:if>						
					</c:forEach>
				</div>	
				<%-- <ul class="ep_list" style="list-style:none; display:block; padding:0; margin:0;">
					<c:forEach var="elist" items="${elist }">
						<li class="ep_list_li" style="width:100%; text-align:-webkit-match-parent; overflow:hidden; margin-bottom:7px; background:#fcfcfc; -webkit-transition-duration:0.5s;">
							<a href="view_episode?toon_num=${elist.toon_num}&ep_num=${elist.ep_num}" style="display:block; width:100%;">
								<div class="thumb_img" style="display:block; width:200px;">
									<img src="resources/episode_main_img/${elist.ep_main_image }" style="width:200px; height:120px;">
								</div>
								<div class="list_ep_num" style="display:block; position:relative; width:90px; text-align:center; font-weight:400; font-size:20px;">${elist.ep_num }</div>
								<div class="list_ep_title" style="display:block; position:relative; width:90px; text-align:center; font-weight:400; font-size:20px;">
							</a>
						</li>
					</c:forEach>					
				</ul> --%>
				
			</div>
			
			<div id="ep_div_right" style="float:right; width:410px; height:200px; margin-left:60px;">
				<h5 style="margin:0; margin-bottom:30px;">SNS공유하기</h5>
				<div id="share_btns">
					<input type="button" id="share_fb_btn" value="facebook">
					<input type="button" id="share_tw_btn" value="twitter">
				</div>
				<h5 style="margin:0; margin-bottom:30px; margin-top:40px;">PD의 한마디</h5>
				<p>~~~~~~~~~~~~~asdasdasdsADQWEQWDDASDASqweqe~~~~</p>
				<hr style="margin-top:20px; margin-bottom:20px; border:0; border-top:1px solid #d8d8d8;">
				<div style="float:right; width:100%;">
					<input type="radio" id="rec_cate" name="group" checked><label for="rec_cate">장르추천</label>
				</div>
			</div>
		</div>
	</div>
</body>
</html>