<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일반회원 회원가입 페이지</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
</head>
<style>
    
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
    #section-header2 p:last-child{
        text-decoration: underline;
        color: rgb(52, 152, 219);
    }
    #white-board{
        margin: 0 auto;
        width: 650px;
        background-color: white;
        border-radius: 20px 20px 20px 20px ;
        height: 600px;
    }
    
    #white-board-header{
        display: flex;
    }
    #white-board-header2{
        display: flex;
    }
    #white-board-header div:first-child{
        width: 100%;
        height: 70px;
        background-color: rgb(52, 152, 219);
        text-align: center;
        border-radius: 20px 20px 0 0;
    }
    #white-board-header div p{
        margin: 0;
        line-height: 70px;
        font-size: 16px;
        font-weight: 400;
        color: white;
    }
    #input-top{
        margin-top: 30px;
    }
    .input-text{
        display: flex;
        
    }
    .input-text p{
        margin: 0;
    }
    .input-text1{
        width: 35%;
        height: 40px;
        line-height: 40px;
        font-size: 16px;

    }
    .input-text1 p{
        float: right;
        margin-right: 20px;
    }
    .input-text2{
        width: 55%;
    }
    .input-text2 input{
        border: 1px solid black;
        margin: 0;
        padding: 0;
        height: 35px;
        width: 300px;
    }
    .input-text2 p{
        color: white;
        font-size: 11px;
    }
    #email{
        width: 200px;
    }
    #email2{
        width: 200px;
    }
    #email-button{
        border: none;
        background-color: rgb(52, 152, 219);
        color: white;
        border-radius: 5px 5px 5px 5px;
        height: 38px;
        width: 94px;
        
    }
    #email-button2{
        border: none;
        background-color: rgb(52, 152, 219);
        color: white;
        border-radius: 5px 5px 5px 5px;
        height: 38px;
        width: 94px;
        
    }
    #email-button:hover{
        cursor: pointer;
    }
    #address-button{
        border: none;
        background-color: rgb(52, 152, 219);
        color: white;
        border-radius: 5px 5px 5px 5px;
        height: 36.5px;
        width: 100px;
        margin: auto;
        
    }
    #address-button:hover{
        cursor: pointer;
    }
    #address1{
        width: 194px;
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
    
    
</style>
<body>
    <%@ include file="../Main/Header2.jsp" %>
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
                <form name="frm_join" method="post" action="buyerJoinProcess2.do">
                	<input type="hidden" name="categorie" value="${categorie.categorie}" />
                    <div id="white-board">
                        <div id="white-board-header">
                            <div>
                                <p>회원정보를 모두 입력해주셔야 회원가입이 완료가 됩니다</p>
                            </div>
                        </div>
                        <div class="input-text" id="input-top">
                            <div class="input-text1">
                                <p>아이디</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="member_id" id="" placeholder="아이디는 8~12자로 영어,숫자를 포함">
                                <p id="id_test">아이디는 8~12자로 영어,숫자를 포함</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>비밀번호</p>
                            </div>
                            <div class="input-text2">
                                <input type="password" name="member_pw" id="member_pw" placeholder="비밀번호는 8~16자로 영어,특수문자,숫자를 포함">
                                <p id="pw_test">비밀번호는 8~16자로 영어,특수문자,숫자를 포함</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>비밀번호 확인</p>
                            </div>
                            <div class="input-text2">
                                <input type="password" name="member_pw2" id="member_pw2" placeholder="위 비밀번호와 동일하게 적어주세요">
                                <p id="pw2_test">비밀번호가 맞지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>이름</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="member_name" id="" placeholder="이름을 적어주세요">
                                <p id="name_test">이름을 적어주세요</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>휴대폰</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="handphone" id="" placeholder="010-숫자4자리-숫자4자리로 입력해야 합니다">
                                <p id="handphone_test">010-숫자4자리-숫자4자리로 입력해야 합니다</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>이메일</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="email" id="email">
                                <input type="button" value="이메일 인증" id="email-button" placeholder="이메일 형식에 맞춰서 적어주세요">
                                <p id="email_test">이메일 형식이 맞지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>이메일 인증 번호</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="" id="email2">
                                <input type="button" value="인증번호 확인" id="email-button2">
                                <p id="email2_test">이메일 번호가 맞지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>주소</p>
                            </div>
                            <div class="input-text2">
                                <input type="button" value="우편번호 찾기" id="address-button">
                                <input type="text" name="address1" id="address1" placeholder="우편번호">
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1"></div>
                            <div class="input-text2">
                                <input type="text" name="address2" id="" placeholder="주소">
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1"></div>
                            <div class="input-text2">
                                <input type="text" name="address3" id="" placeholder="상세주소">
                                <p id="address_test">상세주소를 적어주세요.</p>
                            </div>
                        </div>
                        <div class="input-text"></div>
                        <div class="input-text"></div>
                    </div>
                    <div id="button">
                        <input type="submit" value="가입">
                    </div>
                </form>
            </div>

        </div>
    </section>
    
</body>
<script>
/* 유효성 검사 */
$(function () {
    const regExp_id = /^[A-Za-z0-9~!@#$%^()+|=]{8,12}$/;
    const regExp_pw = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=])[A-Za-z0-9~!@#$%^()+|=]{8,16}$/;
    const regExp_phone =/^010-\d{4}-\d{4}$/;

    function checkIdValidity() {
        if (!regExp_id.test(frm_join.member_id.value)) {
            $("#id_test").css("color", "red")
        } else {
            $("#id_test").css("color", "white")
        }
    }
    function checkPwValidity(){
        if(!regExp_pw.test(frm_join.member_pw.value)){
            $("#pw_test").css("color","red")
        } else{
            $("#pw_test").css("color","white")
        }
    }
    function checkPw2Validity(){
        if($("#member_pw").val() != $("#member_pw2").val()){
            $("#pw2_test").css("color","red")
        } else{
            $("#pw2_test").css("color","white")
        }
    }
    function checkNameValidity(){
        if(frm_join.member_name.value.length == 0){
            $("#name_test").css("color","red")
        } else{
            $("#name_test").css("color","white")
        }
    }
    function checkHandphoneValidity(){
        if(!regExp_phone.test(frm_join.handphone.value)){
            $("#handphone_test").css("color","red")
        } else{
            $("#handphone_test").css("color","white")
        }
    }

    // focusout 이벤트에 유효성 검사 함수 연결
    $('input[name="member_id"]').on('focusout', function () {
        checkIdValidity();
    });

    $('input[name="member_pw"]').on('focusout', function () {
        checkPwValidity();
    });

    $('input[name="member_pw2"]').on('focusout', function () {
        checkPw2Validity();
    });

    $('input[name="member_name"]').on('focusout', function () {
        checkNameValidity();
    });

    $('input[name="handphone"]').on('focusout', function () {
        checkHandphoneValidity();
    });
    // submit 이벤트에 전체 유효성 검사 함수 연결
    frm_join.addEventListener("submit", function (e) {
        const idValue = frm_join.member_id.value;
        const idMessage = $("#id_test");

        // 전체 유효성 검사 수행
        if (!regExp_id.test(idValue)) {
            alert("???");
            e.preventDefault(); // 유효성 검사 실패 시 폼 제출 방지
            idMessage.css("color", "red").text("아이디를 올바르게 입력해주세요.");
        }
    });
});
/* 유효성 검사 */
</script>
</html>