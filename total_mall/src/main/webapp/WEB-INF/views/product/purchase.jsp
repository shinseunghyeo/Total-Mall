<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/product/purchase.css">
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <!-- ---------결제페이지--------- -->
    <form method="get" action="payment.do">
    <div id="PurchaseLine">
        <div id="Purchasepage"><br>
            <h2>구매자 정보</h2>
            <table style="border-collapse: collapse;" border="1">
                <tr>
                    <td>이름</td>
                    <td>${member.member_name}</td>
                </tr>
                <tr>
                    <td>이메일</td>
                    <td>${member.email}</td>
                </tr>
                <tr>
                    <td>휴대폰 번호</td>
                    <td>${member.handphone} <button>수정</button></td>
                </tr>
            </table>
        </div>
        <div id="Purchasepage"><br>
            <h2>받는 사람 정보</h2>
            <table border="1">
                <tr>
                    <td>이름</td>
                    <td>${member.member_name}</td>
                </tr>
                <tr>
                    <td>배송주소</td>
                    <td>${member.address2}</td>
                </tr>
                <tr>
                    <td>휴대폰 번호</td>
                    <td>${member.handphone}<button>수정</button></td>
                </tr>
                <tr>
                    <td>요청사항</td>
                    <td>문앞<button>변경</button></td>
                </tr>
            </table>
        </div>
		<!--         <div id="Purchasepage"><br>
            <h2>배송 2건</h2>
            <table border="1">
                <tr>
                    <td>내일 도착예정</td>
                </tr>
                <tr>
                    <td>우유 1개</td>
                </tr>
                <tr>
                    <td>빵 1개</td>
                </tr>
            </table>
        </div> -->
        <c:set var="totalOrderAmount" value="0" />
        <c:choose>
        	
        	<c:when test="${product.c_quantity == 0 }">
        		<c:set var="totalOrderAmount" value="${product.total_product_price}" />
        		<input type="hidden" name="direct" value="1">
        		<input type="hidden" name="totalprice" value="${totalOrderAmount + product.totalDelivery - product.totalDiscount}">	
        	</c:when>
        	
        	<c:otherwise>
        		<c:set var="totalOrderAmount" value="${totalOrderAmount + product.c_quantity*product.price}" />
        		<input type="hidden" name="direct" value="0">
        		<input type="hidden" name="totalprice" value="${totalOrderAmount + product.totalDelivery - product.totalDiscount}">
        		<input type="hidden" name="p_idx" value="${product.p_idx }">
        		<input type="hidden" name="c_quantity" value="${product.c_quantity }">
        	</c:otherwise>
        </c:choose>
        
        <input type="hidden" name="m_idx" value="${member.m_idx}">
        
        <input type="hidden" name="pay" value="a">
        <input type="hidden" name="requests" value="a">
		
		
        <div id="Purchasepage"><br>
            <h2>결제 정보</h2>
            <table border="1">
                <tr>
                    <td>총상품가격</td>
                    <td>${totalOrderAmount} 원</td>
                </tr>
                <tr>
                	<td>할인금액</td>
                	<td>${product.totalDiscount}</td>
                </tr>
                <tr>
                    <td>배송비</td>
                    <td>${product.totalDelivery }</td>
                </tr>
                <tr>
                    <td>총결제금액</td>
                    <td>${totalOrderAmount + product.totalDelivery - product.totalDiscount}원</td>
                </tr>
                <tr>
                    <td>결제계좌</td>
                    <td>
                        계좌이체 - 은행명<br>
                        쿠페이 머니 - 사이트 캐시<br>
                        신용/체크카드 - 카드명,할부<br>
                        법인카드 - 카드명, 할부 <br>
                        휴대폰 - 휴대폰번호<br>
                        무통장입금 -은행명
                    </td>
                </tr>
            </table>
        </div>
        <div id="Purchase"><br>
        	<input type="submit" value="결제하기">
	        <button>취소</button>
        </div><br>

    </div>
    </form>
    <!-- ---------결제페이지--------- -->
    <%@include file="../Main/Footer2.jsp" %>
</body>
</html>