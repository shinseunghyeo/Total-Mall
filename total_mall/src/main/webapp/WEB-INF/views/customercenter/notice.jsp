<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<a href="${pageContext.request.contextPath}/customercenter/write.do" style="text-decoration: none;"><input type="button" value="글등록"style="margin-left: auto;width:150px;height:50px;font-weight:bold"></a>
    </div>
    <div id="NoticeLine">
        <div id="NoticeMenubox">
            <div id="NoticeMenu">
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service">전체</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=customer">고객서비스</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=event">이벤트당첨</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=transaction">안전거래</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=hazardousgoods">위해상품</a>
            </div>
        </div>
        <div id="NoticeContentbox">
            <c:choose>
				<c:when test="${param.service == ''}">
	            <h3 id="NoticeContenttitle">전체</h3>
	       		</c:when>
				<c:when test="${param.service == 'customer'}">
	            <h3 id="NoticeContenttitle">고객서비스</h3>
	       		</c:when>
				<c:when test="${param.service == 'event'}">
	            <h3 id="NoticeContenttitle">이벤트당첨</h3>
	       		</c:when>
				<c:when test="${param.service == 'transaction'}">
	            <h3 id="NoticeContenttitle">안전거래</h3>
	       		</c:when>
				<c:when test="${param.service == 'hazardousgoods'}">
	            <h3 id="NoticeContenttitle">위해상품</h3>
	       		</c:when>
				<c:otherwise>
	            <h3 id="NoticeContenttitle">토탈소식</h3>
	       		</c:otherwise>
			</c:choose>
            <div id="NoticeContent">
				<c:choose>
					<c:when test="${empty noticeList}">
						<tr><td colspan="6">등록된 게시물이 없습니다</td></tr>
					</c:when>
					<c:when test="${param.n_idx == none}">
						<c:forEach var="i" begin="${CCpageNav.startNum}" end="${CCpageNav.endNum}" varStatus="vs">
							<c:if test="${not empty noticeList[vs.count-1]}"><!-- noticeList에 저장된 데이터가 있는 경우 출력-->
				                <div class="Notcename">
				                    <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=${noticeList[vs.count-1].service}&n_idx=${noticeList[vs.count-1].n_idx}"=>${noticeList[vs.count-1].title}</a>
				                </div>
							</c:if>
						</c:forEach>
					</c:when>
					<c:otherwise>
		                <div class="Notceviews" style="height:600px"><br>
							<h1 style="margin:0">${noticeList[0].title}</h1>
						<fmt:formatDate value="${noticeList[0].post_date}"
                                    pattern="yyyy-MM-dd HH:mm:ss" /><br><br>
                                    <c:if test="${not empty noticeList[0].savefile_name}">
                                    <img style="width: 400px; height: 200px" src="../resources/uploads/${noticeList[0].savefile_name}">
                                    </c:if><br>
							${noticeList[0].content} <br>
		                </div>
		                <div style="text-align: right;">
		                							<!-- 수정하기, 삭제하기 버튼은 회원이면서 본인이 작성한 게시글일 때 화면에 출력되도록 함 -->
							<input type="button" value="수정하기" onclick="location.href='update.do?n_idx=${noticeList[0].n_idx}'">
							<input type="button" value="삭제하기" onclick="deletePost()">
							<input type="button" value="목록보기" onclick="location.href='notice.do'" >
						</div>
					</c:otherwise>
				</c:choose>
				<c:if test="${not empty noticeList}" >
					<table style="margin: 0 auto;">
					    <tr>
					        <td colspan="6" id="td_paging">
					            <%@ include file="CCpaging.jsp" %>
					        </td>
					    </tr>
					</table>
				</c:if><br>
            </div>
        </div>
    </div>
    <!-- ---------토탈소식--------- -->
    <!-- ---------고객센터--------- -->
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
<script type="text/javascript" src="../resources/js/customercenter/notice.js"></script>
</html>