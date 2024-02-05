<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <style>
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
        	margin: 0 auto;
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
    <%@ include file="../Main/T_Header2.jsp" %>
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