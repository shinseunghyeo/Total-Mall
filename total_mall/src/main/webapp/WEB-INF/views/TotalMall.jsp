<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1,user-scalable=no">
<link rel="stylesheet" href="resources/css/Tcss_Main/Tcss_TotalMall.css">
<title>Insert title here</title>
</head>
<body>
  	<%@ include file="Main/T_Header.jsp" %>

    <!-- ---------이벤트--------- -->
    <div id="EventLine" onmouseover="Eventovermouse()"onmouseout="Eventoutmouse()">
        <a href="${pageContext.request.contextPath}/nav/EventPage.do" id="EventMall">
        </a>
    </div>
    <!-- ---------이벤트--------- -->
    <!-- ---------오늘의 상품--------- -->
    <div style="width: 100%;">
        <h2 style="margin: auto;width: 950px;">오늘의 상품</h2><br>
    </div>
    <div id="TodayMallServeLine">
        <div id="TodayMallServeLeft">
            <img src="resources/img/Mallimg/세일품목.png">
        </div>
        <div id="TodayMallServeRight">
            <div>
                <img src="resources/img/Mallimg/세일품목.png">
                <img src="resources/img/Mallimg/세일품목.png">
            </div>
            <div>
                <img src="resources/img/Mallimg/세일품목.png">
                <img src="resources/img/Mallimg/세일품목.png">
            </div>
        </div>
    </div>
    <!-- ---------오늘의 상품--------- -->
    <!-- ---------카테고리 추천 상품--------- -->
    <div class="KategoryBestLine">
        <h2>상품 top15</h2>
        <div class="KategoryBest">
            <img class="Kategory_LeftArrow" onclick="FoodSlideLeft(FoodSlide)" src="resources/img/Mallimg/왼쪽 아이콘.png">
            <div class="KategoryBestContainer">
                <div id="FoodSlide" style="margin-left: 0px;">
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <img style="width: 2%; height: 60px;"  onclick="FoodSlideRight(FoodSlide)" src="resources/img/Mallimg/오른쪽 아이콘.png">
        </div>
    </div>
    <div class="KategoryBestLine">
        <h2>상품 top15</h2>
        <div class="KategoryBest">
            <img class="Kategory_LeftArrow" onclick="FoodSlideLeft(FoodSlide2)" src="resources/img/Mallimg/왼쪽 아이콘.png">
            <div class="KategoryBestContainer">
                <div id="FoodSlide2" style="margin-left: 0px;">
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <img style="width: 2%; height: 60px;"  onclick="FoodSlideRight(FoodSlide2)" src="resources/img/Mallimg/오른쪽 아이콘.png">
        </div>
    </div>        
    <div class="KategoryBestLine">
        <h2>상품 top15</h2>
        <div class="KategoryBest">
            <img class="Kategory_LeftArrow" onclick="FoodSlideLeft(FoodSlide3)" src="resources/img/Mallimg/왼쪽 아이콘.png">
            <div class="KategoryBestContainer">
                <div id="FoodSlide3" style="margin-left: 0px;">
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryBestbox">
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img style="width: 100%;height: 190px;" src="resources/img/Mallimg/고구마.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="resources/img/Mallimg/동원참치.jpg">
                            <a href="">동원참치</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <img style="width: 2%; height: 60px;"  onclick="FoodSlideRight(FoodSlide3)" src="resources/img/Mallimg/오른쪽 아이콘.png">
        </div>
    </div>
    <!-- ---------카테고리 추천 상품--------- -->
    <!-- ---------카테고리별 상품--------- -->
    <div id="KategoryMallLine">
        <h2>카테고리별 상품</h2>
        <div class="KategoryMall">
            <img class="KategoryMallMainimg" src="resources/img/Mallimg/쌀.jpg">
            <div class="KategoryMallMenu">
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/쌀.jpg">
                        <a href="">쌀</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/쌀.jpg">
                        <a href="">쌀</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/쌀.jpg">
                        <a href="">쌀</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/쌀.jpg">
                        <a href="">쌀</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/쌀.jpg">
                        <a href="">쌀</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/쌀.jpg">
                        <a href="">쌀</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="KategoryMall">
            <img class="KategoryMallMainimg" src="resources/img/Mallimg/어린이용품.jpg">
            <div class="KategoryMallMenu">
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/어린이용품.jpg">
                        <a href="">어린이용품</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/어린이용품.jpg">
                        <a href="">어린이용품</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/어린이용품.jpg">
                        <a href="">어린이용품</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/어린이용품.jpg">
                        <a href="">어린이용품</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/어린이용품.jpg">
                        <a href="">어린이용품</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/어린이용품.jpg">
                        <a href="">어린이용품</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="KategoryMall">
            <img class="KategoryMallMainimg" src="resources/img/Mallimg/낚시장비.jpg">
            <div class="KategoryMallMenu">
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/낚시장비.jpg">
                        <a href="">낚시장비</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/낚시장비.jpg">
                        <a href="">낚시장비</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/낚시장비.jpg">
                        <a href="">낚시장비</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/낚시장비.jpg">
                        <a href="">낚시장비</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/낚시장비.jpg">
                        <a href="">낚시장비</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/낚시장비.jpg">
                        <a href="">낚시장비</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="KategoryMall">
            <img class="KategoryMallMainimg" src="resources/img/Mallimg/운동.jpg">
            <div class="KategoryMallMenu">
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/운동.jpg">
                        <a href="">운동</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/운동.jpg">
                        <a href="">운동</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/운동.jpg">
                        <a href="">운동</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/운동.jpg">
                        <a href="">운동</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/운동.jpg">
                        <a href="">운동</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/운동.jpg">
                        <a href="">운동</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="KategoryMall">
            <img class="KategoryMallMainimg" src="resources/img/Mallimg/펫밀크.jpg">
            <div class="KategoryMallMenu">
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/펫밀크.jpg">
                        <a href="">펫밀크</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/펫밀크.jpg">
                        <a href="">펫밀크</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/펫밀크.jpg">
                        <a href="">펫밀크</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/펫밀크.jpg">
                        <a href="">펫밀크</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/펫밀크.jpg">
                        <a href="">펫밀크</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/펫밀크.jpg">
                        <a href="">펫밀크</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="KategoryMall">
            <img class="KategoryMallMainimg" src="resources/img/Mallimg/주방도구.jpg">
            <div class="KategoryMallMenu">
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="KategoryMall">
            <img class="KategoryMallMainimg" src="resources/img/Mallimg/주방도구.jpg">
            <div class="KategoryMallMenu">
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="KategoryMall">
            <img class="KategoryMallMainimg" src="resources/img/Mallimg/주방도구.jpg">
            <div class="KategoryMallMenu">
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="KategoryMall">
            <img class="KategoryMallMainimg" src="resources/img/Mallimg/주방도구.jpg">
            <div class="KategoryMallMenu">
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
                <div class="KategoryMallbox">
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                    <div>
                        <img src="resources/img/Mallimg/주방도구.jpg">
                        <a href="">주방도구</a><br>
                        <a href="">99,999원</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- ---------카테고리별 상품--------- -->
    <!-- ---------마지막 상품--------- -->
    <div id="FinalMallLine">
        <h2>마지막 상품</h2>
        <div class="MallSmallimg">
            <img src="resources/img/Mallimg/탈모케어.jpg">
            <img src="resources/img/Mallimg/탈모케어.jpg">
        </div>
        <div class="MallBigimg">
            <img src="resources/img/Mallimg/피죤.jpg">
            <img src="resources/img/Mallimg/피죤.jpg">
            <img src="resources/img/Mallimg/피죤.jpg">
            <img src="resources/img/Mallimg/피죤.jpg">
        </div>
        <div class="MallBigimg">
            <img src="resources/img/Mallimg/피죤.jpg">
            <img src="resources/img/Mallimg/피죤.jpg">
            <img src="resources/img/Mallimg/피죤.jpg">
            <img src="resources/img/Mallimg/피죤.jpg">
        </div>
        <div class="MallSmallimg">
            <img src="resources/img/Mallimg/탈모케어.jpg">
            <img src="resources/img/Mallimg/탈모케어.jpg">
        </div>
    </div>
    <!-- ---------마지막 상품--------- -->

</body>
<script type="text/javascript" src="resources/js/Tjs_Main/Tjs_TotalMall.js"></script>
</html>