<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 회원정보변경</title>
<script src="../resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../resources/js/Member/sellerupdate.js"></script>
</head>
<body>
    <div id="update_info">
        <form name="frm_join" method="post" action="sellerUpdateProcess.do">
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
                        	<input type="hidden" name="m_idx" value="${member.m_idx}">
                        	<input type="hidden" name="member_id" value="${member.member_id}">
                            <input type="text" name="member_id" id="" value="${member.member_id}" placeholder="" disabled>
                            <p>아이디는 8~12자로 영어,특수문자,숫자를 포함</p>
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
                            <input type="text" name="member_name" value="${member.member_name }" placeholder="이름을 적어주세요">
                            <p id="name_test">이름을 적어주세요</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>휴대폰</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="handphone" value="${member.handphone}" placeholder="010-숫자4자리-숫자4자리로 입력해야 합니다">
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

                    <div class="input-text" id="">
                        <div class="input-text1">
                            <p>대표자 명</p>
                        </div>
                        <div class="input-text2">
                        	<input type="hidden" name="representative_name" value="${member.representative_name}">
                            <input type="text" name="representative_name" value="${member.representative_name}" placeholder="" disabled>
                            <p>대표자명이 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>사업자 등록번호</p>
                        </div>
                        <div class="input-text2">
                        	<input type="hidden" name="company_number" value="${member.company_number}">
                            <input type="text" name="company_number" value="${member.company_number}" placeholder="" disabled>
                            <p>사업자 등록번호가 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>상호</p>
                        </div>
                        <div class="input-text2">
                        	<input type="hidden" name="mutual" value="${member.mutual}">
                            <input type="text" name="mutual" value="${member.mutual}" disabled>
                            <p>상호가 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>통신판매번호</p>
                        </div>
                        <div class="input-text2">
                        	<input type="hidden" name="mail_order_number" value="${member.mail_order_number}">
                            <input type="text" name="mail_order_number" value="${member.mail_order_number}" disabled>
                            <p>통신판매번호가 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>계좌</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="account1" id="account" value="${member.account1}">
                            <select name="account2" id="account_select">
                                <option value="nonghyup">농협</option>
                                <option value="kbstar">국민</option>
                                <option value="shinhan">신한은행</option>
                            </select>
                            <p>계좌가 올바르지 않습니다.</p>
                        </div>
                    </div>
                    <div class="input-text">
                        <div class="input-text1">
                            <p>예금주명</p>
                        </div>
                        <div class="input-text2">
                            <input type="text" name="depositor_name" value="${member.depositor_name}">
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>