<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기 페이지</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="../resources/css/Member/findPw.css">
    <script type="text/javascript" src="../resources/js/Member/findPw.js"></script>
</head>

<body>
    <%@ include file="../Main/Header2.jsp" %>
    <section>
        <div id="section-wrap">
            <div id="section-1">
                <div id="white-board">
                    <form method="post" action="findPwProcess.do">
                    	<input type="hidden" name="m_idx" value="${memberVO.m_idx}">
                        <div id="white-board-top">
                            <div id="find-pw">
                                <p>비밀번호 재설정</p>
                            </div>
                        </div>
                        <div id="white-board-bottom">
                            <input type="password" name="member_pw" id="input-pw" placeholder="새 비밀번호 8~12자" class="new-pw">
                            <input type="password" name="" id="input-pw2" placeholder="새 비밀번호 확인" class="new-pw"><br>
                            <p id="pw2_test">비밀번호가 일치하지 않습니다.</p>
                            <input type="submit" value="확인" class="find-pw-button2">
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </section>
    <%@ include file="../Main/Footer2.jsp" %>
</body>
</html>