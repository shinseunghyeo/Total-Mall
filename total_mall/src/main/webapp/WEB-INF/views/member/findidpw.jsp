<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디/비밀번호 찾기 페이지</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="../resources/css/Member/findidpw.css">
</head>

<body>
    <%@ include file="../Main/Header2.jsp" %>
    <section>
        <div id="section-wrap">
            <div id="section-1">
                <div id="white-board">
                    <form method="post" action="findId.do">
                        <div id="white-board-top">
                            <div id="find-id">
                                <p onclick="userTypeChange('findId')">아이디 찾기</p>
                            </div>
                            <div id="find-pw">
                                <p onclick="userTypeChange('findPw')">비밀번호 재설정</p>
                            </div>
                        </div>
                        <div id="white-board-bottom">
                            <input type="text" name="member_name" id="input-id" placeholder="이름" class="input">
                            <input type="text" name="email" id="" placeholder="이메일" class="input">
                            <p>이메일 규칙에 맞춰서 적어주세요</p>
                            <input type="submit" value="아이디 찾기" id="id-submit">
                        </div>
                    </form>
                </div>
                <div id="white-board2">
                    <form action="find_pw2.html">
                        <div id="white-board-top">
                            <div id="find-id2">
                                <p onclick="userTypeChange('findId')">아이디 찾기</p>
                            </div>
                            <div id="find-pw2">
                                <p onclick="userTypeChange('findPw')">비밀번호 재설정</p>
                            </div>
                        </div>
                        <div id="white-board-bottom">
                            <input type="text" name="member_id" id="input-id" placeholder="아이디" class="input">
                            <input type="text" name="email" id="" placeholder="이메일" class="input">
                            <p>아이디, 이메일 규칙에 맞춰서 적어주세요</p>
                            <input type="submit" value="비밀번호 재설정" id="id-submit">
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </section>
    
</body>
<script type="text/javascript" src="../resources/js/Member/findidpw.js"></script>
</html>