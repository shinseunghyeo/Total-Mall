<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 회원정보 변경</title>
</head>
<body>
    <div id="nav_back"></div>
    <div id="info_update">
        <div id="section-header">
            <div id="section-header1">
                <p>회원 정보 변경</p>
            </div>
            
        </div>
        <div id="update_form">
            <form action="login_v1.1.html">
                <div id="white-board">
                    <div id="white-board-header">
                        <div>
                            <p>회원정보를 모두 입력해야 회원정보 수정이 완료됩니다</p>
                        </div>
                    </div>
                    <div class="input-text" id="input-top">
                        <div class="input-text1">
                            <p>아이디</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="" placeholder="">
                            <p>아이디는 8~12자로 영어,특수문자,숫자를 포함</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>비밀번호</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="" placeholder="비밀번호는 8~12자">
                            <p>비밀번호는 8~12자로 영어,특수문자,숫자를 포함</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>비밀번호 확인</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="">
                            <p>비밀번호가 맞지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>이름</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="">
                            <p>이름을 적어주세요</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>휴대폰</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="">
                            <p>알맞은 형식이 아닙니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>이메일</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="email">
                            <input type="button" value="이메일 인증" id="email-button">
                            <p>이메일 형식이 맞지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>이메일 인증 번호</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="email2">
                            <p>이메일 번호가 맞지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>주소</p>
                        </div>
                        <div class="input-text2">
                            <input type="button" value="우편번호 찾기" id="address-button">
                            <input type="text" name="" id="address1">
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1"></div>
                        <div class="input-text2">
                            <input type="text" name="" id="" placeholder="주소">
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1"></div>
                        <div class="input-text2">
                            <input type="text" name="" id="" placeholder="상세주소">
                            <p>주소 형식이 맞지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text"></div>
                    <div class="input-text"></div>





                    <div id="categorie-header">
                        <p>관심 카테고리</p>
                    </div>
                    <div id="categorie-header2">
                        <p>(3개 선택 필수)</p>
                    </div>
                    <div id="gray-board">
                        <div class="check-categorie">
                            <div>
                                <input type="checkbox" name="" id="" class="checkbox-categorie">
                                <p>식품</p>
                            </div>
                            <div>
                                <input type="checkbox" name="" id="" class="checkbox-categorie">
                                <p>홈데코</p>
                            </div>
                        </div>
                        <div class="check-categorie">
                            <div>
                                <input type="checkbox" name="" id="" class="checkbox-categorie">
                                <p>취미</p>
                            </div>
                            <div>
                                <input type="checkbox" name="" id="" class="checkbox-categorie">
                                <p>생필품</p>
                            </div>
                        </div>
                        <div class="check-categorie">
                            <div>
                                <input type="checkbox" name="" id="" class="checkbox-categorie">
                                <p>의류</p>
                            </div>
                            <div>
                                <input type="checkbox" name="" id="" class="checkbox-categorie">
                                <p>도서</p>
                            </div>
                        </div>
                        <div class="check-categorie">
                            <div>
                                <input type="checkbox" name="" id="" class="checkbox-categorie">
                                <p>가구</p>
                            </div>
                            <div>
                                <input type="checkbox" name="" id="" class="checkbox-categorie">
                                <p>가전</p>
                            </div>
                        </div>
                        <div class="check-categorie">
                            <div>
                                <input type="checkbox" name="" id="" class="checkbox-categorie">
                                <p>스포츠</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="button">
                    <a href="">회원 탈퇴</a>
                    <input type="submit" value="수정">
                </div>
            </form>
        </div>
    </div>

</body>
</html>