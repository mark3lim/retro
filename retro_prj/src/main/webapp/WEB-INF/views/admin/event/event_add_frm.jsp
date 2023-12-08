<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 태균이가 만든거 -->
<style type="text/css">
body{
 margin: 0px;
}
#wrap{
	
}
#right{
	width: calc(100vw - 240px); height: 100%;float: right;
	background: blue;
}
#left{
	min-width: 240px;height: 100%;float: left;
	padding: 0px;
	background: yellow;
}
#rightHeader{
	min-height: 55px;
	padding-top: 8px;padding-bottom: 5px;
	padding-right: 15px;
	background: #FFFFFF;
}
#rightBody{
	width: 100%; min-height: 500px;float: right;
	padding: 20px;
	padding-left: 56px;
	background: #EEEEEE;
	position: relative;
}

#mainTitle{
	font-size:25px;
	color: #333;
	position: absolute;
	left : 60px;
} 

.dateCss {
	font-family: Pretendard Variable;
	margin-right: 5px;
	width: 180px;
}

.borderCss{
	border: 1px solid #DBDFE6; 
	border-radius: 5px; 
}

.tableList td {
	border-bottom: 1px solid #DEE2E6;
}

.tableList th {
	border-bottom: 1px solid #DEE2E6;
	padding: 10px;
}
</style>
<!-- 태균이가 만든거 끝-->

<script type="text/javascript" src="http://localhost/retro_prj/common/datepicker/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://localhost/retro_prj/common/datepicker/jquery-ui.css"/>

</head>
<body>
<%@ include file="../sidebar.jsp" %>
<script type="text/javascript">

$(function() {
	
	$(".dateCss").datepicker({ //JSON 형태 -> 이름:값, 이름:값,,,
		  dateFormat: 'yy-mm-dd',
		  prevText: '이전 달',
		  nextText: '다음 달',
		  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		  showMonthAfterYear: true,
		  yearSuffix: '년',
	      showOn: "both", // Display the datepicker when clicking the input field and the button
	      buttonImage: "http://localhost/retro_prj/common/images/icons/calendarsm.png",
	      buttonImageOnly: true,
	      buttonText: "Select date"
	});
	
	$("#btnLogout").click(function() {
		location.href="logout.jsp";
	});
});

function date() {

}
</script>
<div id="right">
	<div id="rightHeader" align="right">
		<span style="font-weight: bold;margin-right: 20px">관리자님</span>
		<input id="btnLogout" type="button" class="btn btn-outline-dark" value="로그아웃" style="margin-right: 20px">
	</div>
	<div id="rightBody">
		<div class="pageLocation">
		홈 
		<svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
 		<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
		</svg>
		이벤트 관리
		<svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
 		<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
		</svg>
		이벤트 등록
		</div>
		
		<div class="text" id="mainTitle">
			<strong>이벤트 등록</strong>
		</div>
		
		<!-- 테이블 -->
		<div id="background_box">
				<div style="margin: 0 10px 0px 10px;">
				
				<table class="table tableList">
				<tr>
					<th class="top_title">기간</th>
					<td>
					<input type="text" id="startDate" name="startDate" class="dateCss borderCss" autocomplete="off">
				 	~
					<input type="text" id="endDate" name="endDate" class="dateCss borderCss" autocomplete="off">
					</td>
				</tr>
				<tr>
					<th class="top_title">제목</th>
					<td><input type="text" id="evtTitle" name="title" class="borderCss"></td>
				</tr>
				<tr>
					<th class="top_title">이미지 첨부</th>
					<td><input type="file" id="evtImg" name="img" class="borderCss"/></td>
				</tr>
				<tr>
					<th class="top_title">이미지</th>
					<td>
						<div>
							<img src="http://localhost/mvc_prj/common/images/damgom.jpg" height="200px"/>
						</div>
					</td>
				</tr>
				<tr>
					<th class="top_title">내용</th>
					<td>
						<textarea style="width:50%; height:200px; resize: none;" class="borderCss"></textarea>
					</td>
				</tr>

				
				</table>	
			</div>
		</div>
		<!---->
			
	</div>	
</div>
</body>
</html>