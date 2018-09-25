<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	#episode_upload{width:1260px; margin:0 auto;}
	#episode_upload_table{width:100%; border-collapse:collapse;}
	#episode_upload_table td{border:1px solid #D8D8D8;}
	#left{width:20%; height:50px; text-align:center;}
	#right{width:80%; height:50px; padding-left:10px;}
	input[type='text']{width:500px; height:30px;}
	#button_td{text-align:center; border:none; height:80px;}
	#upload_btn{width:80px; height:40px; font-weight:bolder; border:1px solid #817EE4; background:#817EE4; color:white; border-radius:5px; cursor:pointer; -webkit-transition-duration:0.5s;}
	#upload_btn:hover{-webkit-transform:scale(1.2); color:black; background:#C9C6FF; border:1px solid #C9C6FF;}
	#back_btn{width:80px; height:40px; font-weight:bolder; border:1px solid #D8D8D8; background:white; color:black; border-radius:5px; cursor:pointer; -webkit-transition-duration:0.5s;}
	#back_btn:hover{-webkit-transform:scale(1.2); color:black; backgorund:black; border:1px solid black;}
	#year,#month,#day,#view_coin{width:100px; display:inline-block;}
	.hide{display:none;}
</style>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$("#free").change(function(){
		if($("#free").val()=="x"){
			$(".hide").show()
		}else{
			$(".hide").hide()			
		}
	})
})
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#upload_btn").click(function(){
			var free_date_html = $("#year").val()+"-"+$("#month").val()+"-"+$("#day").val()
			$("#free_date").val(free_date_html)
			if(!$("#ep_title").val()){
				alert("에피소드 제목을 입력해주세요.")
				$("#ep_title").focus()
				return false
			}else if($("#free").val()=="select_free"){
				alert("무료/유료를 선택해주세요")
				$("#free").focus()
				return false
			}else if(!$("#ep_main_file").val()){
				alert("대표 이미지를 등록해주세요.")
				$("#ep_main_file").focus()
				return false
			}else if(!$("#ep_toon_file").val()){
				alert("웹툰 이미지를 등록해주세요.")
				$("#ep_toon_file").focus()
				return false
			}
			

			
			if($("#free").val()=="x"){
				if(!$("#year").val()){
					alert("무료 전환 년도를 입력해주세요.")
					$("#year").focus()
					return false
				}else if(!$("#month").val()){
					alert("무료 전환 월을 입력해주세요.")
					$("#month").focus()
					return false
				}else if(!$("#day").val()){
					alert("무료 전환 일을 입력해주세요.")
					$("#day").focus()
					return false
				}else if(!$("#view_coin").val()){
					alert("차감 코인 개수를 입력해주세요.")
					$("#view_coin").focus()
					return false
				}
			}
		})
	})
</script>

	<div id="episode_upload">
		<div style="width:100%; height:50px; line-height:50px; margin-top:100px;">
			<span style="margin-left:10px; font-size:14px; font-weight:bold;">에피소드 등록</span>
		</div>
		<form action="episode_upload_ok" method="post" enctype="multipart/form-data">
			<input type="hidden" id="toon_num" name="toon_num" value="${tdto.toon_num }">
			<input type="hidden" id="ep_num" name="ep_num" value="${ep_num }">
			<table id="episode_upload_table">
				<tr>
					<td id="left">웹툰 제목</td>
					<td id="right">${tdto.toon_title }</td>
				</tr>
				<tr>
					<td id="left">회차</td>
					<td id="right">${ep_num }화</td>
				</tr>
				<tr>
					<td id="left">에피소드 제목</td>
					<td id="right">
						<input type="text" id="ep_title" name="ep_title">
					</td>
				</tr>
				<tr>
					<td id="left">무료/유료</td>
					<td id="right">
						<select id="free" name="free">
							<option value="select_free">----선택----</option>
							<option value="o">무료</option>
							<option value="x">유료</option>
						</select>
					</td>
				</tr>
				<tr class="hide">
					<td id="left">무료 전환일</td>
					<td id="right">
						<input type="text" id="year" placeholder="yyyy">년 
						<input type="text" id="month" placeholder="mm">월 
						<input type="text" id="day" placeholder="dd">일
					</td>
				</tr>
				<tr class="hide">
					<td id="left">차감 코인</td>
					<td id="right">
						<input type="text" id="view_coin" name="view_coin">코인
					</td>
				</tr>
				<tr>
					<td id="left">에피소드 대표 이미지</td>
					<td id="right">
						<input type="file" id="ep_main_file" name="ep_main_file">
					</td>
				</tr>
				<tr>
					<td id="left">에피소드 웹툰 이미지</td>
					<td id="right">
						<input type="file" id="ep_toon_file" name="ep_toon_file">
					</td>
				</tr>
				<tr>
					<td id="button_td" colspan="2">
						<input type="hidden" id="free_date" name="free_date">					
						<input type="submit" id="upload_btn" value="등록">
						<input type="button" id="back_btn" value="뒤로가기">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>