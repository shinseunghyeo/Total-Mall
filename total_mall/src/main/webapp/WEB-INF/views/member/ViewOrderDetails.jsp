<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 상세보기 페이지</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="../resources/css/product/payment.css">
    <style type="text/css">
    	#order_wrap {
	    -webkit-box-shadow: 0 2px 10px 1px rgba(0, 0, 0, 0.5);
	    box-shadow: 0 2px 10px 1px rgba(0, 0, 0, 0.5);
	    /* margin: 1rem 13% 0 13%; */
	    background-color: white;
	    margin: 1%;
	    padding: 2%;
	    width: 94%;
	}

    .new_order {
	    /* width: 96%;
	    padding: 2%; */
    }

    .new-menu {
        background-color: white;
	    border-radius: 5px;
	    margin: 15px 47px;
	    width: 91%;
	    height: 30px;
	    display: flex;
	    border: 1px solid black;
    }

    .p-1 {
        width: 8%;
        margin: auto 10px;
    }

    .p-2 {
        width: 40%;
    }

    .p-3 {
        width: 13%;
    }

    .p-4 {
        width: 5%;
    }

    .p-5 {
        width: 12%;
    }

    .p-6 {
        width: 20%;
    }

    .p-1 p,
    .p-2 p,
    .p-3 p,
    .p-4 p,
    .p-5 p,
    .p-6 p {
        margin: 0;
        line-height: 30px;
        font-weight: 800;
        font-family: "G-market-Bold";
        text-align: center;
    }

    .new-item {
	    background-color: white;
	    border-radius: 5px;
	    margin: 15px 47px;
	    width: 91%;
	    height: 100px;
	    border: 1px solid black;
	    display: flex;
	    flex-direction: row;
	    align-items: center;
	}
	
	.new-sort{
	width: 10%
	}
    .new-img-div {
    width: 10%;
    height: 100%;
    margin: 10px;
    }

	.new-img-div img {
	cursor: pointer;
    width: 94%;
    height: 94%;
    margin: 3%;
	}
    .new-name {
        width: 30%;
    }

    .new-name p {
        margin-right: 5px;
    }

    .new-date {
        width: 13%;
	    text-align: center;
	    font-size: 1rem;
	    line-height: 10px;
	    font-weight: 800;
	    word-wrap: break-word;
	    white-space: pre-wrap;
	    line-height: 1.25rem;
    }

    .new-name p a {
        text-decoration: none;
        color: black;
    }

    .new-name p a:hover {
        text-decoration: underline;
    }

    .new-date p,
    .new-quantity p,
    .new-price p {
        margin: 0;
    }

    .new-quantity {
        width: 5%;
        text-align: center;
        line-height: 100px;
        font-weight: 800;
    }

    .new-price {
        width: 12%;
        text-align: center;
        line-height: 100px;
        font-weight: 800;
    }

    .new-price p {
        font-family: "G-market-Bold";
    }

    .new-another {
        width: 20%;
        text-align: center;
    }

    .new-another-button {
        width: 80%;
        margin-top: 8px;
        height: 23px;
        border: 0.5px solid gray;
        border-radius: 5px;
        color: white;
        background-color: rgb(52, 152, 219);
        font-weight: 600;
    }

    .new-another-button:hover {
        cursor: pointer;
    }
    
    
    </style>
</head>
<body>

    <!-- ---------결제페이지--------- -->
    <div id="PurchaseLine">
        <div class="top-div">
            <p class="bold">주문 상세보기</p>
        </div>
        
        <div class="new_order">
        <div class="new-menu">
					<div class="p-1">
						<p>주문번호</p>
					</div>
					<div class="p-2">
						<p>상품명</p>
					</div>
					<div class="p-3">
						<p>주문일</p>
					</div>
					<div class="p-4">
						<p>수량</p>
					</div>
					<div class="p-5">
						<p>가격</p>
					</div>
					<div class="p-6">
						<p>배송정보</p>
					</div>
				</div>
        <c:forEach begin="1" end="${orderList.size()}" varStatus="vs">
					<div class="new-item">
						<div class="new-sort">
							${orderList[vs.count-1].o_idx}<br>
							${p_or_notMap[orderList[vs.count-1].payment_or_not.toString()]}
						</div>
						<div class="new-img-div">
							<c:if test="${not empty orderList[vs.count-1].save_file_name1}">
								<img
									src="../resources/uploads/${orderList[vs.count-1].save_file_name1}"
									alt="${orderList[vs.count-1].product_name}">
							</c:if>
						</div>
						<div class="new-name">
							<p>
								<a
									href="${pageContext.request.contextPath}/product/item.do?p_idx=${orderList[vs.count-1].p_idx}">${orderList[vs.count-1].product_name}

								</a>
							</p>
						</div>
						<div class="new-date">
							<p>
								<small><fmt:formatDate
									value="${orderList[vs.count-1].o_update_time}"
									pattern="yyyy-MM-dd HH:mm:ss" /></small>
							</p>
						</div>
						<div class="new-quantity">
							<p>${orderList[vs.count-1].c_quantity}</p>
						</div>
						<div class="new-price">
							<p>
								<c:if test="${not empty orderList[vs.count-1].price}">
									<fmt:formatNumber
										value="${(orderList[vs.count-1].price - (orderList[vs.count-1].price * (orderList[vs.count-1].discount_rate * 0.01))) * orderList[vs.count-1].c_quantity}"
										pattern="#,##0" var="formattedPrice" />
									<c:out value="${formattedPrice}원" />
								</c:if>
							</p>
						</div>
						<div class="new-another">
						${parcel_companyMap[orderList[vs.count-1].parcel.toString()]}<br>
						${orderList[vs.count-1].tracking_number}
						
						</div>
					</div>
				</c:forEach>	
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