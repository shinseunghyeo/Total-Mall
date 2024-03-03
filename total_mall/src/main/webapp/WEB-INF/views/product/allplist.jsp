<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 상품관리 페이지</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!-- 중복 코드 통합 -->
<script type="text/javascript">
    function updateProductStatus(action, pIdx) {
        const ans = confirm("정말로 판매를 " + (action === 'discontinue' ? '중단' : '재개') + "하겠습니까?");

        if (ans) {
            $.ajax({
                type: "GET",
                url: action === 'discontinue' ? "../product/discontinued.do" : "../product/continued.do",
                data: {
                    p_idx: pIdx
                },
                success: function (response) {
                    // 서버 응답에 대한 처리를 여기에 추가
                    console.log(response);
                    
                    // 예를 들어, 페이지 리로드
                    location.reload();
                    alert("변경되었습니다.")
                },
                error: function (error) {
                    // 에러 처리를 여기에 추가
                    console.error("Ajax request failed: ", error);
                }
            });
        }
    }
</script>






</head>

<body>

	<div id="p_management">
		<h1>전체 상품 관리</h1>
		<div id="BorderLine">




				<div id="Contaner">
					<table id="tb_plist">

						<c:choose>
							<c:when test="${empty allList}">
								<tr>
									<td colspan="6">등록된 상품이 없습니다.<br>
									</td>
								</tr>
							</c:when>

							<c:otherwise>
								<tr>
									<td colspan="6" class="all_p_list">
										<div class="p_idx"></div>
										<div class="p_img">이미지</div>
										<div class="p_info">제품명</div>
										<div class="p_price">가격</div>
										<div class="p_quantity">재고</div>
										<div class="p_period">판매기간</div>
										<div class="p_status">판매상태 변경</div>

									</td>
								</tr>
								<c:forEach begin="1" end="20" varStatus="vs">
									<tr>
										<td colspan="6" class="all_p_list">
											<div class="p_idx">${allList[vs.count-1].p_idx}</div>

											<div class="p_img">
												<c:if test="${not empty allList[vs.count-1].price}">
													<a class="productimg"
														href="${pageContext.request.contextPath}/product/item.do?p_idx=${allList[vs.count-1].p_idx}">
														<img width="100%" height="100%"
														src="../resources/uploads/${allList[vs.count-1].save_file_name1}">
													</a>
												</c:if>
											</div>
											<div class="p_info">
												<a
													href="${pageContext.request.contextPath}/product/item.do?p_idx=${allList[vs.count-1].p_idx}">
													<h3>${allList[vs.count-1].product_name}</h3>
													${allList[vs.count-1].summary}
												</a>
											</div>
											<div class="p_price">
												<c:if test="${not empty allList[vs.count-1].price}">
													<fmt:formatNumber value="${allList[vs.count-1].price}"
														pattern="#,##0" var="formattedPrice" />
													<p id="non_DCprice">
														<c:out value="정가: ${formattedPrice}원" />
													</p>
													<fmt:formatNumber
														value="${allList[vs.count-1].price * (1 - allList[vs.count-1].discount_rate / 100)}"
														pattern="#,##0" var="DCPrice" />
													<p id="DCprice">
														<c:out value="할인가: ${DCPrice}원" />
													</p>

												</c:if>
												</div>
												<div class="p_quantity">${allList[vs.count-1].quantity}</div>
											
											<div class="p_period">
												<fmt:formatDate value="${allList[vs.count-1].start_date}"
													pattern="yyyy-MM-dd" />
												<br>
												<fmt:formatDate value="${allList[vs.count-1].end_date}"
													pattern="yyyy-MM-dd" />
											</div>

											<div class="p_status">
												<c:choose>
													<c:when test="${allList[vs.count-1].p_status eq 0}">
														<input type="button" value="판매중단"
															onclick="updateProductStatus('discontinue',${allList[vs.count-1].p_idx})">
													</c:when>
													<c:when test="${allList[vs.count-1].p_status eq 1}">
														<input type="button" value="판매재개"
															onclick="updateProductStatus('continue', ${allList[vs.count-1].p_idx})">
													</c:when>
												</c:choose>
											</div>
										</td>

									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</table>
				</div>
			</div>
		</div>


</body>

</html>