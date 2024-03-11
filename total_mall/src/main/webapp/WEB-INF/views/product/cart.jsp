<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니 페이지</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="../resources/css/product/cart.css">
</head>

<body>
    <%@ include file="../Main/Header2.jsp" %>
    <section>
        <div id="white-board">
            <div id="cart-header">
                <h1 class="bold">장바구니</h1>
            </div>
            <div id="cart-middle">
                <div id="left-div">
                    <div id="list-div">
                        <p></p>
                        <p class="bold">상품사진</p>
                        <p class="bold">상품이름</p>
                        <p class="bold">수량</p>
                        <p class="bold">가격</p>
                        <p></p>
                    </div>
                    
                    <input type="hidden" name="m_idx" value="${member.m_idx }">
                    <c:set var="totalOrderAmount" value="0" />
                    <c:set var="totalDiscount" value="0" />
                    <c:set var="totalDelivery" value="${cartList.size() * 2500 }" />
                    <c:choose>
                    	<c:when test="${empty cartList }">
                    		<p class="no-cart">  장바구니에 담긴 상품이 없습니다.<br><br>상품을 추가해주세요</p>
                    	</c:when>
                    	<c:otherwise>
	                    	<c:forEach var="i" begin="1" end="5" varStatus="vs">
	                    		<c:if test="${not empty cartList[i-1] }">
	                    			<div class="cart_item">
				                        <div class="cart_item_seller">
				                            <p class="bold">${i}</p>
				                        </div>
				                        <div style="display: flex;width: 100%;">
				                            <div class="cart_item-2">
				                                <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${cartList[vs.count-1].p_idx}"><img src="../resources/uploads/${cartList[i-1].save_file_name1}" alt="#"></a>
				                            </div>
				                            <div class="cart_item-3">
				                                <p class="bold"><a class="bold" href="${pageContext.request.contextPath}/product/item.do?p_idx=${cartList[vs.count-1].p_idx}">${cartList[i-1].product_name }</a></p>
				                            </div>
				                            <form id="cart_item-4-form" method="get" action="cartQuantityUpdate.do">
					                            <div class="cart_item-4">
					                            	<input type="hidden" name="m_idx" value="${member.m_idx }">
					                            	<input type="hidden" name="p_idx" value="${cartList[i-1].p_idx }">
					                            	<input type="text" name="c_quantity" id="" value="${cartList[i-1].c_quantity }">
	                                				<input type="submit" value="변경" style="width: 60px;">
	                                			</div>
				                            </form>
				                            <div class="cart_item-5">
				                                <div>
				                                    <p class="price bold">${cartList[i-1].price*cartList[i-1].c_quantity }</p>
				                                </div>
				                                <div>
				                                	<form class="deleteForm" id="deleteForm-${i}" method="get" action="cartDelete.do">
					                                	<input type="hidden" name="m_idx" value="${member.m_idx }">
						                            	<input type="hidden" name="p_idx2" value="${cartList[i-1].p_idx }">
				                                    	<input type="button" value="X" onclick="deleteCart(${i})">
				                                    </form>
				                                </div>
				                            </div>
				                        </div>
				                        <div class="cart_item_price">
				                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
				                                <div>
				                                    <p class="bold">상품금액</p>
				                                </div>
				                                <div style="text-align: center;">
				                                    <p class="price">${cartList[i-1].price*cartList[i-1].c_quantity }원</p>
				                                </div>
				                            </div>
				                            <div class="cart_item_price-2">
				                                <p>-</p>
				                            </div>
				                            <div class="cart_item_price-1">
				                                <div>
				                                    <p class="price bold">할인금액</p>
				                                </div>
				                                <div class="discount-div">
				                                    <p class="price">${(cartList[i-1].price*cartList[i-1].c_quantity/100*(cartList[i-1].discount_rate)).intValue() }원</p>
				                                </div>
				                            </div>
				                            <div class="cart_item_price-2">
				                                <p>+</p>
				                            </div>
				                            <div class="cart_item_price-1">
				                                <div>
				                                    <p class="bold">배송비</p>
				                                </div>
				                                <div>
				                                    <p>2,500원</p>
				                                </div>
				                            </div>
				                            <div class="cart_item_price-2">
				                                <p>=</p>
				                            </div>
				                            <div class="cart_item_price-1">
				                                <div>
				                                    <p class="bold">주문금액</p>
				                                </div>
				                                <div>
				                                    <p class="price">${(cartList[i-1].price*cartList[i-1].c_quantity)-(cartList[i-1].price*cartList[i-1].c_quantity/100*(cartList[i-1].discount_rate)).intValue()+2500 }원</p>
				                                </div>
				                            </div>
				                            
				                        </div>
				                    </div>
				                    <c:set var="totalOrderAmount" value="${totalOrderAmount + (cartList[i-1].price*cartList[i-1].c_quantity)}" />
				                    <c:set var="totalDiscount" value="${totalDiscount + (cartList[i-1].price*cartList[i-1].c_quantity/100*(cartList[i-1].discount_rate)).intValue()}" />
	                    		</c:if>
	                    	</c:forEach>
                    		
                    	</c:otherwise>
                    </c:choose>

                    
                </div>
                
                <form id="purchase-form" method="get" action="purchase.do">
                	<input type="hidden" name="total_product_price" value="${totalOrderAmount}">
                	<input type="hidden" name="total_delevery_fee" value="${totalDelivery}">
                	<input type="hidden" name="total_price" value="${totalOrderAmount-totalDiscount+totalDelivery }">
                	<input type="hidden" name="p_idx" value="1">
                	<input type="hidden" name="m_idx" value="${member.m_idx }">
                	<input type="hidden" name="c_quantity" value="0">
                	<input type="hidden" name="totalDiscount" value="${totalDiscount }">
                	<input type="hidden" name="totalDelivery" value="${totalDelivery }">
	                <div id="right-div">
	                    <div id="right_header">
	                        <h1 class="bold">결제 예정금액</h1>
	                    </div>
	                    <div id="right_first_div">
	                        <div>
	                            <p class="bold">상품금액</p>
	                        </div>
	                        <div>
	                            <h2 class="price bold">${totalOrderAmount }원</h2>
	                        </div>
	                    </div>
	                    <div id="right_second_div">
	                        <div>
	                            <p class="bold red">할인금액</p>
	                        </div>
	                        <div> 
	                            <h2 class="price bold red">${totalDiscount }원</h2>
	                        </div>
	                    </div>
	                    <div id="right_third_div">
	                        <div>
	                            <p class="bold">배송비</p>
	                        </div>
	                        <div>
	                            <h2 class="price bold">${totalDelivery}원</h2>
	                        </div>
	                    </div>
	                    <div id="right_fourth_div">
	                        <div>
	                            <p class="bold">합계</p>
	                        </div>
	                        <div>
	                            <h2 class="price bold">${totalOrderAmount-totalDiscount+totalDelivery }원</h2>
	                        </div>
	                    </div>
	                    <div id="right_fifth_div">
	                        <input type="submit" value="결제" class="bold">
	                    </div>
	                </div>
                </form>
            </div>
            <input type="hidden">
        
        </div>
    </section>
    <%@ include file="../Main/Footer2.jsp" %>
    
</body>
<script>
/* 장바구니 아이템 삭제 스크립트 */
function deleteCart(i) {
const ans = confirm("정말로 삭제하겠습니까?");

if (ans) {
	console.log(`Deleting item ${i}`);
    // 각 삭제 버튼의 인덱스를 사용하여 해당 폼을 동적으로 선택하여 제출
    document.getElementsByClassName(`deleteForm`)[i - 1].submit();
}
}
/* 장바구니 아이템 삭제 스크립트 */
</script>
<script type="text/javascript" src="../resources/js/Main/pricenum.js"></script>
<script type="text/javascript" src="../resources/js/Product/cart.js"></script>
</html> 