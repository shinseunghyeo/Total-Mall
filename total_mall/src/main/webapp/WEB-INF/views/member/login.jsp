<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <link rel="stylesheet" href="../resources/css/Member/login.css">
</head>
<body>
    <%@ include file="../Main/Header2.jsp" %>
        <section>
            <div id="section-wrap">
                <div class="white-board" id="buyerSection">
                    <form method="post" action="loginProcess.do">
                        <div id="logo2">
                            <img src="../resources/img/Headerimg/사이트로고.png" alt="#">
                        </div>
                        <div id="select">
                            <div class="buyer">
                                <p>
                                    로그인 페이지
                                </p>
                            </div>
                        </div>
                        <div id="id">
                            <input type="text" name="member_id" id="text-id" placeholder="아이디">
                        </div>
                        <div id="pw">
                            <input type="password" name="member_pw" id="text-pw" placeholder="비밀번호">
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
                            <img src="../resources/img/MainEventimg/이벤트00.jpg" alt="#">
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