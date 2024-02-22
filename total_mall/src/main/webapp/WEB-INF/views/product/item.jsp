<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세보기</title>
<link rel="stylesheet" href="../resources/css/product/item.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
function discontinuedPost() {
    const ans = confirm("정말로 판매를 중단하겠습니까?");

    if (ans) {
        $.ajax({
            type: "GET",
            url: "discontinued.do",
            data: {
                p_idx: ${product.p_idx}
            },
            success: function(response) {
                // 서버 응답에 대한 처리를 여기에 추가
                console.log(response);
                // 예를 들어, 페이지 리로드
                location.reload();
            },
            error: function(error) {
                // 에러 처리를 여기에 추가
                console.error("Ajax request failed: ", error);
            }
        });
    }
}
function continuedPost() {
    const ans = confirm("정말로 판매를 재개하겠습니까?");

    if (ans) {
        $.ajax({
            type: "GET",
            url: "continued.do",
            data: {
                p_idx: ${product.p_idx}
            },
            success: function(response) {
                // 서버 응답에 대한 처리를 여기에 추가
                console.log(response);
                // 예를 들어, 페이지 리로드
                location.reload();
            },
            error: function(error) {
                // 에러 처리를 여기에 추가
                console.error("Ajax request failed: ", error);
            }
        });
    }
}
</script>
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <!-- ---------상품상세보기--------- -->
    <div id="ProductdetailLine">
        <c:choose>
			<c:when test="${product.category eq 'meat'}">
       			<h3 style="color: #3498db;">홈> 식품> 고기 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'vegetables'}">
       			<h3 style="color: #3498db;">홈> 식품> 야채 > ${product.product_name}</h3>
       		</c:when>
       		<c:when test="${product.category eq 'fruits'}">
       			<h3 style="color: #3498db;">홈> 식품> 과일 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'frozen'}">
       			<h3 style="color: #3498db;">홈> 식품> 냉동 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'kitchen'}">
       			<h3 style="color: #3498db;">홈> 홈데코> 주방 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'curtain'}">
       			<h3 style="color: #3498db;">홈> 홈데코> 커튼 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'games'}">
       			<h3 style="color: #3498db;">홈> 취미> 게임 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'lego'}">
       			<h3 style="color: #3498db;">홈> 취미> 레고 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'petsupplies'}">
       			<h3 style="color: #3498db;">홈> 취미> 펫용품 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'dailynecessities'}">
       			<h3 style="color: #3498db;">홈> 생필품> 생필품 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'bodyhair'}">
       			<h3 style="color: #3498db;">홈> 생필품> 바디헤어 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'men'}">
       			<h3 style="color: #3498db;">홈> 의류> 남성 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'women'}">
       			<h3 style="color: #3498db;">홈> 의류> 여성 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'education'}">
       			<h3 style="color: #3498db;">홈> 도서> 교육 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'novels'}">
       			<h3 style="color: #3498db;">홈> 도서> 소설 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'overseas'}">
       			<h3 style="color: #3498db;">홈> 도서> 해외 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'living'}">
       			<h3 style="color: #3498db;">홈> 가구> 생활 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'bedding'}">
       			<h3 style="color: #3498db;">홈> 가구> 침상 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'homeAppliances'}">
       			<h3 style="color: #3498db;">홈> 가전> 가전 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'digital'}">
       			<h3 style="color: #3498db;">홈> 가전> 디지털 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'soccer'}">
       			<h3 style="color: #3498db;">홈> 스포츠> 축구 > ${product.product_name}</h3>
       		</c:when>
			<c:when test="${product.category eq 'golf'}">
       			<h3 style="color: #3498db;">홈> 스포츠> 골프 > ${product.product_name}</h3>
       		</c:when>
        	<c:otherwise>
        		상품을 등록해주세요.
        	</c:otherwise>
        </c:choose>
        <div id="ProductdetailContainer">
            <div id="ProductMainimg">
				<img width="100%" height="100%" src="../resources/uploads/${product.save_file_name1}">
            </div>
	            <div id="Productdetail">
	                <div id="ProductContent">
	                    <br>
	                    <h1>${product.product_name}</h1>
	                    <h2>★★★★★</h2><br>
	                    <h2>${product.price}원</h2>
	                    <h2>10% 90,000원</h2><hr>
						<h3>상품내용</h3>
						${product.summary}
						<c:if test="${member.m_idx eq product.m_idx}">
						<a href="modify.do?p_idx=${product.p_idx}"><input type="button" value="상품수정"></a>
						<c:choose>
						<c:when test="${product.p_status eq 0}">
							<input type="button" value="판매중단" onclick="discontinuedPost()" >
						</c:when>
						<c:when test="${product.p_status eq 1}">
							<input type="button" value="판매재개" onclick="continuedPost()" >
						</c:when>
						</c:choose>
						</c:if>
	       
	                </div>
	                <div id="Productpurchase">
	                    <span>개수</span>
	                    <div class="input-wrapper">
	                        <button id="decrementButton" onclick="decrement()">-</button>
	                        <input type="text" name="c_quantity" id="inputBox" oninput="checkInput()" value="0" required>
	                        <button id="incrementButton" onclick="increment()">+</button>
	                    </div>
	                    <a href="${pageContext.request.contextPath}/product/cartProcess.do?p_idx=${product.p_idx}&m_idx=${member.m_idx}" id="cartLink"><button>장바구니</button></a>
	                    <a href="${pageContext.request.contextPath}/product/purchase.do?total_product_price=0&totalDiscount=${(product.price/(product.discount_rate)).intValue()}&totalDelivery=2500&p_idx=${product.p_idx}&m_idx=${member.m_idx}" id="purchaseLink" onclick="updateLinks()">
					        <button>구매</button>
					    </a>
	                </div>
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
				<img src="../resources/uploads/${product.save_file_name2}">
            <br><br><br><br><br><br><hr>
            <h3>상세내용</h3>
            <span>${product.detail}</span><br><hr>
            <h3>상품 정보 제공 고시</h3><hr>
            <table>
                <tr>
                    <td>상품번호</td>
                    <td>${product.product_code}</td>
                </tr>
                <tr>
                    <td>브랜드</td>
                    <td>${product.brand}</td>
                </tr>
                <tr>
                    <td>부가세 면세여부</td>
                    <td>과세상품</td>
                </tr>
                <tr>
                    <td>사업자구분</td>
                    <td>개인사업자</td>
                </tr>
                <tr>
                    <td>과세자구분</td>
                    <td>일반과세자+간이과세자(세금계산서 발급사업자)</td>
                </tr>
            </table><hr>
            <h3>주의사항</h3>
            <ol>
                <li>
                    전자상거래 등에서의 소비자보호법에 관한 법률에 의거하여 미성년자가 물품을 구매하는 경우,<br>
                    법정대리인이 동의하지 않으면 미성년자 본인 또는 법정대리인이 구매를 취소할 수 있습니다.<br>
                </li>
                <li>
                    토탈몰에 등록된 판매 상품과 상품의 내용, 거래 정보 및 가격은 판매자가 등록한 것으로<br>
                    토탈몰은 해당 내용에 대하여 일체의 책임을 지지 않습니다.<br>
                </li>
                <li>
                    토탈몰의 결제시스템을 이용하지 않고 판매자와 직접 거래하실 경우 상품을 받지 못하거나 구매한 상품과 상이한 상품을 받는 등<br>
                    피해가 발생할 수 있으니 유의 바랍니다. 직거래로 인해 발생한 피해에 대해 토탈몰은 책임을 지지 않습니다.<br>
                </li>
            </ol>
        </div>
        <div id="productReviews">
        <br>
            <div id="Reviewsbox">
                <h2>상품평가</h2>
				<form name="frm_write" method="post" action="review.do" enctype="multipart/form-data"  onsubmit="return validateForm()">
				<input type="hidden" name="m_idx" value="${member.m_idx}" >

                <input type="submit" value="상품리뷰작성페이지">
                
                </form>
                
                
                <button onclick="changeContent('recent')">최근평가순</button>
                <button onclick="changeContent('old')">오래된평가순</button>
                <button onclick="changeContent('high_rating')">높은별점순</button>
                <button onclick="changeContent('low_rating')">낮은별점순</button>
                
                <div id="content">
                    <!-- 여기에 변경될 페이지 내용을 입력하세요. -->
                    초기 내용
                </div>
                
                <script>
                    function changeContent(option) {
                        // 선택된 옵션에 따라 내용을 변경합니다.
                        var contentDiv = document.getElementById('content');
                        switch(option) {
                            case 'recent':
                                contentDiv.innerHTML = '최근평가순의 내용';
                                break;
                            case 'old':
                                contentDiv.innerHTML = '오래된평가순의 내용';
                                break;
                            case 'high_rating':
                                contentDiv.innerHTML = '높은별점순의 내용';
                                break;
                            case 'low_rating':
                                contentDiv.innerHTML = '낮은별점순의 내용';
                                break;
                            default:
                                break;
                        }
                    }
                </script>
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