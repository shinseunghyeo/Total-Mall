<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 회원정보변경</title>
</head>
<body>
    <div id="update_info">
        <form action="">
            <div id="section-header">
                <div id="section-header1">
                    <h1>회원 정보 수정</h1>
                </div>
                <div id="section-header2">

                </div>
            </div>
            <div id="white-board-all">
                <div id="white-board">
                    <div id="white-board-header">
                        <div>
                            <p>회원정보를 모두 입력해야 회원정보수정이 완료됩니다</p>
                        </div>
                    </div>
                    <div class="input-text" id="input-top">
                        <div class="input-text1">
                            <p>아이디</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="" placeholder="" disabled>
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

                    <div class="input-text" id="">
                        <div class="input-text1">
                            <p>대표자 명</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="" placeholder="" disabled>
                            <p>대표자명이 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>사업자 등록번호</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="" placeholder="" disabled>
                            <p>사업자 등록번호가 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>상호</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="" disabled>
                            <p>상호가 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>통신판매번호</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="" disabled>
                            <p>통신판매번호가 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>계좌</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="account">
                            <select name="" id="account_select">
                                <option value="">농협</option>
                                <option value="">국민</option>
                                <option value="">신한은행</option>
                            </select>
                            <p>계좌가 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>예금주명</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="" id="">
                            <p>예금주명이 맞지 않습니다</p>
                        </div>
                    </div>
                    <div id="button">
                        <input type="button" value="이전">
                        <input type="submit" value="수정" id="next-button">
                    </div>
                </div>
            </div>
        </form>
    </div>

</body>

</html>