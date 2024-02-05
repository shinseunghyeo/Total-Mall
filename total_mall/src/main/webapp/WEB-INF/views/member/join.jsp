<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지1</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
</head>
<style>
    /* ---------BASE--------- */
    body{overflow-x: hidden;  margin: 0;}
    a {margin-left: 10px; text-decoration: none;color: inherit;transition: color 0.3s;font-weight: bold;}
    a:hover {color: black;text-decoration: underline;}
    img{cursor: pointer;}
    input[type="text"], select {padding: 5px;border: none;border-radius: 5px;margin-right: 10px;}
    /* ---------BASE--------- */
    #section-wrap{
        margin: 0 auto;
        background-color: rgb(224, 224, 224);
        width: 1100px;
        height: 1100px;
        /* height: 50px; */
    }
    #section-1{
        margin: 0 auto;
        
    }
    #section-header{
        padding-top: 50px;
        margin: 0 auto;
        width: 650px;
        display: flex;
        padding-bottom: 20px;
        
    }
    #section-header1{
        width: 75%;
        font-size: 30px;
        font-weight: 800;
    }
    #section-header1 p{
        margin: 0;
    }
    #section-header2{
        display: flex;
    }
    #section-header2 p{
        margin-top: 15px;
        margin-bottom: 0px;
        margin-left: 15px;
        font-weight: 600;
    }
    #section-header2 p:first-child{
        text-decoration: underline;
        color: rgb(52, 152, 219);
    }
    #white-board{
        margin: 0 auto;
        width: 650px;
        background-color: white;
        border-radius: 20px 20px 20px 20px ;
        height: 900px;
    }
    #white-board2{
        margin: 0 auto;
        width: 650px;
        background-color: white;
        border-radius: 20px 20px 20px 20px ;
        height: 900px;
    }
    #white-board-header{
        display: flex;
    }
    #white-board-header2{
        display: flex;
    }
    #white-board-header div:first-child{
        width: 50%;
        height: 70px;
        background-color: rgb(52, 152, 219);
        text-align: center;
        border-radius: 20px 0 0 0;
    }
    #white-board-header div:hover{
        cursor: pointer;
    }
    #white-board-header div p{
        margin: 0;
        line-height: 70px;
        font-size: 30px;
        font-weight: 800;
        color: white;
    }
    #white-board-header div:last-child{
        width: 50%;
        height: 70px;
        background-color: rgb(94, 94, 94);
        text-align: center;
        border-radius: 0 20px 0 0;
    }
    #white-board-header2 div:first-child{
        width: 50%;
        height: 70px;
        background-color: rgb(94, 94, 94);
        text-align: center;
        border-radius: 20px 0 0 0;
    }
    #white-board-header2 div:hover{
        cursor: pointer;
    }
    #white-board-header2 div p{
        margin: 0;
        line-height: 70px;
        font-size: 30px;
        font-weight: 800;
        color: white;
    }
    #white-board-header2 div:last-child{
        width: 50%;
        height: 70px;
        background-color: rgb(52, 152, 219);
        text-align: center;
        border-radius: 0 20px 0 0;
    }
    #check-all{
        padding-left: 50px;
        display: flex;
        border-bottom: 1px solid gray;
    }
    #check-all input{
        width: 25px;
    }
    #check-all input:checked{
        background-color: yellow;
    }
    #check-all p{
        margin-left: 15px;
        font: bold 15px Arial, sans-serif;
    }
    #check-box{
        border-bottom: 1px solid gray;
    }
    #check-box2{
        border-bottom: none;
    }
    .check-box{
        margin-left: 90px;
        display: flex;
    }
    .check-box input{
        margin-right: 15px;
        width: 25px;
    }
    #categorie-header{
        margin: 0 auto;
        width: 300px;
        height: 50px;
        text-align: center;
        line-height: 50px;
        font-size: 30px;
        font-weight: 800;
        background-color: rgb(52, 152, 219);
        border-radius: 20px 20px 20px 20px;
        color: white;
    }
    #categorie-header2{
        margin: 0 auto;
        text-align: center;
        
    }
    #gray-board{
        margin: 0 auto;
        background-color: rgb(224, 224, 224);
        width: 500px;
        height: 270px;
    }
    .check-categorie{
        display: flex;
    }
    .check-categorie div{
        display: flex;
        width: 50%;
    }
    .check-categorie div:first-child{
        margin-left: 100px;
    }
    .check-categorie div input{
        width: 25px;
        margin-right: 10px;
    }
    #button input{
        margin-top: 20px;
        margin-left: 700px;
        width: 150px;
        height: 50px;
        background-color: rgb(52, 152, 219);
        border: none;
        border-radius: 15px 15px 15px 15px;
        font-size: 25px;
        font-weight: 800;
        color: white;
    }
    #button input:hover{
        cursor: pointer;
    }
    #section-1{
        display: block;
    }
    #section-2{
        display: none;
    }
    .checkbox-design-All{
        accent-color: rgb(52, 152, 219);
    }
    .checkbox-design{
        accent-color: rgb(52, 152, 219);
    }
    .checkbox-design2{
        accent-color: rgb(52, 152, 219);
    }
    #checkAll2{
        accent-color: rgb(52, 152, 219);
    }
    .checkbox-categorie{
        accent-color: rgb(52, 152, 219);
    }

    
</style>
<body>
    <%@ include file="../Main/T_Header2.jsp" %>
    <section>
        <div id="section-wrap">
            <div id="section-1">
                <div id="section-header">
                    <div id="section-header1">
                        <p>회원가입</p>
                    </div>
                    <div id="section-header2">
                        <p>1 가입</p>
                        <p>2 정보입력</p>
                    </div>
                </div>
                <form name="frm_join" method="post" action="buyerJoinProcess1.do" id="myForm">
                	
                    <div id="white-board">
                        <div id="white-board-header">
                            <div>
                                <p onclick="userTypeChange('buyer')">개인 회원</p>
                            </div>
                            <div>
                                <p onclick="userTypeChange('seller')">기업 회원</p>
                            </div>
                        </div>
                        <div id="check-all">
                            <input type="checkbox" name="" id="checkAll" class="checkbox-design-All" >
                            <p>모두 동의하기</p>
                        </div>
                        <div id="check-box">
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>구매회원 이용약관</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>전자금융 서비스 이용약관</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>개인정보 수집 및 이용</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>만 14세 이상입니다.</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>개인정보 제 3자 제공 동의</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>혜택 알림 이메일, 문자 앱 푸시</p>
                                <p>(필수)</p>
                            </div>
                        </div>
                        <div id="categorie-header">
                            <p>관심 카테고리</p>
                        </div>
                        <div id="categorie-header2">
                            <p>(3개 선택 필수)</p>
                        </div>
                        <div id="gray-board">
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="food">
                                    <p>식품</p>
                                </div>
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="homeDeco">
                                    <p>홈데코</p>
                                </div>
                            </div>
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="hobby">
                                    <p>취미</p>
                                </div>
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="dailyNecessity">
                                    <p>생필품</p>
                                </div>
                            </div>
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="clothes">
                                    <p>의류</p>
                                </div>
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="book">
                                    <p>도서</p>
                                </div>
                            </div>
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="furniture">
                                    <p>가구</p>
                                </div>
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="homeAppliances">
                                    <p>가전</p>
                                </div>
                            </div>
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="sports">
                                    <p>스포츠</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="button">
                        <input type="submit" value="다음">
                    </div>
                </form>
            </div>
            <div id="section-2">
                <div id="section-header">
                    <div id="section-header1">
                        <p>회원가입</p>
                    </div>
                    <div id="section-header2">
                        <p>1 가입</p>
                        <p>2 정보입력</p>
                    </div>
                </div>
                <form name="frm_join2" method="post" action="sellerJoinProcess1.do" id="myForm2">
                    <div id="white-board2">
                        <div id="white-board-header2">
                            <div>
                                <p onclick="userTypeChange('buyer')">개인 회원</p>
                            </div>
                            <div>
                                <p onclick="userTypeChange('seller')">기업 회원</p>
                            </div>
                        </div>
                        <div id="check-all">
                            <input type="checkbox" name="" id="checkAll2">
                            <p>모두 동의하기</p>
                        </div>
                        <div id="check-box2">
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>판매회원 이용약관</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>전자금융 서비스 이용약관</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>개인정보 수집 및 이용</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>만 14세 이상입니다.</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>개인정보 제 3자 제공 동의</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>혜택 알림 이메일, 문자 앱 푸시</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>Total Mall 지원 할인동의</p>
                                <p>(필수)</p>
                            </div>
                        </div>
                    </div>
                    <div id="button">
                        <input type="submit" value="다음">
                    </div>
                </form>
            </div>
        </div>
    </section>
    
</body>
<script>
    /* 구매자/판매자 스크립트로 구분 */
    function userTypeChange(userType){
        var buyerSection = document.getElementById("section-1");
        var sellerSection = document.getElementById("section-2");
        var whiteBoard = document.getElementById("white-board");
        var whiteBoard2 = document.getElementById("white-board2");
        var checkBox = document.getElementById("check-box");
        var sectionWrap = document.getElementById("section-wrap");

        if(userType == "buyer"){
            buyerSection.style.display = "block";
            sellerSection.style.display ="none";
            whiteBoard.style.height = "900px";
            whiteBoard2.style.height = "500px";
            checkBox.style.borderBottom = "1px solid gray";
            sectionWrap.style.height = "1100px";
            
        } else if(userType == "seller") {
            buyerSection.style.display = "none";
            sellerSection.style.display ="block";
            whiteBoard.style.height = "900px";
            whiteBoard2.style.height = "500px";
            checkBox.style.borderBottom = "none";
            sectionWrap.style.height = "800px";
        }
    }
    /* 구매자/판매자 스크립트로 구분 */
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

    document.querySelector('#checkAll2');

    checkAll2.addEventListener('click', function(){

        const isChecked = checkAll2.checked;

        if(isChecked){
            const checkboxes = document.querySelectorAll('.checkbox-design2');

            for(const checkbox of checkboxes){
                checkbox.checked = true;
            }
        }

        else{
            const checkboxes = document.querySelectorAll('.checkbox-design2');
            for(const checkbox of checkboxes){
                checkbox.checked = false;
            }
        }
    })

    /* 모두 체크하기 스크립트 */
    /* 개인회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    function checkAgreement() {
        const agreementCheckboxes = $('.checkbox-design');
        let isAllAgreed = true;

        agreementCheckboxes.each(function () {
            if (!$(this).prop('checked')) {
                isAllAgreed = false;
                return false; // 하나라도 체크되어 있지 않으면 종료
            }
        });

        return isAllAgreed;
    }
    $('#myForm').submit(function (e) {
        if (!checkAgreement()) {
            alert('이용약관에 모두 동의해야 합니다.');
            e.preventDefault(); // 폼 제출을 중단합니다.
        }
    });

    /* 개인회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    /* 기업회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    function checkAgreement2() {
        const agreementCheckboxes = $('.checkbox-design2');
        let isAllAgreed = true;

        agreementCheckboxes.each(function () {
            if (!$(this).prop('checked')) {
                isAllAgreed = false;
                return false; // 하나라도 체크되어 있지 않으면 종료
            }
        });

        return isAllAgreed;
    }
    $('#myForm2').submit(function (e) {
        if (!checkAgreement2()) {
            alert('이용약관에 모두 동의해야 합니다.');
            e.preventDefault(); // 폼 제출을 중단합니다.
        }
    });

    /* 기업회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    /* 카테고리 3개만 클릭하기 스크립트 */
        $(document).ready(function(){
            var maxAllowed = 3;

            $('.checkbox-categorie').on('change', function() {
                var count = $('.checkbox-categorie:checked').length;

                if (count > maxAllowed) {
                    $(this).prop('checked', false);
                    alert('최대 3개까지만 선택 가능합니다.');
                }
            });

            $('#myForm').submit(function() {
                var count = $('.checkbox-categorie:checked').length;

                if (count !== maxAllowed) {
                    alert('카테고리는 3개를 선택해야 합니다.');
                    return false; // 폼 전송을 중단합니다.
                }
            });
        });
    /* 카테고리 3개만 클릭하기 스크립트 */
</script>
</html>