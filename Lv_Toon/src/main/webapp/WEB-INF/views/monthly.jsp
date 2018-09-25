<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="resources/jquery/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="resources/slick/slick-theme.css"/>
<title>Insert title here</title>
<style type="text/css">
#center{background:black}
#monthly{width:1260px; margin:50px auto; background:black}
#monthly_info{width:100%; height:70px;}
.slick-dots {
    position: absolute;
    bottom: 20px;
    left: -50px;
    margin-left: -540px;
    
}
.slick-dots>li {
    display: inline-block;
    margin-right: 8px;
 
}

.slick-dots>li.slick-active button {
    width: 25px;
    background-color: #817EE4;
}

.slick-dots li button:before{font-size:0;}
.slick-dots li button{
	width: 15px;
    height: 6px;
    border: 0;
    background-color: #515151;
    line-height: 1;
    font-size: 5px;
    ransition: all 0.3s;
    -o-transition: all 0.3s;
    transition: all 0.3s;
    outline: 0;
    padding:2px;
    }
#tlist_body{width:100%; margin-top:50px;}
#tlist_body div{background:#00001E; cursor:pointer;}
.tlist_div, .comming_div{width:22%; height:430px; margin-left:25px; margin-top:50px; display:inline-block; position:relative; overflow:hidden;}
#tlist_img{width:100%; height:350px; overflow:hidden;}
#tlist_cate{width:100%; height:20px; line-height:20px;}
#tlist_title{width:100%; height:40px; line-height:40px;}
#tlist_writer{width:100%; height:20px; margin-top:-7px;}
</style>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$('.slider').slick({
	    dots: true,
	    /* customPaging: function(slider, i) {
	         
	          return '<span class="dot"></span>';
	        }, */
	    infinite: true,
	    slidesToShow: 1,
	    slidesToScroll: 1,
	    autoplay: false,
	    autoplaySpeed: 3000,
	    nextArrow: '<i class="fas fa-angle-right fa-5x" style="position:absolute; top:200px; color:white; left:1400px; opacity:0.6;"></i>',
	    prevArrow: '<i class="fas fa-angle-left fa-5x" style="position:absolute; top:200px; color:white; left:100px; z-index:100; opacity:0.6;"></i>',
	 });
})
</script>
<script type="text/javascript">
$(document).ready(function(){
	$(".tlist_div").mouseover(function(){
		var toon_num = $(this).attr("param")
		$(".info_div"+toon_num).css({'opacity':'1','background':'rgba(0,0,0,0.5)'})
		$("#view_btn"+toon_num).css({'top':'0px','width':'80%','height':'40px'})
	})
	$(".tlist_div").mouseout(function(){
		var toon_num = $(this).attr("param")
		$(".info_div"+toon_num).css({'opacity':'0','background':'rgba(0,0,0,0.0)'})
		$("#view_btn"+toon_num).css({'top':'200px','width':'0px','height':'0px'})
	})
	$(".tlist_div").click(function(){
		var toon_num = $(this).attr("param")
		location.href="episode_page?toon_num="+toon_num
	})
})
</script>
	<div class="slider" style="width:100%; height:450px; position:relative;">
			<img src="resources/main_img/month_toon1.jpg" style="width:100%; height:450px;">
			<img src="resources/main_img/month_toon2.jpg" style="width:100%; height:450px;">
			<img src="resources/main_img/month_toon3.jpg" style="width:100%; height:450px;">
	</div>
	<div id="monthly" style="color:white;">
		<div id="monthly_info">
			<img src="resources/main_img/monthly-msg.png" style="width:100%; height:100%;">
		</div>
		<div id="tlist_body">
         <c:forEach var="tlist" items="${tlist }">
            <div id="tlist_div${tlist.toon_num }" class="tlist_div" param="${tlist.toon_num }">
               <div id="tlist_img">
                  <a href="episode_page?toon_num=${tlist.toon_num} ">
                     <img src="resources/toon_main_img/${tlist.main_image }" id="main_img" style="width:100%; height:100%; -webkit-transition-duration:0.5s;">
                  </a>
               </div>
               <div id="tlist_title">
                  <span style="font-weight:bold; font-size:18px; margin-left:10px;">${tlist.toon_title }</span>
               </div>
               <div id="tlist_writer">
	            <span style="font-size:12px; margin-left:10px; color:#737373;">
		            <c:choose>
		            	<c:when test="${tlist.toon_writer==tlist.toon_painter }">
		            		글/그림 : ${tlist.toon_writer }
		            	</c:when>
		            	<c:when test="${tlist.toon_writer!=tlist.toon_painter }">
		            		글/그림 : ${tlist.toon_writer } \ ${tlist.toon_painter }
		            	</c:when>
	          	  	</c:choose>
				</span>
               </div>
               <div id="tlist_cate">
                  <span style="font-weight:bold; margin-left:10px; color:#817EE4;">${tlist.cate_name }</span>
               </div>
               
               
               <div id="info_div" class="info_div${tlist.toon_num }" style="width:100%; height:100%; text-align:center; position:absolute; left:0; top:0; background:rgba(0,0,0,0.0); opacity:0; -webkit-transition-duration:0.5s;">
				<div style="width:90%; height:80%; margin:0 auto; margin-top:5%; background:none;">
					<p style="font-size:20px;">${tlist.toon_title }</p>
               		${tlist.toon_info }
				</div>
				<button id="view_btn${tlist.toon_num }" style="width:0%; height:0px; position:relative; top:200px; border:1px solid red; color:white; background:red; -webkit-transition-duration:0.5s;">바로보기</button>
               </div>
            </div>
         </c:forEach>
         	<div class="comming_div">
               <img src="resources/toon_main_img/blank-monthly.jpg" style="width:100%; height:100%;">
            </div>
      </div>
	</div>
</body>
</html>