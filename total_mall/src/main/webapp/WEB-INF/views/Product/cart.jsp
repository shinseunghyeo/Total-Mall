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
                <h1>장바구니</h1>
            </div>
            <div id="cart-middle">
                <div id="left-div">
                    <div id="list-div">
                        <p></p>
                        <p>상품사진</p>
                        <p>상품이름</p>
                        <p>수량</p>
                        <p>가격</p>
                        <p></p>
                    </div>
                    
                    <input type="hidden" name="m_idx" value="${member.m_idx }">
                    <c:set var="totalOrderAmount" value="0" />
                    <c:set var="totalDiscount" value="0" />
                    <c:set var="totalDelivery" value="${cartList.size() * 2500 }" />
                    <c:choose>
                    	<c:when test="${empty cartList }">
                    		<p>장바구니에 담긴 상품이 없습니다.</p>
                    	</c:when>
                    	<c:otherwise>
	                    	<c:forEach var="i" begin="1" end="5" varStatus="vs">
	                    		<c:if test="${not empty cartList[i-1] }">
	                    			<div class="cart_item">
				                        <div class="cart_item_seller">
				                            <p>${i}</p>
				                        </div>
				                        <div style="display: flex;width: 100%;">
				                            <div class="cart_item-2">
				                                <img src="Mallimg/고구마.jpg" alt="">
				                            </div>
				                            <div class="cart_item-3">
				                                <p><a href="">${cartList[i-1].product_name }</a></p>
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
				                                    <p>${cartList[i-1].price*cartList[i-1].c_quantity }</p>
				                                </div>
				                                <div>
				                                	<form id="deleteForm" method="get" action="cartDelete.do">
					                                	<input type="hidden" name="m_idx" value="${member.m_idx }">
						                            	<input type="hidden" name="p_idx2" value="${cartList[i-1].p_idx }">
				                                    	<input type="button" value="X" onclick="deleteCart()">
				                                    </form>
				                                </div>
				                            </div>
				                        </div>
				                        <div class="cart_item_price">
				                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
				                                <div>
				                                    <p>상품금액</p>
				                                </div>
				                                <div style="text-align: center;">
				                                    <p>${cartList[i-1].price*cartList[i-1].c_quantity }원</p>
				                                </div>
				                            </div>
				                            <div class="cart_item_price-2">
				                                <p>-</p>
				                            </div>
				                            <div class="cart_item_price-1">
				                                <div>
				                                    <p>할인금액</p>
				                                </div>
				                                <div class="discount-div">
				                                    <p>${(cartList[i-1].price*cartList[i-1].c_quantity/100*(cartList[i-1].discount_rate)).intValue() }원</p>
				                                </div>
				                            </div>
				                            <div class="cart_item_price-2">
				                                <p>+</p>
				                            </div>
				                            <div class="cart_item_price-1">
				                                <div>
				                                    <p>배송비</p>
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
				                                    <p>주문금액</p>
				                                </div>
				                                <div>
				                                    <p>${(cartList[i-1].price*cartList[i-1].c_quantity)-(cartList[i-1].price*cartList[i-1].c_quantity/100*(cartList[i-1].discount_rate)).intValue()+2500 }원</p>
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
	                        <h1>결제 예정금액</h1>
	                    </div>
	                    <div id="right_first_div">
	                        <div>
	                            <p>상품금액</p>
	                        </div>
	                        <div>
	                            <h2>${totalOrderAmount }원</h2>
	                        </div>
	                    </div>
	                    <div id="right_second_div">
	                        <div>
	                            <p>할인금액</p>
	                        </div>
	                        <div>
	                            <h2>${totalDiscount }원</h2>
	                        </div>
	                    </div>
	                    <div id="right_third_div">
	                        <div>
	                            <p>배송비</p>
	                        </div>
	                        <div>
	                            <h2>${totalDelivery}원</h2>
	                        </div>
	                    </div>
	                    <div id="right_fourth_div">
	                        <div>
	                            <p>합계</p>
	                        </div>
	                        <div>
	                            <h2>${totalOrderAmount-totalDiscount+totalDelivery }원</h2>
	                        </div>
	                    </div>
	                    <div id="right_fifth_div">
	                        <input type="submit" value="결제">
	                    </div>
	                </div>
                </form>
            </div>
            <input type="hidden">
        
        </div>
    </section>
    <%@ include file="../Main/Footer2.jsp" %>
    
</body>
<script type="text/javascript" src="../resources/js/Product/cart.js"></script>
</html>