<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 페이지</title>
<link rel="stylesheet" href="../resources/css/product/purchase.css">
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <!-- ---------결제페이지--------- -->
    <form method="get" action="payment.do">
    <div id="PurchaseLine">
        <div id="Purchasepage"><br>
            <h2>구매자 정보</h2>
            <table>
                <tr class="tr1">
                    <td class="td1">이름</td>
                    <td>${member.member_name}</td>
                </tr>
                <tr class="tr2">
                    <td class="td1">이메일</td>
                    <td>${member.email}</td>
                </tr>
                <tr class="tr2">
                    <td class="td1">휴대폰 번호</td>
                    <td>${member.handphone}</td>
                </tr>
            </table>
        </div>
        <div id="Purchasepage"><br>
            <h2>받는 사람 정보</h2>
            <table>
                <tr class="tr1">
                    <td class="td1">이름</td>
                    <td>${member.member_name}</td>
                </tr>
                <tr class="tr2">
                    <td class="td1">배송주소</td>
                    <td>${member.address2}  ${member.address3}</td>
                </tr>
                <tr class="tr2">
                    <td class="td1">휴대폰 번호</td>
                    <td>${member.handphone}</td>
                </tr>
                <tr class="tr2">
                    <td class="td1">요청사항</td>
                    <td>
                        <select name="requests" class="request">
                            <option value="1">부재시 문 앞에 놓아주세요</option>
                            <option value="2">부재시 경비실에 맡겨주세요</option>
                            <option value="3">도착시 전화나 문자를 보내주세요</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>
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
        <input type="hidden" name="total_product_price" value="${totalOrderAmount}">
        <input type="hidden" name="total_discount" value="${product.totalDiscount}">
        <input type="hidden" name="total_delivery" value="${product.totalDelivery}">
        
		
		
        <div id="Purchasepage"><br>
            <h2>결제 정보</h2>
            <table>
                <tr class="tr1">
                    <td class="td1">총상품가격</td>
                    <td>${totalOrderAmount} 원</td>
                </tr>
                <tr class="tr2">
                	<td class="td1">할인금액</td>
                	<td>${product.totalDiscount}</td>
                </tr>
                <tr class="tr2">
                    <td class="td1">배송비</td>
                    <td>${product.totalDelivery }</td>
                </tr>
                <tr class="tr2">
                    <td class="td1 payment">총결제금액</td>
                    <td class="payment">${totalOrderAmount + product.totalDelivery - product.totalDiscount}원</td>
                </tr>
                <tr class="tr2">
                    <td class="td1">결제계좌</td>
                    <td>
                        <input type="text" name="pay_account" id="" value="" class="purchase-account1">
                        <select name="pay_account_bank" id="" class="purchase-account2">
                            <option value="NongHyup">농협</option>
                            <option value="Shinhan">신한</option>
                            <option value="Gukmin">국민</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>
        <div id="Purchase"><br>
            <input type="submit" value="결제하기" class="submit-button">
        </div><br>

    </div>
    </form>
    <!-- ---------결제페이지--------- -->
    <%@include file="../Main/Footer2.jsp" %>
</body>
</html>