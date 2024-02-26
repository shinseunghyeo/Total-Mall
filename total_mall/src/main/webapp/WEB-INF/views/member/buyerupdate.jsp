<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 회원정보 변경</title>
<script src="../resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../resources/js/Member/buyerupdate.js"></script>
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
            <form name="frm_join" method="post" action="buyerUpdateProcess.do">
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
                        	<input type="hidden" name="m_idx" value="${member.m_idx}">
                        	<input type="hidden" name="member_id" value="${member.member_id}">
                            <input type="text" name="member_id" id="" value="${member.member_id}" placeholder="" disabled>
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
                            <input type="text" name="member_name" id="" value="${member.member_name }" placeholder="이름을 적어주세요">
                            <p id="name_test">이름을 적어주세요</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>휴대폰</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="handphone" id="" value="${member.handphone}" placeholder="010-숫자4자리-숫자4자리로 입력해야 합니다">
                            <p id="handphone_test">010-숫자4자리-숫자4자리로 입력해야 합니다</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>이메일</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="email" id="email" value="${member.email}" placeholder="이메일 형식에 맞춰서 적어주세요" disabled>
                            <input type="button" value="이메일 인증" id="email-button">
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
                            <input type="button" value="우편번호 찾기" id="address-button" onclick="daumPost();">
                            <input type="text" name="address1" id="address1" value="${member.address1}" placeholder="우편번호">
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1"></div>
                        <div class="input-text2">
                            <input type="text" name="address2" id="address2" value="${member.address2}" placeholder="주소">
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1"></div>
                        <div class="input-text2">
                            <input type="text" name="address3" id="address3" value="${member.address3}" placeholder="상세주소">
                            <p id="address_test">상세주소를 적어주세요.</p>
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
                    <a href="">회원 탈퇴</a>
                    <input type="submit" value="수정">
                </div>
            </form>
        </div>
    </div>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>