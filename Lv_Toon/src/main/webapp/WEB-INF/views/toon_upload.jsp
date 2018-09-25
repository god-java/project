<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#toon_upload{width:1260px; margin:0 auto;}
#toon_upload_table{width:100%; border-collapse:collapse;}
#toon_upload_table td{border:1px solid #D8D8D8;}
#left{width:20%; height:50px; text-align:center;}
#right{width:80%; height:50px; }
input[type='text']{width:500px; height:30px;}
select{width:200px; height:30px;}
select,input[type='text'],span,textarea,input[type='file']{margin-left:10px;}
textarea{width:90%; height:100px;}
#button_td{text-align:center; border:none; height:80px;}
#upload_btn{width:80px; height:40px; font-weight:bolder; border:1px solid #817EE4; background:#817EE4; color:white; border-radius:5px; cursor:pointer; -webkit-transition-duration:0.5s;}
#upload_btn:hover{-webkit-transform:scale(1.2); color:black; background:#C9C6FF; border:1px solid #C9C6FF;}
#back_btn{width:80px; height:40px; font-weight:bolder; border:1px solid #D8D8D8; background:white; color:black; border-radius:5px; cursor:pointer; -webkit-transition-duration:0.5s;}
#back_btn:hover{-webkit-transform:scale(1.2); color:black; backgorund:black; border:1px solid black;}
</style>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$("#upload_btn").click(function(){
		if($("#cate_num").val()=="x"){
			alert("카테고리를 선택해주세요.")
			$("#cate_num").focus()
			return false
		}else if(!$("#toon_title").val()){
			alert("제목을 입력해주세요.")
			$("#toon_title").focus()
			return false
		}else if(!$("#toon_writer").val()){
			alert("글작가를 입력해주세요.")
			$("#toon_writer").focus()
			return false
		}else if(!$("#toon_painter").val()){
			alert("그림작가를 입력해주세요.")
			$("#toon_painter").focus()
			return false
		}else if($("#upload_day").val()=="x"){
			alert("요일을 선택해주세요.")
			$("#upload_day").focus()
			return false
		}else if($("#upload_type").val()=="x"){
			alert("주간/월간을 선택해주세요.")
			$("#upload_type").focus()
			return false
		}else if(!$("#toon_file").val()){
			alert("대표 이미지를 등록해주세요.")
			$("#toon_info").focus()
			return false
		}else if(!$("#toon_info").val()){
			alert("툰 정보를 입력해주세요.")
			$("#toon_info").focus()
			return false
		}
	})
})
</script>
	<div id="toon_upload">
		<div style="width:100%; height:50px; line-height:50px; margin-top:100px;">
			<span style="margin-left:10px; font-size:14px; font-weight:bold;">웹툰 등록</span>
		</div>
		<form action="toon_upload_ok" method="post" enctype="multipart/form-data">
			<table id="toon_upload_table">
				<tr>
					<td id="left">카테고리</td>
					<td id="right">
						<select name="cate_num" id="cate_num">
							<option value="x">----카테고리 선택----</option>
						<c:forEach var="clist" items="${clist }">
							<option value="${clist.cate_num }">${clist.cate_name }</option>
						</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td id="left">제목</td>
					<td id="right">
						<input type="text" id="toon_title" name="toon_title">
					</td>
				</tr>
				<tr>
					<td id="left">글작가</td>
					<td id="right">
						<input type="text" id="toon_writer" name="toon_writer">
					</td>
				</tr>
				<tr>
					<td id="left">그림작가</td>
					<td id="right">
						<input type="text" id="toon_painter" name="toon_painter">
					</td>
				</tr>
				<tr>
					<td id="left">요일</td>
					<td id="right">
						<select name="upload_day" id="upload_day">
							<option value="x">----요일 선택----</option>
							<option>월</option>
							<option>화</option>
							<option>수</option>
							<option>목</option>
							<option>금</option>
							<option>토</option>
							<option>일</option>
						</select>
					</td>
				</tr>
				<tr>
					<td id="left">주간/월간</td>
					<td id="right">
						<select name="upload_type" id="upload_type">
							<option value="x">----주간/월간----</option>
							<option>주간</option>
							<option>월간</option>
						</select>
					</td>
				</tr>
				<tr>
					<td id="left">대표 이미지<span style="margin-left:5px; font-size:13px; font-weight:bold; color:#333;">썸네일</span></td>
					<td id="right">
						<input type="file" id="toon_file2" name="toon_file2">
					</td>
				</tr>
				<tr>
					<td id="left">대표 이미지<span style="margin-left:5px; font-size:13px; font-weight:bold; color:#333;">상세페이지</span></td>
					<td id="right">
						<input type="file" id="toon_file" name="toon_file">
					</td>
				</tr>
				<tr>
					<td id="left">툰 정보</td>
					<td id="right">
						<textarea id="toon_info" name="toon_info"></textarea>
					</td>
				</tr>
				<tr>
					<td id="button_td" colspan="2">
						<input type="submit" id="upload_btn" value="등록">
						<input type="button" id="back_btn" value="뒤로가기">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>