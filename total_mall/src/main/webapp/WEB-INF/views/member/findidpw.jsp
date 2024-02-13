<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <c:choose>
                            	<c:when test="${not empty msg }">
                            		<c:out value="<p> ${msg} </p>" escapeXml="false" />
                            	</c:when>
                            	<c:otherwise>
                            		<c:out value="<p> 가입시 작성한 이름과 이메일을 적어주세요</p>" escapeXml="false" />
                            	</c:otherwise>
                            </c:choose>
                            <input type="submit" value="아이디 찾기" id="id-submit">
                        </div>
                    </form>
                </div>
                <div id="white-board2">
                    <form method="post" action="findPw.do">
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
                            <c:choose>
                            	<c:when test="${not empty msg2 }">
                            		<c:out value="<p> ${msg2} </p>" escapeXml="false" />
                            	</c:when>
                            	<c:otherwise>
                            		<c:out value="<p> 가입시 작성한 아이디와 이메일을 적어주세요</p>" escapeXml="false" />
                            	</c:otherwise>
                            </c:choose>
                            <input type="submit" value="비밀번호 재설정" id="id-submit">
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </section>
    <%@ include file="../Main/Footer2.jsp" %>
    
</body>
<script type="text/javascript" src="../resources/js/Member/findidpw.js"></script>
</html>