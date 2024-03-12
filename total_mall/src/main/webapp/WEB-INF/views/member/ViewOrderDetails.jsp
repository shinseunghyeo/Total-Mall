<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 상세보기 페이지</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="../resources/css/product/payment.css">
</head>
<body>

    <!-- ---------결제페이지--------- -->
    <div id="PurchaseLine">
        <div class="top-div">
            <p class="bold">주문완료</p>
        </div>
        <div class="up-div">
            <p class="up-div-firstp bold" id="blue-font">주문이 완료되었습니다.감사합니다!</p>
            <input type="button" value="메인 페이지로>" class="main-button bold" onclick="location.href='${pageContext.request.contextPath}/TotalMall.do'">
        </div>
        <div class="down-div">
            <div class="left-div">
                <div class="buyer-div">
                    <p class="bold">받는사람 정보</p>
                </div>
                <div class="buyer-table-div">
                    <table>
                        <tr>
                            <td class="buyer-table-div-td1 bold">이름</td>
                            <td>${member2.member_name}</td>
                        </tr>
                        <tr>
                            <td class="bold">휴대폰</td>
                            <td>${member2.handphone }</td>
                        </tr>
                        <tr>
                            <td class="bold">배송지</td>
                            <td>${member2.address2}  ${member2.address3}</td>
                        </tr>	
                    </table>
                </div>
            </div>
            <div class="right-div">
                <div class="purchase-div">
                    <p class="bold">결제정보</p>
                </div>
                <div class="purchase-table-div">
                    <table>
                        <tr>
                            <td class="purchase-table-div-td1 bold">상품금액</td>
                            <td class="price bold">${totalProductPrice}원</td>
                        </tr>
                        <tr>
                            <td class="bold">할인금액</td>
                            <td class="price bold">${totalDiscount}원</td>
                        </tr>
                        <tr>
                            <td class="bold">배송비</td>
                            <td class="price bold">${2500*orderListSize }원</td>
                        </tr>
                        <tr>
                            <td class="purchase-table-td2 bold">총 결제금액</td>
                            <td class="purchase-table-td2 price bold">${orderList[0].totalprice}원</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <!-- ---------결제페이지--------- -->

</body>
<script type="text/javascript" src="../resources/js/Main/pricenum.js"></script>
</html>