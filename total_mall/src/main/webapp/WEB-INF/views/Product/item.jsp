<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/product/item.css">
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <!-- ---------상품상세보기--------- -->
    <div id="ProductdetailLine">
        <c:choose>
			<c:when test="${product.category eq 'meat'}">
       			<h3 style="color: #3498db;">홈> 식품> 고기</h3>
       		</c:when>
			<c:when test="${product.category eq 'vegetables'}">
       			<h3 style="color: #3498db;">홈> 식품> 야채</h3>
       		</c:when>
			<c:when test="${product.category eq 'fruits'}">
       			<h3 style="color: #3498db;">홈> 식품> 과일</h3>
       		</c:when>
			<c:when test="${product.category eq 'frozen'}">
       			<h3 style="color: #3498db;">홈> 식품> 냉동</h3>
       		</c:when>
			<c:when test="${product.category eq 'kitchen'}">
       			<h3 style="color: #3498db;">홈> 홈데코> 주방</h3>
       		</c:when>
			<c:when test="${product.category eq 'curtain'}">
       			<h3 style="color: #3498db;">홈> 홈데코> 커튼</h3>
       		</c:when>
			<c:when test="${product.category eq 'games'}">
       			<h3 style="color: #3498db;">홈> 취미> 게임</h3>
       		</c:when>
			<c:when test="${product.category eq 'lego'}">
       			<h3 style="color: #3498db;">홈> 취미> 레고</h3>
       		</c:when>
			<c:when test="${product.category eq 'petsupplies'}">
       			<h3 style="color: #3498db;">홈> 취미> 펫용품</h3>
       		</c:when>
			<c:when test="${product.category eq 'dailynecessities'}">
       			<h3 style="color: #3498db;">홈> 생필품> 생필품</h3>
       		</c:when>
			<c:when test="${product.category eq 'bodyhair'}">
       			<h3 style="color: #3498db;">홈> 생필품> 바디헤어</h3>
       		</c:when>
			<c:when test="${product.category eq 'men'}">
       			<h3 style="color: #3498db;">홈> 의류> 남성</h3>
       		</c:when>
			<c:when test="${product.category eq 'women'}">
       			<h3 style="color: #3498db;">홈> 의류> 여성</h3>
       		</c:when>
			<c:when test="${product.category eq 'education'}">
       			<h3 style="color: #3498db;">홈> 도서> 교육</h3>
       		</c:when>
			<c:when test="${product.category eq 'novels'}">
       			<h3 style="color: #3498db;">홈> 도서> 소설</h3>
       		</c:when>
			<c:when test="${product.category eq 'overseas'}">
       			<h3 style="color: #3498db;">홈> 도서> 해외</h3>
       		</c:when>
			<c:when test="${product.category eq 'living'}">
       			<h3 style="color: #3498db;">홈> 가구> 생활</h3>
       		</c:when>
			<c:when test="${product.category eq 'bedding'}">
       			<h3 style="color: #3498db;">홈> 가구> 침상</h3>
       		</c:when>
			<c:when test="${product.category eq 'homeAppliances'}">
       			<h3 style="color: #3498db;">홈> 가전> 가전</h3>
       		</c:when>
			<c:when test="${product.category eq 'digital'}">
       			<h3 style="color: #3498db;">홈> 가전> 디지털</h3>
       		</c:when>
			<c:when test="${product.category eq 'soccer'}">
       			<h3 style="color: #3498db;">홈> 스포츠> 축구</h3>
       		</c:when>
			<c:when test="${product.category eq 'golf'}">
       			<h3 style="color: #3498db;">홈> 스포츠> 골프</h3>
       		</c:when>
        	<c:otherwise>
        		상품을 등록해주세요.
        	</c:otherwise>
        </c:choose>
        <div id="ProductdetailContainer">
            <div id="ProductMainimg">
                <img style="width: 100%;" src="../resources/img/Mallimg/${product.save_file_name1}" >
            </div>
            <div id="Productdetail">
                <div id="ProductContent">
                    <br>
                    <h1>${product.product_name}</h1>
                    <h2>★★★★★</h2><br>
                    <h2>${product.price}원</h2>
                    <h2>10% 90,000원</h2>
                </div>
                <p id="Productpurchase">
                    <span >개수</span>
                    <select>
                        <option value="전체">1</option>
                        <option value="의류">2</option>
                        <option value="신발">3</option>
                    </select>
                    
                    <a href="${pageContext.request.contextPath}/product/cartProcess.do?p_idx=${p_idx }&m_idx=${member.m_idx}"><button>장바구니</button></a>
                    <a href="T_PurchasePage.html"><button>구매</button></a>
                </p>
            </div>
        </div>
    </div>
    <!-- ---------상품상세보기--------- -->
    <!-- ---------상품정보--------- -->
    <div id="TogetherProductLine">
        <span>
            <h2>함께보기 연관 상품</h2>
            <h2>1/3</h2>
        </span>
        <hr>
        <div id="TogetherProductcontainer">
            <img onclick="totallink_Left()" style="width: 5%;" src="../resources/img/Mallimg/왼쪽 아이콘.png">
            <div id="TogetherProductbox">
                <div id="a1" style="margin-left: -1000px;">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                </div>
                <div id="a2" style="margin-left: 0px;">
                    <img src="../resources/img/Mallimg/삼겹살3.jpg">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                </div>
                <div id="a3" style="margin-left: 1000px;">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                    <img src="../resources/img/Mallimg/삼겹살2.jpg">
                    <img src="../resources/img/Mallimg/삼겹살3.jpg">
                </div>
            </div>
            <img onclick="totallink_Right()" style="width: 5%;" src="../resources/img/Mallimg/오른쪽 아이콘.png">
        </div>
    </div><br><br>
    <div id="DetailsLine">
        <div id="DetailsBtnLine">
            <div class="pageColor pageColor_on" onclick="product_On('productDetails')">상세정보</div>
            <div class="pageColor" onclick="product_On('productReviews')">상품평가</div>
            <div class="pageColor" onclick="product_On('customerQuestions')">문의사항</div>
            <div class="pageColor" onclick="product_On('shippingInfo')">배송/교환 반품 안내</div>
        </div>
        <div id="productDetails">
            <h2>상세정보</h2>
            <img src="../resources/img/Mallimg/식품1.jpg">
            <img src="../resources/img/Mallimg/식품1.jpg">
        </div>
        <div id="productReviews">
        <br>
            <div id="Reviewsbox">
                <h2>상품평가</h2>
                <input type="text">
                <select>
                    <option value="star" selected="selected">별점보기</option>
                    <option value="star1">★</option>
                    <option value="star2">★★</option>
                    <option value="star3">★★★</option>
                    <option value="star3">★★★★</option>
                    <option value="star3">★★★★★</option>
                </select>
            </div><hr>
            아이디<br>
            상품명★★★★★<br>
            2024.00.00<br>
            <img src="../resources/img/Mallimg/삼겹살.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살2.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살3.jpg" width="50"><br>
            "---------------------평가내용---------------------"<br>
            "---------------------평가내용---------------------"<br><hr>
            아이디<br>
            상품명★★★★★<br>
            2024.00.00<br>
            <img src="../resources/img/Mallimg/삼겹살.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살2.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살3.jpg" width="50"><br>
            "---------------------평가내용---------------------"<br>
            "---------------------평가내용---------------------"<br><hr>
            아이디<br>
            상품명★★★★★<br>
            2024.00.00<br>
            <img src="../resources/img/Mallimg/삼겹살.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살2.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살3.jpg" width="50"><br>
            "---------------------평가내용---------------------"<br>
            "---------------------평가내용---------------------"<br><hr>
            아이디<br>
            상품명★★★★★<br>
            2024.00.00<br>
            <img src="../resources/img/Mallimg/삼겹살.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살2.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살3.jpg" width="50"><br>
            "---------------------평가내용---------------------"<br>
            "---------------------평가내용---------------------"<br><hr>
            아이디<br>
            상품명★★★★★<br>
            2024.00.00<br>
            <img src="../resources/img/Mallimg/삼겹살.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살2.jpg" width="50">
            <img src="../resources/img/Mallimg/삼겹살3.jpg" width="50"><br>
            "---------------------평가내용---------------------"<br>
            "---------------------평가내용---------------------"<br><hr>
        </div>
        <div id="customerQuestions">
            <h2>문의사항</h2>
            <table>
                <tr>
                    <td>상품정보</td>
                    <td>상품 이름</td>
                </tr>
                <tr>
                    <td>판매자</td>
                    <td>판매자 이름</td>
                </tr>
                <tr>
                    <td>문의 내용</td>
                    <td>
                        <textarea name="" id="" cols="100" rows="35"></textarea>
                    </td>
                </tr>
            </table>
            <div id="customerbtn">문의하기</div>
        </div>
        <div id="shippingInfo">
            <div>
                <h2>배송/교환 반품 안내</h2><br>
                <h3>배송정보</h3>
                배송방법 - 순차배송<br>
                배송비 - 무료배송<br>
                배송기간 - 천재지변, 물량 수급 변동 등 예외적인 사유 발생 시, 다소 지연될 수 있는 점 양해 부탁드립니다.<br>
                <br>
                <br>
                <h3>교환반품안내</h3>
                교환/반품 비용 - 단순 변심의 경우에만 비용 발생 5,000원 <br>
                교환/반품 신청 기준일 - 제품 수령 후 7일 이내까지<br>
                <br>
                <br>
                <h3>교환/반품 제한사항</h3>
                ㆍ주문/제작 상품의 경우, 상품의 제작이 이미 진행된 경우<br>
                ㆍ상품 포장을 개봉하여 사용 또는 설치 완료되어 상품의 가치가 훼손된 경우 (단, 내용 확인을 위한 포장 개봉의 경우는 예외)<br>
                ㆍ고객의 사용, 시간경과, 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우<br>
                ㆍ세트상품 일부 사용, 구성품을 분실하였거나 취급 부주의로 인한 파손/고장/오염으로 재판매 불가한 경우<br>
                ㆍ모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 달라, 고객이 단순 변심으로 교환/반품을 무료로 요청하는 경우<br>
                ㆍ제조사의 사정 (신모델 출시 등) 및 부품 가격 변동 등에 의해 무료 교환/반품으로 요청하는 경우<br>
                <br>
                <br>
                <h3>주의사항</h3>
                전자상거래 등에서의 소비자보호법에 관한 법률에 의거하여 미성년자가 물품을 구매하는 경우,<br>
                법정대리인이 동의하지 않으면 미성년자 본인 또는 법정대리인이 구매를 취소할 수 있습니다.<br>
                등록된 판매 상품과 상품의 내용, 거래 정보 및 가격은 판매자가 등록한 것으로<br>
                해당 내용에 대하여 일체의 책임을 지지 않습니다.<br>
                결제시스템을 이용하지 않고 판매자와 직접 거래하실 경우 상품을 받지 못하거나 구매한 상품과 상이한 상품을 받는 등<br>
                피해가 발생할 수 있으니 유의 바랍니다. 직거래로 인해 발생한 피해에 대해 G마켓은 책임을 지지 않습니다.<br>
                <br>
            </div>
        </div>
    </div>
    <!-- ---------상품정보--------- -->
    <%@include file="../Main/Footer2.jsp" %>
</body>
<script type="text/javascript" src="../resources/js/Product/item.js"></script>
</html>