<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/product/search.css">
</head>

<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <div id="CategoryPage">
        <h3 style="color: #3498db;">추천 검색어 > 돼지고기 / 소고기 / 닭고기 </h3>
        <div id="CategoryServeLine">
            <div id="CategoryServemenuLine">
                <h2>카테고리</h2>
                <span>식품</span><br>
                <a href="list.do?category=meat">>고기</a><br>
                <a href="list.do?category=vegetables">>야채</a><br>
                <a href="list.do?category=fruits">>과일</a><br>
                <a href="list.do?category=frozen">>냉동</a><br><br>
                <span>홈데코</span><br>
                <a href="list.do?category=kitchen">>주방</a><br>
                <a href="list.do?category=curtain">>커튼</a><br><br>
                <span>취미</span><br>
                <a href="list.do?category=games">>게임</a><br>
                <a href="list.do?category=lego">>레고</a><br>
                <a href="list.do?category=petsupplies">>펫용품</a><br><br>
                <span>생필품</span><br>
                <a href="list.do?category=dailynecessities">>생필품</a><br>
                <a href="list.do?category=bodyhair">>바디헤어</a><br><br>
                <span>의류</span><br>
                <a href="list.do?category=men">>남성</a><br>
                <a href="list.do?category=women">>여성</a><br><br>
                <span>도서</span><br>
                <a href="list.do?category=education">>교육</a><br>
                <a href="list.do?category=novels">>소설</a><br>
                <a href="list.do?category=overseas">>해외</a><br><br>
                <span>가구</span><br>
                <a href="list.do?category=living">>생활</a><br>
                <a href="list.do?category=bedding">>침상</a><br><br>
                <span>가전</span><br>
                <a href="list.do?category=homeAppliances">>가전</a><br>
                <a href="list.do?category=digital">>디지털</a><br><br>
                <span>스포츠</span><br>
                <a href="list.do?category=soccer">>축구</a><br>
                <a href="list.do?category=golf">>골프</a>
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
			                    <div id="Searchproductbox">
									<a class="productimg" href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList2[vs.count-1].p_idx}">
			                        	<img src="../resources/img/Mallimg/${productList2[vs.count-1].save_file_name1}">
			                       	</a>
			                        <div id="SearchProduct">
			                            <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList2[vs.count-1].p_idx}">
			                            ${productList2[vs.count-1].summary}
			                            </a><br>
			                            ${productList2[vs.count-1].price}원<br>
			                        </div>
			                        <div class="SearchProductPrice">
			                            <button>장바구니</button>
			                            <button><a href="T_PurchasePage.html">구매</a></button>
			                        </div>
			                    </div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
	<c:if test="${not empty productList2}" >
		<tr>
			<td colspan="6" id="td_paging">
				<%@ include file="paging.jsp" %>
			</td>
		</tr>
	</c:if>
                </div>
            </div>
        </div>
    </div>
    <%@include file="../Main/Footer2.jsp" %>
</body>
<script type="text/javascript" src="../resources/js/Product/Search.js"></script>
</html>