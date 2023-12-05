<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="http://localhost/retro_prj/common/cdn/cdn.jsp" />

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 모달 스타일 */
.modal-bg , .delModal-bg, .completeModal-bg {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5); /* 반투명 회색 배경 */
	z-index: 1000;
}


.modal {
	position: fixed;
	top: 87%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 20px;
	width: 3000px;
	background-color: white; /* 흰색 배경 */
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
	z-index: 1001; /* 모달을 모달 배경 위에 표시 */
}

.delModal {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 5px;
	width: 450px;
	background-color: white; /* 흰색 배경 */
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
	border-radius: 10px;
	z-index: 1001; /* 모달을 모달 배경 위에 표시 */
}

.completeModal {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 5px;
	width: 400px;
	background-color: white; /* 흰색 배경 */
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
	border-radius: 10px;
	z-index: 1001; /* 모달을 모달 배경 위에 표시 */
}
</style>
<script type="text/javascript">
	$(function() {
		$("#completeCancel").click(function(){
			var modalBg3 = document.getElementById('completeModalBg');
			modalBg3.style.display = 'none';
		});//click
		$("#delCancel").click(function(){
			var modalBg2 = document.getElementById('delModalBg');
			modalBg2.style.display = 'none';
		});//click
		
		$("#sendComment").click(function(){
			location.href="../review/user_sales_review.do";
		});
		
	});//ready

	/* '상태변경'버튼 클릭 시 모달 나오게 동작 */
	function openModal() {
		var modalBg = document.getElementById('modalBg');
		modalBg.style.display = 'block';
	}//openModal

	/* '상태변경'버튼 클릭 시 모달 나오고, 모달 이외의 배경을 클릭하면 모달이 없어지게 동작 */
	function closeModal() {
		var modalBg = document.getElementById('modalBg');
	
		var modal = $("#myModal");
		if (modal.is(event.target) || modal.has(event.target).length > 0) {
            return;
        }

		modalBg.style.display = 'none';
	}//closeModal

	/* '상품삭제'버튼 클릭 시 모달 나오게 동작 */
	function openDelModal() {
		var modalBg2 = document.getElementById('delModalBg');
		modalBg2.style.display = 'block';
	}//openDelModal

	/* '상품삭제'버튼 클릭 시 모달 나오고, 모달 이외의 배경을 클릭하면 모달이 없어지게 동작 */
	function closeDelModal() {
		var modalBg2 = document.getElementById('delModalBg');
		var modal2 = $("#delModal");
		if (modal2.is(event.target) || modal2.has(event.target).length > 0) {
            return;
        }
		modalBg2.style.display = 'none';
	}//closeDelModal
	
	/* '상태변경' 버튼 클릭 후 '판매완료' 클릭 시 모달이 나오게 동작  */
	function openCompleteModal() {
		var modalBg3 = document.getElementById('completeModalBg');
		modalBg3.style.display = 'block';
	}//openDelModal

	/* '상태변경' 버튼 클릭 후 '판매완료' 클릭 시 모달이 나오고, 모달 이외의 배경을 클릭하면 모달이 없어지게 동작 */
	function closeCompleteModal() {
		var modalBg3 = document.getElementById('completeModalBg');
		var modal3 = $("#completeModal");
		if (modal3.is(event.target) || modal3.has(event.target).length > 0) {
            return;
        }
		modalBg3.style.display = 'none';
	}//closeDelModal
</script>

</head>
<body>
	<!-- header -->
	<c:import url="http://localhost/retro_prj/common/cdn/header.jsp" />
	<main class="relative flex-grow border-b-2"
		style="min-height: -webkit-fill-available; -webkit-overflow-scrolling: touch">
		<div
			class="max-w-[1280px] lg:min-h-[950px] mx-auto max-w-[1280px] px-4 md:px-8 2xl:px-16 box-content">
			<div
				class="items-start block grid-cols-2 pt-5 lg:grid gap-x-10 xl:gap-x-14 pb-14 lg:py-10 lg:pb-14 2xl:pb-20">
				<div
					class="carouselWrapper relative product-gallery swiperThumbnail product-gallery-slider sticky top-[200px]   ">
					<div
						class="swiper swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden"
						dir="ltr">
						<div class="swiper-wrapper"
							style="transform: translate3d(0px, 0px, 0px);">
							
							<div class="swiper-slide swiper-slide-active"
								style="width: 612px;">
								<div
									class="col-span-1 transition duration-150 ease-in hover:opacity-90 w-full relative pt-[100%]">
									<img alt="홍대 미대가 그려주는 그림--0" referrerpolicy="no-referrer"
										src="https://img2.joongna.com/media/original/2023/11/30/1701328187885CXy_Pdlnr.png?impolicy=resizeWatermark3&amp;ftext=zxxxdsdd"
										decoding="async" data-nimg="fill"
										class="object-cover w-full h-full rounded-lg top-1/2 left-1/2"
										loading="lazy"
										style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
								</div>
							</div>
						</div>
						<div
							class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal swiper-pagination-lock">
							<span
								class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>
						</div>
					</div>
					<div class="flex items-center w-full absolute top-2/4 z-10 hidden">
						<button
							class="w-7 h-7 lg:w-8 lg:h-8 text-sm md:text-base lg:text-lg text-black flex items-center justify-center rounded absolute transition duration-250 hover:bg-gray-900 hover:text-white focus:outline-none transform shadow-navigation -translate-x-1/2 rounded-full lg:w-9 lg:h-9 xl:w-10 xl:h-10 3xl:w-12 3xl:h-12 lg:text-xl 3xl:text-2xl -left-4 bg-transparent shadow-transparent hover:bg-transparent hover:text-black swiper-button-disabled swiper-button-lock"
							id="product-gallery-slider-prev" aria-label="prev-button"
							disabled="">
							<svg stroke="currentColor" fill="currentColor" stroke-width="0"
								viewBox="0 0 512 512" height="1em" width="1em"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M217.9 256L345 129c9.4-9.4 9.4-24.6 0-33.9-9.4-9.4-24.6-9.3-34 0L167 239c-9.1 9.1-9.3 23.7-.7 33.1L310.9 417c4.7 4.7 10.9 7 17 7s12.3-2.3 17-7c9.4-9.4 9.4-24.6 0-33.9L217.9 256z"></path></svg>
						</button>
						<button
							class="w-7 h-7 lg:w-8 lg:h-8 text-sm md:text-base lg:text-lg text-black flex items-center justify-center rounded absolute transition duration-250 hover:bg-gray-900 hover:text-white focus:outline-none transform shadow-navigation translate-x-1/2 rounded-full lg:w-9 lg:h-9 xl:w-10 xl:h-10 3xl:w-12 3xl:h-12 lg:text-xl 3xl:text-2xl -right-4 bg-transparent shadow-transparent hover:bg-transparent hover:text-black swiper-button-disabled swiper-button-lock"
							id="product-gallery-slider-next" aria-label="next-button"
							disabled="">
							<svg stroke="currentColor" fill="currentColor" stroke-width="0"
								viewBox="0 0 512 512" height="1em" width="1em"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M294.1 256L167 129c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.3 34 0L345 239c9.1 9.1 9.3 23.7.7 33.1L201.1 417c-4.7 4.7-10.9 7-17 7s-12.3-2.3-17-7c-9.4-9.4-9.4-24.6 0-33.9l127-127.1z"></path></svg>
						</button>
					</div>
				</div>
				<div class="pt-4 lg:pt-0">
					<div class="pb-4">
						<div class="flex items-center w-full chawkbazarBreadcrumb">
							<ol class="flex flex-wrap items-center w-full">
								<li
									class="flex-shrink-0 px-0 text-sm break-all transition duration-200 ease-in text-body first:ps-0 last:pe-0 hover:text-heading"><a
									href="/">홈</a></li>
								<li
									class="text-sm mx-2.5 leading-5 text-body min-[480px]:px-1 max-[480px]:px-0">&gt;</li>
								<li
									class="flex-shrink-0 px-0 text-sm break-all transition duration-200 ease-in text-body first:ps-0 last:pe-0 hover:text-heading"><a
									class="capitalize" href="/search?category=21">무료나눔</a></li>
							</ol>
						</div>
					</div>
					<div class="pb-5 border-b border-gray-300">
						<h1
							class="flex justify-between mb-1 text-lg font-bold align-middle text-heading lg:text-xl 2xl:text-2xl hover:text-black">
							홍대 미대가 그려주는 그림
							<button type="button" aria-label="공유하기" class="ml-2 text-lg">
								<svg stroke="currentColor" fill="currentColor" stroke-width="0"
									viewBox="0 0 24 24" height="1em" width="1em"
									xmlns="http://www.w3.org/2000/svg">
									<g>
									<path fill="none" d="M0 0h24v24H0z"></path>
									<path
										d="M10 3v2H5v14h14v-5h2v6a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h6zm7.586 2H13V3h8v8h-2V6.414l-7 7L10.586 12l7-7z"></path></g></svg>
							</button>
						</h1>
						<div class="flex items-center justify-between">
							<div
								class="text-jnGreen font-bold text-[40px] pe-2 md:pe-0 lg:pe-2 2xl:pe-0 mr-2">무료나눔</div>
						</div>
					</div>
					<div class="py-4 border-b border-gray-300 space-s-4">
						<div class="pb-1 space-y-5 text-sm">
							<div class="flex justify-between text-body">
								<span>13초 전 · 조회 0 · 찜 0</span><a href="/fraud"><div
										class="flex items-center hover:text-gray-400">
										<svg stroke="currentColor" fill="currentColor"
											stroke-width="0" viewBox="0 0 16 16" height="1em" width="1em"
											xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd"
												d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 100-6 3 3 0 000 6zm7 1.5a.5.5 0 01.5-.5h2a.5.5 0 010 1h-2a.5.5 0 01-.5-.5zm-2-3a.5.5 0 01.5-.5h4a.5.5 0 010 1h-4a.5.5 0 01-.5-.5zm0-3a.5.5 0 01.5-.5h4a.5.5 0 010 1h-4a.5.5 0 01-.5-.5zm2 9a.5.5 0 01.5-.5h2a.5.5 0 010 1h-2a.5.5 0 01-.5-.5z"
												clip-rule="evenodd"></path></svg>
										<span class="ml-2 ">사기조회</span>
									</div></a>
							</div>
							<div class="flex justify-between">
								<div class="flex-1 basis-[33.33%] pe-4 border-r border-gray-300">
									<span>배송비</span><span
										class="block mt-2 text-lg font-semibold text-heading">배송비
										별도</span>
								</div>
								<div class="flex-1 basis-[33.33%] ps-4">
									<span>제품 상태</span><span
										class="block mt-2 text-lg font-semibold text-heading">중고</span>
								</div>
							</div>
						</div>
					</div>
					<div
						class="flex items-center py-4 border-b border-gray-300 space-s-4">
						<ul class="flex flex-row justify-around w-full">
							<!-- '상품 수정' 버튼 -->
							<li><button class="flex flex-col items-center">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<path d="M12 21H21" stroke="#141313" stroke-width="1.5"
											stroke-linecap="round" stroke-linejoin="round"></path>
										<path
											d="M7.91993 19.7931C8.05181 19.7601 8.17224 19.6919 8.26836 19.5958L19.9497 7.91448C20.2034 7.66076 20.4047 7.35954 20.542 7.02803C20.6793 6.69652 20.75 6.34121 20.75 5.98239C20.75 5.62357 20.6793 5.26826 20.542 4.93675C20.4047 4.60524 20.2034 4.30402 19.9497 4.0503C19.696 3.79657 19.3948 3.59531 19.0633 3.45799C18.7317 3.32068 18.3764 3.25 18.0176 3.25C17.2929 3.25 16.5979 3.53788 16.0855 4.0503L4.40418 15.7316C4.30806 15.8278 4.23987 15.9482 4.2069 16.0801L3.27239 19.8181C3.2085 20.0737 3.28338 20.344 3.46967 20.5303C3.65596 20.7166 3.92632 20.7915 4.1819 20.7276L7.91993 19.7931Z"
											stroke="#141313" stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round"></path></svg>
									<p class="text-sm mt-[6px]">상품수정</p>
								</button></li>
							<!-- '상태변경'버튼 -->
							<li><button class="flex flex-col items-center"
									onclick="openModal()">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<path
											d="M12 21C16.9706 21 21 16.9706 21 12C21 7.02944 16.9706 3 12 3C7.02944 3 3 7.02944 3 12C3 16.9706 7.02944 21 12 21Z"
											stroke="#141313" stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round"></path>
										<path d="M16 9L10.5 14.5L8 12" stroke="#141313"
											stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round"></path></svg>
									<p class="text-sm mt-[6px]">상태변경</p>
								</button></li>
							<!-- '상품 삭제' 버튼 -->
							<li><button class="flex flex-col items-center"
									onclick="openDelModal()">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<path d="M3 6H5H21" stroke="#141313" stroke-width="1.5"
											stroke-linecap="round" stroke-linejoin="round"></path>
										<path
											d="M8 6V4C8 3.46957 8.21071 2.96086 8.58579 2.58579C8.96086 2.21071 9.46957 2 10 2H14C14.5304 2 15.0391 2.21071 15.4142 2.58579C15.7893 2.96086 16 3.46957 16 4V6M19 6V20C19 20.5304 18.7893 21.0391 18.4142 21.4142C18.0391 21.7893 17.5304 22 17 22H7C6.46957 22 5.96086 21.7893 5.58579 21.4142C5.21071 21.0391 5 20.5304 5 20V6H19Z"
											stroke="#141313" stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round"></path>
										<path d="M10 11V17" stroke="#141313" stroke-width="1.5"
											stroke-linecap="round" stroke-linejoin="round"></path>
										<path d="M14 11V17" stroke="#141313" stroke-width="1.5"
											stroke-linecap="round" stroke-linejoin="round"></path></svg>
									<p class="text-sm mt-[6px]">상품삭제</p>
								</button></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="z-[15]" style="position: sticky; top: 80px;">
				<div
					class="mb-2 grid grid-cols-2 lg:grid-cols-5 list-none pl-0 w-full bg-white"
					data-nav-ref="true">
					<div class="col-span-1 lg:col-span-3 w-full">
						<a
							class="text-base py-2 px-4 border-b-[4px] border-b-transparent text-jnblack w-full lg:w-auto justify-center flex lg:block cursor-pointer false"
							aria-label="상품내용탭" aria-roledescription="상품내용탭" href="#">상품내용</a>
					</div>
					<div role="presentation" class="col-span-1 lg:col-span-2 w-full">
						<a
							class="text-base py-2 px-4 border-b-[4px] border-b-transparent text-jnblack w-full justify-center flex lg:block cursor-pointer border-b-jnblack transition duration-300 ease-in lg:border-b-transparent"
							aria-label="가게정보탭" aria-roledescription="가게정보탭" href="#">가게정보</a>
					</div>
				</div>
			</div>
			<div class="block grid-cols-5 lg:grid lg:mb-10">
				<div name="product-description"
					class="col-span-3 text-sm w-full data-[tab-active]:block">
					<div
						class="flex flex-col items-center justify-center w-full p-3 mb-2 space-y-2 bg-gray-200">
						<div class="flex space-x-2">
							<span class="flex items-center justify-center"><svg
									width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M12 21C16.9706 21 21 16.9706 21 12C21 7.02944 16.9706 3 12 3C7.02944 3 3 7.02944 3 12C3 16.9706 7.02944 21 12 21ZM12 13.9286C12.4691 13.9286 12.8577 13.5645 12.8882 13.0964L13.1989 8.32508L13.2429 7.25541C13.2662 6.68747 12.8121 6.21429 12.2437 6.21429H11.7563C11.1879 6.21429 10.7338 6.68747 10.7571 7.25541L10.8012 8.32508L11.1118 13.0964C11.1423 13.5645 11.5309 13.9286 12 13.9286ZM11.993 17.7857C12.3583 17.7857 12.6651 17.663 12.9133 17.4174C13.1616 17.1719 13.2857 16.8661 13.2857 16.5C13.2857 16.1339 13.1616 15.8281 12.9133 15.5826C12.6651 15.3371 12.3583 15.2143 11.993 15.2143C11.6276 15.2143 11.3232 15.3371 11.0796 15.5826C10.8361 15.8281 10.7143 16.1339 10.7143 16.5C10.7143 16.8661 10.8361 17.1719 11.0796 17.4174C11.3232 17.663 11.6276 17.7857 11.993 17.7857Z"
										fill="#FF5453"></path></svg></span><span
								class="text-base font-bold pt-[2px]">거래 전 주의사항 안내</span>
						</div>
						<div class="text-xs truncate">
							판매자가 별도의 메신저로 결제링크를 보내거나 직거래(직접송금)을 <br>유도하는 경우 사기일 가능성이 높으니
							거래를 자제해 주시고
						</div>
						<span class="text-xs font-bold underline truncate"><a
							class="text-[#FF5453]" href="/cs-center">중고나라 고객센터</a>로 신고해주시기
							바랍니다.</span>
					</div>
					<article>
						<p
							class="px-4 py-10 break-words break-all whitespace-pre-line lg:py-2">무료입니당ㅎㅎㅎㅎㅎ</p>
					</article>
				</div>
				<div name="product-store"
					class="col-span-2 w-full py-10 lg:py-2 px-4">
					<div class="flex">
						<div class="flex w-full flex-col justify-around lg:ml-4">
							<a class="font-semibold text-base text-jnblack"
								href="/store/1424385">zxxxdsdd</a><span
								class="font-medium text-sm flex text-jnGray-500">판매상품 1 ·
								안전거래 0 · 후기 0</span>
						</div>
						<a class="flex items-center translate-x-4" href="/store/1424385"><img
							alt="프로파일"
							src="https://img2.joongna.com/common/Profile/Default/profile_f.png"
							width="60" height="60" decoding="async" data-nimg="1"
							class="rounded-full max-w-none h-[60px] box-content border-4 border-white -translate-x-4"
							loading="lazy" style="color: transparent;"></a>
					</div>
					<div class="lg:ml-4">
						<div class="flex justify-between mt-2 text-[#0CB650] font-medium">
							<strong>신뢰지수 289</strong><span class="text-jnGray-500 text-sm">1,000</span>
						</div>
						<div class="w-full h-1.5 bg-[#CCF4DC] rounded overflow-hidden">
							<div class="h-full rounded bg-[#0DCC5A]" style="width: 28.9%;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- '상태변경' 버튼 클릭 시 나오는 모달 -->
		<div id="modalBg" class="modal-bg" onclick="closeModal()">
		
			<!-- 모달 -->
			<div id="myModal" class="modal">
				<!-- 여기에 상태 변경 폼이나 내용을 추가 -->
				<div class="bg-white rounded-tl-lg rounded-tr-lg" id="statusModal">
					<div
						class="max-w-[400px] mx-auto my-0 pt-[30px] pb-[20px] w-full text-jnblack px-6">
						<div class="flex flex-col w-full">
							<p class="font-medium text-center text-l py-[11px]">상태변경</p>
							<ul class="flex flex-col mt-3 mb-6">
								<li
									class="py-[14px] [&amp;>button]:w-full [&amp;>button]:text-left"><button>예약중</button></li>
								<li
									class="py-[14px] [&amp;>button]:w-full [&amp;>button]:text-left"><button>판매보류</button></li>
								<li
									class="py-[14px] [&amp;>button]:w-full [&amp;>button]:text-left" onclick="openCompleteModal()"><button>판매완료</button></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- '상품 삭제' 버튼 클릭 시 나오는 모달 -->
		<div id="delModalBg" class="delModal-bg" onclick="closeDelModal()">
			<!-- 모달 -->
			<div id="delModal" class="delModal">
				<div
					class="flex flex-col justify-between bg-white p-5 min-h-[220px] min-[480px]:min-w-[400px]">
					<div tabindex="0"
						class="md:text-lg font-normal text-black text-center overflow-auto flex-auto flex justify-center flex-col outline-none mb-3 items-center">
						<div
							class="flex flex-col items-center justify-center px-5 pb-5 pt-7">
							<p class="text-base font-medium text-left text-jnGray-700 mb-1">상품을
								삭제하시겠습니까?</p>
							<p class="text-base font-medium text-left text-jnGray-700">삭제된
								상품은 복구되지 않습니다.</p>
						</div>
					</div>
					<div class="flex space-x-2 w-full shrink-0 text text-base h-[52px]">
						<button data-variant="flat" id="delCancel"
							class="md:text-sm inline-flex items-center cursor-pointer transition ease-in-out duration-300 font-semibold font-body text-center justify-center placeholder-white focus-visible:outline-none focus:outline-none rounded-md px-5 md:px-6 lg:px-8 py-4 md:py-3.5 lg:py-4 hover:shadow-cart bg-white border-gray-400 border flex-grow text-[16px] text-black focus-visible:ring hover:bg-white hover:text-black">취소</button>
						<button data-variant="flat"
							class="md:text-sm inline-flex items-center cursor-pointer transition ease-in-out duration-300 font-semibold font-body text-center justify-center border-0 border-transparent placeholder-white focus-visible:outline-none focus:outline-none rounded-md text-white px-5 md:px-6 lg:px-8 py-4 md:py-3.5 lg:py-4 hover:text-white hover:shadow-cart bg-jnblack hover:bg-jnblack/90 active:bg-jnblack/90 flex-grow text-[16px] focus-visible:ring">확인</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- '상태변경' 버튼 클릭 후 '판매완료' 클릭 시 나오는 모달  -->
		<!-- 거래 상대 선택 및 판매 후기 작성 모달 -->
		<div id="completeModalBg" class="completeModal-bg" onclick="closeCompleteModal()">
			<!-- 모달 -->
			<div id="completeModal" class="completeModal">
				<div
					class="flex flex-col justify-between bg-white p-5 min-h-[220px] max-h-[500px] max-w-[400px]">
					<div tabindex="0"
						class="md:text-lg font-normal text-black text-center overflow-auto flex-auto flex justify-center flex-col outline-none items-center">
						<div
							class="w-full flex flex-col items-center justify-center pb-5 text-base leading-5">
							<p
								class="block font-semibold text-xl text-center text-jnGray-900">
								거래한 상대를 선택하고 <br>후기를 작성해보세요.
							</p>
							<ul class="w-full mt-4 px-4 overflow-y-scroll">
								<li class="flex items-center justify-between mb-1"><div
										class="flex items-center">
										<img alt="프로파일"
											src="https://img2.joongna.com/common/Profile/Default/profile_f.png"
											width="50" height="50" decoding="async" data-nimg="1"
											class="rounded-full max-w-none h-[50px] mr-3" loading="lazy"
											style="color: transparent;">
										<div>
											<p class="mb-0 text-start">중고나라#8626590</p>
											<p
												class="text-start text-sm text-jnGray-700 w-full line-clamp-1">제가
												아니면 안돼요</p>
										</div>
									</div>
									<label for="1424385_8626376_8626376" class="flex items-end"><input
										type="radio" id="1424385_8626376_8626376"
										name="myProductBuyer"
										class="appearance-none rounded-full w-5 h-5 border-1.5 border-solid border-jnGray-500 transition-all duration-100 ease-linear mx-1.5 cursor-pointer checked:border-6 checked:border-jngreen"
										value="8626376"></label></li>
							</ul>
						</div>
					</div>
					<div class="flex space-x-2 w-full shrink-0 text text-base h-[52px]">
						<button data-variant="flat" id="completeCancel"
							class="md:text-sm inline-flex items-center cursor-pointer transition ease-in-out duration-300 font-semibold font-body text-center justify-center placeholder-white focus-visible:outline-none focus:outline-none rounded-md px-5 md:px-6 lg:px-8 py-4 md:py-3.5 lg:py-4 hover:shadow-cart bg-white border-gray-400 border flex-1 text-[16px] text-black focus-visible:ring hover:bg-white hover:text-black">취소</button>
						<button data-variant="flat" id="sendComment"
							class="md:text-sm inline-flex items-center cursor-pointer transition ease-in-out duration-300 font-semibold font-body text-center justify-center border-0 border-transparent placeholder-white focus-visible:outline-none focus:outline-none rounded-md text-white px-5 md:px-6 lg:px-8 py-4 md:py-3.5 lg:py-4 hover:text-white hover:shadow-cart bg-jnblack hover:bg-jnblack/90 active:bg-jnblack/90 flex-1 text-[16px] focus-visible:ring disabled:bg-jnGray-300">후기
							보내기</button>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="Toastify"></div> -->
	</main>
	<!-- footer -->
	<c:import url="http://localhost/retro_prj/common/cdn/footer.jsp" />
</body>
</html>