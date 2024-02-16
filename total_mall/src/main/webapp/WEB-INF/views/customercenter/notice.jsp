<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/customercenter/notice.css">
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <!-- ---------고객센터--------- -->
    <div id="CustomerMain">
        <div id="CustomerMainbox">
            <div id="CustomerTitle">
                고객센터
            </div>
            <div id="CustomerContent">
                <input type="text">
            </div>
            <div id="CustomerNum">
                <div>
                    고객센터<span> 0000-0000</span> 문의<br>
                    365일, 24시간 운영
                </div>
            </div>
        </div>
    </div>
    <div id="CustomerList"><br>
        <div id="CustomerListbox">
            <a href="${pageContext.request.contextPath}/customercenter/inquiry.do">문의내역</a>
            <a href="${pageContext.request.contextPath}/customercenter/QnA.do">자주 묻는 질문</a>
            <a href="${pageContext.request.contextPath}/customercenter/voc.do">문의하기</a>
            <a href="${pageContext.request.contextPath}/customercenter/notice.do?service" style="color: coral;">토탈소식</a>
        </div><hr style="opacity: 0.45;">
    </div>
    <!-- ---------토탈소식--------- -->
    <div id="NoticeTitle">
        <h3>공지사항</h3>
    </div>
    <div id="NoticeLine">
        <div id="NoticeMenubox">
            <div id="NoticeMenu">
                <a style="color: #3498db;text-decoration: underline;" href="${pageContext.request.contextPath}/customercenter/notice.do?service">전체</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=custoer">고객서비스</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=event">이벤트당첨</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=transaction">안전거래</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=hazardousgoods">위해상품</a>
            </div>
        </div>
        <div id="NoticeContentbox">
            <h3 id="NoticeContenttitle">전체</h3>
            <div id="NoticeContent">
                <div class="Notcename">
                    <a href="">[공지] 공지사항 페이지</a>
                </div>
                <div class="Notcename">
                    <a href="">[발표] 이벤트 페이지</a>
                </div>
                <div class="Notcename">
                    <a href="">[주의] 거래 페이지</a>
                </div>
                <div class="Notcename">
                    <a href="">위해상품 페이지</a>
                </div>
                <div class="Notcename">
                    <a href="">[공지] 공지사항 페이지</a>
                </div>
                <div class="Notcename">
                    <a href="">[발표] 이벤트 페이지</a>
                </div>
                <div class="Notcename">
                    <a href="">[주의] 거래 페이지</a>
                </div>
                <div class="Notcename">
                    <a href="">위해상품 페이지</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ---------토탈소식--------- -->
    <!-- ---------고객센터--------- -->
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
</html>