<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기업회원 회원가입 페이지2</title>
    <link rel="stylesheet" href="../resources/css/Member/sellerJoin2.css">
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="../resources/js/Member/sellerJoin2.js"></script>
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
                <form name="frm_join" method="post" action="sellerJoinProcess3.do">
                	<input type="hidden" name="member_id" value="${memberVO.member_id}" />
                	<input type="hidden" name="member_pw" value="${memberVO.member_pw}" />
                	<input type="hidden" name="member_name" value="${memberVO.member_name}" />
                	<input type="hidden" name="handphone" value="${memberVO.handphone}" />
                	<input type="hidden" name="email" value="${memberVO.email}" />
                	<input type="hidden" name="address1" value="${memberVO.address1}" />
                	<input type="hidden" name="address2" value="${memberVO.address2}" />
                	<input type="hidden" name="address3" value="${memberVO.address3}" />
                	<input type="hidden" name="grade" value="9" />
                	
                    <div id="white-board">
                        <div id="white-board-header">
                            <div>
                                <p>회원정보를 모두 입력해주셔야 회원가입이 완료가 됩니다</p>
                            </div>
                        </div>
                        <div class="input-text" id="input-top">
                            <div class="input-text1">
                                <p>대표자 명</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="representative_name" id="" placeholder="">
                                <p id="representative_name_test">대표자명이 올바르지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>사업자 등록번호</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="company_number" id="" placeholder="">
                                <p id="company_number_test">사업자 등록번호가 올바르지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>상호</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="mutual" id="">
                                <p id="mutual_test">상호가 올바르지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>통신판매번호</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="mail_order_number" id="">
                                <p id="mail_order_number_test">통신판매번호가 올바르지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>계좌</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="account1" id="account">
                                <select name="account2" id="account_select">
                                    <option value="nonghyup">농협</option>
                                    <option value="kbstar">국민</option>
                                    <option value="shinhan">신한은행</option>
                                </select>
                                <p id="account_test">계좌가 올바르지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>예금주명</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="depositor_name" id="">
                                <p id="depositor_name_test">예금주명이 맞지 않습니다</p>
                            </div>
                        </div>
                    </div>
                    <div id="button">
                        <input type="button" value="이전">
                        <input type="submit" value="가입" id="next-button">
                    </div>
                </form>
            </div>

        </div>
    </section>
    
</body>

</html>