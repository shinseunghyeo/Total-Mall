<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기 페이지</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="../resources/css/Member/findid.css">
</head>

<body>
    <%@ include file="../Main/Header2.jsp" %>
    <section>
        <div id="section-wrap">
            <div id="section-1">
                <div id="white-board">
                    <form action="login_v1.1.html">
                        <div id="white-board-top">
                            <div id="find-id">
                                <p>아이디 찾기</p>
                            </div>
                        </div>
                        <div id="white-board-bottom">
                            <div id="id-top">
                                <p>${memberVO.member_name }</p>님의 정보와 일치하는 아이디 목록입니다.
                            </div>
                            <div id="id-bottom">
                                <p>${memberVO.member_id }</p>
                            </div>
                            <a href="${pageContext.request.contextPath}/member/login.do">
                            <input type="button" value="로그인 하러 가기" class="find-id-button2">
                            </a>
                            <a href="${pageContext.request.contextPath}/member/findidpw.do">
                            <input type="button" value="비밀번호 재설정" class="find-id-button2">
                            </a>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </section>
    <%@ include file="../Main/Footer2.jsp" %>
</body>
</html>