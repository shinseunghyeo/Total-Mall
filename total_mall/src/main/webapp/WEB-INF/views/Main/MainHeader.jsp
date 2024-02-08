<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <img onclick="CategoryMenuOn()" src="resources/img/Headerimg/카테고리.png" width="40">
            </div>
            <div id="SiteLogo">
                <a href="${pageContext.request.contextPath}/TotalMall.do"><img src="resources/img/Headerimg/사이트로고.png" width="130"></a>
            </div>
            <div id="SearchContainer">
                <div id="SearchLine">
                    <select>
                        <option value="전체">전체</option>
                        <option value="의류">의류</option>
                        <option value="신발">신발</option>
                    </select><hr>
                    <input type="text" placeholder="검색창">
                    <a href="SearchPage.html"><img src="resources/img/Headerimg/검색.png"></a>
                </div>
            </div>
            <div id="UserIcon">
                <img src="resources/img/Headerimg/사용자 아이콘.png" width="40">
                <img src="resources/img/Headerimg/장바구니 아이콘.png" width="40">
                <img onclick="ServeMall()" src="resources/img/Headerimg/서브 아이콘.png" width="40">
            </div>
        </div>
        <!-- 사이트 높이 -->
        <div id="CategoryBackgroundColor" onclick="CategoryMenuOff()">
            <div style="width: 100%;height: 389px;background-color: white;z-index: -1;"></div>
        </div>
        <!-- 사이트 높이 -->
        <div id="CategoryLine">
            <div id="Category">
                <div id="CategoryContainer_Main" style="height: 100%;">
                    <div style="background-color: rgb(134, 150, 255);">
                        <h2 style="margin: 0;margin-left: 10px;color: white;">전체 카테고리</h2><br>
                    </div>
                    <div id="Category1" onmouseover="handleMouseOver('Category1','ServeCategory1')">
                        <p>식품></p><br>
                    </div>
                    <div id="Category2" onmouseover="handleMouseOver('Category2','ServeCategory2')">
                        <p>홈데코></p><br>
                    </div>
                    <div id="Category3" onmouseover="handleMouseOver('Category3','ServeCategory3')">
                        <p>취미></p><br>
                    </div>
                    <div id="Category4" onmouseover="handleMouseOver('Category4','ServeCategory4')">
                        <p>생필품></p><br>
                    </div>
                    <div id="Category5" onmouseover="handleMouseOver('Category5','ServeCategory5')">
                        <p>의류></p><br>
                    </div>
                    <div id="Category6" onmouseover="handleMouseOver('Category6','ServeCategory6')">
                        <p>도서></p><br>
                    </div>
                    <div id="Category7" onmouseover="handleMouseOver('Category7','ServeCategory7')">
                        <p>가구></p><br>
                    </div>
                    <div id="Category8" onmouseover="handleMouseOver('Category8','ServeCategory8')">
                        <p>가전></p><br>
                    </div>
                    <div id="Category9" onmouseover="handleMouseOver('Category9','ServeCategory9')">
                        <p>스포츠></p><br>
                    </div>
                </div>
                <div id="serveMenucontainer">
                    <div id="serveMenuimgbox">
                        <img src="resources/img/Headerimg/광고.jpg">
                    </div>
                    <div id="serveMenubox">
                        <div id="CategoryContainer_Serve">
                            <div class="ServeCategorydisplay" id="ServeCategory1">
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=meat"><div class="image-container" 
                                onmouseover="changeimage(this, '고기')" onmouseout="restoreimage(this, '고기')">
                                    <img class="normal-image" src="resources/img/Headerimg/고기.png">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>고기</h1>
                                </div>
                            </a>
                            <a style="width: 25%; margin: 0;" href="product/list.do?category=vegetables"><div class="image-container"  
                                onmouseover="changeimage(this, '야채')" onmouseout="restoreimage(this, '야채')">
                                    <img class="normal-image" src="resources/img/Headerimg/야채.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>야채</h1>
                                </div>
                            </a>
                            <a style="width: 25%; margin: 0;" href="product/list.do?category=fruits"><div class="image-container"  
                                onmouseover="changeimage(this, '과일')" onmouseout="restoreimage(this, '과일')">
                                    <img class="normal-image" src="resources/img/Headerimg/과일.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>과일</h1>
                                </div>
                            </a>
                            <a style="width: 25%; margin: 0;" href="product/list.do?category=frozen"><div class="image-container"  
                                onmouseover="changeimage(this, '냉동')" onmouseout="restoreimage(this, '냉동')">
                                    <img class="normal-image" src="resources/img/Headerimg/냉동.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>냉동</h1>
                                </div>
                            </a>
                            </div>
                            <div class="ServeCategorydisplay" id="ServeCategory2">
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=kitchen"><div class="image-container"  
                                onmouseover="changeimage(this, '주방')" onmouseout="restoreimage(this, '주방')">
                                    <img class="normal-image" src="resources/img/Headerimg/주방.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>주방</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=curtain"><div class="image-container"  
                                onmouseover="changeimage(this, '커튼')" onmouseout="restoreimage(this, '커튼')">
                                    <img class="normal-image" src="resources/img/Headerimg/커튼.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>커튼</h1>
                                </div></a>
                            </div>
                            <div class="ServeCategorydisplay" id="ServeCategory3">
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=games"><div class="image-container"  
                                onmouseover="changeimage(this, '게임')" onmouseout="restoreimage(this, '게임')">
                                    <img class="normal-image" src="resources/img/Headerimg/게임.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>게임</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=lego"><div class="image-container"  
                                onmouseover="changeimage(this, '레고')" onmouseout="restoreimage(this, '레고')">
                                    <img class="normal-image" src="resources/img/Headerimg/레고.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>레고</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=petsupplies"><div class="image-container"  
                                onmouseover="changeimage(this, '펫용품')" onmouseout="restoreimage(this, '펫용품')">
                                    <img class="normal-image" src="resources/img/Headerimg/펫용품.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>펫용품</h1>
                                </div></a>
                            </div>
                            <div class="ServeCategorydisplay" id="ServeCategory4">
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=dailynecessities"><div class="image-container"  
                                onmouseover="changeimage(this, '생필품')" onmouseout="restoreimage(this, '생필품')">
                                    <img class="normal-image" src="resources/img/Headerimg/생필품.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>생필품</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=bodyhair"><div class="image-container"  
                                onmouseover="changeimage(this, '바디헤어')" onmouseout="restoreimage(this, '바디헤어')">
                                    <img class="normal-image" src="resources/img/Headerimg/바디헤어.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>바디헤어</h1>
                                </div></a>
                            </div>
                            <div class="ServeCategorydisplay" id="ServeCategory5">
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=men"><div class="image-container"  
                                onmouseover="changeimage(this, '남성')" onmouseout="restoreimage(this, '남성')">
                                    <img class="normal-image" src="resources/img/Headerimg/남성.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>남성</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=women"><div class="image-container"  
                                onmouseover="changeimage(this, '여성')" onmouseout="restoreimage(this, '여성')">
                                    <img class="normal-image" src="resources/img/Headerimg/여성.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>여성</h1>
                                </div></a>
                            </div>
                            <div class="ServeCategorydisplay" id="ServeCategory6">
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=education"><div class="image-container"  
                                onmouseover="changeimage(this, '교육')" onmouseout="restoreimage(this, '교육')">
                                    <img class="normal-image" src="resources/img/Headerimg/교육.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>교육</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=novels"><div class="image-container"  
                                onmouseover="changeimage(this, '소설')" onmouseout="restoreimage(this, '소설')">
                                    <img class="normal-image" src="resources/img/Headerimg/소설.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>소설</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=overseas"><div class="image-container"  
                                onmouseover="changeimage(this, '해외')" onmouseout="restoreimage(this, '해외')">
                                    <img class="normal-image" src="resources/img/Headerimg/해외.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>해외</h1>
                                </div></a>
                            </div>
                            <div class="ServeCategorydisplay" id="ServeCategory7">
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=living"><div class="image-container"  
                                onmouseover="changeimage(this, '생활')" onmouseout="restoreimage(this, '생활')">
                                    <img class="normal-image" src="resources/img/Headerimg/생활.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>생활</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=bedding"><div class="image-container"  
                                onmouseover="changeimage(this, '침상')" onmouseout="restoreimage(this, '침상')">
                                    <img class="normal-image" src="resources/img/Headerimg/침상.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>침상</h1>
                                </div></a>
                            </div>
                            <div class="ServeCategorydisplay" id="ServeCategory8">
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=homeAppliances"><div class="image-container"  
                                onmouseover="changeimage(this, '가전')" onmouseout="restoreimage(this, '가전')">
                                    <img class="normal-image" src="resources/img/Headerimg/가전.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>가전</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=digital"><div class="image-container"  
                                onmouseover="changeimage(this, '디지털')" onmouseout="restoreimage(this, '디지털')">
                                    <img class="normal-image" src="resources/img/Headerimg/디지털.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>디지털</h1>
                                </div></a>
                            </div>
                            <div class="ServeCategorydisplay" id="ServeCategory9">
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=soccer"><div class="image-container"  
                                onmouseover="changeimage(this, '축구')" onmouseout="restoreimage(this, '축구')">
                                    <img class="normal-image" src="resources/img/Headerimg/축구.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
                                    <h1>축구</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href="product/list.do?category=golf"><div class="image-container"  
                                onmouseover="changeimage(this, '골프')" onmouseout="restoreimage(this, '골프')">
                                    <img class="normal-image" src="resources/img/Headerimg/골프.png" style="width: 100%;">
                                    <img class="Categorymain-image" src="resources/img/Headerimg/카테고리메뉴배경.png">
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
        <nav id="NavLine">
            <div id="ServiceLine">
                <img src="resources/img/Headerimg/겨울.png" width="20"><a href="${pageContext.request.contextPath}/nav/WinterPage.do">겨울축제</a>
                <img src="resources/img/Headerimg/드론.png" width="20"><a href="${pageContext.request.contextPath}/nav/DronPage.do">드론배송</a>
                <img src="resources/img/Headerimg/폭탄.png" width="20"><a href="${pageContext.request.contextPath}/nav/TotalboomPage.do">토탈붐</a>
                <img src="resources/img/Headerimg/곰인형.png" width="20"><a href="${pageContext.request.contextPath}/nav/DrowingPage.do">드로윙</a>
                <img src="resources/img/Headerimg/지폐.png" width="20"><a href="${pageContext.request.contextPath}/nav/ThousandPage.do">1000상품</a>
                <img src="resources/img/Headerimg/시계.png" width="20"><a href="${pageContext.request.contextPath}/nav/Timemall.do">타임몰</a>
                <img src="resources/img/Headerimg/달력.png" width="20"><a href="${pageContext.request.contextPath}/nav/Attendance.do">출석체크</a>
            </div>
            <div id="LogLine">
            <c:choose>
            	<c:when test="${not empty member }">
            		<a href="">${member.member_name }님</a>
	                <a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a>
	                <a href="">고객센터</a>
            	</c:when>
            	<c:otherwise>
            		<a href="${pageContext.request.contextPath}/member/login.do">로그인</a>
	                <a href="${pageContext.request.contextPath}/member/join.do">회원가입</a>
	                <a href="">고객센터</a>
            	</c:otherwise>
            </c:choose>
            </div>
        </nav>
        <div id="SearchMenu">
            <button onclick="ServeMallcolorOff()">닫기</button>
            <div>
                <h2>최근 본 상품</h2>
            </div>
        </div>
    </header>
    <!-- ---------HEADER--------- -->
</body>
<script type="text/javascript" src="resources/js/Main/Header.js"></script>
</html>