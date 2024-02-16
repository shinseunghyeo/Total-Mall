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
    <form>
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
        <div id="Purchasepage"><br>
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
        </div>
        <c:set var="totalOrderAmount" value="0" />
        <c:forEach var="i" begin="1" end="5">
        	<c:set var="totalOrderAmount" value="${totalOrderAmount + orderList[i-1].price*orderList[i-1].c_quantity}" />	
        </c:forEach>
        
        <div id="Purchasepage"><br>
            <h2>결제 정보</h2>
            <table border="1">
                <tr>
                    <td>총상품가격</td>
                    <td>${totalOrderAmount} 원</td>
                </tr>
                <tr>
                    <td>배송비</td>
                    <c:set var="totalDelivery" value="${orderList.size() * 2500 }" />
                    <td>${totalDelivery }</td>
                </tr>
                <tr>
                    <td>총결제금액</td>
                    <td>${totalOrderAmount + totalDelivery}원</td>
                </tr>
                <tr>
                    <td>결제방법</td>
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
            <button>결제하기</button>
            <button>취소</button>
        </div><br>

    </div>
    </form>
    <!-- ---------결제페이지--------- -->
    <%@include file="../Main/Footer2.jsp" %>
</body>
</html>