<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>${odto.toon_title } ${odtp/ep_num }화 - 레벨툰</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="resources/jquery/jquery-3.3.1.min..js"></script>
<script src="resources/jquery/jquery.number.min.js"></script>

<script type="text/javascript" src="resources/jquery/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="resources/slick/slick-theme.css"/>
<style type="text/css">
	a{text-decoration:none; color:#817EE4; font-size:20px; letter-spacing:-1.5px;}
	a:hover{color:#817EE4;}
	#angle_right{color:#333; margin-left:20px; margin-right:20px;}
	#header_ul{list-style:none; padding:0; margin:0; float:right; margin-top:12px;}
	
	#comment_div{width:100%; height:220px; border:1px solid #d8d8d8;}
	#star_div{width:100%; height:65px; line-height:65px; vertical-align:middle; border-bottom:1px solid #d8d8d8;}
	#total_star_div{float:left; display:inline-block; height:100%; width:240px;}
	#stars-md{display:inline-block; width:88px; height:16px; line-height:16px; vertical-align:middle; background: url(resources/icon/stars-md.png) no-repeat 0 0; margin-left:5px; margin-right:5px;}
	.star{display:inline-block; height:16px; background: url(resources/icon/stars-md.png) no-repeat 0 -16px;}
	.star_stat{display:inline-block; color:red; min-width:17px; text-align:center; font-size:16px; font-weight:bold;}
	.star_btn{width:40px; height:32px; background:white; color:#333;  border:1px solid #9e9e9e; font-size:14px; letter-spacing:-1.5px; cursor:pointer; -webkit-transition-duration:0.5s; margin-left:10px; margin-right:10px;}
	.star_btn:hover{background:#e6e6e6; border:1px solid #adadad;}
	#reg_star{width:80px; background:#fafafa; margin-left:0;}
	
	.commet_span{float:right; margin-top:18px; font-size:12px; color:#999;}
	#comment_su{color:red; font-size:13px; margin-left:3px;}
	#comment_length{font-size:12px; color:#999;}
	#comment_content{float:left; display:inline-block; padding:6px 12px; font-size:14px; color:#555; border:1px solid #d8d8d8; width:540px; height:90px; background:#fafafa; resize:none; -webkit-transition-duration:0.5s;}
	#comment_write_div{margin-left:3%; width:94%;}
	#reg_comment{float:left; width:100px; height:102px; color:white; background:#5b5b5b; border:1px solid #4e4e4e; margin-left:10px;}

	#select_option{width:100%; height:40px; line-height:40px; vertical-align:middle; color:#333; border-bottom:1px solid #d8d8d8;}
	#comment_option{list-style:none; font-size:13px;}
	
	.comment_list{list-style:none; padding:0; margin:0;}
	.comment_list li{position:relative; padding:15px 20px; border-bottom:1px solid #d8d8d8;}
	#c_email{display:block; margin-bottom:10px; font-weight:400;}
	#best_span{display:inline-block; background:red; font-size:12px; font-weight:300; color:white; border-radius:10px; padding:2px 5px; margin-right:6px;}
	#c_content{display:block; margin-bottom:10px; font-size:14px; color:#222; margin-right:150px;}
	#c_info{font-size:12px; color:#a4a4a4;}
	#del_comment_btn{width:65px; height:20px; margin-left:15px; background:white; border:1px solid red; color:red; font-size:12px;}
	#rec_comment{position:absolute; top:50%; right:30px; margin-top:-16px;}
	.rec_comment_btn{width:70px; height:30px; background:white; padding:4px 0; color:#989898; border:1px solid #ccc; border-radius:3px; -webkit-transition-duration:0.5s;}
	.rec_comment_bth:hover{background:#e6e6e6; border:1px solid #adadad;}
	.cancel_comment_btn{width:70px; height:30px; background:white; padding:4px 0; color:red; border:1px solid red; border-radius:3px; -webkit-transition-duration:0.5s;}
	.navi_btn{width:35px; height:35px; background:white; border:1px solid #d4d4d4; color: #333; margin-right:5px; -webkit-transition-duration:0.5s;}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		var nav_swit=0
		$("#aa").click(function(e){
			if(!$(e.target).hasClass("star_btn")){
			if(nav_swit==0){
				$("#nav").css({'bottom':'0'})
				$("#header_menu").css({'top':'0'})
				nav_swit=1
			}else{
				$("#nav").css({'bottom':'-200px'})
				$("#header_menu").css({'top':'-80px'})
				nav_swit=0
            }
		}
	})
      
	var star_rating = ${odto.ep_star_rating}
	var star_per = star_rating * 10
	$("#total_star").css({'width' : star_per+'5%'})
	$("#total_score").html(star_rating)
      
	$("#weekly").click(function(){
		$.ajax({
			url : 'today_info',
			type : 'get',
			success : function(data){
				var res = data
				location.href="weekly?today_param="+res
            }
		})
	})
      
	var my_score = 10 
	$(document).on('click', '#star_plus', function(){
		if(my_score<10){
			my_score += 1
            $("#my_star").css({'width' : my_score*10+'%'})
            $("#my_score").html(my_score)
         }
	})
	
    
	if("${ck_star}"!=0){
		$("#my_star").css({'width' : ${my_star_score}*10+'%'})
	}
	
	$(document).on('click', '#star_minus', function(){
		if(my_score>1){
            my_score -= 1
            $("#my_star").css({'width' : my_score*10+'%'})
            $("#my_score").html(my_score)
		}
	})
      
	$(document).on('click', '#reg_star', function(){
		if(member_num == ""){
			alert('로그인이 필요한 서비스입니다.')            
		}else{
			$.ajax({
				url : 'reg_star_score',
				type : 'post',
				data : {'member_num' : member_num,
                    	'toon_num' : ${odto.toon_num},
                    	'ep_num' : ${odto.ep_num},
                    	'star_score' : $("#my_score").html() },
                dataType : 'json',
                success : function(data){
                	alert("별점이 등록되었습니다.")
                	var my_star_score1 = data.my_star_score
                	var star_html =  "<h5 style='margin:0; margin-left:5%; display:inline-block; font-size:13px;'>별점등록</h5>"
                		star_html += "<span id='stars-md' style='display:inline-block;'>"
                		star_html += "<span class='star' id='my_star' style='width:"+my_star_score1*10+"%;'></span>"
                		star_html += "</span>"
                		star_html += "<h5 style='margin:0; margin-left:5%; display:inline-block; font-size:13px;'>별점이 등록되었습니다.</h5>"	
	               	$('#my_star_div').html(star_html)
	               	
	               	var ep_star_rating = data.ep_star_rating
	               	$("#total_star").css({'width' : ep_star_rating * 10 +'%'})
					$("#total_score").html(ep_star_rating)	               	
                },
                error : function(error){
                	alert("ㅠㅠ")
                }  	
			})
		}
	})
    
	$(document).on('click', '.rec_comment_btn', function(){
		var comment_num = $(this).attr("param")
		if(member_num == ""){
			alert('로그인이 필요한 서비스입니다.')            
		}else{
			$.ajax({
				url : 'rec_comment',
	    	  	type : 'post',
	    	  	data : {'member_num' : member_num,
	    	  			'comment_num' : comment_num },
	    	  	/* dataType : 'json', */
	    	  	success : function(data){
	    	  		alert("해당 댓글를 추천 하셨습니다.")
	    	  		var rec_count = data
	    	  		$('#rec_count_c'+comment_num).html(rec_count)
	    	  		$('#rec_comment_btn'+comment_num).hide();
	    	  		$('#cancel_comment_btn'+comment_num).show();
	    	  	},
	    	  	error : function(error){
	    	  		alert("ㅠㅠ")
	    	  	}
			})
		}
	})
	
	$(document).on('click', '.cancel_comment_btn', function(){
		var comment_num = $(this).attr("param")
		if(member_num == ""){
			alert('로그인이 필요한 서비스입니다.')            
		}else{
			$.ajax({				
				url : 'cancel_rec_comment',
	    	  	type : 'post',
	    	  	data : {'member_num' : member_num,
	    	  			'comment_num' : comment_num },
	    	  	/* dataType : 'json', */
	    	  	success : function(data){
	    	  		alert("해당 댓글 추천을 취소하셨습니다.")
	    	  		var rec_count = data
	    	  		$('#rec_count_r'+comment_num).html(rec_count)
	    	  		$('#cancel_comment_btn'+comment_num).hide();
	    	  		$('#rec_comment_btn'+comment_num).show();
	    	  	},
	    	  	error : function(error){
	    	  		alert("ㅠㅠ")
	    	  	}
			})
		}
	})
	
	var member_num = "${member_num}"
	$(document).on('click', '#reg_comment', function(){
		if(!$("#comment_content").val()){
			alert("댓글내용을 입력해주세요.")
            return false
        }else if(member_num == ""){
            alert('로그인이 필요한 서비스입니다.')            
        }else {
            $.ajax({
               url : 'comment_write',
               type : 'post',
               data : {'member_num' : member_num,
                     'toon_num' : ${odto.toon_num},
                     'ep_num' : ${odto.ep_num},
                     'comment_content' : $("#comment_content").val() },
               dataType : 'json',
               success : function(data){
                  var clist = data.clist
               },
               error : function(error){
                  alert("ㅠㅠ")
               }
            })
         }
      })
      
	$(document).on('keyup', '#comment_content', function(){
    	if($(this).val().length > 200) {
  			alert('200자 이내의 내용만 등록 가능합니다.')
  			return false
  		} else {
  			$('#comment_length').html($(this).val().length)
  		}
	})
      
	$(document).on('keydown', '#comment_content', function(){
		if($(this).val().length > 200) {
			alert('200자 이내의 내용만 등록 가능합니다.')
			return false
		} else {
			$('#comment_length').html($(this).val().length)
		}
	})
     
	$(document).on('click', '#view_all', function(){
		$('#view_all').css({'font-weight' : '400', 'color' : 'red'})
    	$('#view_best').css({'font-weight' : '0', 'color' : '#333'})
    	
    	$.ajax({
    		url : 'view_all_comment', // 1
    		type : 'post',
    		data : {'toon_num' : ${odto.toon_num},
                	'ep_num' : ${odto.ep_num},
                	'page_no' : 1}, 
    		dataType : 'json',
			success : function(data){
				alert("123")
				var clist = data.clist
				var navi = data.navi
				var clist_html = "<ul class='comment_list'>"
	    			$.each(clist, function(i){
		    			clist_html += "<li>"
		    			clist_html += "<strong id='c_email'>"+clist[i].email+"</strong>"
		    			clist_html += "<span id='c_content'>"+clist[i].comment_content+"</span>"
		    			clist_html += "<span id='rec_comment'>"
		    							if(clist[i].rec_status == "push"){
		    			clist_html += "<button id='cancel_comment_btn"+clist[i].comment_num+"' class='cancel_comment_btn' param='"+clist[i].comment_num+"'>"				
		    			clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
		    			clist_html += "<span id='rec_count_c"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
		    			clist_html += "</button>"
		    			clist_html += "<button id='rec_comment_btn"+clist[i].comment_num+"' class='rec_comment_btn' param='"+clist[i].comment_num+"' style='display:none;'>"				
		        		clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
		        		clist_html += "<span id='rec_count_r"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
		        		clist_html += "</button>"
		    							} else{
		    			clist_html += "<button id='rec_comment_btn"+clist[i].comment_num+"' class='rec_comment_btn' param='"+clist[i].comment_num+"'>"				
		    			clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
		    			clist_html += "<span id='rec_count_r"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
		    			clist_html += "</button>"
		    			clist_html += "<button id='cancel_comment_btn"+clist[i].comment_num+"' class='cancel_comment_btn' param='"+clist[i].comment_num+"' style='display:none;'>"				
		    			clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
		    			clist_html += "<span id='rec_count_c"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
		    			clist_html += "</button>"	
		    							}
		    			clist_html += "</span>"
			    		clist_html += "<span id='c_info'>"+clist[i].comment_date+"</span>"
		    	    	clist_html += "</li>"
	    			})
	    			clist_html += "</ul>"
	    			clist_html += "<div style='width:100%; margin-top:15px; text-align:center;'>" + navi + "</div>"
	    			$('#comment_list_div').html(clist_html)
    		},
    		error : function(error){
    			alert("error")
    		}
    	})
    })
	
    $(document).on('click', '.navi_btn', function(){
    	var page_no = $(this).attr("param")
    	$.ajax({
    		url : 'view_all_comment', // 1
    		type : 'post',
    		data : {'toon_num' : ${odto.toon_num},
                	'ep_num' : ${odto.ep_num},
                	'page_no' : page_no}, 
    		dataType : 'json',
			success : function(data){
				alert("123")
				var clist = data.clist
				var navi = data.navi
				var clist_html = "<ul class='comment_list'>"
	    			$.each(clist, function(i){
		    			clist_html += "<li>"
		    			clist_html += "<strong id='c_email'>"+clist[i].email+"</strong>"
		    			clist_html += "<span id='c_content'>"+clist[i].comment_content+"</span>"
		    			clist_html += "<span id='rec_comment'>"
		    							if(clist[i].rec_status == "push"){
		    				clist_html += "<button id='cancel_comment_btn"+clist[i].comment_num+"' class='cancel_comment_btn' param='"+clist[i].comment_num+"'>"				
		    				clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
		    				clist_html += "<span id='rec_count_c"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
		    				clist_html += "</button>"
		    				clist_html += "<button id='rec_comment_btn"+clist[i].comment_num+"' class='rec_comment_btn' param='"+clist[i].comment_num+"' style='display:none;'>"				
		        			clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
		        			clist_html += "<span id='rec_count_r"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
		        			clist_html += "</button>"
		    							} else{
		    				clist_html += "<button id='rec_comment_btn"+clist[i].comment_num+"' class='rec_comment_btn' param='"+clist[i].comment_num+"'>"				
		    			    clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
		    			    clist_html += "<span id='rec_count_r"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
		    			    clist_html += "</button>"
		    			    clist_html += "<button id='cancel_comment_btn"+clist[i].comment_num+"' class='cancel_comment_btn' param='"+clist[i].comment_num+"' style='display:none;'>"				
		    			    clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
		    			    clist_html += "<span id='rec_count_c"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
		    			    clist_html += "</button>"	
		    							}
		    				clist_html += "</span>"
			    			clist_html += "<span id='c_info'>"+clist[i].comment_date+"</span>"
		    	    	    clist_html += "</li>"
	    			})
	    			clist_html += "</ul>"
	    			clist_html += "<div style='width:100%; margin-top:15px; text-align:center;'>" + navi + "</div>"
	    			$('#comment_list_div').html(clist_html)
    		},
    		error : function(error){
    			alert("error")
    		}
    	})
    })
    
    $(document).on('click', '#view_best', function(){
    	$('#view_best').css({'font-weight' : '400', 'color' : 'red'})
    	$('#view_all').css({'font-weight' : '0', 'color' : '#333'})
    	
    	$.ajax({
    		url : 'view_best_comment',
    		type : 'post',
    		data : {'toon_num' : ${odto.toon_num},
                	'ep_num' : ${odto.ep_num} },
            dataType : 'json',            
    		success : function(data){
    			alert("asdsad")
    			var clist = data.clist
    			var clist_html = "<ul class='comment_list'>"
    			$.each(clist, function(i){
	    			clist_html += "<li>"
	    			clist_html += "<strong id='c_email'>"+clist[i].email+"</strong>"
	    			clist_html += "<span id='c_content'><span id='best_span'>BEST</span>"+clist[i].comment_content+"</span>"
	    			clist_html += "<span id='rec_comment'>"
	    							if(clist[i].rec_status == "push"){
	    				clist_html += "<button id='cancel_comment_btn"+clist[i].comment_num+"' class='cancel_comment_btn' param='"+clist[i].comment_num+"'>"				
	    				clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
	    				clist_html += "<span id='rec_count_c"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
	    				clist_html += "</button>"
	    				clist_html += "<button id='rec_comment_btn"+clist[i].comment_num+"' class='rec_comment_btn' param='"+clist[i].comment_num+"' style='display:none;'>"				
	        			clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
	        			clist_html += "<span id='rec_count_r"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
	        			clist_html += "</button>"
	    							} else{
	    				clist_html += "<button id='rec_comment_btn"+clist[i].comment_num+"' class='rec_comment_btn' param='"+clist[i].comment_num+"'>"				
	    			    clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
	    			    clist_html += "<span id='rec_count_r"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
	    			    clist_html += "</button>"
	    			    clist_html += "<button id='cancel_comment_btn"+clist[i].comment_num+"' class='cancel_comment_btn' param='"+clist[i].comment_num+"' style='display:none;'>"				
	    			    clist_html += "<i class='fas fa-thumbs-up' style='margin-right:10px;'></i>"
	    			    clist_html += "<span id='rec_count_c"+clist[i].comment_num+"' class='rec_count'>"+clist[i].rec_count+"</span>"
	    			    clist_html += "</button>"	
	    							}
	    				clist_html += "</span>"
	    				clist_html += "<span id='c_info'>"+clist[i].comment_date+"</span>"
	    	    	    clist_html += "</li>"
    			})
    			clist_html += "</ul>"
    			$('#comment_list_div').html(clist_html)
    		},
    		error : function(error){
    			alert("error")
    		}
    	})
    })
})
</script>

<body>
<script type="text/javascript">
    $(document).ready(function(){
       $('.epi_nav').slick({
            centerMode: true,
            centerPadding: '60px',
            slidesToShow: 5,
            responsive: [
              {
                breakpoint: 768,
                settings: {
                  arrows: false,
                  centerMode: true,
                  centerPadding: '40px',
                  slidesToShow: 3
                }
              },
              {
                breakpoint: 480,
                settings: {
                  arrows: false,
                  centerMode: true,
                  centerPadding: '40px',
                  slidesToShow: 1
                }
              }
            ]
          });
    });
</script>
<div id="nav" style="width:100%; height:200px; position:fixed; bottom:-200px; left:0; background:linear-gradient(to top,rgba(0,0,0,1), rgba(0,0,0,0)); -webkit-transition-duration:0.5s;">
    <div class="epi_nav" style="width:800px; height:100px; margin:0 auto; margin-top:50px;">
		<c:forEach var="nav_list" items="${nav_list }">
			<c:if test="${nav_list.first_status=='o' }">
				<div style="width:150px; height:100px; text-align:center;">
					<a href="toon_detail?toon_num=${nav_list.toon_num }&ep_num=${nav_list.ep_num}">
						<img src="resources/episode_main_img/${nav_list.ep_main_image }" style="width:130px; height:80px; opacity:0.2;">
					</a>
					<span style="position:relative; bottom:2px; left:20px; color:white; z-index:5;">${nav_list.ep_num }화</span>
					<span style="position:relative; bottom:50px; right:15px; color:white; z-index:5; font-weight:bold;">감상중</span>   
				</div>
			</c:if>   
			<c:if test="${nav_list.first_status!='o' }">
				<div style="width:150px; height:100px; text-align:center;">
					<a href="toon_detail?toon_num=${nav_list.toon_num }&ep_num=${nav_list.ep_num}">
						<img src="resources/episode_main_img/${nav_list.ep_main_image }" style="width:130px; height:80px;">
					</a>
					<span style="position:relative; bottom:2px; color:white; z-index:10;">${nav_list.ep_num }화</span>
				</div>
			</c:if>   
		</c:forEach>
	</div>
</div>
	<div id="header_menu" style="width:100%; border-bottom:1px solid #e8e8e8; -webkit-transition-duration:0.5s; position:fixed; top:-80px; background:white;">
		<div style="width:1360px; margin:0 auto; height:65px; line-height:65px; vertcal-align:middle;">
		<a href="main">
			<img id="toon_logo" src="resources/main_img/logo.png" style="width:130px; height:25px;">
		</a>
		<i id="angle_right" class="fas fa-angle-right"></i>
		<a href="#" id="weekly">${odto.upload_type }</a>
		<i id="angle_right" class="fas fa-angle-right"></i>
		<a href="episode_page?toon_num=${odto.toon_num}" style="">${odto.toon_title }</a>
		<span style="color:red; margin-left:10px;">${odto.ep_num }화</span>
			<ul id="header_ul" style="float:right">
				<li>
					<span>
						<i class="far fa-comment-alt"></i>
						<span class="fa-layers-counter" style="background:Tomato;">${comment_count }</span>
					</span>
				</li>
			</ul>
		</div>
	</div>
	<div id="aa">
		<div style="width:720px; margin:0 auto;">
			<div id="ep_div" style="width:100%;">
					<img src="resources/episode_toon_img/${odto.ep_toon_image }">
			</div>
			<div id="bottom_div" style="width:100%; margin-top:50px; margin-bottom:50px;">
				<div id="comment_div">
				<div id="star_div">
					<div id="total_star_div">
					<h5 style="margin:0; margin-left:3%; display:inline-block; font-size:13px;">회원별점</h5>
					<span id="stars-md">
						<span class="star" id="total_star"></span>
					</span>
					<span class="star_stat" id="total_score"></span>
					</div>
					<div id="my_star_div" style="float:left; display:inline-block; height:100%; width:450px;">
					<h5 style="margin:0; margin-left:5%; display:inline-block; font-size:13px;">별점등록</h5>
<!-- 					<span id="my_star_div" style="display:inline-block;">		 -->				
						<c:choose>
							<c:when test="${ck_star == 0 }">
								<input type="button" class="star_btn" id="star_minus" value="-">
								<span id="stars-md">
									<span class="star" id="my_star" style="width:100%;"></span>
								</span>
								<span class="star_stat" id="my_score">10</span>
                  				<input type="button" class="star_btn" id="star_plus" value="+">
                  				<input type="button" class="star_btn" id="reg_star" value="별점주기">
							</c:when>
							<c:otherwise>
								<span id="stars-md" style="display:inline-block;">
									<span class="star" id="my_star"></span>
								</span>
								<h5 style="margin:0; margin-left:5%; display:inline-block; font-size:13px;">별점이 등록되었습니다.</h5>
							</c:otherwise>
                		</c:choose>
                		<!-- </span> -->
                  	</div>
               </div>
               
               <div id="comment_write_div">
                  <h5 style="margin:0; margin-top:7px; margin-bottom:10px; display:inline-block; font-size:16px;">작품리뷰</h5>
                  <span id="comment_su">(${comment_count })</span>
                  <span class="commet_span">
                     <span id="comment_length" >0</span>
                     /200
                  </span><br>
                  <div style="width:100%;">
                     <textarea name="comment_content" id="comment_content" cols="30" rows="10" placeholder="주제와 무관한 댓글이나 스포일러, 악플은 경고 조치 없이 삭제될 수 있습니다."  maxlength="200"></textarea>
                     <input type="button" id="reg_comment" value="등록">
                  </div>
               </div>
            </div>
            
            <div id="select_option">
            	<ul id="comment_option">
            		<li style="float:left; margin-right:11px;">
            			<a id="view_best" style="font-weight:400; color:red;">BEST</a>
            		</li>
            		<li>
            			<a id="view_all" style="font-color:#333;">전체댓글</a>
            		</li>
            	</ul>
            </div>
            
            <div id="comment_list_div" style="width:100%;">
				<ul class="comment_list">
					<c:forEach var="clist" items="${clist }">
						<li>
							<strong id="c_email">
								${clist.email }
							</strong>
							<span id="c_content">
								<span id="best_span">BEST</span>
								${clist.comment_content }
							</span>
							<span id="rec_comment">
								<c:choose>
									<c:when test="${clist.rec_status=='push' }"> <!-- 눌린 상태 -->
										<button id="cancel_comment_btn${clist.comment_num }" class="cancel_comment_btn" param="${clist.comment_num }">
											<i class="fas fa-thumbs-up" style="margin-right:10px;"></i>
											<span id="rec_count_c${clist.comment_num }" class="rec_count">${clist.rec_count }</span>
										</button>
										<button id="rec_comment_btn${clist.comment_num }" class="rec_comment_btn" param="${clist.comment_num }"  style="display:none;">
											<i class="fas fa-thumbs-up" style="margin-right:10px;"></i>
											<span id="rec_count_r${clist.comment_num }" class="rec_count">${clist.rec_count }</span>
										</button>									
									</c:when>								
									<c:otherwise>
										<button id="rec_comment_btn${clist.comment_num }" class="rec_comment_btn" param="${clist.comment_num }">
											<i class="fas fa-thumbs-up" style="margin-right:10px;"></i>
											<span id="rec_count_r${clist.comment_num }" class="rec_count">${clist.rec_count }</span>
										</button>
										<button id="cancel_comment_btn${clist.comment_num }" class="cancel_comment_btn" param="${clist.comment_num }" style="display:none;">
											<i class="fas fa-thumbs-up" style="margin-right:10px;"></i>
											<span id="rec_count_c${clist.comment_num }" class="rec_count">${clist.rec_count }</span>
										</button>
									</c:otherwise>
								</c:choose>
								
							</span>
							<span id="c_info">
								${clist.comment_date }
								<c:if test="${clist.member_num}==${session.member_num}" >
									<button id="del_comment_btn" style="">
										삭제하기
									</button>
								</c:if>
							</span>
						</li>
					</c:forEach>
				</ul>
			</div>
			
           <%--  <div id="comment_list">
               <c:forEach var="clist" items="${clist }">
                  <div id="comment_row" style="width:100%; height:110px; border-bottom:1px solid #d8d8d8; padding:7px 20px;" param="${clist.comment_num }">
                     <div id="c_email" style="width:100%; font-size:15px; font-weight:300;">
                        ${clist.email }
                     </div>
                     <div id="c_content" style="width:100%; font-size:15px;">
                        ${clist.comment_content }
                     </div>
                     <div id="c_info">
                        ${clist.comment_date }
                     </div>
                  </div>
               </c:forEach>
            </div> --%>
         </div>
      </div>
   </div>
</body>
</html>