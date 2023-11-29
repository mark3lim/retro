<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page info="" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.142/mvc_prj/common/main/favicon.png">
<!-- bootstrap CDN-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.8/dist/web/variable/pretendardvariable.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">
	.inputBox {
	 border:none;
	  border-bottom: 1px solid #ebebeb;
	  font-size: 15px;
	  line-height: 22px;
	  width: 450px; 
	  height:40px; 
	  outline: none;
	  margin-top: 15px;
	  font-family:pretendard;
	}
	label{font-weight: bold; font-family:Pretendard Variable}
	

a {
  text-decoration: none;
  color: #222222
}
a:hover { color:#222222 }


</style>
<script type="text/javascript">
$(function(){
   
});//ready
</script>

</head>
 <c:import url="/common/cdn/cdn.jsp" /> 

 <jsp:include page="/common/cdn/header.jsp"/>
<body>

<div style=" font-size: 35px; font-weight: bold; color: #333333; margin-left: 870px; margin-top: 150px; margin-bottom: 30px ">아이디 찾기</div>
<hr style="border: solid 1px #333333; paddin:20px; width: 450px; margin: 0px auto">
<br>
<div style="text-align: center">가입 시 등록한 휴대폰 번호와 이메일을 입력하면 <br>아이디의 일부를 알려드립니다.</div>
<div style="text-align: center;  margin-top: 100px" id="LoginWrap">
<label style="margin-left: -380px">휴대폰 번호</label><br>
<input type="text" id="loginId" name="id" placeholder="휴대폰번호를 입력해주세요" class="inputBox" /> 
<br>
<label style="margin-left: -410px; margin-top: 50px">이메일</label><br>
<input type="text" id="loginPass" name="pass" placeholder="이메일을 입력해주세요" class="inputBox" /> 
<br>
<input type="button"  style="margin-top:40px; border-radius: 12px; width:450px; height: 50px; font-family:Pretendard Variable;    color:#FFFFFF; background-color:#333333  " id="loginBtn" name="loginBtn" value="아이디 찾기" class="btn btn-dark"/>

</div>
<div style="margin-top:300px"></div>
 <jsp:include page="/common/cdn/footer.jsp"/> 
</body>
</html>