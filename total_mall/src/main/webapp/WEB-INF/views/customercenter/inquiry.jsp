<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/customercenter/inquiry.css">
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
            <a href="${pageContext.request.contextPath}/customercenter/inquiry.do" style="color: coral;">문의내역</a>
            <a href="${pageContext.request.contextPath}/customercenter/QnA.do">자주 묻는 질문</a>
            <a href="${pageContext.request.contextPath}/customercenter/voc.do">문의하기</a>
            <a href="${pageContext.request.contextPath}/customercenter/notice.do?service">토탈소식</a>
        </div><hr style="opacity: 0.45;">
    </div><br>
    <!-- ---------문의내역--------- -->
    <div id="InquiryLine">
        <div id="InquiryTitlebox">
            <div id="InquiryTitle">
                <h1>문의사항</h1>
            </div>
            <div class="UserTitele">
			    <c:choose>
					<c:when test="${empty inquiry}">
						<h4>최근 문의 내용이 없습니다.</h4>
					</c:when>
					<c:otherwise>
						<c:forEach var="i" begin="1" end="5">
						<c:if test="${not empty inquiry[i-1]}">
						<h2>${inquiry[i-1].voc_type}</h2><hr>
						</c:if>
						</c:forEach>
					</c:otherwise>
				</c:choose>
            </div>
        </div>
        <div id="InquiryContentbox">
            <div id="InquiryContent">
                <h1>문의내용</h1>
            </div>
            <div class="UserTitele">
			    <c:choose>
					<c:when test="${empty inquiry}">
					<h4>최근 문의 내용이 없습니다.</h4>
					</c:when>
					<c:otherwise>
						<c:forEach var="i" begin="1" end="5">
							<c:if test="${not empty inquiry[i-1]}">
								<h2>${inquiry[i-1].title}</h2><hr>
							</c:if>
						</c:forEach>
					</c:otherwise>
				</c:choose>
            </div>
        </div>
    </div>
    <!-- ---------문의내역--------- -->
    <!-- ---------고객센터--------- -->
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
</html>