<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1,user-scalable=no">
<link rel="stylesheet" href="resources/css/Main/TotalMall.css">
<title>Insert title here2</title>
</head>
<body>
  	<%@ include file="Main/MainHeader.jsp" %>

    <!-- ---------이벤트--------- -->
    <div id="EventLine" onmouseover="Eventovermouse()"onmouseout="Eventoutmouse()">
        <a href="${pageContext.request.contextPath}/nav/EventPage.do" id="EventMall">
        </a>
    </div>
    <!-- ---------이벤트--------- -->
    <!-- ---------오늘의 상품--------- -->
    <div style="width: 100%;">
        <h2 style="margin: auto;width: 1050px;">오늘의 상품</h2><br>
        <a href="${pageContext.request.contextPath}/member/inquirylist.do">문의사항 목록</a>
    </div>
    <div id="TodayMallServeLine">
        <div id="TodayMallServebox">
            <div id="TodayMallServetoday">
	   		    <c:choose>
					<c:when test="${empty maintoday}">
						<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
					</c:when>
					<c:otherwise>
	        			<c:forEach begin="1" end="8" varStatus="vs">
		        			<div class="TodayMalltoday">
								<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${maintoday[vs.count-1].p_idx}">
					                <img src="resources/uploads/${maintoday[vs.count-1].save_file_name1}">
					            </a><br>
								<a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${maintoday[vs.count-1].p_idx}">
					            ${maintoday[vs.count-1].product_name}
					            </a><br>
					            <span class="price">${maintoday[vs.count-1].price}원</span>
							</div>
							<c:if test="${vs.count%4 == 0}">
			                </div>
			                <div id="TodayMallServetoday">
							</c:if>
			            </c:forEach>
		            </c:otherwise>
	            </c:choose>
            </div>
        </div>
    </div>
    <!-- ---------오늘의 상품--------- -->
    <!-- ---------카테고리 추천 상품--------- -->
    <div class="CategoryBestLine">
        <h2>추천 카테고리 상품</h2>
        <div class="CategoryBest">
            <img class="Category_LeftArrow" onclick="FoodSlideLeft(FoodSlide)" src="resources/img/Mallimg/왼쪽 아이콘.png">
            <div class="CategoryBestContainer">
                <div id="FoodSlide" style="margin-left: 0px;">
                    <div class="CategoryBestbox">
       				    <c:choose>
							<c:when test="${empty mainchoice}">
								<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
							</c:when>
							<c:otherwise>
								<c:forEach begin="1" end="15" varStatus="vs">
									<c:if test="${not empty mainchoice[vs.count-1]}">
					                    <div>
					                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainchoice[vs.count-1].p_idx}">
											<img src="resources/uploads/${mainchoice[vs.count-1].save_file_name1}">
					                       	</a>
											<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainchoice[vs.count-1].p_idx}">
											<span class="truncate">${mainchoice[vs.count-1].product_name}</span></a><br>
					                        <span class="price" style="font-weight: bold">${mainchoice[vs.count-1].price}원</span>
					                    </div>
									</c:if>
									<c:if test="${vs.count%3 == 0}">
					                </div>
					                <div class="CategoryBestbox">
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
                    </div>
                </div>
            </div>
            <img style="width: 2%; height: 60px;"  onclick="FoodSlideRight(FoodSlide)" src="resources/img/Mallimg/오른쪽 아이콘.png">
        </div>
    </div>
    <div class="CategoryBestLine">
        <div class="CategoryBest">
            <img class="Category_LeftArrow" onclick="FoodSlideLeft(FoodSlide2)" src="resources/img/Mallimg/왼쪽 아이콘.png">
            <div class="CategoryBestContainer">
                <div id="FoodSlide2" style="margin-left: 0px;">
                    <div class="CategoryBestbox">
       				    <c:choose>
							<c:when test="${empty mainchoice2}">
								<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
							</c:when>
							<c:otherwise>
								<c:forEach begin="1" end="15" varStatus="vs">
									<c:if test="${not empty mainchoice2[vs.count-1]}">
					                    <div>
					                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainchoice2[vs.count-1].p_idx}">
											<img src="resources/uploads/${mainchoice2[vs.count-1].save_file_name1}">
					                       	</a>
											<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainchoice2[vs.count-1].p_idx}">
											<span class="truncate">${mainchoice2[vs.count-1].product_name}</span></a><br>
					                        <span class="price" style="font-weight: bold">${mainchoice2[vs.count-1].price}원</span> 
					                    </div>
									</c:if>
									<c:if test="${vs.count%3 == 0}">
					                </div>
					                <div class="CategoryBestbox">
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
	                </div>
                </div>
            </div>
            <img style="width: 2%; height: 60px;"  onclick="FoodSlideRight(FoodSlide2)" src="resources/img/Mallimg/오른쪽 아이콘.png">
        </div>
    </div>        
    <div class="CategoryBestLine">
        <div class="CategoryBest">
            <img class="Category_LeftArrow" onclick="FoodSlideLeft(FoodSlide3)" src="resources/img/Mallimg/왼쪽 아이콘.png">
            <div class="CategoryBestContainer">
                <div id="FoodSlide3" style="margin-left: 0px;">
                    <div class="CategoryBestbox">
       				    <c:choose>
							<c:when test="${empty mainchoice3}">
								<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
							</c:when>
							<c:otherwise>
								<c:forEach begin="1" end="15" varStatus="vs">
									<c:if test="${not empty mainchoice3[vs.count-1]}">
					                    <div>
					                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainchoice3[vs.count-1].p_idx}">
											<img src="resources/uploads/${mainchoice3[vs.count-1].save_file_name1}">
					                       	</a>
											<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainchoice3[vs.count-1].p_idx}">
											<span class="truncate">${mainchoice3[vs.count-1].product_name}</span></a><br>
					                        <span class="price" style="font-weight: bold">${mainchoice3[vs.count-1].price}원</span> 
					                    </div>
									</c:if>
									<c:if test="${vs.count%3 == 0}">
					                </div>
					                <div class="CategoryBestbox">
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
                    </div>
                </div>
            </div>
            <img style="width: 2%; height: 60px;"  onclick="FoodSlideRight(FoodSlide3)" src="resources/img/Mallimg/오른쪽 아이콘.png">
        </div>
    </div>
    <!-- ---------카테고리 추천 상품--------- -->
    <!-- ---------카테고리별 상품--------- -->
    <div id="CategoryMallLine">
        <h2>카테고리별 상품</h2>
                <style>
				    .truncate {
				        white-space: nowrap;       /* 줄 바꿈 방지 */
				        overflow: hidden;          /* 넘침 처리 */
				        text-overflow: ellipsis;   /* 생략 부호 (...) 표시 */
				        display: inline-block;     /* 인라인 요소로 처리하여 너비에 맞게 표시 */
				        max-width: 220px;          /* 스팬의 최대 너비 설정 */
				    }
				</style>
        <div class="CategoryMall">
            <img class="CategoryMallMainimg" src="resources/img/Mallimg/쌀.jpg">
            <div class="CategoryMallMenu">
                <div class="CategoryMallbox">
				    <c:choose>
						<c:when test="${empty mainchoice}">
							<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="6" varStatus="vs">
								<c:if test="${not empty mainchoice[vs.count-1]}">
				                    <div>
				                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainchoice[vs.count-1].p_idx}">
										<img src="resources/uploads/${mainchoice[vs.count-1].save_file_name1}">
				                       	</a>
										<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainchoice[vs.count-1].p_idx}">
										<span class="truncate">${mainchoice[vs.count-1].product_name}</span></a><br>
				                        <span class="price" style="font-weight: bold">${mainchoice[vs.count-1].price}원</span> 
				                    </div>
								</c:if>
								<c:if test="${vs.count == 3}">
				                </div>
				                <div class="CategoryMallbox">
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>
        <div class="CategoryMall">
            <img class="CategoryMallMainimg" src="resources/img/Mallimg/어린이용품.jpg">
            <div class="CategoryMallMenu">
                <div class="CategoryMallbox">
				    <c:choose>
						<c:when test="${empty mainDecoration}">
							<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="6" varStatus="vs">
								<c:if test="${not empty mainDecoration[vs.count-1]}">
				                    <div>
				                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainDecoration[vs.count-1].p_idx}">
										<img src="resources/uploads/${mainDecoration[vs.count-1].save_file_name1}">
				                       	</a>
										<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainDecoration[vs.count-1].p_idx}">
										<span class="truncate">${mainDecoration[vs.count-1].product_name}</span></a><br>
				                        <span class="price" style="font-weight: bold">${mainDecoration[vs.count-1].price}원</span> 
				                    </div>
								</c:if>
								<c:if test="${vs.count == 3}">
				                </div>
				                <div class="CategoryMallbox">
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>
        <div class="CategoryMall">
            <img class="CategoryMallMainimg" src="resources/img/Mallimg/낚시장비.jpg">
            <div class="CategoryMallMenu">
                <div class="CategoryMallbox">
				    <c:choose>
						<c:when test="${empty mainHobby}">
							<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="6" varStatus="vs">
								<c:if test="${not empty mainHobby[vs.count-1]}">
				                    <div>
				                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainHobby[vs.count-1].p_idx}">
										<img src="resources/uploads/${mainHobby[vs.count-1].save_file_name1}">
				                       	</a>
										<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainHobby[vs.count-1].p_idx}">
										<span class="truncate">${mainHobby[vs.count-1].product_name}</span></a><br>
				                        <span class="price" style="font-weight: bold">${mainHobby[vs.count-1].price}원</span> 
				                    </div>
								</c:if>
								<c:if test="${vs.count == 3}">
				                </div>
				                <div class="CategoryMallbox">
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>
        <div class="CategoryMall">
            <img class="CategoryMallMainimg" src="resources/img/Mallimg/운동.jpg">
            <div class="CategoryMallMenu">
                <div class="CategoryMallbox">
				    <c:choose>
						<c:when test="${empty mainDailynecessities}">
							<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="6" varStatus="vs">
								<c:if test="${not empty mainDailynecessities[vs.count-1]}">
				                    <div>
				                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainDailynecessities[vs.count-1].p_idx}">
										<img src="resources/uploads/${mainDailynecessities[vs.count-1].save_file_name1}">
				                       	</a>
										<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainDailynecessities[vs.count-1].p_idx}">
										<span class="truncate">${mainDailynecessities[vs.count-1].product_name}</span></a><br>
				                        <span class="price" style="font-weight: bold">${mainDailynecessities[vs.count-1].price}원</span> 
				                    </div>
								</c:if>
								<c:if test="${vs.count == 3}">
				                </div>
				                <div class="CategoryMallbox">
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>
        <div class="CategoryMall">
            <img class="CategoryMallMainimg" src="resources/img/Mallimg/펫밀크.jpg">
            <div class="CategoryMallMenu">
                <div class="CategoryMallbox">
				    <c:choose>
						<c:when test="${empty mainClothing}">
							<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="6" varStatus="vs">
								<c:if test="${not empty mainClothing[vs.count-1]}">
				                    <div>
				                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainClothing[vs.count-1].p_idx}">
										<img src="resources/uploads/${mainClothing[vs.count-1].save_file_name1}">
				                       	</a>
										<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainClothing[vs.count-1].p_idx}">
										<span class="truncate">${mainClothing[vs.count-1].product_name}</span></a><br>
				                        <span class="price" style="font-weight: bold">${mainClothing[vs.count-1].price}원</span> 
				                    </div>
								</c:if>
								<c:if test="${vs.count == 3}">
				                </div>
				                <div class="CategoryMallbox">
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>
        <div class="CategoryMall">
            <img class="CategoryMallMainimg" src="resources/img/Mallimg/주방도구.jpg">
            <div class="CategoryMallMenu">
                <div class="CategoryMallbox">
				    <c:choose>
						<c:when test="${empty mainBooks}">
							<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="6" varStatus="vs">
								<c:if test="${not empty mainBooks[vs.count-1]}">
				                    <div>
				                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainBooks[vs.count-1].p_idx}">
										<img src="resources/uploads/${mainBooks[vs.count-1].save_file_name1}">
				                       	</a>
										<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainBooks[vs.count-1].p_idx}">
										<span class="truncate">${mainBooks[vs.count-1].product_name}</span></a><br>
				                        <span class="price" style="font-weight: bold">${mainBooks[vs.count-1].price}원</span> 
				                    </div>
								</c:if>
								<c:if test="${vs.count == 3}">
				                </div>
				                <div class="CategoryMallbox">
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>
        <div class="CategoryMall">
            <img class="CategoryMallMainimg" src="resources/img/Mallimg/주방도구.jpg">
            <div class="CategoryMallMenu">
                <div class="CategoryMallbox">
				    <c:choose>
						<c:when test="${empty mainFurniture}">
							<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="6" varStatus="vs">
								<c:if test="${not empty mainFurniture[vs.count-1]}">
				                    <div>
				                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainFurniture[vs.count-1].p_idx}">
										<img src="resources/uploads/${mainFurniture[vs.count-1].save_file_name1}">
				                       	</a>
										<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainFurniture[vs.count-1].p_idx}">
										<span class="truncate">${mainFurniture[vs.count-1].product_name}</span></a><br>
				                        <span class="price" style="font-weight: bold">${mainFurniture[vs.count-1].price}원</span> 
				                    </div>
								</c:if>
								<c:if test="${vs.count == 3}">
					                </div>
					                <div class="CategoryMallbox">
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>
        <div class="CategoryMall">
            <img class="CategoryMallMainimg" src="resources/img/Mallimg/주방도구.jpg">
            <div class="CategoryMallMenu">
                <div class="CategoryMallbox">
				    <c:choose>
						<c:when test="${empty mainHomeappliance}">
							<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="6" varStatus="vs">
								<c:if test="${not empty mainHomeappliance[vs.count-1]}">
				                    <div>
				                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainHomeappliance[vs.count-1].p_idx}">
											<img src="resources/uploads/${mainHomeappliance[vs.count-1].save_file_name1}">
				                       	</a>
										<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainHomeappliance[vs.count-1].p_idx}">
										<span class="truncate">${mainHomeappliance[vs.count-1].product_name}</span></a><br>
				                        <span class="price" style="font-weight: bold">${mainHomeappliance[vs.count-1].price}원</span> 
				                    </div>
								</c:if>
								<c:if test="${vs.count == 3}">
				                </div>
				                <div class="CategoryMallbox">
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>
        <div class="CategoryMall">
            <img class="CategoryMallMainimg" src="resources/img/Mallimg/주방도구.jpg">
            <div class="CategoryMallMenu">
                <div class="CategoryMallbox">
				    <c:choose>
						<c:when test="${empty mainSports}">
							<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="6" varStatus="vs">
								<c:if test="${not empty mainSports[vs.count-1]}">
				                    <div>
				                        <a style="margin: 0;" href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainSports[vs.count-1].p_idx}">
											<img src="resources/uploads/${mainSports[vs.count-1].save_file_name1}">
				                       	</a>
										<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainSports[vs.count-1].p_idx}">
										<span class="truncate">${mainSports[vs.count-1].product_name}</span></a><br>
				                        <span class="price" style="font-weight: bold">${mainSports[vs.count-1].price}원</span> 
				                    </div>
								</c:if>
								<c:if test="${vs.count == 3}">
				                </div>
				                <div class="CategoryMallbox">
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>

    </div>
    <!-- ---------카테고리별 상품--------- -->
    <!-- ---------마지막 상품--------- -->
    <div id="FinalMallLine">
        <h2>착한 상품</h2>

        <div class="MallSmallimg">
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[0].p_idx}">
                <img src="resources/uploads/${mainkind[0].save_file_name1}">
            </a>
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[1].p_idx}">
                <img src="resources/uploads/${mainkind[1].save_file_name1}">
            </a>
        </div>
        <div class="MallBigimg">
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[2].p_idx}">
                <img src="resources/uploads/${mainkind[2].save_file_name1}">
            </a>
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[3].p_idx}">
                <img src="resources/uploads/${mainkind[3].save_file_name1}">
            </a>
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[4].p_idx}">
                <img src="resources/uploads/${mainkind[4].save_file_name1}">
            </a>
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[5].p_idx}">
                <img src="resources/uploads/${mainkind[5].save_file_name1}">
            </a>
        </div>
        <div class="MallBigimg">
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[6].p_idx}">
                <img src="resources/uploads/${mainkind[6].save_file_name1}">
            </a>
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[7].p_idx}">
                <img src="resources/uploads/${mainkind[7].save_file_name1}">
            </a>
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[8].p_idx}">
                <img src="resources/uploads/${mainkind[8].save_file_name1}">
            </a>
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[9].p_idx}">
                <img src="resources/uploads/${mainkind[9].save_file_name1}">
            </a>
        </div>
        <div class="MallSmallimg">
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[10].p_idx}">
                <img src="resources/uploads/${mainkind[10].save_file_name1}">
            </a>
			<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${mainkind[11].p_idx}">
                <img src="resources/uploads/${mainkind[11].save_file_name1}">
            </a>
        </div>
    </div>

    <!-- ---------마지막 상품--------- -->
  	<%@ include file="Main/MainFooter.jsp" %>
</body>
<script type="text/javascript" src="resources/js/Main/pricenum.js"></script>
<script type="text/javascript" src="resources/js/Main/TotalMall.js"></script>
</html>