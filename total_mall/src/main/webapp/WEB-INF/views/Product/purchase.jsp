<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div id="Purchasepage"><br>
            <h2>결제 정보</h2>
            <table border="1">
                <tr>
                    <td>총상품가격</td>
                    <td>99,999원</td>
                </tr>
                <tr>
                    <td>배송비</td>
                    <td>무료</td>
                </tr>
                <tr>
                    <td>총결제금액</td>
                    <td>99,999원</td>
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