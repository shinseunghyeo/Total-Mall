<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니 페이지</title>
    <link rel="stylesheet" href="../resources/css/product/cart.css">
</head>

<body>
    <%@ include file="../Main/Header2.jsp" %>
    <section>
        <div id="white-board">
            <form action="T_PurchasePage.html">
            <div id="cart-header">
                <h1>장바구니</h1>
            </div>
            <div id="cart-middle">
                <div id="left-div">
                    <div id="selectAll-div">
                        <input type="checkbox" name="" id="checkAll">
                        <p>전체 선택</p>
                    </div>
                    <div id="list-div">
                        <p></p>
                        <p>상품사진</p>
                        <p>상품이름</p>
                        <p>수량</p>
                        <p>가격</p>
                        <p></p>
                    </div>
                    
                    <c:choose>
                    	<c:when test="${empty CartList }">
                    		
                    	</c:when>
                    	<c:otherwise>
	                    	<c:forEach var="i" begin="1" end="5" varStatus="vs">
	                    		<c:if test="${not empty cartList[vs.count-1] }">
	                    			<div class="cart_item">
				                        <div class="cart_item_seller">
				                            <p>${i}</p>
				                        </div>
				                        <div style="display: flex;width: 100%;">
				                            <div class="cart_item-1">
				                                <input type="checkbox" name="" id="" class="checkbox-design">
				                            </div>
				                            <div class="cart_item-2">
				                                <img src="Mallimg/고구마.jpg" alt="">
				                            </div>
				                            <div class="cart_item-3">
				                                <p><a href="">30%쿠폰 캘빈클라인 백화점 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구 어쩌구</a></p>
				                            </div>
				                            <div class="cart_item-4">
				                                <select name="" id="">
				                                    <option value="">1</option>
				                                    <option value="">2</option>
				                                    <option value="">3</option>
				                                </select><br>
				                                <input type="button" value="변경" style="width: 60px;">
				                            </div>
				                            <div class="cart_item-5">
				                                <div>
				                                    <p>38000원</p>
				                                </div>
				                                <div>
				                                    <input type="button" value="X" onclick="removeCartItem(this)">
				                                </div>
				                            </div>
				                        </div>
				                        <div class="cart_item_price">
				                            <div class="cart_item_price-1" style="width: 20%;text-align: center;">
				                                <div>
				                                    <p>상품금액</p>
				                                </div>
				                                <div style="text-align: center;;">
				                                    <p>53,260원</p>
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
				                                    <p>3,000원</p>
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
				                                    <p>32,280원</p>
				                                </div>
				                            </div>
				                            
				                        </div>
				                    </div>
	                    		</c:if>
	                    	</c:forEach>
                    		
                    	</c:otherwise>
                    </c:choose>

                    
                </div>
                <div id="right-div">
                    <div id="right_header">
                        <h1>결제 예정금액</h1>
                    </div>
                    <div id="right_first_div">
                        <div>
                            <p>상품금액</p>
                        </div>
                        <div>
                            <h2>108,000원</h2>
                        </div>
                    </div>
                    <div id="right_second_div">
                        <div>
                            <p>할인금액</p>
                        </div>
                        <div>
                            <h2>8,000원</h2>
                        </div>
                    </div>
                    <div id="right_third_div">
                        <div>
                            <p>배송비</p>
                        </div>
                        <div>
                            <h2>2,500원</h2>
                        </div>
                    </div>
                    <div id="right_fourth_div">
                        <div>
                            <p>합계</p>
                        </div>
                        <div>
                            <h2>102,500원</h2>
                        </div>
                    </div>
                    <div id="right_fifth_div">
                        <input type="submit" value="결제">
                    </div>
                </div>
            </div>
        </form>
        </div>
    </section>
    <%@ include file="../Main/Footer2.jsp" %>
    
</body>
<script type="text/javascript" src="../resources/js/Product/cart.js"></script>
</html>