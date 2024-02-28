<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/Main/Header.css">
<title>Insert title here</title>
</head>
<body>
	<!-- ---------HEADER--------- -->
	<div id="ServeMallcoloron" onclick="ServeMallcolorOff()"></div>
	<div id="CategoryBackgroundColor2"></div>
	<header>
		<div id="MainLinecolor"></div>
		<div id="MainLine">
			<div id="CategoryMenu">
				<img onclick="CategoryMenuOn()"
					src="resources/img/Headerimg/카테고리.png" width="40">
			</div>
			<div id="SiteLogo">
				<a href="${pageContext.request.contextPath}/TotalMall.do"><img
					src="resources/img/Headerimg/사이트로고.png" width="130"></a>
			</div>
			<form method="get" action="product/search.do">
			<!-- 검색어 없을 때 폼 서브밋 이벤트 막음 -->
						<script>
						document.addEventListener("DOMContentLoaded", function() {
						    // 폼 서브밋 이벤트를 가로채고 검색어를 확인하는 함수
						    function submitForm(event) {
						        // 검색어 입력 필드
						        var searchWordInput = document.querySelector("input[name='searchWord']");
						        // 검색어 값
						        var searchWordValue = searchWordInput.value.trim(); // 공백을 제거한 후 검색어 값
						        // 검색어가 비어 있는지 확인
						        if (searchWordValue === "") {
						            // 검색어가 비어 있으면 서브밋을 막음
						            event.preventDefault(); // 서브밋 이벤트 기본 동작을 막음
						        }
						    }
						    // 폼 서브밋 이벤트를 가로채고 검색어를 확인하는 함수를 폼에 연결
						    var form = document.querySelector("form");
						    form.addEventListener("submit", submitForm);
						});
				</script>
			<!-- 검색어 없을 때 폼 서브밋 이벤트 막음 -->
			
				<div id="SearchContainer">
					<div id="SearchLine">
			            <!-- hidden input 추가 -->
			            <input type="hidden" name="pageNum" value="1">
			            <input type="hidden" name="pageBlock" value="1">
			            <!-- hidden input 추가 -->
						<input style="margin-left: 10px" type="text" placeholder="원하시는 상품을 검색해 주세요." name="searchWord">
						<button style="border: none; background: none;margin-left: 45px" type="submit">
							<img src="resources/img/Headerimg/검색.png">
						</button>
					</div>
				</div>
			</form>

			<div id="UserIcon">

				<c:choose>
					<c:when test="${member.grade eq 9}">
						<a
							href="${pageContext.request.contextPath}/member/sellermypage.do">
							<img src="resources/img/Headerimg/사용자 아이콘.png" width="40">
						</a>
					</c:when>
					<c:when test="${member.grade == 1 || member.grade == 2 || member.grade == 3 || member.grade == 4 || member.grade == 5}">
						<a href="${pageContext.request.contextPath}/member/buyermypage.do">
							<img src="resources/img/Headerimg/사용자 아이콘.png" width="40">
						</a>
					</c:when>
					<c:when test="${member.grade eq 8}">
						<a href="${pageContext.request.contextPath}/member/adminmypage.do">
							<img src="resources/img/Headerimg/사용자 아이콘.png" width="40">
						</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/member/login.do">
						<img src="resources/img/Headerimg/사용자 아이콘.png" width="40">
						</a>
					</c:otherwise>
				</c:choose>
				<a href="${pageContext.request.contextPath}/product/cart.do?m_idx=${member.m_idx}"> <img
					src="resources/img/Headerimg/장바구니 아이콘.png" width="40">
				</a> 
                <div>
		            <c:choose>
		            	<c:when test="${not empty member }">
		            		<a href="">${member.member_name }님</a><br>
			                <a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a><br>
			                <a href="${pageContext.request.contextPath}/customercenter/QnA.do">고객센터</a>
		            	</c:when>
		            	<c:otherwise>
		            		<a href="${pageContext.request.contextPath}/member/login.do">로그인</a><br>
			                <a href="${pageContext.request.contextPath}/member/join.do">회원가입</a><br>
			                <a href="${pageContext.request.contextPath}/customercenter/QnA.do">고객센터</a>
		            	</c:otherwise>
		            </c:choose>
	            </div>
					
			</div>
		</div>
		<!-- 사이트 높이 -->
		<div id="CategoryBackgroundColor" onclick="CategoryMenuOff()">
			<div
				style="width: 100%; height: 389px; background-color: white; z-index: -1;"></div>
		</div>
		<!-- 사이트 높이 -->
		<div id="CategoryLine">
			<div id="Category">
				<div id="CategoryContainer_Main" style="height: 100%;">
					<div style="background-color: rgb(134, 150, 255);">
						<h2 style="margin: 0; margin-left: 10px; color: white;">전체
							카테고리</h2>
						<br>
					</div>
					<div id="Category1"
						onmouseover="handleMouseOver('Category1','ServeCategory1')">
						<p>식품></p>
						<br>
					</div>
					<div id="Category2"
						onmouseover="handleMouseOver('Category2','ServeCategory2')">
						<p>홈데코></p>
						<br>
					</div>
					<div id="Category3"
						onmouseover="handleMouseOver('Category3','ServeCategory3')">
						<p>취미></p>
						<br>
					</div>
					<div id="Category4"
						onmouseover="handleMouseOver('Category4','ServeCategory4')">
						<p>생필품></p>
						<br>
					</div>
					<div id="Category5"
						onmouseover="handleMouseOver('Category5','ServeCategory5')">
						<p>의류></p>
						<br>
					</div>
					<div id="Category6"
						onmouseover="handleMouseOver('Category6','ServeCategory6')">
						<p>도서></p>
						<br>
					</div>
					<div id="Category7"
						onmouseover="handleMouseOver('Category7','ServeCategory7')">
						<p>가구></p>
						<br>
					</div>
					<div id="Category8"
						onmouseover="handleMouseOver('Category8','ServeCategory8')">
						<p>가전></p>
						<br>
					</div>
					<div id="Category9"
						onmouseover="handleMouseOver('Category9','ServeCategory9')">
						<p>스포츠></p>
						<br>
					</div>
				</div>
				<div id="serveMenucontainer">
					<div id="serveMenuimgbox">
						<img src="resources/img/Headerimg/광고.jpg">
					</div>
					<div id="serveMenubox">
						<div id="CategoryContainer_Serve">
							<div class="ServeCategorydisplay" id="ServeCategory1">
								<a style="width: 25%; margin: 0;"
									href="product/list.do?category=meat"><div
										class="image-container" onmouseover="changeimage(this, '고기')"
										onmouseout="restoreimage(this, '고기')">
										<img class="normal-image" src="resources/img/Headerimg/고기.png">
										<img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>고기</h1>
									</div> </a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=vegetables"><div
										class="image-container" onmouseover="changeimage(this, '야채')"
										onmouseout="restoreimage(this, '야채')">
										<img class="normal-image" src="resources/img/Headerimg/야채.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>야채</h1>
									</div> </a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=fruits"><div
										class="image-container" onmouseover="changeimage(this, '과일')"
										onmouseout="restoreimage(this, '과일')">
										<img class="normal-image" src="resources/img/Headerimg/과일.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>과일</h1>
									</div> </a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=frozen"><div
										class="image-container" onmouseover="changeimage(this, '냉동')"
										onmouseout="restoreimage(this, '냉동')">
										<img class="normal-image" src="resources/img/Headerimg/냉동.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>냉동</h1>
									</div> </a>
							</div>
							<div class="ServeCategorydisplay" id="ServeCategory2">
								<a style="width: 25%; margin: 0;"
									href="product/list.do?category=kitchen"><div
										class="image-container" onmouseover="changeimage(this, '주방')"
										onmouseout="restoreimage(this, '주방')">
										<img class="normal-image" src="resources/img/Headerimg/주방.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>주방</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=curtain"><div
										class="image-container" onmouseover="changeimage(this, '커튼')"
										onmouseout="restoreimage(this, '커튼')">
										<img class="normal-image" src="resources/img/Headerimg/커튼.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>커튼</h1>
									</div></a>
							</div>
							<div class="ServeCategorydisplay" id="ServeCategory3">
								<a style="width: 25%; margin: 0;"
									href="product/list.do?category=games"><div
										class="image-container" onmouseover="changeimage(this, '게임')"
										onmouseout="restoreimage(this, '게임')">
										<img class="normal-image" src="resources/img/Headerimg/게임.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>게임</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=lego"><div
										class="image-container" onmouseover="changeimage(this, '레고')"
										onmouseout="restoreimage(this, '레고')">
										<img class="normal-image" src="resources/img/Headerimg/레고.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>레고</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=petsupplies"><div
										class="image-container" onmouseover="changeimage(this, '펫용품')"
										onmouseout="restoreimage(this, '펫용품')">
										<img class="normal-image"
											src="resources/img/Headerimg/펫용품.png" style="width: 100%;">
										<img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>펫용품</h1>
									</div></a>
							</div>
							<div class="ServeCategorydisplay" id="ServeCategory4">
								<a style="width: 25%; margin: 0;"
									href="product/list.do?category=dailynecessities"><div
										class="image-container" onmouseover="changeimage(this, '생필품')"
										onmouseout="restoreimage(this, '생필품')">
										<img class="normal-image"
											src="resources/img/Headerimg/생필품.png" style="width: 100%;">
										<img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>생필품</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=bodyhair"><div
										class="image-container"
										onmouseover="changeimage(this, '바디헤어')"
										onmouseout="restoreimage(this, '바디헤어')">
										<img class="normal-image"
											src="resources/img/Headerimg/바디헤어.png" style="width: 100%;">
										<img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>바디헤어</h1>
									</div></a>
							</div>
							<div class="ServeCategorydisplay" id="ServeCategory5">
								<a style="width: 25%; margin: 0;"
									href="product/list.do?category=men"><div
										class="image-container" onmouseover="changeimage(this, '남성')"
										onmouseout="restoreimage(this, '남성')">
										<img class="normal-image" src="resources/img/Headerimg/남성.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>남성</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=women"><div
										class="image-container" onmouseover="changeimage(this, '여성')"
										onmouseout="restoreimage(this, '여성')">
										<img class="normal-image" src="resources/img/Headerimg/여성.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>여성</h1>
									</div></a>
							</div>
							<div class="ServeCategorydisplay" id="ServeCategory6">
								<a style="width: 25%; margin: 0;"
									href="product/list.do?category=education"><div
										class="image-container" onmouseover="changeimage(this, '교육')"
										onmouseout="restoreimage(this, '교육')">
										<img class="normal-image" src="resources/img/Headerimg/교육.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>교육</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=novels"><div
										class="image-container" onmouseover="changeimage(this, '소설')"
										onmouseout="restoreimage(this, '소설')">
										<img class="normal-image" src="resources/img/Headerimg/소설.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>소설</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=overseas"><div
										class="image-container" onmouseover="changeimage(this, '해외')"
										onmouseout="restoreimage(this, '해외')">
										<img class="normal-image" src="resources/img/Headerimg/해외.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>해외</h1>
									</div></a>
							</div>
							<div class="ServeCategorydisplay" id="ServeCategory7">
								<a style="width: 25%; margin: 0;"
									href="product/list.do?category=living"><div
										class="image-container" onmouseover="changeimage(this, '생활')"
										onmouseout="restoreimage(this, '생활')">
										<img class="normal-image" src="resources/img/Headerimg/생활.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>생활</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=bedding"><div
										class="image-container" onmouseover="changeimage(this, '침상')"
										onmouseout="restoreimage(this, '침상')">
										<img class="normal-image" src="resources/img/Headerimg/침상.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>침상</h1>
									</div></a>
							</div>
							<div class="ServeCategorydisplay" id="ServeCategory8">
								<a style="width: 25%; margin: 0;"
									href="product/list.do?category=homeAppliances"><div
										class="image-container" onmouseover="changeimage(this, '가전')"
										onmouseout="restoreimage(this, '가전')">
										<img class="normal-image" src="resources/img/Headerimg/가전.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>가전</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=digital"><div
										class="image-container" onmouseover="changeimage(this, '디지털')"
										onmouseout="restoreimage(this, '디지털')">
										<img class="normal-image"
											src="resources/img/Headerimg/디지털.png" style="width: 100%;">
										<img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>디지털</h1>
									</div></a>
							</div>
							<div class="ServeCategorydisplay" id="ServeCategory9">
								<a style="width: 25%; margin: 0;"
									href="product/list.do?category=soccer"><div
										class="image-container" onmouseover="changeimage(this, '축구')"
										onmouseout="restoreimage(this, '축구')">
										<img class="normal-image" src="resources/img/Headerimg/축구.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>축구</h1>
									</div></a> <a style="width: 25%; margin: 0;"
									href="product/list.do?category=golf"><div
										class="image-container" onmouseover="changeimage(this, '골프')"
										onmouseout="restoreimage(this, '골프')">
										<img class="normal-image" src="resources/img/Headerimg/골프.png"
											style="width: 100%;"> <img class="Categorymain-image"
											src="resources/img/Headerimg/카테고리메뉴배경.png">
										<h1>골프</h1>
									</div></a>
							</div>
						</div>
						<div id="CategoryLine_backColor"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- ---------HEADER CENTER--------- -->

	</header>
	<!-- ---------HEADER--------- -->
</body>
<script type="text/javascript" src="resources/js/Main/Header.js"></script>
</html>