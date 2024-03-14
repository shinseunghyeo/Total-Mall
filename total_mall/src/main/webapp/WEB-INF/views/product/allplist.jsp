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
<script type="text/javascript" src="../resources/js/Member/loadContent.js"></script>
<!-- 중복 코드 통합 -->
<script type="text/javascript">
function updateProductStatus(action) {
	const selectedItems = [];
	$('input[name="productCheckbox"]:checked').each(function() {
		selectedItems.push($(this).val());
	});

	if (selectedItems.length === 0) {
		alert("선택된 상품이 없습니다.");
		return;
	}

	const ans = confirm("정말로 판매를 "
			+ (action === 'discontinue' ? '중단' : '재개') + "하겠습니까?");

	if (ans) {
		$.ajax({
			type : "GET",
			url : action === 'discontinue' ? "../product/discontinued.do"
					: "../product/continued.do",
			data : {
				p_idxs : selectedItems
			// 여러 상품의 인덱스를 배열로 전달
			},
			traditional : true, // 배열 전송을 위해 traditional 속성 추가
			success : function(response) {
				// 서버 응답에 대한 처리를 여기에 추가
				console.log(response);
				// 예를 들어, 페이지 리로드
				alert("변경되었습니다.");
				loadContent("../member/adminmypage/product/allplist.do");
			},
			error : function(error) {
				// 에러 처리를 여기에 추가
				console.error("Ajax request failed: ", error);
			}
		});
	}
}

    
    function openProductWindow(pIdx) {
        var width = 1100; // 원하는 폭으로 수정
        var height = 750; // 원하는 높이로 수정
        var url = '${pageContext.request.contextPath}/product/item.do?p_idx=' + pIdx;

        window.open(url, 'Product Window', 'width=' + width + ', height=' + height);
    }
</script>






</head>

<body>

	<div id="p_management">
		<h1>전체 상품 관리</h1>
		<div id="BorderLine">




			<div id="Contaner">
			총 ${pageNav.totalRows} 개 | ${pageNav.total_pageNum}페이지
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
									<div class="p_idx">
										상품<br>번호
									</div>
									<div class="p_img">이미지</div>
									<div class="p_info">제품명</div>
									<div class="p_price">가격</div>
									<div class="p_quantity">재고</div>
									<div class="p_period">판매기간</div>
									<div class="p_status">
										<input type="button" value="판매중단"
											onclick="updateProductStatus('discontinue')"> 
										<input type="button" value="판매재개"
											onclick="updateProductStatus('continue')">
									</div>

								</td>
							</tr>
							<c:forEach begin="1" end="${allList.size()}" varStatus="vs">
								<tr>
									<td colspan="6" class="all_p_list">
										<div class="p_idx">${allList[vs.count-1].p_idx}</div>

										<div class="p_img">
											<c:if test="${not empty allList[vs.count-1].price}">
												<a class="productimg" href="javascript:void(0);"
													onclick="openProductWindow(${allList[vs.count-1].p_idx});">
													<img width="100%" height="100%"
													src="../resources/uploads/${allList[vs.count-1].save_file_name1}">
												</a>
											</c:if>
										</div>
										<div class="p_info">
											<a class="productimg" href="javascript:void(0);"
												onclick="openProductWindow(${allList[vs.count-1].p_idx});">
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
											${statusPMap[allList[vs.count-1].p_status.toString()]} 
											<c:if test="${not empty allList[vs.count-1].p_status}">
											<input
												type="checkbox" name="productCheckbox"
												value="${allList[vs.count-1].p_idx}">
											</c:if>
										</div>
									</td>

								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>

				</table>
			</div>
			<div id="td-page-nav">
			<%@ include file="allprodpaging.jsp" %>
			</div>
		</div>
	</div>


</body>

</html>