<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HumanMall</title>
</head>
<style>
    /* ---------HEADER--------- */
    img{cursor: pointer;}
    body{margin: 0;overflow-x: hidden;}
    a {margin-left: 10px; text-decoration: none;color: inherit;font-weight: bold;}
    a:hover {color: black;text-decoration: underline;}


    input[type="text"], header select {padding: 5px;border: none;border-radius: 5px;margin-right: 10px;}
    #ServeMallcoloron{width: 100%; height: 100%; background-color: gray;opacity: 0;z-index: -1;position: fixed;transition: opacity 0.3s;}
    header{width: 100%;margin: auto;}
    #MainLinecolor{width: 100%;height: 100px; background-color: white;position: absolute;z-index:999}
    #MainLine{width: 1050px;margin: auto; display: flex;height: 100px;align-items: center; z-index: 9999;position: relative;}
    #MainLine #KategoryMenu{width: 4%;margin-left: 10px;margin-bottom: -5px;}
    #MainLine #SiteLogo{width: 12%;}
    #MainLine #SearchContainer{width: 50%; margin: auto;margin-left: 30px;}
    #MainLine #SearchLine{width: 610px; height: 40px; background-color: white;border: 2px solid #3498db;border-radius: 30px;display: flex;align-items: center;}
    #MainLine #SearchLine select{width: 20%;border-radius: 30px;}
    #MainLine #SearchLine input{width: 80%;border-radius: 30px; outline: none;}
    #MainLine #SearchLine img{width: 25px;height: 25px;z-index: 10;padding-right: 10px;}
    #MainLine #UserIcon{width: 20%;text-align: end;margin-right: 25px;}
    #MainLine #UserIcon img{margin-left: 20px;}

    #KategoryBackgroundColor{width: 100%; height: 100%;position: absolute;z-index: -1;}
    #KategoryBackgroundColor2{width: 100%;height: 100%;background-color: gray;z-index: -1;opacity: 0;position: fixed;}
    
    #KategoryLine{width: 1050px; margin: auto;}
    #KategoryLine #Kategory{width: 1050px; height: 388px;margin: auto; position: absolute;z-index: -1;background-color: white;display: flex;opacity: 0;}
    #KategoryLine #KategoryContainer_Main{width: 17%;display: flex;flex-direction: column;}
    #KategoryLine #KategoryContainer_Main div{width: 100%; height: 100%;background-color: yellowgreen;display: flex;align-items: center;border-bottom: 1px solid green;color: white;font-size: 13px;}
    #KategoryLine #KategoryContainer_Main p{margin: 0;margin-left: 10px;font-weight: bold;text-shadow: 1px 1px 1px rgba(0.2, 0.2, 0.2, 0.2);}
    
    #KategoryLine #KategoryContainer_Serve{width: 80%;height: 100%; border-right: 1px solid gray;}
    #KategoryLine #KategoryContainer_Serve .ServeKategorydisplay{display: none;}
    #KategoryLine #KategoryContainer_Serve img{height: 100%;}
    #KategoryLine #KategoryContainer_Serve .Kategorymain-image{transition: transform 0.5s ease-in-out, opacity 0.9s ease-in-out;}
    #KategoryLine #KategoryContainer_Serve .image-container:hover .Kategorymain-image {transform: scale(1.5);}
    #KategoryLine #KategoryContainer_Serve .image-container{width: 100%; display: flex;position: relative;overflow: hidden;}
    #KategoryLine #KategoryContainer_Serve .normal-image{width: 100%;}
    #KategoryLine #KategoryContainer_Serve .Kategorymain-image{width: 100%;position: absolute;opacity: 0.5;}
    #KategoryLine #KategoryContainer_Serve h1{margin: 0;display: flex;justify-content: center;align-items: center; position: absolute;width: 100%;height: 90%;transition: opacity 0.5s ease-in-out;cursor: pointer;}

    #KategoryLine #KategoryLine_backColor{width: 20%;height: 100%;}
    #KategoryLine #serveMenucontainer{width: 83%;height: 100%;display: flex;flex-direction: column;}
    #KategoryLine #serveMenuimgbox{width: 100%;height: 37px;border: 1px solid gray;border-left: none;}
    #KategoryLine #serveMenuimgbox img{width: 100%; height: 100%;}
    #KategoryLine #serveMenubox{width: 100%;height: 90%;border-right: 1px solid gray;border-bottom: 1px solid gray; display: flex;}

    #NavLine{display: flex;font-size: 16px;height: 30px;width: 1050px;margin: auto;}
    #NavLine #ServiceLine{width: 80%;margin-left: -10px;}
    #NavLine #ServiceLine a{margin: 0;}
    #NavLine #ServiceLine img{margin-left: 10px;}
    #NavLine #LogLine{width: 25%;text-align: end;}

    #SearchMenu {position: fixed;top: 0;right: -450px;height: 100%;transition: right 0.3s ease;z-index: 999999;display: flex;}
    #SearchMenu button{width: 50px; height: 50px;}
    #SearchMenu div{width: 400px;background-color: white;height: 100%;}
    /* ---------HEADER--------- */
    #FinalMallLine img, #FoodSlide img, #FoodSlide2 img, #FoodSlide3 img,#KategoryMallLine img{border: 2px solid black;}
    /* ---------이벤트--------- */
    #EventLine{width: 100%;display: flex;justify-content: center;}
    #EventLine #EventMall{margin-left: -6000px; height: 390px;position: relative;}
    #EventLine #EventMall img{position: absolute;}
    /* ---------이벤트--------- */

    /* ---------오늘의 상품--------- */
    #TodayMallLine{width: 950px; height: 370px;margin: auto;}
    #TodayMallLine #TodayMall{display: flex;gap: 60px;}
    #TodayMallLine #TodayMall img:hover {transform: scale(1.1);}
    #TodayMallLine #TodayMall img {margin-right: 10px;transition: transform 0.3s;margin: auto;}
    #TodayMallLine .TodayMallbox{text-align: center;width: 20%;}
    #TodayMallLine .TodayMallbox h2{margin: 0;}
    #TodayMallLine .Today{width: 200px;height: 200px; border: 2px;border-radius: 50%; overflow: hidden;}
    #TodayMallLine .Today img{width: 200px;height: 200px;}

    #TodayMallServeLine{width: 950px; height: 520px;margin: auto;display: flex;}
    #TodayMallServeLine img{transition: transform 0.3s;border: 2px solid black;}
    #TodayMallServeLine img:hover {transform: scale(1.02);}
    #TodayMallServeLine #TodayMallServeLeft{width: 49%;}
    #TodayMallServeLine #TodayMallServeLeft img{width: 100%;margin: 5px;border-radius: 5%;}
    #TodayMallServeLine #TodayMallServeRight{display: flex;flex-direction: column;width: 50%;margin-left: 10px;}
    #TodayMallServeLine #TodayMallServeRight img{width: 50%;margin: 5px;border-radius: 7%;}
    #TodayMallServeLine #TodayMallServeRight div{width: 100%;display: flex;}
    /* ---------오늘의 상품--------- */

    /* ---------카테고리 추천 상품--------- */
    .KategoryBestLine{width: 950px; height: 300px;margin: auto;}
    .KategoryBestLine .Kategory_LeftArrow{width: 2%; height: 60px;}
    .KategoryBestLine .KategoryBest{display: flex;justify-content: center;align-items: center;text-align: center;}
    .KategoryBestLine .KategoryBestContainer{width: 1000px;height: 250px;overflow: hidden;position: relative;}
    #FoodSlide div{transition: margin-left 1s;}
    #FoodSlide, #FoodSlide2, #FoodSlide3{height: 250px;position: absolute;display: flex;transition: margin-left 0.4s;}
    .KategoryBestbox{width: 900px; display: flex;gap: 30px;justify-content: center;align-items: center;margin-left: 0px;}
    .KategoryBestbox img{width: 100%;height: 190px;}
    .KategoryBestbox div{width: 30%;}
    /* ---------카테고리 추천 상품--------- */

    /* ---------카테고리별 상품--------- */
    #KategoryMallLine{width: 950px; height: 5900px;margin: auto;margin-top: 50px;}
    #KategoryMallLine .KategoryMall{width: 950px;margin: auto; height: 600px;display: flex;text-align: center;gap: 10px;margin-bottom: 50px;}
    #KategoryMallLine .KategoryMallMainimg{width: 25%;height: 554px;}
    #KategoryMallLine .KategoryMallMenu{width: 75%;}
    #KategoryMallLine .KategoryMallbox{width: 100%;display: flex;gap: 10px;}
    #KategoryMallLine .KategoryMallbox div{width: 33%;}
    #KategoryMallLine .KategoryMallbox img{width: 100%;height: 250px;}
    /* ---------카테고리별 상품--------- */

    /* ---------마지막 상품--------- */
    #FinalMallLine{width: 950px; height: 1300px;margin: auto;}
    #FinalMallLine div{display: flex;gap: 10px;justify-content: center;margin-top: 10px;}
    #FinalMallLine .MallBigimg img{width: 25%;}
    #FinalMallLine .MallSmallimg img{width: 50%;}
    /* ---------마지막 상품--------- */
</style>
<body>
    <!-- ---------HEADER--------- -->
    <div id="ServeMallcoloron" onclick="ServeMallcolorOff()"></div>
    <div id="KategoryBackgroundColor2"></div>
    <header>
        <div id="MainLinecolor"></div>
        <div id="MainLine">
            <div id="KategoryMenu">
                <img onclick="KategoryMenuOn()" src="Headerimg/카테고리.png" width="40">
            </div>
            <div id="SiteLogo">
                <a href="T_TotalMall.html"><img src="Headerimg/사이트로고.png" width="130"></a>
            </div>
            <div id="SearchContainer">
                <div id="SearchLine">
                    <select>
                        <option value="전체">전체</option>
                        <option value="의류">의류</option>
                        <option value="신발">신발</option>
                    </select><hr>
                    <input type="text" placeholder="검색창">
                    <a href="T_SearchPage.html"><img src="Headerimg/검색.png"></a>
                </div>
            </div>
            <div id="UserIcon">
                <img src="Headerimg/사용자 아이콘.png" width="40">
                <img src="Headerimg/장바구니 아이콘.png" width="40">
                <img onclick="ServeMall()" src="Headerimg/서브 아이콘.png" width="40">
            </div>
        </div>
        <!-- 사이트 높이 -->
        <div id="KategoryBackgroundColor" onclick="KategoryMenuOff()">
            <div style="width: 100%;height: 389px;background-color: white;z-index: -1;"></div>
        </div>
        <!-- 사이트 높이 -->
        <div id="KategoryLine">
            <div id="Kategory">
                <div id="KategoryContainer_Main" style="height: 100%;">
                    <div style="background-color: rgb(134, 150, 255);">
                        <h2 style="margin: 0;margin-left: 10px;color: white;">전체 카테고리</h2><br>
                    </div>
                    <div id="Kategory1" onmouseover="handleMouseOver('Kategory1','ServeKategory1')">
                        <p href="">식품></p><br>
                    </div>
                    <div id="Kategory2" onmouseover="handleMouseOver('Kategory2','ServeKategory2')">
                        <p href="">홈데코></p><br>
                    </div>
                    <div id="Kategory3" onmouseover="handleMouseOver('Kategory3','ServeKategory3')">
                        <p href="">취미></p><br>
                    </div>
                    <div id="Kategory4" onmouseover="handleMouseOver('Kategory4','ServeKategory4')">
                        <p href="">생필품></p><br>
                    </div>
                    <div id="Kategory5" onmouseover="handleMouseOver('Kategory5','ServeKategory5')">
                        <p href="">의류></p><br>
                    </div>
                    <div id="Kategory6" onmouseover="handleMouseOver('Kategory6','ServeKategory6')">
                        <p href="">도서></p><br>
                    </div>
                    <div id="Kategory7" onmouseover="handleMouseOver('Kategory7','ServeKategory7')">
                        <p href="">가구></p><br>
                    </div>
                    <div id="Kategory8" onmouseover="handleMouseOver('Kategory8','ServeKategory8')">
                        <p href="">가전></p><br>
                    </div>
                    <div id="Kategory9" onmouseover="handleMouseOver('Kategory9','ServeKategory9')">
                        <p href="">스포츠></p><br>
                    </div>
                </div>
                <div id="serveMenucontainer">
                    <div id="serveMenuimgbox">
                        <img src="Headerimg/광고.jpg" alt="">
                    </div>
                    <div id="serveMenubox">
                        <div id="KategoryContainer_Serve">
                            <div class="ServeKategorydisplay" id="ServeKategory1">
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container" 
                                onmouseover="changeimage(this, '고기')" onmouseout="restoreimage(this, '고기')">
                                    <img class="normal-image" src="Headerimg/고기.png">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>고기</h1>
                                </div>
                            </a>
                            <a style="width: 25%; margin: 0;" href="T_KategoryPage.html"><div class="image-container"  
                                onmouseover="changeimage(this, '야채')" onmouseout="restoreimage(this, '야채')">
                                    <img class="normal-image" src="Headerimg/야채.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>야채</h1>
                                </div>
                            </a>
                            <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '과일')" onmouseout="restoreimage(this, '과일')">
                                    <img class="normal-image" src="Headerimg/과일.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>과일</h1>
                                </div>
                            </a>
                            <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '냉동')" onmouseout="restoreimage(this, '냉동')">
                                    <img class="normal-image" src="Headerimg/냉동.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>냉동</h1>
                                </div>
                            </a>
                            </div>
                            <div class="ServeKategorydisplay" id="ServeKategory2">
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '주방')" onmouseout="restoreimage(this, '주방')">
                                    <img class="normal-image" src="Headerimg/주방.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>주방</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '커튼')" onmouseout="restoreimage(this, '커튼')">
                                    <img class="normal-image" src="Headerimg/커튼.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>커튼</h1>
                                </div></a>
                            </div>
                            <div class="ServeKategorydisplay" id="ServeKategory3">
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '게임')" onmouseout="restoreimage(this, '게임')">
                                    <img class="normal-image" src="Headerimg/게임.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>게임</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '레고')" onmouseout="restoreimage(this, '레고')">
                                    <img class="normal-image" src="Headerimg/레고.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>레고</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '펫용품')" onmouseout="restoreimage(this, '펫용품')">
                                    <img class="normal-image" src="Headerimg/펫용품.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>펫용품</h1>
                                </div></a>
                            </div>
                            <div class="ServeKategorydisplay" id="ServeKategory4">
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '생필품')" onmouseout="restoreimage(this, '생필품')">
                                    <img class="normal-image" src="Headerimg/생필품.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>생필품</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '바디헤어')" onmouseout="restoreimage(this, '바디헤어')">
                                    <img class="normal-image" src="Headerimg/바디헤어.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>바디헤어</h1>
                                </div></a>
                            </div>
                            <div class="ServeKategorydisplay" id="ServeKategory5">
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '남성')" onmouseout="restoreimage(this, '남성')">
                                    <img class="normal-image" src="Headerimg/남성.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>남성</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '여성')" onmouseout="restoreimage(this, '여성')">
                                    <img class="normal-image" src="Headerimg/여성.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>여성</h1>
                                </div></a>
                            </div>
                            <div class="ServeKategorydisplay" id="ServeKategory6">
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '교육')" onmouseout="restoreimage(this, '교육')">
                                    <img class="normal-image" src="Headerimg/교육.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>교육</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '소설')" onmouseout="restoreimage(this, '소설')">
                                    <img class="normal-image" src="Headerimg/소설.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>소설</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '해외')" onmouseout="restoreimage(this, '해외')">
                                    <img class="normal-image" src="Headerimg/해외.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>해외</h1>
                                </div></a>
                            </div>
                            <div class="ServeKategorydisplay" id="ServeKategory7">
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '생활')" onmouseout="restoreimage(this, '생활')">
                                    <img class="normal-image" src="Headerimg/생활.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>생활</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '침상')" onmouseout="restoreimage(this, '침상')">
                                    <img class="normal-image" src="Headerimg/침상.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>침상</h1>
                                </div></a>
                            </div>
                            <div class="ServeKategorydisplay" id="ServeKategory8">
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '가전')" onmouseout="restoreimage(this, '가전')">
                                    <img class="normal-image" src="Headerimg/가전.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>가전</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '디지털')" onmouseout="restoreimage(this, '디지털')">
                                    <img class="normal-image" src="Headerimg/디지털.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>디지털</h1>
                                </div></a>
                            </div>
                            <div class="ServeKategorydisplay" id="ServeKategory9">
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '축구')" onmouseout="restoreimage(this, '축구')">
                                    <img class="normal-image" src="Headerimg/축구.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>축구</h1>
                                </div></a>
                                <a style="width: 25%; margin: 0;" href=""><div class="image-container"  
                                onmouseover="changeimage(this, '골프')" onmouseout="restoreimage(this, '골프')">
                                    <img class="normal-image" src="Headerimg/골프.png" style="width: 100%;">
                                    <img class="Kategorymain-image" src="Headerimg/카테고리메뉴배경.png">
                                    <h1>골프</h1>
                                </div></a>
                            </div>
                        </div>
                        <div id="KategoryLine_backColor"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ---------HEADER CENTER--------- -->
        <nav id="NavLine">
            <div id="ServiceLine">
                <img src="Headerimg/겨울.png" width="20"><a href="T_nav_WinterPage.html">겨울축제</a>
                <img src="Headerimg/드론.png" width="20"><a href="T_nav_DronPage.html">드론배송</a>
                <img src="Headerimg/폭탄.png" width="20"><a href="T_nav_TotalboomPage.html">토탈붐</a>
                <img src="Headerimg/곰인형.png" width="20"><a href="T_nav_DrowingPage.html">드로윙</a>
                <img src="Headerimg/지폐.png" width="20"><a href="T_nav_1000Page.html">1000상품</a>
                <img src="Headerimg/시계.png" width="20"><a href="T_nav_Timemall.html">타임몰</a>
                <img src="Headerimg/달력.png" width="20"><a href="T_nav_Attendance.html">출석체크</a>
            </div>
            <div id="LogLine">
                <a href="${pageContext.request.contextPath}/member/login.do">로그인</a>
                <a href="">회원가입</a>
                <a href="">고객센터</a>
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
    <!-- ---------이벤트--------- -->
        <div id="EventLine" onmouseover="Eventovermouse()"onmouseout="Eventoutmouse()">
            <a href="T_EventPage.html" id="EventMall">

            </a>
        </div>
    <!-- ---------이벤트--------- -->
    <!-- ---------오늘의 상품--------- -->
    <div style="width: 100%;">
    <h2 style="margin: auto;width: 950px;">오늘의 상품</h2><br>
</div>
        <div id="TodayMallServeLine">

            <div id="TodayMallServeLeft">
                <img src="Mallimg/세일품목.png">
            </div>
            <div id="TodayMallServeRight">
                <div>
                    <img src="Mallimg/세일품목.png">
                    <img src="Mallimg/세일품목.png">
                </div>
                <div>
                    <img src="Mallimg/세일품목.png">
                    <img src="Mallimg/세일품목.png">
                </div>
            </div>
        </div>
        <!-- ---------오늘의 상품--------- -->
        <!-- ---------카테고리 추천 상품--------- -->
        <div class="KategoryBestLine">
            <h2>상품 top15</h2>
            <div class="KategoryBest">
                <img class="Kategory_LeftArrow" onclick="FoodSlideLeft(FoodSlide)" src="Mallimg/왼쪽 아이콘.png">
                <div class="KategoryBestContainer">
                    <div id="FoodSlide" style="margin-left: 0px;">
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                    </div>
                </div>
                <img style="width: 2%; height: 60px;"  onclick="FoodSlideRight(FoodSlide)" src="Mallimg/오른쪽 아이콘.png">
            </div>
        </div>
        <div class="KategoryBestLine">
            <h2>상품 top15</h2>
            <div class="KategoryBest">
                <img class="Kategory_LeftArrow" onclick="FoodSlideLeft(FoodSlide2)" src="Mallimg/왼쪽 아이콘.png">
                <div class="KategoryBestContainer">
                    <div id="FoodSlide2" style="margin-left: 0px;">
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                    </div>
                </div>
                <img style="width: 2%; height: 60px;"  onclick="FoodSlideRight(FoodSlide2)" src="Mallimg/오른쪽 아이콘.png">
            </div>
        </div>        
        <div class="KategoryBestLine">
            <h2>상품 top15</h2>
            <div class="KategoryBest">
                <img class="Kategory_LeftArrow" onclick="FoodSlideLeft(FoodSlide3)" src="Mallimg/왼쪽 아이콘.png">
                <div class="KategoryBestContainer">
                    <div id="FoodSlide3" style="margin-left: 0px;">
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                        <div class="KategoryBestbox">
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img style="width: 100%;height: 190px;" src="Mallimg/고구마.jpg" alt="">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                            <div>
                                <img src="Mallimg/동원참치.jpg">
                                <a href="">동원참치</a><br>
                                <a href="">99,999원</a>
                            </div>
                        </div>
                    </div>
                </div>
                <img style="width: 2%; height: 60px;"  onclick="FoodSlideRight(FoodSlide3)" src="Mallimg/오른쪽 아이콘.png">
            </div>
        </div>
        <!-- ---------카테고리 추천 상품--------- -->
        <!-- ---------카테고리별 상품--------- -->
        <div id="KategoryMallLine">
            <h2>카테고리별 상품</h2>
            <div class="KategoryMall">
                <img class="KategoryMallMainimg" src="Mallimg/쌀.jpg" alt="">
                <div class="KategoryMallMenu">
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/쌀.jpg">
                            <a href="">쌀</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/쌀.jpg">
                            <a href="">쌀</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/쌀.jpg">
                            <a href="">쌀</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/쌀.jpg">
                            <a href="">쌀</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/쌀.jpg">
                            <a href="">쌀</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/쌀.jpg">
                            <a href="">쌀</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="KategoryMall">
                <img class="KategoryMallMainimg" src="Mallimg/어린이용품.jpg" alt="">
                <div class="KategoryMallMenu">
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/어린이용품.jpg">
                            <a href="">어린이용품</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/어린이용품.jpg">
                            <a href="">어린이용품</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/어린이용품.jpg">
                            <a href="">어린이용품</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/어린이용품.jpg">
                            <a href="">어린이용품</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/어린이용품.jpg">
                            <a href="">어린이용품</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/어린이용품.jpg">
                            <a href="">어린이용품</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="KategoryMall">
                <img class="KategoryMallMainimg" src="Mallimg/낚시장비.jpg" alt="">
                <div class="KategoryMallMenu">
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/낚시장비.jpg">
                            <a href="">낚시장비</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/낚시장비.jpg">
                            <a href="">낚시장비</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/낚시장비.jpg">
                            <a href="">낚시장비</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/낚시장비.jpg">
                            <a href="">낚시장비</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/낚시장비.jpg">
                            <a href="">낚시장비</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/낚시장비.jpg">
                            <a href="">낚시장비</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="KategoryMall">
                <img class="KategoryMallMainimg" src="Mallimg/운동.jpg" alt="">
                <div class="KategoryMallMenu">
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/운동.jpg">
                            <a href="">운동</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/운동.jpg">
                            <a href="">운동</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/운동.jpg">
                            <a href="">운동</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/운동.jpg">
                            <a href="">운동</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/운동.jpg">
                            <a href="">운동</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/운동.jpg">
                            <a href="">운동</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="KategoryMall">
                <img class="KategoryMallMainimg" src="Mallimg/펫밀크.jpg" alt="">
                <div class="KategoryMallMenu">
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/펫밀크.jpg">
                            <a href="">펫밀크</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/펫밀크.jpg">
                            <a href="">펫밀크</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/펫밀크.jpg">
                            <a href="">펫밀크</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/펫밀크.jpg">
                            <a href="">펫밀크</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/펫밀크.jpg">
                            <a href="">펫밀크</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/펫밀크.jpg">
                            <a href="">펫밀크</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="KategoryMall">
                <img class="KategoryMallMainimg" src="Mallimg/주방도구.jpg" alt="">
                <div class="KategoryMallMenu">
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="KategoryMall">
                <img class="KategoryMallMainimg" src="Mallimg/주방도구.jpg" alt="">
                <div class="KategoryMallMenu">
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="KategoryMall">
                <img class="KategoryMallMainimg" src="Mallimg/주방도구.jpg" alt="">
                <div class="KategoryMallMenu">
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="KategoryMall">
                <img class="KategoryMallMainimg" src="Mallimg/주방도구.jpg" alt="">
                <div class="KategoryMallMenu">
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                    </div>
                    <div class="KategoryMallbox">
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
                            <a href="">주방도구</a><br>
                            <a href="">99,999원</a>
                        </div>
                        <div>
                            <img src="Mallimg/주방도구.jpg">
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
                <img src="Mallimg/탈모케어.jpg" alt="">
                <img src="Mallimg/탈모케어.jpg" alt="">
            </div>
            <div class="MallBigimg">
                <img src="Mallimg/피죤.jpg" alt="">
                <img src="Mallimg/피죤.jpg" alt="">
                <img src="Mallimg/피죤.jpg" alt="">
                <img src="Mallimg/피죤.jpg" alt="">
            </div>
            <div class="MallBigimg">
                <img src="Mallimg/피죤.jpg" alt="">
                <img src="Mallimg/피죤.jpg" alt="">
                <img src="Mallimg/피죤.jpg" alt="">
                <img src="Mallimg/피죤.jpg" alt="">
            </div>
            <div class="MallSmallimg">
                <img src="Mallimg/탈모케어.jpg" alt="">
                <img src="Mallimg/탈모케어.jpg" alt="">
            </div>
        </div>
        <!-- ---------마지막 상품--------- -->
    <!-- ---------FOOTER--------- -->
    <footer style="width: 100%;height: 200px;background-color: antiquewhite;">
        
    </footer>
    <!-- ---------FOOTER--------- -->
</body>
<script>
// -----------HEADER-----------
function changeimage(element, aa) {
    element.querySelector('.normal-image').src = 'Headerimg/' + aa +'.gif';
    element.querySelector('.Kategorymain-image').style.opacity = 0;
    element.querySelector('h1').style.opacity = 0;
}
function restoreimage(element, aa) {
    element.querySelector('.normal-image').src = 'Headerimg/' + aa +'.png';
    element.querySelector('.Kategorymain-image').style.opacity = 0.5;
    element.querySelector('h1').style.opacity = 1;
}
function KategoryMenuOn(){
    var Kategory = document.getElementById("Kategory");
    var KategoryBackgroundColor = document.getElementById("KategoryBackgroundColor");
    var KategoryBackgroundColor2 = document.getElementById("KategoryBackgroundColor2");
    if (window.getComputedStyle(Kategory).opacity === "0") {
        Kategory.style.opacity = "1";
        Kategory.style.zIndex = 1;
        KategoryBackgroundColor2.style.zIndex = 1;
        KategoryBackgroundColor.style.zIndex = 1;
        KategoryBackgroundColor2.style.opacity = 0.2;
    } else {
        Kategory.style.opacity = "0";
        Kategory.style.zIndex = -1;
        KategoryBackgroundColor.style.zIndex = -1;
        KategoryBackgroundColor2.style.zIndex = -1;
        KategoryBackgroundColor2.style.opacity = 0;
    }
}
function KategoryMenuOff(){
    Kategory.style.opacity = "0";
    Kategory.style.zIndex = -1;
    KategoryBackgroundColor.style.zIndex = -1;
    KategoryBackgroundColor2.style.zIndex = -1;
    KategoryBackgroundColor2.style.opacity = 0;
}
document.getElementById("Kategory1").style.backgroundColor = "white";
document.getElementById("Kategory1").style.color = "green";
document.getElementById("ServeKategory1").style.display = "flex";
function handleMouseOver(KategoryOn, ServeKategoryOn) {
    var KategoryOnElement = document.getElementById(KategoryOn);
    var ServeKategoryOnElement = document.getElementById(ServeKategoryOn);
    for(let i =1;i<10;i++){
        document.getElementById("ServeKategory"+i).style.display = "none";
        document.getElementById("Kategory"+i).style.backgroundColor = "yellowgreen";
        document.getElementById("Kategory"+i).style.color = "white";
    }
    KategoryOnElement.style.backgroundColor = "white";
    KategoryOnElement.style.color = "green";
    ServeKategoryOnElement.style.display = "flex";
}
function ServeMall(){
var Menu = document.getElementById('SearchMenu');
var ServeMallcoloron = document.getElementById('ServeMallcoloron');
    if (window.getComputedStyle(Kategory).opacity === "1"){
        KategoryMenuOn();
    }
    if (Menu.style.right === '0px') {
    // 메뉴가 열려있는 경우
    Menu.style.right = '-450px';
    ServeMallcoloron.style.opacity=0;
    ServeMallcoloron.style.zIndex=-1;
    } else {
    // 메뉴가 닫혀있는 경우
    Menu.style.right = '0px';
    ServeMallcoloron.style.opacity=0.1;
    ServeMallcoloron.style.zIndex=99999;
    }
}
function ServeMallcolorOff(){
    var Menu = document.getElementById('SearchMenu');
    var ServeMallcoloron = document.getElementById('ServeMallcoloron');
    Menu.style.right = '-450px';
    ServeMallcoloron.style.opacity=0;
    ServeMallcoloron.style.zIndex=-1;
}
// -----------HEADER-----------


// -----------CENTER-----------
const EventMall = document.getElementById("EventMall");
const FoodSlide = document.getElementById("FoodSlide");
const imageSources = [];
let EventSlideCount = 0;
let aaa = 0;
let eventnum = 0;
let eventonmouse = true;
for (let i = 0; i < 10; i++) {
    const imgElement = document.createElement('img');
    imgElement.src = "MainEventimg/이벤트" + 2 + i + ".jpg";
    imgElement.style.width = "701px";
    imgElement.style.height = "350px";
    imgElement.style.marginLeft = 700*aaa+"px";
    aaa++;
    imgElement.classList.add('image');
    imageSources.push(imgElement);
    EventMall.appendChild(imgElement);
}
// function Eventovermouse(){
//     eventonmouse=false;
// }
// function Eventoutmouse(){
//     eventonmouse=true;
// }
function RunTime() {
    EventSlide();
    requestAnimationFrame(RunTime);
}
function EventSlide() {
    if(eventonmouse){
        EventSlideCount++;
        for (let i = 0; i < 10; i++) {
            imageSources[i].style.marginLeft = parseInt(imageSources[i].style.marginLeft) + 1 + "px";
            if(parseInt(imageSources[i].style.marginLeft)>=6300){
                imageSources[i].style.marginLeft = -700 + "px";
            }
        }
        if(EventSlideCount ==200){
            for(let n = 0; n < 10; n++){
            imageSources[n].src = "MainEventimg/이벤트" + eventnum + n + ".jpg";
            }
            EventSlideCount=0;
            eventnum++;
            if(eventnum>2){
                eventnum=0;
            }
        }
    }
}
function FoodSlideLeft(Food){
    if(parseInt(Food.style.marginLeft)<0){
        Food.style.marginLeft = parseInt(Food.style.marginLeft)+900+"px";
    }
}
function FoodSlideRight(Food){
    if(parseInt(Food.style.marginLeft)>-3600){
        Food.style.marginLeft = parseInt(Food.style.marginLeft)-900+"px";
    }
}
RunTime();
// -----------CENTER-----------
</script>
</html>