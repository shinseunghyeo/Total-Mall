<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
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
        input[type="text"], select {
            padding: 5px;
            border: none;
            border-radius: 5px;
            margin-right: 10px;
        }
        #EventMall img{
            position: absolute;border: 2px solid black;
        }
        a {
            margin-left: 10px; 
            text-decoration: none; /* 밑줄 제거 */
            color: inherit; /* 현재 색상 유지 */
            transition: color 0.3s; /* 호버 효과 부드럽게 적용 */
        }
        a:hover {
            color: black; /* 호버 시 텍스트 색상을 검은색으로 변경 */
            text-decoration: underline; /* 호버 시 밑줄 추가 */
        }
        #wrap{
            width: 1050px;
            margin: 0px auto;
        }
        #header{
            width: 1100px;
            height: 50px;
            display: flex;
            /* background-color: yellow; */
        }
        #menu{
            width: 50px;
            height: 50px;
            background-position: center;
            text-align: center;
            align-items: center;
        }
        #menu>img{
            width: 40px;
            height: 40px;
        }
        #logo{
            width: 50px;
        }
        #logo>img{
            width: 40px;
            height: 50px;
        }
        #search{
            margin-top: 3px;
            width: 600px;
            height: 40px;
            border: 2px solid #3498db;
            border-radius: 30px;
            display: flex;
            
        }
        #search>select{
            width: 20%;
            height: 40px;
            border: none;
            border-radius: 30px;
        }
        #search>input{
            width: 80%;
            border-radius: 30px;
            outline: none;
            border: none;
        }
        #icon{
            margin-left: 200px;
            width: 200px;
        }
        #icon img{
            width: 40px;
            margin-left: 20px;
        }
        /* 이전header */
        #section-wrap{/* 회색부분 */
            width: 1050px;
            height: 680px;
            background-color: lightgray;

        }
        .white-board{
            width: 800px;
            height: 600px;
            position: relative;
            top: 30px;
            margin: 0 auto;
            background-color: white;
            border-radius: 20px;
            align-items: center;
        }
        #logo2{
            width: 250px;
            margin: 30px auto;
        }
        #logo2>img{
            margin-top: 30px;
            width:250px;
        }
        #select{
            margin: auto;
            width: 400px;
            height: 50px;
            display: flex;
        }
        .buyer{
            width: 400px;
            height: 50px;
            text-align: center;
            line-height: 50px;
            background-color: rgb(52, 152, 219);
            border-radius: 20px 20px 0 0;
        }
        .buyer>p{
            margin: 0;
            font-weight: 800;
            font-size: 20px;
            color: white;
        }
        .seller{
            width: 200px;
            height: 50px;
            text-align: center;
            line-height: 50px;
            background-color: gray;
            border-radius: 0 20px 0 0;
        }
        .seller>p{
            margin: 0;
            font-weight: 800;
            font-size: 20px;
        }
        #id,#pw{
            width: 400px;
            height: 40px;
            margin: auto;
        }
        #pw{
            margin-top: 1.5px;
        }
        #text-id,#text-pw{
            margin: 0;
            padding: 0;
            width: 397px;
            height: 40px;
            border: 2px solid lightgray;
            border-radius: 0;
        }
        #text-id{
            border-top: 0.5px solid lightgray;
            border-bottom: 0.5px solid lightgray;
        }
        #text-pw{
            border-top: 0.5px solid lightgray;
        }
        
        #another{
            width: 400px;
            height: 40px;
            display: flex;        
            margin: auto;
        }
        #id-check{
            width: 50%;
            line-height: 40px;
            display: flex;
        }
        #id-check>input{
            width: 18px;
        }
        #id-check>p{
            font-size: 14px;
            margin: 0;
        }
        #id-checkbox{
            accent-color: rgb(52, 152, 219);
        }
        #find-id{
            width: 50%;
            text-align:end;
            line-height: 40px;          
        }
        #find-id>a{
            text-decoration: none;
            color: black;
            font-size: 14px;
            margin: 0;
        }
        #find-id>a:hover{
            text-decoration: underline;
        }
        #question{
            margin: 0px auto;
            width: 400px;
            height: 30px;
            text-align: center;
        }
        #question>a{
            float: right;
            text-decoration: none;
            color: black;
            font-size: 14px;
        }
        #question>a:hover{
            text-decoration: underline;
        }
        #loginbox{
            margin: auto;
            width: 400px;
        }
        #loginbox input:hover{
            cursor: pointer;
        }
        #loginbox>input{
            margin-bottom: 20px;
            width: 400px;
            height: 50px;
            border-radius: 15px;
            font-size: 25px;
            font-weight: 800;
            color: white;
            background-color: rgb(52, 152, 219);
            border: 1px solid lightgray;
        }
        
        #event{
            width: 400px;
            margin: auto;
            text-align: center;
        }
        #event>img{
            width: 400px;
            
        }
        #footer{
            width: 1048px;
            height: 198px;
            margin: auto;
            border: 1px solid black;
            background-color: pink;
        }

    </style>
</head>
<body>
    <div id="wrap">
        <div id="ServeMallcoloron" onclick="ServeMallcolorOff()"></div>
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
                <a href="">로그인</a>
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
        <section>
            <div id="section-wrap">
                <div class="white-board" id="buyerSection">
                    <form action="">
                        <div id="logo2">
                            <img src="Mallimg/사이트로고.png" alt="#">
                        </div>
                        <div id="select">
                            <div class="buyer">
                                <p>
                                    로그인 페이지
                                </p>
                            </div>
                        </div>
                        <div id="id">
                            <input type="text" name="" id="text-id" placeholder="아이디">
                        </div>
                        <div id="pw">
                            <input type="text" name="" id="text-pw" placeholder="비밀번호">
                        </div>
                        <div id="another">
                            <div id="id-check">
                                <input type="checkbox" name="" id="id-checkbox">
                                <p>아이디 저장</p>
                            </div>
                            <div id="find-id">
                                <a href="${pageContext.request.contextPath}/member/join.do">회원가입</a>
                                <a href="find_id,pw.html">아이디/비밀번호 찾기</a>
                            </div>
                        </div>
                        <div id="question">
                            
                        </div>
                        <div id="loginbox">
                            <input type="submit" value="로그인">
                        </div>
                        <div id="event">
                            <img src="MainEventimg/이벤트01.jpg" alt="#">
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <footer>
            <div id="footer">

            </div>
        </footer>
    </div>
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

    /* 구매자/판매자 스크립트로 구분 */
    function userTypeChange(userType){
        var buyerSection = document.getElementById("buyerSection");
        var sellerSection = document.getElementById("sellerSection");
        var buyer = document.querySelector(".buyer");
        var seller = document.querySelector(".seller");

        if(userType == "buyer"){
            buyerSection.style.display = "block";
            sellerSection.style.display ="none";
            buyer.style.backgroundColor = "gray";
            seller.style.backgroundColor = "red";
        } else {
            buyerSection.style.display = "none";
            sellerSection.style.display ="block";
            buyer.style.backgroundColor = "gray";
            seller.style.backgroundColor = "gray";
        }
    }
    /* 구매자/판매자 스크립트로 구분 */
    </script>
</html>