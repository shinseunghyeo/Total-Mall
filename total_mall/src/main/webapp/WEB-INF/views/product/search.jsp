<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 페이지</title>
<link rel="stylesheet" href="../resources/css/product/search.css">
</head>

<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <div id="CategoryPage">
        <div id="CategoryServeLine">
            <div id="CategoryServemenuLine">
                <h2>카테고리</h2>
                <span>식품</span><br>
                <a href="list.do?category=meat"><p>>고기</p></a><br>
                <a href="list.do?category=vegetables"><p>>야채</p></a><br>
                <a href="list.do?category=fruits"><p>>과일</p></a><br>
                <a href="list.do?category=frozen"><p>>냉동</p></a><br><br>
                <span>홈데코</span><br>
                <a href="list.do?category=kitchen"><p>>주방</p></a><br>
                <a href="list.do?category=curtain"><p>>커튼</p></a><br><br>
                <span>취미</span><br>
                <a href="list.do?category=games"><p>>게임</p></a><br>
                <a href="list.do?category=lego"><p>>레고</p></a><br>
                <a href="list.do?category=petsupplies"><p>>펫용품</p></a><br><br>
                <span>생필품</span><br>
                <a href="list.do?category=dailynecessities"><p>>생필품</p></a><br>
                <a href="list.do?category=bodyhair"><p>>바디헤어</p></a><br><br>
                <span>의류</span><br>
                <a href="list.do?category=men"><p>>남성</p></a><br>
                <a href="list.do?category=women"><p>>여성</p></a><br><br>
                <span>도서</span><br>
                <a href="list.do?category=education"><p>>교육</p></a><br>
                <a href="list.do?category=novels"><p>>소설</p></a><br>
                <a href="list.do?category=overseas"><p>>해외</p></a><br><br>
                <span>가구</span><br>
                <a href="list.do?category=living"><p>>생활</p></a><br>
                <a href="list.do?category=bedding"><p>>침상</p></a><br><br>
                <span>가전</span><br>
                <a href="list.do?category=homeAppliances"><p>>가전</p></a><br>
                <a href="list.do?category=digital"><p>>디지털</p></a><br><br>
                <span>스포츠</span><br>
                <a href="list.do?category=soccer"><p>>축구</p></a><br>
                <a href="list.do?category=golf"><p>>골프</p></a>
            </div>
            <div id="SearchproductLine">
                <div id="SearchproductContaner">
                    <a href="${pageContext.request.contextPath}/nav/EventPage.do"><img id="Advertisementimg" src="../resources/img/Mallimg/광고.jpg"></a>
                    <br><br><h3 style="margin: 0;">
                        <span id="price_Rank" onclick="asdf('price_Rank')" style="cursor: pointer;">토탈 랭킹</span> 
                        <span id="price_Hight" onclick="asdf('price_Hight')" style="cursor: pointer;">높은 가격</span>
                        <span id="price_Row" onclick="asdf('price_Row')" style="cursor: pointer;">낮은 가격</span>
                    </h3><hr>
					<c:choose>
						<c:when test="${empty productList2}">
							<tr><td colspan="6">
							검색하신 '${sVO.searchWord}'에 대한<br>
							검색결과가 없습니다.<br>
							정확한 검색어인지 확인하고 다시 검색해 보세요.
							</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="i" begin="${pageNav.startNum}" end="${pageNav.endNum}" varStatus="vs">
								<c:if test="${not empty productList2[vs.count-1]}"><!-- boardList에 저장된 데이터가 있는 경우 출력-->
				                    <div id="Searchproductbox">
										<a class="productimg" href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList2[vs.count-1].p_idx}">
				                        	<img src="../resources/uploads/${productList2[vs.count-1].save_file_name1}">
				                       	</a>
				                        <div id="SearchProduct">
				                            <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList2[vs.count-1].p_idx}">
				                            ${productList2[vs.count-1].product_name}
				                            </a><br>
				                            <span class="price">${productList2[vs.count-1].price}원</span><br>
				                            상품내용<br>
				                            ${productList2[vs.count-1].summary}<br>
				                        </div>
				                        <div class="SearchProductPrice">
				                        </div>
				                    </div>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<c:if test="${not empty productList2}" >
						<table style="margin: 0 auto;">
						    <tr>
						        <td colspan="6" id="td_paging">
						            <%@ include file="paging.jsp" %>
						        </td>
						    </tr>
						</table>
					</c:if>
                </div>
            </div>
        </div>
    </div>
    <%@include file="../Main/Footer2.jsp" %>
</body>
<script type="text/javascript" src="../resources/js/Main/pricenum.js"></script>
<script type="text/javascript" src="../resources/js/Product/Search.js"></script>
</html>