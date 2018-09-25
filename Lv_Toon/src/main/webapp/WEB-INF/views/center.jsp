<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/icofont/icofont.min.css">
<script src="resources/icofont/icofont.min.css"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.slider{width:100%; height:460px; position:relative;}
#center_top{width:1260px; height:1000px; margin:0 auto; margin-bottom:100px;}
#center_bottom{width:1260px; height:1000px; margin:0 auto; margin-top:50px;}
#tlist_body{width:100%; margin-top:50px;}
#tlist_div{width:22%; height:400px; margin-left:25px; margin-top:50px; display:inline-block;}
#tlist_img{width:100%; height:350px; overflow:hidden;}
#list_img{overflow:hidden;}
#tlist_cate{width:100%; height:20px; line-height:20px;}
#tlist_title{width:100%; height:30px; line-height:30px;}
#main_img:hover{-webkit-transform:scale(1.03);}
.list_title{width:100%; font-size:27px; font-weight:600px; letter-spacing:-1.5px; color:#333; margin-left:25px;}
.nlist_div{width:22%; height:480px; margin-left:25px; margin-top:20px; display:inline-block; background:white; border:1px solid #e8e8e8; position:relative;  overflow:hidden;}

#list_div{width:22%; height:480px; margin-left:25px; margin-top:20px; display:inline-block; background:white; border:1px solid #e8e8e8;}

canvas{display:inline-block; vertical-align:baseline; display:relative;}
.row_table>div{float:none; display:table-cell; padding:0; vertical-align:middle;}
.list_rank10{position:absolute; top:0px; list-style:none; padding:0; margin:0;}
.list_rank10 li{overflow:hidden; height:81px; border-bottom:1px solid #c7c7c7;}

#rank_row{width:100%; height:480px;}
#view_best{position:relative; float:left; width:50%; margin-top:40px; margin-bottom:15px;}
#best_img{position:relative; width:280px; height:396px; margin-left:30px; transition:all 0.5s ease-out; z-index:2;}
.best_flag{position:absolute; display:block; top:1px; left:0; z-index:100; width:57px; height:71px; background:url(resources/icon/badge-best.png) no-repeat 0 0;}
#best_info{position:absolute; top:17px; left:290px; width:324px; height:370px; background:#232529; color:white; border-radius:10px; z-index:1;}



.slider .slick-dots {
    position: absolute;
    bottom: 20px;
    left: -5%;
    margin-left: -540px;
    
}
.slider .slick-dots>li {
    display: inline-block;
    margin-right: 8px;
 
}

.slider .slick-dots>li.slick-active button {
    width: 25px;
    background-color: #817EE4;
}

.slider .slick-dots li button:before{font-size:0;}
.slider .slick-dots li button{width: 15px;
    height: 6px;
    border: 0;
    background-color: #515151;
    line-height: 1;
    font-size: 0;
    ransition: all 0.3s;
    -o-transition: all 0.3s;
    transition: all 0.3s;
    outline: 0;}
.slider .slick-dots li button{padding:2px;}

</style>
<script type="text/javascript" src="resources/jquery/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="resources/slick/slick-theme.css"/>

</head>
<body style="background:#fafafa;" onload="animateCircle();">
<script>
	$(document).ready(function(){
		$('.slider').slick({
			dots: true,
			infinite: true,
			slidesToShow: 1,
			slidesToScroll: 1,
			autoplay: true,
			autoplaySpeed: 3000,
			nextArrow: '<i class="icofont-thin-right icofont-5x" style="position:absolute; top:200px; color:white; left:1400px; opacity:0.6;"></i>',
			prevArrow: '<i class="icofont-thin-left icofont-5x" style="position:absolute; top:200px; color:white; left:100px; z-index:100; opacity:0.6;"></i>',
		});
		
		$('#recent_slider').slick({
			infinite: false,
			slidesToShow: 4,
			slidesToScroll: 1,
			nextArrow: '<button id="rec_next" style="position:absolute; background:white; width:30px; height:30px; top:-20px; left:1230px; border:1px solid #d8d8d8;"> > </button>',
			prevArrow: '<button id="rec_prev"style="position:absolute; background:white; width:30px; height:30px; top:-20px; left:1190px; border:1px solid #d8d8d8;"> < </button>',
		})
		
		$('#monthly_slider').slick({
			infinite: false,
			slidesToShow: 4,
			slidesToScroll: 1,
			nextArrow: '<button id="mon_next" style="position:absolute; background:white; width:30px; height:30px; top:-20px; left:1230px; border:1px solid #d8d8d8;"> > </button>',
			prevArrow: '<button id="mon_prev" style="position:absolute; background:white; width:30px; height:30px; top:-20px; left:1190px; border:1px solid #d8d8d8;"> < </button>',
		})
		
		$('#nlist_slider').slick({
			slidesToShow: 4
		})
		
		$('#theme_slider1').slick({
			infinite: false,
			slidesToShow: 4,
			slidesToScroll: 1,
			nextArrow: '<button id="rec_next" style="position:absolute; background:white; width:30px; height:30px; top:-20px; left:1230px; border:1px solid #d8d8d8;"> > </button>',
			prevArrow: '<button id="rec_prev"style="position:absolute; background:white; width:30px; height:30px; top:-20px; left:1190px; border:1px solid #d8d8d8;"> < </button>',
		})
		
		$('#theme_slider2').slick({
			infinite: false,
			slidesToShow: 4,
			slidesToScroll: 1,
			nextArrow: '<button id="rec_next" style="position:absolute; background:white; width:30px; height:30px; top:-20px; left:1230px; border:1px solid #d8d8d8;"> > </button>',
			prevArrow: '<button id="rec_prev"style="position:absolute; background:white; width:30px; height:30px; top:-20px; left:1190px; border:1px solid #d8d8d8;"> < </button>',
		})
	});	
</script>
<script type="text/javascript">
	$(document).ready(function(){		
		$(".nlist_div").mouseover(function(){
			var toon_num = $(this).attr("param")
			$(".info_div"+toon_num).css({'opacity':'1','background':'rgba(0,0,0,0.5)'})
			$("#view_btn"+toon_num).css({'top':'0px','width':'80%','height':'40px'})
		})
		
		$(".nlist_div").mouseout(function(){
			var toon_num = $(this).attr("param")
			$(".info_div"+toon_num).css({'opacity':'0','background':'rgba(0,0,0,0.0)'})
			$("#view_btn"+toon_num).css({'top':'200px','width':'0px','height':'0px'})
		})
		
		$(".view_btn").click(function(){
			var toon_num = $(this).attr("param")
			location.href="episode_page?toon_num="+toon_num
		})		
		
		$(document).on('click', '#div_1', function(){
			$('#div_1').css({'color' : 'red'})
	    	$('#div_6').css({'color' : '#787878'})
	    	$('.list_rank10').animate({'top' : '1px'}, 'slow');
		})
		
		$(document).on('click', '#div_6', function(){
			$('#div_1').css({'color' : '#787878'})
	    	$('#div_6').css({'color' : 'red'})
	    	$('.list_rank10').animate({'top' : '-412px'}, 'slow');
		})
		
		$(document).on('click', '#select_today', function(){
			$('#select_today').css({'color' : 'white', 'border' : '1px solid red', 'background' : 'red'})
			$('#select_new').css({'color' : '333', 'border' : '1px solid #aaa', 'background' : 'transparent'})
			
			$.ajax({
				url : 'rank_10',
				type : 'post',
				data : {'rank' : 'today'},
				dataType : 'json',
				success : function(data) {
					var rlist = data.rlist
					var rdto = data.rdto
					var best_html =  "<div id='best_img'>"
						best_html += "<div class='best_flag'></div>"
						best_html += "<a href='episode_page?toon_num="+rdto.toon_num +"'>"
						best_html += "<img src='resources/toon_main_img/"+rdto.main_img+"' style='width:100%; height:100%;'>"
						best_html += "</a>"
						best_html += "</div>"
						best_html += "<div id='best_info'>"
						best_html += "<div style='margin-left:40px; margin-top:25px;'>"
						best_html += "<span class='best_cate' style='display:block; font-size:11px; color:#7b7b7b;'>"+rdto.cate_name +"</span>"
						best_html += "<strong class='best_title' style='display:block; margin-bottom:5px; color:white; font-size:20px; font-weight:400; overflow:hidden;'>"+rdto.toon_title+"</strong>"
						best_html += "<span class='best_writer' style='display:block; font-size:12px; margin-bottom:15px; color:white;'>"
									if(rdto.toon_writer == rdto.toon_painter){
						best_html += "글/그림:"+rdto.toon_writer				
									}else{
						best_html += "글/그림:"+rdto.toon_writer+"/"+rdto.toon_painter			
									}						
						best_html += "</span>"
						best_html += "<div class='circle_box' style='dispaly:block;'>"
						best_html += "<span class='circle_score' style='position:absolute; width:1px; height:1px; padding:0; margin:-1px; overflow:hidden; clip:rect(0,0,0,0);'>평점</span>"
						best_html += "<div id='main_circle' class='circle' style='position:relative; display:inline-box;'>"
						best_html += "<canvas id='canvas_circle' width='80' height='80'></canvas>"
						best_html += "<strong style='position:absolute; top:0; left:0; width:80px; height:80px; color:red; text-align:center; line-height:80px; font-size:26px; font-weight:400;'>"+rdto.toon_star_rating+"</strong>"
						best_html += "</div>"
						best_html += "</div>"
						best_html += "<div class='best_content' style='width:92%; height:90px; margin:10px 0 10px; padding-top:15px; border-top:1px solid #44444b; line-height:1.8; font-size:12px; font-weight:400; overflow:hidden;'>"+rdto.toon_info +"</div>"
						best_html += "<button id='view_best"+rdto.toon_info +"' param='"+rdto.toon_info +"' style='width:92%; height:30px; border:1px solid red; color:white; background:red; font-weight:400; -webkit-transition-duration:0.5s;'>감상하기</button>"
						best_html += "</div>"
						best_html += "</div>"					
					$('#view_best').html(best_html)
					
					var j = 1
					var best_list = "<ol class='list_rank10'>"
					$.each(rlist, function(i){
						best_list +=  "<li>"
						best_list += "<a href='episode_page?toon_num="+rlist[i].toon_num+"' style='display:block; padding-top:8px;'>"
						best_list += "<div class='row_table' style='display:table; width:100%; table-layout:fixed;'>"
						best_list += "<div class='rank_num' style='width:64px; color:#222; text-align:center; font-size:30px;'>"+j+"</div>"
						best_list += "<div class='rank_img' style='width:95px;'>"
						best_list += "<img src='resources/toon_main_img2/"+rlist[i].main_image+"' style='width:95px; height:66px; vertical-align:middle;'>"
						best_list += "</div>"
						best_list += "<div class='rank_info' style='padding-left:15px;'>"
						best_list += "<span class='cate' style='display:block; color:#92b2de; font-size:12px;'>"+rlist[i].cate_name+"</span>"
						best_list += "<strong class='title' style='display:block; color:#222; font-size:16px; font-weight:400; overflow:hidden;'>"+rlist[i].toon_title+"</strong>"
						best_list += "<span class='writer' style='display:block; color:#aaa; font-size:12px;'>"
								if(rlist[i].toon_writer == rlist[i].toon_painter){
						best_list += rlist[i].toon_writer			
								}else{
						best_list += rlist[i].toon_writer+"|"+rlist[i].toon_painter		
								}	
						best_list += "</span>"
						best_list += "</div>"
						best_list += "</div>"
						best_list += "</a>"
						best_list += "</li>"
						j += 1
					})
					best_list += "</ol>"
					$('#rank_list_div').html(best_list)
				},
				error : function(error) {
					
				}
			})
		})
		
		$(document).on('click', '#select_new', function(){
			$('#select_new').css({'color' : 'white', 'border' : '1px solid red', 'background' : 'red'})
			$('#select_today').css({'color' : '333', 'border' : '1px solid #aaa', 'background' : 'transparent'})
			alert("!")
			$.ajax({
				url : 'rank_10',
				type : 'post',
				data : {'rank' : 'new'},
				dataType : 'json',
				success : function(data) {
					var rlist = data.rlist
					var rdto = data.rdto
					var best_html =  "<div id='best_img'>"
						best_html += "<div class='best_flag'></div>"
						best_html += "<a href='episode_page?toon_num="+rdto.toon_num +"'>"
						best_html += "<img src='resources/toon_main_img/"+rdto.main_img+"' style='width:100%; height:100%;'>"
						best_html += "</a>"
						best_html += "</div>"
						best_html += "<div id='best_info'>"
						best_html += "<div style='margin-left:40px; margin-top:25px;'>"
						best_html += "<span class='best_cate' style='display:block; font-size:11px; color:#7b7b7b;'>"+rdto.cate_name +"</span>"
						best_html += "<strong class='best_title' style='display:block; margin-bottom:5px; color:white; font-size:20px; font-weight:400; overflow:hidden;'>"+rdto.toon_title+"</strong>"
						best_html += "<span class='best_writer' style='display:block; font-size:12px; margin-bottom:15px; color:white;'>"
									if(rdto.toon_writer == rdto.toon_painter){
						best_html += "글/그림:"+rdto.toon_writer				
									}else{
						best_html += "글/그림:"+rdto.toon_writer+"/"+rdto.toon_painter			
									}						
						best_html += "</span>"
						best_html += "<div class='circle_box' style='dispaly:block;'>"
						best_html += "<span class='circle_score' style='position:absolute; width:1px; height:1px; padding:0; margin:-1px; overflow:hidden; clip:rect(0,0,0,0);'>평점</span>"
						best_html += "<div id='main_circle' class='circle' style='position:relative; display:inline-box;'>"
						best_html += "<canvas id='canvas_circle' width='80' height='80'></canvas>"
						best_html += "<strong style='position:absolute; top:0; left:0; width:80px; height:80px; color:red; text-align:center; line-height:80px; font-size:26px; font-weight:400;'>"+rdto.toon_star_rating+"</strong>"
						best_html += "</div>"
						best_html += "</div>"
						best_html += "<div class='best_content' style='width:92%; height:90px; margin:10px 0 10px; padding-top:15px; border-top:1px solid #44444b; line-height:1.8; font-size:12px; font-weight:400; overflow:hidden;'>"+rdto.toon_info +"</div>"
						best_html += "<button id='view_best"+rdto.toon_info +"' param='"+rdto.toon_info +"' style='width:92%; height:30px; border:1px solid red; color:white; background:red; font-weight:400; -webkit-transition-duration:0.5s;'>감상하기</button>"
						best_html += "</div>"
						best_html += "</div>"					
					$('#view_best').html(best_html)
					
					var j = 1
					var best_list = "<ol class='list_rank10'>"
					$.each(rlist, function(i){
						best_list +=  "<li>"
						best_list += "<a href='episode_page?toon_num="+rlist[i].toon_num+"' style='display:block; padding-top:8px;'>"
						best_list += "<div class='row_table' style='display:table; width:100%; table-layout:fixed;'>"
						best_list += "<div class='rank_num' style='width:64px; color:#222; text-align:center; font-size:30px;'>"+j+"</div>"
						best_list += "<div class='rank_img' style='width:95px;'>"
						best_list += "<img src='resources/toon_main_img2/"+rlist[i].main_image+"' style='width:95px; height:66px; vertical-align:middle;'>"
						best_list += "</div>"
						best_list += "<div class='rank_info' style='padding-left:15px;'>"
						best_list += "<span class='cate' style='display:block; color:#92b2de; font-size:12px;'>"+rlist[i].cate_name+"</span>"
						best_list += "<strong class='title' style='display:block; color:#222; font-size:16px; font-weight:400; overflow:hidden;'>"+rlist[i].toon_title+"</strong>"
						best_list += "<span class='writer' style='display:block; color:#aaa; font-size:12px;'>"
								if(rlist[i].toon_writer == rlist[i].toon_painter){
						best_list += rlist[i].toon_writer			
								}else{
						best_list += rlist[i].toon_writer+"|"+rlist[i].toon_painter		
								}	
						best_list += "</span>"
						best_list += "</div>"
						best_list += "</div>"
						best_list += "</a>"
						best_list += "</li>"
						j += 1
					})
					best_list += "</ol>"
					$('#rank_list_div').html(best_list)
				},
				error : function(error) {
					
				}
			})
		})
		
		
		$(window).scroll(function () {
			var height = $(document).scrollTop();			
			var obj = $("#rank_div").offset();
			if(height >= obj.top - 400){
				
				// rank 나타나게
			}
		}); 
	})
	
	function animateCircle(){
		var ctx = document.querySelector('#canvas_circle').getContext('2d');
		var end
		var toon_star_rating = ${odto.toon_star_rating }
		if(toon_star_rating <= 2.5){
			end = (270 + 36 * toon_star_rating) * Math.PI / 180
		}else{
			end = (36 * toon_star_rating - 90) * Math.PI / 180
		}
		for(var i = 0; i < 100; i++){
			draw(i);
		}
		
		function draw(delay){	       
			setTimeout(function() {
				ctx.strokeStyle = "#ee312f";
				ctx.lineWidth = 2;
				ctx.lineCap = 'butt';
			    
				ctx.clearRect(0, 0, 200, 200);
				ctx.beginPath();
				ctx.arc(41, 41, 38, 270 * Math.PI / 180, end / 100 * delay);
				// x, y , radius, startAngle, endAngle, clockwise
						
				/* ctx.fillStyle = "rgb(0, 255, 255)";
				ctx.fill(); */
			            
				ctx.stroke();
			}, delay * 10);
		}
	}
</script>
<div class="slider">
   <img src="resources/main_img/2018_07_27_1532675391662.jpg" style="width:100%; height:440px;">
   <img src="resources/main_img/2018_07_27_15326756703945.jpg" style="width:100%; height:440px;">
   <img src="resources/main_img/2018_07_27_15326768530291.jpg" style="width:100%; height:440px;">
</div>
<div id="center_div" style="width:100%;">
	<div id="center_top" style="height:1800px;">
		<div id="recent_list" style="width:100%;">
			<div id="recent_title" class="list_title">
				최신 업데이트
			</div>
			<div id="recent_slider" style="width:100%; height:500px;">
				<c:forEach var="rlist" items="${rlist }">
				<div id="list_div">
					<div id="list_img">
						<a href="episode_page?toon_num=${rlist.toon_num} ">
							<img src="resources/toon_main_img/${rlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
                  		</a>
               		</div>
	               	<div id="list_cate" style="margin-top:10px;">
	                  	<span style="font-weight:bold; font-size:12px; margin-left:10px; color:#92b2de;">${rlist.cate_name }</span>
	               	</div>
	               	<div id="list_title">
	                 	<span style="font-weight:bold; margin-left:10px; color:222; font-size:16px; overflow:hidden;">${rlist.toon_title }</span>
	               	</div>
	               	<div id="list_count" style=" margin-top:5px;">
	                 	<span style="font-weight:300; margin-left:10px; color:white; font-size:11px; background:#92b2de; padding:1px 5px;"> ${rlist.ep_count }화 </span>
	               	</div>
            	</div>
        	</c:forEach>
			</div>
		</div>
		
		<div id="monthly_list" style="width:100%; margin-top:50px;">
			<div id="monthly_title" class="list_title">
				월간연재
			</div>
			<div id="monthly_slider" style="width:100%; height:500px;">
				<c:forEach var="mlist" items="${mlist }">
					<div id="list_div">
						<div id="list_img">
							<a href="episode_page?toon_num=${mlist.toon_num} ">
								<img src="resources/toon_main_img/${mlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
	                  		</a>
	               		</div>
	               	<div id="list_cate" style="margin-top:10px;">
	                  	<span style="font-weight:bold; font-size:12px; margin-left:10px; color:#92b2de;">${mlist.cate_name }</span>
	               	</div>
	               	<div id="list_title">
	                 	<span style="font-weight:bold; margin-left:10px; color:222; font-size:16px; overflow:hidden;">${mlist.toon_title }</span>
	               	</div>
            	</div>
        	</c:forEach>
			</div>
		</div>
		
		<div id="new_list" style="width:100%; margin-top:50px;">
			<div id="new_title" class="list_title">
				신작소개
			</div>
			<div id="nlist_slider" style="width:100%; height:510px;">
				<c:set var="i" value="0"/>
				<c:forEach var="nlist" items="${nlist }">
					<c:if test="${i < 4 }">
						<div id="nlist_div${nlist.toon_num}" class="nlist_div" param="${nlist.toon_num}" style="height:500px;">
							<div id="list_img">
								<%-- <a href="episode_page?toon_num=${nlist.toon_num} "> --%>
									<img src="resources/toon_main_img/${nlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
		                  		<!-- </a> -->
		                  		<div id="info_div" class="info_div${nlist.toon_num }" style="width:100%; height:407.31px; text-align:center; position:absolute; left:0; top:0; background:rgba(0,0,0,0.0); opacity:0; -webkit-transition-duration:0.5s;">
									<div style="width:90%; height:80%; margin:0 auto; margin-top:5%; background:none; color:white;">
										<p style="font-size:20px;">${nlist.toon_title }</p>
			               				${nlist.toon_info }
									</div>
									<button id="view_btn${nlist.toon_num }" class="view_btn" param="${nlist.toon_num }" style="width:0%; height:0px; position:relative; top:100px; border:1px solid white; color:white; background:transparent; -webkit-transition-duration:0.5s;">바로보기</button>
		            			</div>	
		               		</div>
			               	<div id="list_cate" style="margin-top:10px;">
			                  	<span style="font-weight:bold; font-size:12px; margin-left:10px; color:#92b2de;">${nlist.cate_name }</span>
			               	</div>
			               	<div id="list_title">
			                 	<span style="font-weight:bold; margin-left:10px; color:222; font-size:16px; overflow:hidden;">${nlist.toon_title }</span>
			               	</div>
			               	<div id="list_writer">
			                 	<span style="font-weight:400; margin-left:10px; color:silver; font-size:13px; overflow:hidden;">
								<c:choose>
									<c:when test="${nlist.toon_writer == nlist.toon_painter }">
										${nlist.toon_writer }
									</c:when>
									<c:otherwise>
										${nlist.toon_writer } | ${nlist.toon_painter }
									</c:otherwise>
								</c:choose>
								</span>
			               	</div>
			               	<div id="list_date" style=" margin-top:5px;">
			                 	<span style="font-weight:300; margin-left:10px; color:white; font-size:11px; background:#92b2de; padding:1px 5px; margin-bottom:10px;"> ${nlist.reg_date } </span>
			               	</div>
			               	
			               			
		               </div>
	               </c:if>
	               <c:set var="i" value="${i+1}"/>
	        	</c:forEach>
			</div>
		</div>	
	</div>
	
	<div id="ad_div" style="width:100%; background:#1F2F54; height:185px;">
		<div id="ad_img" style="width:1230px; margin:0 auto; padding:0 15px;">
			<img src="resources/ad_img/2018_08_31_15356967874794.png" style="width:1200px; height:auto; margin-top:-65px; vertical-align: middle">
		</div>
	</div>
	
	<div id="rank_div" style="width:100%; background:#e7e9ec; marign:0 auto;">
		<div id="rank_div1" style="width:1260px; padding:80px 0; margin:0 auto;">
			<div id="rank_row">
				<div id="view_best">
					<div id="best_img">
						<div class="best_flag"></div>						
						<a href="episode_page?toon_num=${odto.toon_num} ">
							<img src="resources/toon_main_img/${odto.main_image }" style="width:100%; height:100%;">
						</a>
					</div>
					<div id="best_info">
						<div style="margin-left:40px; margin-top:25px;">
							<span class="best_cate" style="display:block; font-size:11px; color:#7b7b7b;">${odto.cate_name }</span>
							<strong class="best_title" style="display:block; margin-bottom:5px; color:white; font-size:20px; font-weight:400; overflow:hidden;">${odto.toon_title }</strong>
							<span class="best_writer" style="display:block; font-size:12px; margin-bottom:15px; color:white;">
								<c:choose>
									<c:when test="${odto.toon_writer == odto.toon_painter }">
										글/그림:${odto.toon_writer }
									</c:when>
									<c:otherwise>
										글/그림:${odto.toon_writer }/${odto.toon_painter }
									</c:otherwise>
								</c:choose>
							</span>
							<div class="circle_box" style="dispaly:block;">
								<span class="circle_score" style="position:absolute; width:1px; height:1px; padding:0; margin:-1px; overflow:hidden; clip:rect(0,0,0,0);">평점</span>
								<div id="main_circle" class="circle" data-value="0.98" style="position:relative; display:inline-box;">
									<canvas id="canvas_circle" width="80" height="80"></canvas>
									<strong style="position:absolute; top:0; left:0; width:80px; height:80px; color:red; text-align:center; line-height:80px; font-size:26px; font-weight:400;">${odto.toon_star_rating }</strong>
								</div>
							</div>
							<div class="best_content" style="width:92%; height:90px; margin:10px 0 10px; padding-top:15px; border-top:1px solid #44444b; line-height:1.8; font-size:12px; font-weight:400; overflow:hidden; ">
								${odto.toon_info }
							</div>
							<button id="view_best${odto.toon_info }" param="${odto.toon_info }" style="width:92%; height:30px; border:1px solid red; color:white; background:red; font-weight:400; -webkit-transition-duration:0.5s;">감상하기</button>
						</div>
					</div>
				</div>
				<div id="view_rank" style="float:right; width:40%; margin-bottom:15px;">
					<div id="rank_top" style="margin-bottom:10px; height:40px; padding-bottom:20px; border-bottom:3px solid #222;">
						<h2 style="margin:0; float:left; font-size:30px; font-weight:700;">TOP 10</h2>
						<div style="float:right; margin-top:15px;">
							<button id="select_today" style="width:70px; height:24px; background:red; border:1px solid red; color:white; font-size:12px; font-weight:300;">요일</button>
							<button id="select_new" style="width:70px; height:24px; background:transparent; border:1px solid #aaa; color:#333; font-size:12px; font-weight:300; margin-left:20px;">신작</button>
						</div>
					</div>
					<div style="position:relative; overflow:hidden; height:405px;">
						<div id="rank_list_div" style="display:block;">
							<ol class="list_rank10">
								<c:set var="j" value="1"/>
								<c:forEach var="drlist" items="${drlist }">
									<li>
										<a href="episode_page?toon_num=${drlist.toon_num} " style="display:block; padding-top:8px;">
											<div class="row_table" style="display:table; width:100%; table-layout:fixed;">
												<div class="rank_num" style="width:64px; color:#222; text-align:center; font-size:30px;">${j }</div>
												<div class="rank_img" style="width:95px;">
													<img src="resources/toon_main_img2/${drlist.main_image2 }" style="width:95px; height:66px; vertical-align:middle;">
												</div>
												<div class="rank_info" style="padding-left:15px;">
													<span class="cate" style="display:block; color:#92b2de; font-size:12px;">${drlist.cate_name}</span>
													<strong class="title" style="display:block; color:#222; font-size:16px; font-weight:400; overflow:hidden;">${drlist.toon_title}</strong>
													<span class="writer" style="display:block; color:#aaa; font-size:12px;">
														<c:choose>
															<c:when test="${drlist.toon_writer == drlist.toon_painter }">
																${drlist.toon_writer }
															</c:when>
															<c:otherwise>
																${drlist.toon_writer } | ${drlist.toon_painter }
															</c:otherwise>
														</c:choose>
													</span>
												</div>
											</div>
										</a>
									</li>
									<c:set var="j" value="${j+1}"/>
								</c:forEach>
							</ol>
						</div>						
					</div>
					<div style="width:100%; height:30px; font-size:20px; text-align:center; border-top:1px solid #c7c7c7; line-height:30px; vertical-align:middle; padding-top:5px;">
						<div id="div_1" style="float:left; width:50%; height:30px; border-right:1px solid #c7c7c7; color:red; cursor:pointer;">
							1 ~ 5
						</div>
						<div id="div_6" style="float:right; height:30px; width:49%; color:#787878; cursor:pointer;">
							6 ~ 10
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="center_bottom" style="height:1800px;">
	
	
	
		<div id="theme_list1" style="width:100%; margin-top:50px;">
			<div id="theme_title" class="theme_title" style="width:100%; height:80px; padding-left:25px;">
				<div class="theme_img" style="float:left; padding-right:15px;">
					<img src="resources/icon/2018_08_27_15353392523864.jpg" style="width:80px; height:80px; border-radius:50%; vertical-align:middle;">
				</div>
				<div class="theme_info" style="float:left; display:table-cell; vertical-align:center; padding-top:10px; vertical-align:top;">
					<small style="display:block; color:#989898; font-size:14px;">당신의 감성을 자극해봅니다..</small>
					<h3 style="margin:0; display:block; color:#222; letter-spacing:-1px; font-size:33px; font-weight:400;">'갬성' 웹툰</h3>
				</div>
			</div>
			
			<div id="theme_slider1" style="width:100%; height:510px;">
				<c:forEach var="trlist" items="${trlist }">
					<div id="list_div" style="height:500px;">
						<div id="list_img">
							<img src="resources/toon_main_img/${trlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
	                  		<div id="info_div" class="info_div${trlist.toon_num }" style="width:100%; height:407.31px; text-align:center; position:absolute; left:0; top:0; background:rgba(0,0,0,0.0); opacity:0; -webkit-transition-duration:0.5s;">
								<div style="width:90%; height:80%; margin:0 auto; margin-top:5%; background:none; color:white;">
									<p style="font-size:20px;">${trlist.toon_title }</p>
			               			${trlist.toon_info }
								</div>
								<button id="view_btn${trlist.toon_num }" class="view_btn" param="${trlist.toon_num }" style="width:0%; height:0px; position:relative; top:100px; border:1px solid white; color:white; background:transparent; -webkit-transition-duration:0.5s;">바로보기</button>
		            		</div>
	               		</div>
		               	<div id="list_cate" style="margin-top:10px;">
		                  	<span style="font-weight:bold; font-size:12px; margin-left:10px; color:#92b2de;">${trlist.cate_name }</span>
		               	</div>
		               	<div id="list_title">
		                 	<span style="font-weight:bold; margin-left:10px; color:222; font-size:16px; overflow:hidden;">${trlist.toon_title }</span>
		               	</div>
		               	<div id="list_writer">
							<span style="font-weight:400; margin-left:10px; color:silver; font-size:13px; overflow:hidden;">
							<c:choose>
								<c:when test="${trlist.toon_writer == trlist.toon_painter }">
									${trlist.toon_writer }
								</c:when>
								<c:otherwise>
									${trlist.toon_writer } | ${trlist.toon_painter }
								</c:otherwise>
							</c:choose>
							</span>
				        </div>
				        <div id="list_date" style=" margin-top:5px;">
				         	<span style="font-weight:300; margin-left:10px; color:white; font-size:11px; background:#92b2de; padding:1px 5px; margin-bottom:10px;"> ${trlist.reg_date } </span>
				        </div>
            		</div>
        		</c:forEach>
			</div>
		</div>
		
		
		<div id="theme_list2" style="width:100%; margin-top:50px;">
			<div id="theme_title" class="theme_title" style="width:100%; height:80px; padding-left:25px;">
				<div class="theme_img" style="float:left; padding-right:15px;">
					<img src="resources/icon/2018_08_28_15354177273642.jpg" style="width:80px; height:80px; border-radius:50%; vertical-align:middle;">
				</div>
				<div class="theme_info" style="float:left; display:table-cell; vertical-align:center; padding-top:10px; vertical-align:top;">
					<small style="display:block; color:#989898; font-size:14px;">여긴 어디, 나는 누구? 이세계로의 초대!</small>
					<h3 style="margin:0; display:block; color:#222; letter-spacing:-1px; font-size:33px; font-weight:400;">웰컴 투 '판타지'</h3>
				</div>
			</div>
			
			<div id="theme_slider2" style="width:100%; height:540px;">
				<c:forEach var="tflist" items="${tflist }">
					<div id="list_div" style="height:500px;">
						<div id="list_img">
							<img src="resources/toon_main_img/${tflist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
	                  		<div id="info_div" class="info_div${tflist.toon_num }" style="width:100%; height:407.31px; text-align:center; position:absolute; left:0; top:0; background:rgba(0,0,0,0.0); opacity:0; -webkit-transition-duration:0.5s;">
								<div style="width:90%; height:80%; margin:0 auto; margin-top:5%; background:none; color:white;">
									<p style="font-size:20px;">${tflist.toon_title }</p>
			               			${tflist.toon_info }
								</div>
								<button id="view_btn${tflist.toon_num }" class="view_btn" param="${tflist.toon_num }" style="width:0%; height:0px; position:relative; top:100px; border:1px solid white; color:white; background:transparent; -webkit-transition-duration:0.5s;">바로보기</button>
		            		</div>
	               		</div>
		               	<div id="list_cate" style="margin-top:10px;">
		                  	<span style="font-weight:bold; font-size:12px; margin-left:10px; color:#92b2de;">${tflist.cate_name }</span>
		               	</div>
		               	<div id="list_title">
		                 	<span style="font-weight:bold; margin-left:10px; color:222; font-size:16px; overflow:hidden;">${tflist.toon_title }</span>
		               	</div>
            		</div>
        	</c:forEach>
			</div>
		</div>
	</div>
</div>
		<%-- <div id="tlist_body">
			<c:forEach var="tlist" items="${tlist }">
				<div id="tlist_div">
					<div id="tlist_img">
						<a href="episode_page?toon_num=${tlist.toon_num} ">
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
      	</div> --%>
</body>
</html>