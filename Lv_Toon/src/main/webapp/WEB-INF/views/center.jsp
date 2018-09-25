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
#center_center{width:1260px; height:1000px; margin:80px auto;}
#tlist_body{width:100%; margin-top:50px;}
#tlist_div{width:22%; height:400px; margin-left:25px; margin-top:50px; display:inline-block;}
#tlist_img{width:100%; height:350px; overflow:hidden;}
#list_img{overflow:hidden;}
#tlist_cate{width:100%; height:20px; line-height:20px;}
#tlist_title{width:100%; height:30px; line-height:30px;}
#main_img:hover{-webkit-transform:scale(1.03);}
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
<body style="background:#fafafa;">
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
			prevArrow: '<button id="mon_prev"style="position:absolute; background:white; width:30px; height:30px; top:-20px; left:1190px; border:1px solid #d8d8d8;"> < </button>',
		})
		
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
		
		$(".nlist_div").click(function(){
			var toon_num = $(this).attr("param")
			location.href="episode_page?toon_num="+toon_num
		})
	});
</script>
<div class="slider" style="position:relative; z-index:-1;">
   <img src="resources/main_img/2018_07_27_1532675391662.jpg" style="width:100%; height:440px;">
   <img src="resources/main_img/2018_07_27_15326756703945.jpg" style="width:100%; height:440px;">
   <img src="resources/main_img/2018_07_27_15326768530291.jpg" style="width:100%; height:440px;">
</div>

	<div id="center_center">
		<div id="recent_list" style="width:100%;">
			<div id="recent_title" class="list_title" style="width:100%; font-size:27px; font-weight:600px; letter-spacing:-1.5px; color:#333;">
				최신 업데이트
			</div>
			<div id="recent_slider" style="width:100%; height:500px;">
				<c:forEach var="rlist" items="${rlist }">
				<div id="list_div" style="width:22%; height:480px; margin-left:25px; margin-top:20px; display:inline-block; background:white; border:1px solid #e8e8e8;">
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
			<div id="monthly_title" class="list_title" style="width:100%; font-size:27px; font-weight:600px; letter-spacing:-1.5px; color:#333;">
				월간연재
			</div>
			<div id="monthly_slider" style="width:100%; height:500px;">
				<c:forEach var="mlist" items="${mlist }">
					<div id="list_div" style="width:22%; height:480px; margin-left:25px; margin-top:20px; display:inline-block; background:white; border:1px solid #e8e8e8;">
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
		
		<div id="new_list" style="width:100%; margin-top:50px; position:relative">
			<div id="new_title" class="list_title" style="width:100%; font-size:27px; font-weight:600px; letter-spacing:-1.5px; color:#333;">
				신작소개
			</div>
			<c:forEach var="nlist" items="${nlist }">
				<div id="nlist_div" class="nlist_div" param="${nlist.toon_num}" style="width:22%; height:480px; margin-left:25px; margin-top:20px; display:inline-block; background:white; border:1px solid #e8e8e8;">
					<div id="list_img">
						<a href="episode_page?toon_num=${nlist.toon_num} ">
							<img src="resources/toon_main_img/${nlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
                  		</a>
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
	                 	<span style="font-weight:300; margin-left:10px; color:white; font-size:11px; background:#92b2de; padding:1px 5px;"> ${nlist.reg_date } </span>
	               	</div>
            	</div>
            	
            	<div id="info_div" class="info_div${nlist.toon_num }" style="width:100%; height:100%; text-align:center; position:absolute; left:0; top:0; background:rgba(0,0,0,0.0); opacity:0; -webkit-transition-duration:0.5s;">
				<div style="width:90%; height:80%; margin:0 auto; margin-top:5%; background:none;">
					<p style="font-size:20px;">${nlist.toon_title }</p>
               		${nlist.toon_info }
				</div>
				<button id="view_btn${nlist.toon_num }" style="width:0%; height:0px; position:relative; top:200px; border:1px solid red; color:white; background:red; -webkit-transition-duration:0.5s;">바로보기</button>
               </div>
        	</c:forEach>
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
   	</div>
</body>
</html>