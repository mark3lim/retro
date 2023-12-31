<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<c:if test="${not flag }">
	<c:redirect url="http://localhost/retro_prj/mypage_enter.do?flag=0"/>
</c:if>
<html>
<head>
<meta charset="UTF-8">
<c:import url="http://localhost/retro_prj/common/cdn/cdn.jsp"/>
<link rel="stylesheet" href="https://kream.co.kr/_nuxt/css/199727e.css">
<style type="text/css">
#infoLi {
	color: #333;
}

.btn:hover {
	background-color: black;
	color: white;
}
</style>
<script type="text/javascript">
	var nicknameFlag = false;
	var emailFlag = false;
	var phoneFlag = false;

	$(function() {
		$("#changePw").click(function() {
			location.href = "changePw_frm.do";
		});
		
		$("#email").keydown(function() {
			var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
			var email = $("#email").val();
			
		    if (!regEmail.test(email)) {
				$("#err").addClass("has_error");
				$("#email").addClass("text_fill");
		    } else {
				$("#err").removeClass("has_error");
				$("#email").removeClass("text_fill");
		    }
		});
		
		$("#changeNn").click(function() {
			if(nicknameFlag) {
				cinfo($("#nickname").val(), "N");
			} else {
				chg(0);
			}
		});
		$("#changeE").click(function() {
			if(emailFlag) {
				cinfo($("#email").val(), "E");
			} else {
				chg(1);
			}
		});
		$("#changeP").click(function() {
			if(phoneFlag) {
				cinfo($("#phone").val(), "P");
			} else {
				chg(2);
			}
		});
		
	});
	
function cinfo(data, flag) {
	var param = {data:data, flag:flag};
	
	$.ajax({
		url:"change_user_info.do",
		type:"POST",
		data:param,
		dataType:"JSON",
		error:function(xhr) {
			alert(xhr.status);
		},
		success:function(jsonObj) {
			if(jsonObj.flag) {
				alert("성공적으로 변경되었습니다.");
			} else {
				alert("다시 시도해주세요");
			}
		}
	});
}
	
function chg(flagInt) {
	if(flagInt == 0) {
		$("#nickname").removeAttr("readonly");	
		$("#changeNn").css("background-color", "black");
		$("#changeNn").css("color", "white");
		nicknameFlag = true;
		
	} else if(flagInt == 1) {
		$("#email").removeAttr("readonly");		
		$("#changeE").css("background-color", "black");
		$("#changeE").css("color", "white");
		emailFlag = true;
		
	} else if(flagInt == 2) {
		$("#phoneP").css("display", "none");
		$("#phone").prop("type", "text");		
		$("#changeP").css("background-color", "black");
		$("#changeP").css("color", "white");
		phoneFlag = true;
	}
}
	
function handleOnInputPhone(e)  {
	e.value = e.value.replace(/[^0-9]/ig, '')
}
</script>
</head>
<body>
<!-- header -->
<c:import url="/common/cdn/header.jsp" />
	
<main class="relative flex-grow border-b-2" style="min-height: -webkit-fill-available; -webkit-overflow-scrolling: touch">
	<div class="flex mx-auto max-w-[1280px] px-4 md:px-8 2xl:px-16 box-content">
		<!-- mypage sidebar -->
		<c:import url="http://localhost/retro_prj/common/cdn/mypage_sidebar.jsp" />
		<div class="w-full flex-grow">
		<!-- 마이페이지 header -->
		<c:import url="/common/cdn/mypage_info.jsp" />
		
<!-- 코딩 시작 -->
<div data-v-cf6a6ef4="" data-v-0adb81cc="" class="content_area my-page-content">
	<div data-v-cf6a6ef4="" class="my_profile">
		<div data-v-61e7a8a3="" data-v-cf6a6ef4="" class="content_title border">
			<div data-v-61e7a8a3="" class="title">
				<h3 data-v-61e7a8a3=""><strong>내 정보</strong></h3>
				<!---->
			</div>
			<!---->
		</div>
		<div data-v-cf6a6ef4="" class="profile_info">
			<div data-v-8b96a82e="" data-v-cf6a6ef4="" class="profile_group">
				<h4 data-v-8b96a82e="" class="group_title">내 계정</h4>
				<div data-v-0c9f3f9e="" data-v-cf6a6ef4="" class="unit" data-v-8b96a82e="">
					<h5 data-v-0c9f3f9e="" class="title">아이디</h5>
					<div data-v-0c9f3f9e="" class="unit_content">
						<p data-v-24a03828="" data-v-cf6a6ef4="" class="desc email" data-v-0c9f3f9e=""><c:out value="${sessionScope.id }"/></p>
					</div>
				</div>
				<div data-v-0c9f3f9e="" data-v-cf6a6ef4="" class="unit" data-v-8b96a82e="">
					<h5 data-v-0c9f3f9e="" class="title">비밀번호</h5>
					<div data-v-0c9f3f9e="" class="unit_content">
						<p data-v-24a03828="" data-v-cf6a6ef4="" class="desc password" data-v-0c9f3f9e="">●●●●●●●●●</p>
						<input data-v-0a6aebaa="" data-v-cf6a6ef4="" type="button" id="changePw" value="변경" class="btn btn_modify outlinegrey small" data-v-0c9f3f9e="">
					</div>
				</div>
				<!-- <div data-v-cf6a6ef4="" data-v-8b96a82e="" class="modify" style="display: none;">
					<div data-v-5ee806c3="" data-v-cf6a6ef4="" class="input_box" data-v-8b96a82e="">
						<h6 data-v-cf6a6ef4="" data-v-5ee806c3="" class="input_title">이메일
							주소 변경</h6>
						<div data-v-5ee806c3="" class="input_item">
							<input data-v-5ee806c3="" type="email" autocomplete="off" class="input_txt" placeholder="@naver.com">
						</div>
						<p data-v-cf6a6ef4="" data-v-5ee806c3="" class="input_error">
						</p>
					</div>
					<div data-v-cf6a6ef4="" data-v-8b96a82e="" class="modify_btn_box">
						<button data-v-0a6aebaa="" data-v-cf6a6ef4="" type="button" class="btn outlinegrey medium" slot="button" data-v-8b96a82e="">
							취소</button>
						<button data-v-0a6aebaa="" data-v-cf6a6ef4="" disabled="disabled" type="button" class="btn solid medium disabled" slot="button" data-v-8b96a82e="">인증 메일 발송</button>
					</div>
				</div> -->
				<div data-v-0c9f3f9e="" data-v-cf6a6ef4="" class="unit" data-v-8b96a82e="">
					<h5 data-v-0c9f3f9e="" class="title">닉네임</h5>
				<form id="nicknameFrm" action="" method="post">
					<div data-v-0c9f3f9e="" class="unit_content">
						<p data-v-24a03828="" data-v-cf6a6ef4="" class="desc email" data-v-0c9f3f9e="">
							<input type="text" id="nickname" name="nickname" value="${privateInfo.nickname }" readonly="readonly">
						</p>
						<input id="changeNn" value="변경" data-v-0a6aebaa="" data-v-cf6a6ef4="" type="button" class="btn btn_modify outlinegrey small" data-v-0c9f3f9e="">
					</div>
				</form>
				</div>
				<div data-v-0c9f3f9e="" data-v-cf6a6ef4="" class="unit" data-v-8b96a82e="">
					<h5 data-v-0c9f3f9e="" class="title">이메일 주소</h5>
				<form id="emailFrm" action="" method="post">
					<div data-v-0c9f3f9e="" class="unit_content">
						<p data-v-24a03828="" data-v-cf6a6ef4="" class="desc email" data-v-0c9f3f9e="">
							<input type="text" id="email" name="email" value="${privateInfo.email }" readonly="readonly">
						</p>
						<input data-v-0a6aebaa="" value="변경" data-v-cf6a6ef4="" id="changeE" type="button" class="btn btn_modify outlinegrey small" data-v-0c9f3f9e="">
					</div>
				</form>
				</div>
				
			</div>
			<div data-v-8b96a82e="" data-v-cf6a6ef4="" class="profile_group">
				<h4 data-v-8b96a82e="" class="group_title">개인 정보</h4>
				<div data-v-0c9f3f9e="" data-v-cf6a6ef4="" class="unit" data-v-8b96a82e="">
					<h5 data-v-0c9f3f9e="" class="title">휴대폰 번호</h5>
				<form id="phoneFrm" action="" method="post">
					<div data-v-0c9f3f9e="" class="unit_content">
					<c:set var="TextValue" value="${privateInfo.phone }"/>
						<p data-v-24a03828="" data-v-cf6a6ef4="" class="desc" data-v-0c9f3f9e="">
							<input type="hidden" id="phone" name="phone" value="${privateInfo.phone }" oninput="handleOnInputPhone(this)" maxlength="11">
							<span id="phoneP">${fn:substring(TextValue,0,3)}-${fn:substring(TextValue,3,7)}-${fn:substring(TextValue,7,11)}</span>
						</p>
						<input data-v-0a6aebaa="" data-v-cf6a6ef4="" id="changeP" type="button" value="변경" class="btn btn_modify outlinegrey small" data-v-0c9f3f9e="">
					</div>
				</form>
				</div>
				
			</div>
			<a data-v-cf6a6ef4="" href="byebye_frm.do" class="btn_withdrawal">회원 탈퇴</a>
		</div>
	</div>
</div>
<!-- 코딩 끝 -->
		</div>
	</div>
</main>

<!-- footer -->
<c:import url="http://localhost/retro_prj/common/cdn/footer.jsp"/>
<!-- 내 정보 css 파일 -->
<link href="https://kream.co.kr/_nuxt/css/c9eea23.css" rel="stylesheet" type="text/css">
<link href="https://kream.co.kr/_nuxt/css/2e6b79f.css" rel="stylesheet" type="text/css">
</body>
</html>