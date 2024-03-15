<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 전체 주문 내역</title>
<script>
function openReviewPage(p_idx) {
    var url = '${pageContext.request.contextPath}/product/review.do?p_idx=' + p_idx;
    window.open(url, '_blank', 'width=800,height=800');
}
function openOrderDetails(url) {
    // 새 창을 열기 위한 window.open() 함수 호출
    window.open(url, '_blank', 'width=1110, height=600');
}
</script>
</head>

<body>
	<div id="nav_back"></div>
	<div id="buyer_home">
		<div id="home_wrap">

			<h1>전체 주문내역</h1>


			<div class="new_order">
				총 ${pageNav.totalRows} 개 | ${pageNav.total_pageNum}페이지
				<div class="new-menu">
					<div class="p-1">
						<p><small>주문번호</small></p>
					</div>
					<div class="p-2">
						<p>상품명</p>
					</div>
					<div class="p-3">
						<p>주문일</p>
					</div>
					<div class="p-4">
						<p>수량</p>
					</div>
					<div class="p-5">
						<p>가격</p>
					</div>
					<div class="p-6">
						<p>기타</p>
					</div>
				</div>
				<c:forEach begin="1" end="${orderList.size()}" varStatus="vs">
					<div class="new-item">
						
						<div class="new-sort">
						<div>${orderList[vs.count-1].o_idx}</div>
							<small>${p_or_notMap[orderList[vs.count-1].payment_or_not.toString()]}</small>
						</div>
						<div class="new-img-div">
						<c:if test="${not empty orderList[vs.count-1].save_file_name1}">
							<img src="../resources/uploads/${orderList[vs.count-1].save_file_name1}" alt="${orderList[vs.count-1].product_name}" class="new-img">
						</c:if>
						</div>
						<div class="new-name">
							<p>
								<a
									href="${pageContext.request.contextPath}/product/item.do?p_idx=${orderList[vs.count-1].p_idx}">${orderList[vs.count-1].product_name}
								</a>
							</p>
						</div>
						<div class="new-date">
							<p>
								<small><fmt:formatDate value="${orderList[vs.count-1].c_update_time}"
									pattern="yyyy-MM-dd HH:mm:ss" /></small>
							</p>
						</div>
						<div class="new-quantity">
							<p>${orderList[vs.count-1].c_quantity}</p>
						</div>
						<div class="new-price">
							<p>
								<c:if test="${not empty orderList[vs.count-1].price}">
									<fmt:formatNumber value="${(orderList[vs.count-1].price - (orderList[vs.count-1].price * (orderList[vs.count-1].discount_rate * 0.01))) * orderList[vs.count-1].c_quantity}" />
									<c:out value="${formattedPrice}원" />
								</c:if>
							</p>
						</div>
						<div class="new-another">
						<c:if test="${not empty orderList[vs.count-1].m_idx}">
							<a href="javascript:void(0);"
									onclick="openReviewPage(${orderList[vs.count-1].p_idx});">
									<input type="button" value="리뷰 작성" class="new-another-button">
							</a>
							<c:if test="${orderList[vs.count-1].parcel ne 0 and orderList[vs.count-1].tracking_number ne 0}">
								<a
									href="<c:out value="${parcelMap[orderList[vs.count-1].parcel.toString()]}"/>${orderList[vs.count-1].tracking_number}"
									target="_blank"> <input type="button" value="배송 추적하기"
									class="new-another-button">
								</a>
								</c:if>	
							<a href="${pageContext.request.contextPath}/product/item.do?p_idx=${orderList[vs.count-1].p_idx}"
							target="_blank">
								<input type="button" value="문의 하기" class="new-another-button">
							</a>
							
<a href="javascript:void(0);" onclick="openOrderDetails('${pageContext.request.contextPath}/member/ViewOrderDetails.do?o_idx=${orderList[vs.count-1].o_idx}');">
    <input type="button" value="주문 상세보기" class="new-another-button">
</a>
						</c:if>
						</div>
					</div>
			
				</c:forEach>

			</div>
			
			<div id="td-page-nav">
			<%@ include file="buyerorderpaging.jsp" %>
			</div>
		</div>
			
	</div>

</body>


</html>