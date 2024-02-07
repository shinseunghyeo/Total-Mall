<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일반회원 회원가입 페이지</title>
    <link rel="stylesheet" href="../resources/css/Member/buyerJoin.css">
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="../resources/js/Member/buyerJoin.js"></script>
</head>

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
                	<input type="hidden" name="grade" value="1" />
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

</html>