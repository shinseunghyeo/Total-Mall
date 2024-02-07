<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="../resources/css/Member/login.css">
    <script type="text/javascript" src="../resources/js/Member/login.js"></script>
</head>
<body>
    <%@ include file="../Main/Header2.jsp" %>
        <section>
            <div id="section-wrap">
                <div class="white-board" id="buyerSection">
                    <form method="post" action="loginProcess.do">
                        <div id="logo2">
                            <img src="../resources/img/Headerimg/사이트로고.png" alt="#">
                        </div>
                        <div id="select">
                            <div class="buyer">
                                <p>
                                    로그인 페이지
                                </p>
                            </div>
                        </div>
                        <div id="id">
                            <input type="text" name="member_id" id="text-id" placeholder="아이디">
                        </div>
                        <div id="pw">
                            <input type="password" name="member_pw" id="text-pw" placeholder="비밀번호">
                        </div>
                        <div id="another">
                            <div id="id-check">
                                <input type="checkbox" name="" id="id-checkbox">
                                <p>아이디 저장</p>
                            </div>
                            <div id="find-id">
                                <a href="${pageContext.request.contextPath}/member/join.do">회원가입</a>
                                <a href="find_id,pw.html">아이디/비밀번호 찾기</a>
                            </div>
                        </div>
                        <div id="question">
                            
                        </div>
                        <div id="loginbox">
                            <input type="submit" value="로그인">
                        </div>
                        <div id="event">
                            <img src="../resources/img/MainEventimg/이벤트00.jpg" alt="#">
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <footer>
            <div id="footer">

            </div>
        </footer>
    </div>
</body>
<script>
	
</script>
</html>