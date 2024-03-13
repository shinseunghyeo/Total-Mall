<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 마이페이지</title>
<script>
function openReviewPage(p_idx) {
    var url = '${pageContext.request.contextPath}/product/review.do?p_idx=' + p_idx;
    window.open(url, '_blank', 'width=800,height=800');
}


function openParcelLink(parcel, parcelMap) {
    // parcelMap에 해당 택배사가 있는지 확인
    var link = parcelMap[parcel];
    if (link) {
        // 해당 택배사의 링크를 가져와서 새 창 열기
        window.open(link);
    } else {
        alert('해당 택배사의 링크를 찾을 수 없습니다.');
    }
}



</script>

</head>

<body>
	<div id="nav_back"></div>
	<div id="buyer_home">
		<div id="home_wrap">
			<img src="../resources/img/Mallimg/마이페이지 광고.png" alt="마이페이지 광고">

			<div id="grade_wrap">
				<h3>${member.member_name}회원님의
					등급은
					<c:out value="${gradeMap[member.grade.toString()].substring(7)}" />
					입니다
				</h3>
				<br>
				<div id="bar">
					<c:forEach var="i" begin="1" end="5">
						<div style="width: 1.5rem; height: 1.5rem;">
							<c:choose>
								<c:when test="${member.grade eq i}">
									<svg class="svg" xmlns="http://www.w3.org/2000/svg"
										width="1.5rem" height="1.5rem" fill="#3498DB"
										class="bi bi-circle-fill" viewBox="0 0 16 16">
                    <circle cx="8" cy="8" r="8" />
                </svg>
								</c:when>
								<c:otherwise>
									<!-- 등급에 맞지 않는 경우 아무 내용도 표시하지 않음 -->
								</c:otherwise>
							</c:choose>
						</div>
					</c:forEach>

				</div>
				<ul id="grade">
					<li>Wellcome</li>
					<li>Bronze</li>
					<li>Silver</li>
					<li>Gold</li>
					<li>Platinum</li>
				</ul>

			</div>




			<h1>
				최근 주문내역<sub><small>1개월</small></sub>
			</h1>



			<div class="new_order">
				<div class="new-menu">
					<div class="p-1">
						<p>
							<small>주문번호</small>
						</p>
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
				<c:forEach begin="1" end="${orderList_1.size()}" varStatus="vs">
					<div class="new-item">

						<div class="new-sort">
							<div>${orderList_1[vs.count-1].o_idx}</div>
							<small>${p_or_notMap[orderList_1[vs.count-1].payment_or_not.toString()]}</small>
						</div>
						<div class="new-img-div">
							<c:if test="${not empty orderList_1[vs.count-1].save_file_name1}">
								<img
									src="../resources/uploads/${orderList_1[vs.count-1].save_file_name1}"
									alt="${orderList_1[vs.count-1].product_name}" class="new-img">
							</c:if>
						</div>
						<div class="new-name">
							<p>
								<a
									href="${pageContext.request.contextPath}/product/item.do?p_idx=${orderList_1[vs.count-1].p_idx}">${orderList_1[vs.count-1].product_name}
								</a>
							</p>
						</div>
						<div class="new-date">
							<p>
								<small><fmt:formatDate
										value="${orderList_1[vs.count-1].c_update_time}"
										pattern="yyyy-MM-dd HH:mm:ss" /></small>
							</p>
						</div>
						<div class="new-quantity">
							<p>${orderList_1[vs.count-1].c_quantity}</p>
						</div>
						<div class="new-price">
							<p>
								<c:if test="${not empty orderList_1[vs.count-1].price}">
									<fmt:formatNumber
										value="${(orderList_1[vs.count-1].price - (orderList_1[vs.count-1].price * (orderList_1[vs.count-1].discount_rate * 0.01))) * orderList_1[vs.count-1].c_quantity}"
										pattern="#,##0" var="formattedPrice" />
									<c:out value="${formattedPrice}원" />
								</c:if>
							</p>
						</div>
						<div class="new-another">
							<c:if test="${not empty orderList_1[vs.count-1].m_idx}">
								<a href="javascript:void(0);"
									onclick="openReviewPage(${orderList_1[vs.count-1].p_idx});">
									<input type="button" value="리뷰 작성" class="new-another-button">
								</a>
								<a
									href="http://nexs.cjgls.com/web/info.jsp?slipno=${orderList_1[vs.count-1].tracking_number}"
									target="_blank"> <input type="button" value="배송 추적하기"
									class="new-another-button">
								</a>

								<a
									href="${pageContext.request.contextPath}/product/item.do?p_idx=${orderList_1[vs.count-1].p_idx}"
									target="_blank"> <input type="button" value="문의 하기"
									class="new-another-button">
								</a>

								<a
									href="${pageContext.request.contextPath}/member/ViewOrderDetails.do?o_idx=${orderList_1[vs.count-1].o_idx}"><input
									type="button" value="주문 상세보기" class="new-another-button"></a>

							</c:if>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>

</body>


</html>