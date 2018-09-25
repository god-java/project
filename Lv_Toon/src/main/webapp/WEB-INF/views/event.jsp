<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#event{width:1260px; height:1000px; margin:80px auto; border:1px solid gray;}
#event_body{width:70%; height:100%; margin:0 auto; display:table}
#event_body div{width:50%; height:200px; display:inline-block; text-align:center;}
</style>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$("#start_btn").click(function(){
		var member_num = "${member_num}"
		jQuery.ajaxSettings.traditional = true
		
		var lotto_number1=$("#lotto_number1").val()
		var lotto_number2=$("#lotto_number2").val()
		var lotto_number3=$("#lotto_number3").val()
		var lotto_number4=$("#lotto_number4").val()
		var lotto_number5=$("#lotto_number5").val()
		var lotto_number6=$("#lotto_number6").val()
		
		if(member_num==""){
			alert("로그인이 필요한 서비스 입니다.")
			return false
		}else{
			$.ajax({
				url : 'lotto_possible',
				type : 'get',
				success : function(data){
					var res = data
					if(res==1){
						alert("로또는 하루에 한번만 가능합니다.")
					}else{
						if(lotto_number1==""){
							alert("첫번쨰 번호를 입력해주세요.")
							$("#lotto_number1").focus()
							return false
						}else if(lotto_number2==""){
							alert("두번쨰 번호를 입력해주세요.")
							$("#lotto_number2").focus()
							return false
						}else if(lotto_number3==""){
							alert("세번쨰 번호를 입력해주세요.")
							$("#lotto_number3").focus()
							return false
						}else if(lotto_number4==""){
							alert("네번쨰 번호를 입력해주세요.")
							$("#lotto_number4").focus()
							return false
						}else if(lotto_number5==""){
							alert("다번쨰 번호를 입력해주세요.")
							$("#lotto_number5").focus()
							return false
						}else if(lotto_number6==""){
							alert("여섯번쨰 번호를 입력해주세요.")
							$("#lotto_number6").focus()
							return false
						}
						if(lotto_number1<1 || lotto_number1>10){
							alert("1~10사이의 숫자를 입력해주세요.")
							$("#lotto_number1").focus()
							return false
						}else if(lotto_number2<1 || lotto_number2>10){
							alert("1~10사이의 숫자를 입력해주세요.")
							$("#lotto_number2").focus()
							return false
						}else if(lotto_number3<1 || lotto_number3>10){
							alert("1~10사이의 숫자를 입력해주세요.")
							$("#lotto_number3").focus()
							return false
						}else if(lotto_number4<1 || lotto_number4>10){
							alert("1~10사이의 숫자를 입력해주세요.")
							$("#lotto_number4").focus()
							return false
						}else if(lotto_number5<1 || lotto_number5>10){
							alert("1~10사이의 숫자를 입력해주세요.")
							$("#lotto_number5").focus()
							return false
						}else if(lotto_number6<1 || lotto_number6>10){
							alert("1~10사이의 숫자를 입력해주세요.")
							$("#lotto_number6").focus()
							return false
						}
						var my_number = [lotto_number1,lotto_number2,lotto_number3,lotto_number4,lotto_number5,lotto_number6]
						
						for(var i=0; i<my_number.length; i++){
							for(var j=0; j<my_number.length; j++){
								if(i!=j){
									if(my_number[i]==my_number[j]){
										alert("중복 입력은 불가능 합니다.")
										$("#lotto_number"+(j+1)).focus()
										return false
									}
								}
							}
						}
						
						
						$.ajax({
							url : 'lotto',
							type : 'get',
							dataType : 'json',
							data : {'my_number' : my_number
									},
							success : function(data){
								var my_number = data.my_number
								var lotto_number = data.lotto_number
								var answer = data.answer
								$("#img_div").html("<img id='img' src='resources/icon/lottery_play.gif' style=' margin:0 auto; width:90%; height:90%;'>")
								setTimeout(function(){
									$("#img_div").remove()
									$("#lotto_number").append("<p style='font-size:18px; font-weight:bold;'>로또번호</p>")
									$.each(lotto_number, function(i){
										$("#lotto_number").append("<span style='margin:0 10px;'>"+lotto_number[i]+"</span>")
									})
									$("#lotto_number").append("<p style='font-size:18px; font-weight:bold;'>내번호</p>")
									$.each(lotto_number, function(i){
										$("#lotto_number").append("<span style='margin:0 10px;'>"+my_number[i]+"</span>")
									})
									if(answer==0){
										$("#lotto_number").append("<p style='font-size:18px; font-weight:bold;'>"+answer+"개 정답! 풉;; 로또 사지 마세요 ㅋㅋㅋ</p>")
									}else{
										$("#lotto_number").append("<p style='font-size:18px; font-weight:bold;'>"+answer+"개 정답!</p>")
									}
									
								},3000)
								
							},
							error : function(error){
								alert("error")
							}
							
						})
					}
				}
			})
		}

			
		
	})
	
	
})
</script>
<div style="width:400px; height:500px; border:1px solid gray; position:fixed; top:200px; left:30%; background:white;">
	<div id="lotto" style="width:100%; height:300px; text-align:center; position:relative; line-height:300px;">
		<div id="img_div" style="width:100%; height:270px;">
			<img id="img" src="resources/icon/d606ba0bdc918fa0454756908bedceea.jpg" style="width:100%; height:100%;">
		</div>
		<div id="lotto_number" style="width:100%; height:30px; text-align:center; line-height:30px;">
			
		</div>
	</div>
	<div style="text-align:center; width:100%; height:100px;">
		<p>번호입력</p>
		<input type="text" id="lotto_number1" style="width:30px;">
		<input type="text" id="lotto_number2" style="width:30px;">
		<input type="text" id="lotto_number3" style="width:30px;">
		<input type="text" id="lotto_number4" style="width:30px;">
		<input type="text" id="lotto_number5" style="width:30px;">
		<input type="text" id="lotto_number6" style="width:30px;">
	</div>
	<div style="text-align:center; width:100%; height:100px;">
		<button id="start_btn" style="width:100px; height:50px; border:1px solid #D8D8D8; background:white;">굴리기!</button>
	</div>
</div>
	<div id="event">
		<div style="width:100%; height:100px; line-height:100px;">
			<span style="margin-left:5px; font-size:20px; font-weight:bolder;">이벤트</span>
			<span style="margin-left:5px; font-size:13px; font-weight:bold; color:#D8D8D8;">EVENT</span>
		</div>
		<div id="event_body">
			<div>
				<div style="width:300px; height:150px; border:1px solid #D8D8D8; margin:0 auto;">
					<img src="resources/icon/d606ba0bdc918fa0454756908bedceea.jpg" style="width:100%; height:100%;">
				</div>
			</div>
				<div style="width:300px; height:150px; border:1px solid #D8D8D8; margin: 0 auto;">
					
				</div>
			<div>
			</div>
			<div>
			</div>
			<div>
			</div>
		</div>
	</div>
</body>
</html>