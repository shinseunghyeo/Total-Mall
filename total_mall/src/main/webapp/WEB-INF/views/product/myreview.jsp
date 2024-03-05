<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>나의 리뷰</title>
</head>
<body>
    <!-- 리뷰 테스트 코드 -->
    <div id="nav_back"></div>

    <div id="DetailsLine">
        <div id="content">
            <h1>나의 상품평가</h1>

            <table>
                <c:choose>
                    <c:when test="${empty myreview}">
                        <tr>
                            <td colspan="6">등록된 상품평이 없습니다</td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${myreview}" var="review" varStatus="vs" begin="0" end="19">
                            <tr>
                                <td colspan="6">
                                    <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${review.p_idx}">
                                        ${review.member_name}<br>
                                        <c:forEach begin="1" end="5" varStatus="star">
                                            <c:choose>
                                                <c:when test="${star.index <= review.star}">
                                                    <span style="color: orange">★</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span style="color: orange">☆</span>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        (${review.star})<br>
                                        <fmt:formatDate value="${review.post_date}" pattern="yyyy-MM-dd HH:mm:ss" /><br>
                                        <c:if test="${not empty review.originfile_name}">
                                            <img width="50" height="50" src="../resources/uploads/${review.savefile_name}">
                                        </c:if>
                                        <c:out value="${review.content}" escapeXml="true" />
                                    </a>
                                    <hr>
                                </td>
                            </tr>
                             
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </table>
        </div>
    </div>
    <!-- 리뷰 테스트 코드 -->
</body>
</html>
