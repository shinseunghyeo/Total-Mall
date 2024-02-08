<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/product/list.css">
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <!-- ---------카테고리 페이지--------- -->
    <div id="CategoryPage">
        <h3 style="color: #3498db;">홈> 식품> 과일 ${category.p_idx }</h3>
        <div id="CategoryServeLine">
            <div id="CategoryServemenuLine">
                <h2>카테고리</h2>
                <span>식품</span><br>
                <a href="list.do?category=meat">>고기</a><br>
                <a href="list.do?category=vegetables">>야채</a><br>
                <a href="list.do?category=fruits">>과일</a><br>
                <a href="list.do?category=frozen">>냉동</a><br><br>
                <span>홈데코</span><br>
                <a href="list.do?category=kitchen">>주방</a><br>
                <a href="list.do?category=curtain">>커튼</a><br><br>
                <span>취미</span><br>
                <a href="list.do?category=games">>게임</a><br>
                <a href="list.do?category=lego">>레고</a><br>
                <a href="list.do?category=petsupplies">>펫용품</a><br><br>
                <span>생필품</span><br>
                <a href="list.do?category=dailynecessities">>생필품</a><br>
                <a href="list.do?category=bodyhair">>바디헤어</a><br><br>
                <span>의류</span><br>
                <a href="list.do?category=men">>남성</a><br>
                <a href="list.do?category=women">>여성</a><br><br>
                <span>도서</span><br>
                <a href="list.do?category=education">>교육</a><br>
                <a href="list.do?category=novels">>소설</a><br>
                <a href="list.do?category=overseas">>해외</a><br><br>
                <span>가구</span><br>
                <a href="list.do?category=living">>생활</a><br>
                <a href="list.do?category=bedding">>침상</a><br><br>
                <span>가전</span><br>
                <a href="list.do?category=homeAppliances">>가전</a><br>
                <a href="list.do?category=digital">>디지털</a><br><br>
                <span>스포츠</span><br>
                <a href="list.do?category=soccer">>축구</a><br>
                <a href="list.do?category=golf">>골프</a>        
            </div>
            <div id="CategoryProductLine">
                <div id="CategoryProductContainer">
                    <a href="T_EventPage.html" id="CategoryEventbox">
                        <div id="CategoryEvent">
                            <button id="FoodImg1" onmouseover="PakgeImg(1, 'FoodImg1')"></button>
                            <button id="FoodImg2" onmouseover="PakgeImg(2, 'FoodImg2')"></button>
                            <button id="FoodImg3" onmouseover="PakgeImg(3, 'FoodImg3')"></button>
                            <button id="FoodImg4" onmouseover="PakgeImg(4, 'FoodImg4')"></button>
                            <button id="FoodImg5" onmouseover="PakgeImg(5, 'FoodImg5')"></button>
                            <button id="FoodImg6" onmouseover="PakgeImg(6, 'FoodImg6')"></button>
                            <button id="FoodImg7" onmouseover="PakgeImg(7, 'FoodImg7')"></button>
                        </div>
                        <img id="FoodImg" src="../resources/img/Mallimg/식품1.jpg">
                    </a>
                    <div id="CategoryProductbox">
                        <br><h3>핫딜 세일</h3><hr>
                        <div class="Productmain">
                            <div class="CategoryProduct">
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                        </div>
                    </div>
                    <div id="CategoryProductbestbox">
                        <br><h3>검색어 순위</h3><hr>
                        <div class="Productmain">
                            <div class="CategoryProduct">
                                <span>1</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <span>2</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <span>3</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <span>4</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <span>5</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                        </div>
                        <div class="Productmain">
                            <div class="CategoryProduct">
                                <span>6</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <span>7</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <span>8</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <span>9</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                            <div class="CategoryProduct">
                                <span>10</span>
                                <img src="../resources/img/Mallimg/사과.jpg">
                                <a href="">경북 햇 부사사과 가정용 4kg 18과내 / 중과 이상</a>
                                22,900원
                            </div>
                        </div><br><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
<script type="text/javascript" src="../resources/js/Product/list.js"></script>
</html>