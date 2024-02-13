<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니 페이지</title>
</head>
<style>
    /* ---------HEADER--------- */
    img{cursor: pointer;}
    body{margin: 0;overflow-x: hidden;}
    header a {margin-left: 10px; text-decoration: none;color: inherit;font-weight: bold;}
    a:hover {color: black;text-decoration: underline;}

    a, p, h1, h2, h3, h4{
        font-family: "G-market-Light";
        margin: 0;
    }


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
    @font-face {
        font-family: "G-market-Light";
        src: url(font/GmarketSansTTFLight.ttf);
    }
    @font-face {
        font-family: "G-market-Bold";
        src: url(font/GmarketSansTTFBold.ttf);
    }
    #white-board{
        margin: 0 auto;
        width: 1050px;
        background-color: rgb(224,224,224);
        border: 1px solid black;
    }
    #cart-header{
        height: 60px;
        line-height: 60px;
        border-bottom: 1px solid gray;
    }
    #cart-header h1{
        margin: 0;
        margin-left: 15px;
    }
    #cart-middle{
        display: flex;
    }
    #left-div{
        
        width: 70%;
        
    }
    #selectAll-div{
        width: 100%;
        height: 50px;
        display: flex;
        line-height: 50px;
        align-items: center;
        
    }
    #selectAll-div input[type="checkbox"]{
        margin-left: 20px;
        height: 25px;
        width: 30px;
        accent-color: rgb(52, 152, 219);
    }
    #selectAll-div p{
        font-weight: bold;
        margin: 0;
    }
    #list-div{
        display: flex;
        background-color: white;
        margin: 5px;
        padding-bottom: 5px;
        border-radius: 5px;
        border: 0.5px solid black;
    }
    #list-div p:first-child{
        width: 10%;
        margin: 0;
    }
    #list-div p:nth-child(2){
        width: 20%;
        margin: 0;
        text-align: center;
        padding-top: 10px;
        font-weight: bold;
    }
    #list-div p:nth-child(3){
        width: 40%;
        margin: 0;
        text-align: center;
        padding-top: 10px;
        font-weight: bold;
    }
    #list-div p:nth-child(4){
        width: 10%;
        margin: 0;
        text-align: center;
        padding-top: 10px;
        font-weight: bold;
    }
    #list-div P:nth-child(5){
        width: 16%;
        margin: 0;
        text-align: center;
        padding-top: 10px;
        font-weight: bold;
    }
    .cart_item{
        
        border-bottom: 1px solid gray;
        background-color: white;
        margin: 5px;
        border-radius: 5px;
        border: 0.5px solid black;
    }
    .cart_item_seller{
        margin: 10px auto;
        width: 95%;
        border-bottom: 2px solid black;
    }
    .cart_item_seller p {
        margin: 5px;
        font-weight: bold;
    }
    .cart_item-1{
        width: 10%;
        text-align: center;
    }
    .cart_item-1 input[type="checkbox"]{
        margin-top: 62.5px;
        width: 20px;
        height: 20px;
        accent-color: rgb(52, 152, 219);
    }
    .cart_item-2{
        width: 20%;
        height: 150px;
    }
    .cart_item-2 img{
        width: 80%;
        margin: 10%;
        height: 120px;
    }
    .cart_item-3{
        width: 40%;
    }
    .cart_item-3 p{
        margin-top: 40px;
        margin-left: 10px;
        margin-right: 10px;
        font-weight: bold;
    }
    .cart_item-3 p a{
        color: black;
        text-decoration: none;
    }
    .cart_item-3 p a:hover{
        cursor: pointer;
        text-decoration: underline;
    } 
    .cart_item-4{
        width: 10%;
        text-align: center;
    }
    .cart_item-4 select{
        margin-top: 62.5px;
        height: 25px;
        width: 60px;
    }
    .cart_item-5{
        width: 20%;
        line-height: 150px;
        font-size: 20px;
        font-weight: bold;
        text-align: center;
        display: flex;
    }
    .cart_item-5 div:nth-child(1){
        width: 90%
    }
    .cart_item-5 p{
        margin: 0;
    }
    .cart_item-5 input{
        border: none;
        padding: 0;
        background-color: white;
        
    }
    .cart_item-5 input:hover{
        cursor: pointer;
    }
    .cart_item_price{
        display: flex;
    }
    .cart_item_price-1{
        width: 20%;text-align: center;
        font-weight: bold;
        padding-top: 10px;
        padding-bottom: 10px;
    }
    .cart_item_price-2{
        width: 7%;
        text-align: center;
        font-size: 30px;
        font-family: "G-market-Bold";
        font-weight: 800;
        line-height: 58px;
    }
    #right-div p, #right-div h1, #right-div h2{/* 우측박스 p,h1,h2 전체 마진 0 */
        margin: 0;
    }
    #right-div{
        width: 30%;
        height: 350px;
        position: sticky;
        top: 20px;
        background-color: white;
        margin-top: 54px;
        margin-left: 10px;
        margin-right: 10px;
        margin-bottom: 10px;
        border: 0.5px solid black;
        border-radius: 5px;
    }
    #right_header{
        margin: 20px;
    }
    #right_first_div,#right_second_div,#right_third_div,#right_fourth_div{
        display: flex;
        height: 50px;
    }
    #right_first_div div:nth-child(1), #right_second_div div:nth-child(1), #right_third_div div:nth-child(1),
    #right_fourth_div div:nth-child(1){
        width: 50%;
        line-height: 50px;
        margin-left: 20px;
        text-align: center;
    }
    #right_first_div div:nth-child(2),#right_second_div div:nth-child(2)
    ,#right_third_div div:nth-child(2),#right_fourth_div div:nth-child(2){
        width: 50%;
        line-height: 50px;
    }
    #right_first_div div h2,#right_second_div div h2,#right_third_div div h2,
    #right_fourth_div div h2{
        float: right;
        padding-right: 20px;
    }
    #right_fourth_div{
        color: rgb(52, 152, 219);
        font-weight: bold;
    }

    #right_fifth_div{
        text-align: center;
    }
    #right_fifth_div input[type='submit']{
        margin-top: 20px;
        border: none;
        width: 250px;
        height: 50px;
        font-size: 18px;
        font-weight: bold;
        color: white;
        border-radius: 15px;
        background-color: rgb(52, 152, 219);
        font-family: "G-market-Light";
    }
    #right_fifth_div input[type='submit']:hover{
        cursor: pointer;
    }
    
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
                <a href="login_v1.1.html">로그인</a>
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
        <div id="white-board">
            <form action="T_PurchasePage.html">
            <div id="cart-header">
                <h1>장바구니</h1>
            </div>
            <div id="cart-middle">
                <div id="left-div">
                    <div id="selectAll-div">
                        <input type="checkbox" name="" id="checkAll">
                        <p>전체 선택</p>
                    </div>
                    <div id="list-div">
                        <p></p>
                        <p>상품사진</p>
                        <p>상품이름</p>
                        <p>수량</p>
                        <p>가격</p>
                        <p></p>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="cart_item">
                        <div class="cart_item_seller">
                            <p>판매자</p>
                        </div>
                        <div style="display: flex;width: 100%;">
                            <div class="cart_item-1">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                            </div>
                            <div class="cart_item-2">
                                <img src="Mallimg/고구마.jpg" alt="">
                            </div>
                            <div class="cart_item-3">
                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
                            </div>
                            <div class="cart_item-4">
                                <select name="" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <div class="cart_item-5">
                                <div>
                                    <p>38000원</p>
                                </div>
                                <div>
                                    <input type="button" value="X" onclick="removeCartItem(this)">
                                </div>
                            </div>
                        </div>
                        <div class="cart_item_price">
                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
                                <div>
                                    <p>상품금액</p>
                                </div>
                                <div style="text-align: center;;">
                                    <p>53,260원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>-</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>할인금액</p>
                                </div>
                                <div class="discount-div">
                                    <p>3,000원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>+</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>배송비</p>
                                </div>
                                <div>
                                    <p>2,500원</p>
                                </div>
                            </div>
                            <div class="cart_item_price-2">
                                <p>=</p>
                            </div>
                            <div class="cart_item_price-1">
                                <div>
                                    <p>주문금액</p>
                                </div>
                                <div>
                                    <p>32,280원</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>

                    
                    
                </div>
                <div id="right-div">
                    <div id="right_header">
                        <h1>결제 예정금액</h1>
                    </div>
                    <div id="right_first_div">
                        <div>
                            <p>상품금액</p>
                        </div>
                        <div>
                            <h2>108,000원</h2>
                        </div>
                    </div>
                    <div id="right_second_div">
                        <div>
                            <p>할인금액</p>
                        </div>
                        <div>
                            <h2>8,000원</h2>
                        </div>
                    </div>
                    <div id="right_third_div">
                        <div>
                            <p>배송비</p>
                        </div>
                        <div>
                            <h2>2,500원</h2>
                        </div>
                    </div>
                    <div id="right_fourth_div">
                        <div>
                            <p>합계</p>
                        </div>
                        <div>
                            <h2>102,500원</h2>
                        </div>
                    </div>
                    <div id="right_fifth_div">
                        <input type="submit" value="결제">
                    </div>
                </div>
            </div>
        </form>
        </div>
    </section>
    
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

    /* 장바구니 아이템 삭제 스크립트 */
    function removeCartItem(button) {
        var cartItem = button.closest('.cart_item');
        if (cartItem) {
        cartItem.style.display = 'none'; 
        }
    }
    /* 장바구니 아이템 삭제 스크립트 */
    /* 모두 체크하기 스크립트 */
    document.querySelector('#checkAll');

    checkAll.addEventListener('click', function(){

        const isChecked = checkAll.checked;

        if(isChecked){
            const checkboxes = document.querySelectorAll('.checkbox-design');

            for(const checkbox of checkboxes){
                checkbox.checked = true;
            }
        }

        else{
            const checkboxes = document.querySelectorAll('.checkbox-design');
            for(const checkbox of checkboxes){
                checkbox.checked = false;
            }
        }
    })
    /* 모두 체크하기 스크립트 */
</script>
</html>