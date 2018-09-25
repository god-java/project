<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="resources/jquery/jquery-3.3.1.min..js"></script>
<script src="resources/jquery/jquery.number.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>



<style type="text/css">
html,body,div,span,ul,li,table,td,input[type='email'],input[type='password']{margin:0; padding:0; outline:0; font-size:15px; font-size:13px;}
a{text-decoration:none; color:black; font-size:13px;}
a:hover{color:#817EE4;}
input[type='button'],button{cursor:pointer;}
#header{width:100%; height:70px; border-bottom:1px solid #D8D8D8;}
#header ul{width:100%; height:100%; line-height:70px; display:flex; flex-direction:row;}
#header li:first-child{margin-left:5%;}
#header li{width:10%; height:30px; margin:auto 0; list-style:none; line-height:30px; text-align:center;}
#search{font-size:12px; width:250px; height:30px; border:none; border-bottom:1px solid #D8D8D8;}
#login_btn{width:70px; height:30px; border-radius:5px; background:#817EE4; color:white; border:1px solid #817EE4; cursor:pointer; -webkit-transition-duration:0.5s;}
#logout_btn{width:70px; height:30px; border-radius:5px; background:#817EE4; color:white; border:1px solid #817EE4; cursor:pointer; -webkit-transition-duration:0.5s;}
#login_btn:hover{-webkit-transform:scale(1.2); color:black; background:#C9C6FF; border:1px solid #C9C6FF;}
#center{width:100%;}

#login_mask{background:black; position:absolute; top:0; left:0; display:none; z-index:1;}

#login_div{width:0px; height:0px; border:1px solid gray; position:fixed; top:-100%; left:0; z-index:1; background:white; -webkit-transition-duration:0.5s;}
#login_top{width:100%; height:150px; text-align:center; line-height:150px;}
#login_center{width:100%; height:150px;}
#login_input_div{width:80%; margin:0 auto;}
#login_input_div div{width:100%; height:60px; line-height:100px;}
#login_email{width:100%; height:35px; border:none; border-bottom:1px solid #D8D8D8;}
#login_password{width:100%; height:35px; border:none; border-bottom:1px solid #D8D8D8;}

#login_bottom{width:100%; height:200px;}
#login_btn_div{width:80%; margin:0 auto;}
#login_ok_btn{width:100%; height:95%; background:#817EE4; color:white; font-weight:500; border:1px solid #817EE4; border-radius:5px; -webkit-transition-duration:0.5s;}
#login_ok_btn:hover{-webkit-transform:scale(1.1); background:#D9E5FF; border:1px solid #D9E5FF; color:black;}
#join_btn{width:100%; height:95%; background:#D8D8D8; color:white; font-weight:500; border:1px solid #D8D8D8; border-radius:5px; -webkit-transition-duration:0.5s;}
#join_btn:hover{-webkit-transform:scale(1.1); background:white; color:black;}




#join_div{width:0px; height:0px; border:1px solid gray; position:fixed; top:-100%; left:100%; z-index:1; background:white; -webkit-transition-duration:0.5s;}
#join_top{width:100%; height:150px; text-align:center; line-height:150px;}
#join_center{width:100%; height:150px;}
#join_input_div{width:80%; margin:0 auto;}
#join_input_div div{width:100%; height:60px; line-height:100px;}
#join_email{width:100%; height:35px; border:none; border-bottom:1px solid #D8D8D8;}
#join_password{width:100%; height:35px; border:none; border-bottom:1px solid #D8D8D8;}

#join_bottom{width:100%; height:200px;}
#join_btn_div{width:80%; margin:0 auto;}
#join_ok_btn{width:100%; height:95%; background:#817EE4; color:white; font-weight:500; border:1px solid #817EE4; border-radius:5px; -webkit-transition-duration:0.5s;}
#join_ok_btn:hover{-webkit-transform:scale(1.1); background:#D9E5FF; border:1px solid #D9E5FF; color:black;}
#login_btn2{width:100%; height:95%; background:#D8D8D8; color:white; font-weight:500; border:1px solid #D8D8D8; border-radius:5px; -webkit-transition-duration:0.5s;}
#login_btn2:hover{-webkit-transform:scale(1.1); background:white; color:black;}

#my_info_top div{background:#000030;}
#my_info_top span{color:white; font-size:11px;}
#my_info_coin div{background:#000030;}
#my_info_coin span{color:white; font-size:11px;}

</style>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
   var width = $(document).width()
   var height = $(document).height()
   $(document).on('click','#login_btn',function(){
      $("#login_mask").css({'width':width,'height':height})
      $("#login_mask").fadeTo('slow',0.5)
      $("#login_div").css({'width':'400px','height':'500px','top':'10%','left':'37%','-webkit-transform':'rotate(720deg)'})
   })
   $(document).on('click','#login_mask',function(){
      $("#login_mask").fadeOut()
      $("#login_div").css({'width':'400px','height':'500px','top':'-100%','left':'-10%','-webkit-transform':'rotate(-720deg)'})
      $("#join_div").css({'width':'400px','height':'500px','top':'-100%','left':'100%','-webkit-transform':'rotate(720deg)'})
   })
   $(document).on('click','#join_btn',function(){
      $("#login_div").css({'width':'400px','height':'500px','top':'-100%','left':'-10%','-webkit-transform':'rotate(-720deg)'})
      $("#join_div").css({'width':'400px','height':'500px','top':'10%','left':'37%','-webkit-transform':'rotate(-720deg)'})
   })
   $(document).on('click','#login_btn2',function(){
      $("#join_div").css({'width':'400px','height':'500px','top':'-100%','left':'100%','-webkit-transform':'rotate(720deg)'})
      $("#login_div").css({'width':'400px','height':'500px','top':'10%','left':'37%','-webkit-transform':'rotate(720deg)'})
   })
})
</script>
<script type="text/javascript">
$(document).ready(function(){
   $("#login_email").focus(function(){
      $("#login_email_lb").css({'top':'-95px','left':'0px','font-size':'13px'})
   })
   $("#login_email").blur(function(){
      if(!$("#login_email").val()){
         $("#login_email_lb").css({'top':'-75px','left':'10px','font-size':'15px'})
      }
      
   })
   $("#login_password").focus(function(){
      $("#login_password_lb").css({'top':'-95px','left':'0px','font-size':'13px'})
   })
   $("#login_password").blur(function(){
      if(!$("#login_password").val()){
         $("#login_password_lb").css({'top':'-75px','left':'10px','font-size':'15px'})
      }
   })
})
</script>
<script type="text/javascript">
$(document).ready(function(){
   $("#join_email").focus(function(){
      $("#join_email_lb").css({'top':'-95px','left':'0px','font-size':'13px'})
   })
   $("#join_email").blur(function(){
      if(!$("#join_email").val()){
         $("#join_email_lb").css({'top':'-75px','left':'10px','font-size':'15px'})
      }
      
   })
   $("#join_password").focus(function(){
      $("#join_password_lb").css({'top':'-95px','left':'0px','font-size':'13px'})
   })
   $("#join_password").blur(function(){
      if(!$("#join_password").val()){
         $("#join_password_lb").css({'top':'-75px','left':'10px','font-size':'15px'})
      }
   })
})
</script>
<script type="text/javascript">
$(document).ready(function(){
   $(document).on('click','#login_ok_btn',function(){
      $.ajax({
         url : 'login_ok',
         data : {'email' : $("#login_email").val(),
               'password' : $("#login_password").val()
               },
         type : 'post',
         success : function(data){
            var res = data
            if(res==0){
               location.href="main"
            }else if(res==1){
               alert("존재하지 않는 계정입니다.")
            }else if(res==2){
               alert("비밀번호가 틀렸습니다.")
            }
         }
      })
   })
})
</script>
<script type="text/javascript">
function logout(){
   location.href="logout"
}
</script>
<script type="text/javascript">
$(document).on('click','#search',function(){
   $("#search_body").css({'opacity':'1','top':'60px','z-index':'1'})
})
$(document).on('blur','#search',function(){
   $("#search_body").css({'opacity':'0','top':'50px','z-index':'-1'})
})
$(document).on('keyup','#search',function(){
   if(!$("#search").val()){
      $("#search_body").css({'opacity':'0','top':'50px','z-index':'-1'})
   }else{
      $.ajax({
         url : 'search_keyup',
         data : {'search' : $("#search").val()},
         dataType : 'json',
         type : 'get',
         success : function(data){
            $("#search_body").css({'opacity':'1','top':'60px','z-index':'1'})
            var res = data.tlist
            var search_html=""
            var search_default_html=""
               search_default_html+="<div style='width:100%; height:20px; background:#817EE4; line-height:20px; text-align:left;'>"
               search_default_html+=   "<span style='font-size:12px; margin-left:5px; color:white; font-weight:bold;'>웹툰</span>"
               search_default_html+="</div>"
               $("#search_res").html(search_default_html)
               
                  
            $.each(res,function(i){
               search_html="<div style='width:100%; height:60px; display:flex; flex-direction:row;'>"
               search_html+=   "<div style='width:60px; height:100%;'>"
               search_html+=      "<img src='resources/toon_main_img/"+res[i].main_image+"' style='width:90%; height:90%; margin:5% 5%;'>"
               search_html+=   "</div>"
               search_html+=   "<div style='width:140px; height:100%;'>"
               search_html+=      "<div style='width:100%; height:50%; line-height:30px; text-align:left;'>"
               search_html+=         "<span style='font-size:11px; margin-left:5px;'>"+res[i].toon_title+"</span>"
               search_html+=      "</div>"
               search_html+=      "<div style='width:100%; height:50%; line-height:30px; text-align:left;'>"
               search_html+=         "<span style='font-size:11px; margin-left:5px;'>"+res[i].toon_writer+"/"+res[i].toon_painter+"</span>"
               search_html+=      "</div>"
               search_html+=   "</div>"
               search_html+="</div>"
               $("#search_res").append(search_html)
            })
         }
      })
   }
})
</script>
<div id="login_mask">
</div>
   <div id="login_div">
      <div id="login_top">
         <img src="resources/main_img/banner-auth-register.png" style="width:100.2%; height:150px; position:relative; top:-20px;">
         <span style="color:#817EE4; font-size:18px;">Lv_T 로그인</span>
      </div>
      <div id="login_center">
         <div id="login_input_div">
            <div>
               <input type="email" id="login_email" style="">
               <label id="login_email_lb" for="login_email" style="color:silver; position:relative; left:10px; top:-75px; -webkit-transition-duration:0.5s;">이메일 주소</label>
            </div>
            <div>
               <input type="password" id="login_password">
               <label id="login_password_lb" for="login_password" style="color:silver; position:relative; left:10px; top:-75px; -webkit-transition-duration:0.5s;">비밀번호</label>
            </div>
         </div>
      </div>
      <div id="login_bottom">
         <div id="login_btn_div">
            <div id="" style="width:100%; height:50px;">
               <input type="button" id="login_ok_btn" value="이메일로 로그인" style="">
            </div>
            <div style="width:100%; height:50px;">
               <input type="button" id="join_btn" value="회원가입" style="width:100%; height:95%;">
            </div>
         </div>
      </div>
   </div>
   
   
   <script type="text/javascript">
   $(document).ready(function(){
      var overlap_id=2                           // 중복=1 / 가입=0 / 빈칸=2
      $(document).on('keyup','#join_email',function(){
         $.ajax({
            url : 'overlap_id',
            data : {'email' : $("#join_email").val()},
            Type : 'post',
            success : function(data){
               var res = data
               if(res==1){
                  $("#join_email_lb").css({'color':'red'})
                  $("#join_email_lb").html("중복된 이메일 입니다.")
                  overlap_id=1
               }else if(res==0){
                  $("#join_email_lb").css({'color':'#817EE4'})
                  $("#join_email_lb").html("사용 가능한 이메일 입니다.")
                  overlap_id=0
               }
               if(res==0 && $("#join_email").val()==""){
                  $("#join_email_lb").css({'color':'silver'})
                  $("#join_email_lb").html("이메일 주소")
                  overlap_id=3
               }
            },
            error : function(error){
               alert("error")
            }
         })
      })
      $(document).on('click','#join_ok_btn',function(){
         if(overlap_id==0){
            $("#join_ok_form").submit()
         }else if(overlap_id==1){
            alert("중복된 이메일 입니다.")
            return false
         }else if(overlap_id==2){
            alert("이메일을 입력해 주세요.")
            return false
         }
      })
   })
   </script>
   <script type="text/javascript">
   $(document).ready(function(){
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
   })
   </script>
   <form action="join_ok" id="join_ok_form" method="get">
      <div id="join_div">
         <div id="join_top">
            <img src="resources/main_img/banner-auth-register.png" style="width:100.2%; height:150px; position:relative; top:-20px;">
            <span style="color:#817EE4; font-size:18px;">Lv_T 회원가입</span>
         </div>
         <div id="join_center">
            <div id="join_input_div">
               <div>
                  <input type="email" name="email" id="join_email" style="">
                  <label id="join_email_lb" for="join_email" style="color:silver; position:relative; left:10px; top:-75px; -webkit-transition-duration:0.5s;">이메일 주소</label>
               </div>
               <div>
                  <input type="password" name="password" id="join_password">
                  <label id="join_password_lb" for="join_password" style="color:silver; position:relative; left:10px; top:-75px; -webkit-transition-duration:0.2s;">비밀번호</label>
               </div>
            </div>
         </div>
         <div id="join_bottom">
            <div id="join_btn_div">
               <div id="" style="width:100%; height:50px;">
                  <input type="submit" id="join_ok_btn" value="이메일로 회원가입" style="">
               </div>
               <div style="width:100%; height:50px;">
                  <input type="button" id="login_btn2" value="로그인" style="width:100%; height:95%;">
               </div>
            </div>
         </div>
      </div>
   </form>
<script type="text/javascript">
$(document).ready(function(){
   var btn_swit=0
   $(document).on('click','#my_info_btn',function(){
      if(btn_swit==0){
         $("#my_info_btn").css({'background':'black'})
         $("#my_info_line1").css({'-webkit-transform':'rotate(1035deg)','background':'white'})
         $("#my_info_line2").css({'-webkit-transform':'rotate(-1035deg)','background':'white'})
         $(".my_info_div").css({'opacity':'1','top':'10px','z-index':'1'})
         btn_swit=1
      }else{
         $("#my_info_btn").css({'background':'white'})
         $("#my_info_line1").css({'-webkit-transform':'rotate(-1035deg)','background':'black'})
         $("#my_info_line2").css({'-webkit-transform':'rotate(1035deg)','background':'black'})
         $(".my_info_div").css({'opacity':'0','top':'-10px','z-index':'0'})
         btn_swit=0
      }
   })

})
</script>
<script type="text/javascript">
$(document).ready(function(){
	var email = "${email}"
	var email_spl = email.split("@")
	var id = email_spl[0]
	$("#id").html(id)
})
</script>
   <div id="header">
      <ul>
         <li>
            <a href="main">
               <span style="font-size:15px; font-weight:bolder; color:blue;">LT</span>
            </a>
         </li>
         <li>
            <a href="#" id="weekly">
         	      주간
            </a>
         </li>
         <li>
            <a href="monthly">
            	   월간
            </a>
         </li>
         <li>
            <a href="rank?cate_num=0&type=all">
           	    랭킹
            </a>
         </li>
         <li>
            <a href="toon_upload">
            	   더보기
            </a>
         </li>
         <li>
            <a href="event">
         	      성인
            </a>
         </li>
         <li style="display:flex; flex-direction:row; width:15%;">
            <input type="text" id="search" placeholder="만화제목 or 작가명 입력...">
            <i class="fa fas fa-search fa-fw" style="margin:auto 0; position: relative; left:-20px;"></i>
            <div id="search_body" style="width:200px; height:300px; border:1px solid gray; position:absolute; top:50px; background:white; z-index:-1; opacity: 0; -webkit-transition-duration:0.5s;">
               <div id="search_res" style="width:90%; height:90%; margin:5% 5%; overflow-y:scroll;">
               </div>
            </div>
         </li>
         <li>
            <c:if test="${member_num==null }">
               <input type="button" value="로그인" id="login_btn">
            </c:if>
            <c:if test="${member_num!=null }">
               <!-- <input type="button" value="로그아웃" onclick="logout()" id="logout_btn"> -->
               <button id="my_info_btn" style="width:40px; height:30px; border:1px solid #D8D8D8; background:white; -webkit-transition-duration:0.5s;">
                  <div id="my_info_line1" style="position:relative; left:3px; top:3px; width:13px; height:5px; border-radius:5px; background:black; -webkit-transform:rotate(45deg); -webkit-transition-duration:0.5s;">
                  </div>
                  <div id="my_info_line2" style="position:relative; top:-2px; left:10px; width:13px; height:5px; border-radius:5px; background:black; -webkit-transform:rotate(-45deg); -webkit-transition-duration:0.5s;">
                  </div>
               </button>
               <div id="my_info_div" class="my_info_div" style="position:relative; left:-105px; top:-10px; opacity:0; width:200px; height:300px; border:1px solid gray; background:white; -webkit-transition-duration:0.5s;">
                  <div id="my_info_top" style="width:100%; height:100px;">
                     <div id="my_info_email" style="width:100%; height:50px; line-height:50px; text-align:left;">
                        <span id="id" style="margin-left:10px; font-size:15px;"></span>
                        <span>님 안녕하세요</span>
                     </div>
                     <div id="my_info_coin" style="width:60%; height:50px; float:left;">
                        <div id="my_info_coin_top" style="width:100%; height:50%; line-height:25px; text-align:left;">
                           <span style="margin-left:10px;">일반 : </span><span>${coin }코인</span>
                        </div>
                        <div id="my_info_coin_bottom" style="width:100%; height:50%; line-height:20px; text-align:left;">
                           <span style="margin-left:10px;">보너스 : </span><span>0코인</span>
                        </div>
                     </div>
                     <div id="my_info_charge" style="width:40%; height:50px; line-height:50px; float:left;">
                        <button onclick="location.href='coin_charge'" style="width:90%; border:1px solid #817EE4; background:#817EE4; color:white; border-radius:5px; height:30px; margin-top:10px; margin-left:-5px;">충전하기</button>
                     </div>
                  </div>
                  <div id="my_info_menu" style="width:100%; height:50px; text-align:left; line-height:50px; border-bottom:1px solid #D8D8D8;">
                     <a href="my_page?member_num=${member_num }" style="margin-left:10px;">마이 페이지</a>
                  </div>
                  <div id="my_info_menu" style="width:100%; height:50px; text-align:left; line-height:50px; border-bottom:1px solid #D8D8D8;">
                     <a href="my_page?member_num=${member_num }" style="margin-left:10px;">내서재</a>
                  </div>
                  <div id="my_info_menu" style="width:100%; height:50px; text-align:left; line-height:50px; border-bottom:1px solid #D8D8D8;">
                     <a href="zzim" style="margin-left:10px;">찜목록</a>
                  </div>
                  <div id="my_info_menu" style="width:100%; height:50px; text-align:left; line-height:50px; border-bottom:1px solid #D8D8D8;">
                     <a href="logout" style="margin-left:10px;">로그아웃</a>
                  </div>
               </div>
            </c:if>
         </li>
      </ul>
   </div>
   <div id="top">
   
   </div>
   <div id="center">
      <jsp:include page="${center }"/>
   </div>
   <div id="footer">
   
   </div>
</body>
</html>